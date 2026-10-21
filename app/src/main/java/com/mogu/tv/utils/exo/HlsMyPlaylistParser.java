package com.mogu.tv.utils.exo;

import android.net.Uri;
import com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist;
import com.google.android.exoplayer2.source.hls.playlist.HlsMultivariantPlaylist;
import com.google.android.exoplayer2.source.hls.playlist.HlsPlaylist;
import com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistParser;
import com.google.android.exoplayer2.upstream.ParsingLoadable;
import com.kotlin.basiclib.utils.CXAESUtil;
import com.kotlin.basiclib.utils.MD5EncryptNf;
import com.mogu.tv.utils.PlayIdSaveUtils;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;

/** Company encryption envelope around the official, matching 2.18.1 HLS parser. */
public final class HlsMyPlaylistParser implements ParsingLoadable.Parser<HlsPlaylist> {
    private final HlsPlaylistParser parser;

    public HlsMyPlaylistParser() {
        this(HlsMultivariantPlaylist.EMPTY, null);
    }

    public HlsMyPlaylistParser(HlsMultivariantPlaylist master, HlsMediaPlaylist previous) {
        parser = new HlsPlaylistParser(master, previous);
    }

    public static byte[] readInputStream(InputStream input) throws IOException {
        return MD5EncryptNf.toByteArray(input);
    }

    @Override public HlsPlaylist parse(Uri uri, InputStream input) throws IOException {
        byte[] payload = readInputStream(input);
        if (!uri.toString().contains("m3u8")) {
            String playId = PlayIdSaveUtils.INSTANCE.getPlayId(uri.toString());
            if (playId != null) {
                try {
                    String key = MD5EncryptNf.encode(CXAESUtil.getSha1(playId.getBytes(StandardCharsets.UTF_8)));
                    payload = CXAESUtil.decrypt(key, payload);
                } catch (Exception error) {
                    // Original accepts unencrypted manifests too; preserve the bytes
                    // and let the real parser reject malformed or wrongly keyed data.
                }
            }
        }
        return parser.parse(uri, new ByteArrayInputStream(payload));
    }
}
