package com.mogu.research;

import android.content.Context;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.InetAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.nio.charset.StandardCharsets;
import java.util.Locale;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/** Loopback-only fixture media server with HTTP Range support for the real player. */
final class AssetServer {
    private final Context context;
    private final ServerSocket listener;
    private final ExecutorService connections = Executors.newFixedThreadPool(3, runnable -> {
        Thread thread = new Thread(runnable, "research-media");
        thread.setDaemon(true);
        return thread;
    });

    AssetServer(Context context) throws IOException {
        this.context = context;
        listener = new ServerSocket(0, 8, InetAddress.getByName("127.0.0.1"));
        Thread accept = new Thread(() -> {
            while (!listener.isClosed()) {
                try {
                    Socket client = listener.accept();
                    connections.execute(() -> serve(client));
                } catch (IOException error) {
                    RecoveryRuntime.record("MEDIA accept failed: " + error.getClass().getSimpleName());
                }
            }
        }, "research-media-listener");
        accept.setDaemon(true);
        accept.start();
    }

    String baseUrl() { return "http://127.0.0.1:" + listener.getLocalPort() + "/"; }

    private void serve(Socket client) {
        try (Socket socket = client) {
            socket.setSoTimeout(5000);
            BufferedReader reader = new BufferedReader(new InputStreamReader(socket.getInputStream(), StandardCharsets.US_ASCII));
            String first = reader.readLine();
            if (first == null || first.length() > 2048) return;
            String[] request = first.split(" ");
            if (request.length < 2) return;
            String path = request[1].split("\\?", 2)[0];
            String range = null;
            int headerSize = 0;
            for (String line; (line=reader.readLine()) != null && !line.isEmpty();) {
                if ((headerSize += line.length()) > 8192) return;
                if (line.toLowerCase(Locale.US).startsWith("range:")) range=line.substring(6).trim();
            }
            OutputStream output = socket.getOutputStream();
            if (!(request[0].equals("GET") || request[0].equals("HEAD")) || !path.matches("/(media|images)/[A-Za-z0-9._-]+")) {
                send(output, 404, "text/plain", new byte[0], 0, -1, false, false);
                return;
            }
            byte[] bytes;
            try (InputStream input = context.getAssets().open("research"+path)) {
                ByteArrayOutputStream buffer = new ByteArrayOutputStream();
                byte[] block = new byte[8192];
                for (int read; (read=input.read(block)) != -1;) buffer.write(block,0,read);
                bytes=buffer.toByteArray();
            } catch (IOException error) {
                send(output, 404, "text/plain", new byte[0], 0, -1, false, false);
                return;
            }
            int start=0, end=bytes.length-1;
            boolean partial=range!=null;
            if (partial) {
                try {
                    if (!range.matches("bytes=\\d*-\\d*")) throw new IllegalArgumentException();
                    String[] parts=range.substring(6).split("-",-1);
                    if (parts[0].isEmpty()) start=Math.max(0,bytes.length-Integer.parseInt(parts[1]));
                    else start=Integer.parseInt(parts[0]);
                    if (!parts[0].isEmpty() && !parts[1].isEmpty()) end=Math.min(end,Integer.parseInt(parts[1]));
                    if (start<0 || start> end) throw new IllegalArgumentException();
                } catch (IllegalArgumentException error) {
                    output.write(("HTTP/1.1 416 Range Not Satisfiable\r\nContent-Range: bytes */"+bytes.length+"\r\nContent-Length: 0\r\nConnection: close\r\n\r\n").getBytes(StandardCharsets.US_ASCII));
                    return;
                }
            }
            String type=path.endsWith(".m3u8") ? "application/vnd.apple.mpegurl" : path.endsWith(".ts") ? "video/mp2t" : path.endsWith(".mp4") ? "video/mp4" : "image/png";
            send(output,partial?206:200,type,bytes,start,end,partial,request[0].equals("HEAD"));
        } catch (IOException error) {
            // Cancellation during seek and page changes closes the player's socket.
        }
    }

    private static void send(OutputStream output,int status,String type,byte[] bytes,int start,int end,boolean partial,boolean head) throws IOException {
        String header="HTTP/1.1 "+status+" "+(status==206?"Partial Content":status==200?"OK":"Not Found")+"\r\nContent-Type: "+type+"\r\nContent-Length: "+Math.max(0,end-start+1)+"\r\nAccept-Ranges: bytes\r\nConnection: close\r\n";
        if (partial) header+="Content-Range: bytes "+start+"-"+end+"/"+bytes.length+"\r\n";
        output.write((header+"\r\n").getBytes(StandardCharsets.US_ASCII));
        if (!head && end>=start) output.write(bytes,start,end-start+1);
    }
}
