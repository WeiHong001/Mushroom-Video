package com.kotlin.basiclib.utils;

import android.content.Context;
import android.media.MediaScannerConnection;
import android.net.Uri;

/* JADX INFO: loaded from: classes2.dex */
public class SingleMediaScanner implements MediaScannerConnection.MediaScannerConnectionClient {
    private ScanListener listener;
    private MediaScannerConnection mMs;
    private String path;

    public interface ScanListener {
        void onScanFinish();
    }

    public SingleMediaScanner(Context context, String str, ScanListener scanListener) {
        this.path = str;
        this.listener = scanListener;
        MediaScannerConnection mediaScannerConnection = new MediaScannerConnection(context, this);
        this.mMs = mediaScannerConnection;
        mediaScannerConnection.connect();
    }

    @Override // android.media.MediaScannerConnection.MediaScannerConnectionClient
    public void onMediaScannerConnected() {
        this.mMs.scanFile(this.path, null);
    }

    @Override // android.media.MediaScannerConnection.OnScanCompletedListener
    public void onScanCompleted(String str, Uri uri) {
        this.mMs.disconnect();
        ScanListener scanListener = this.listener;
        if (scanListener != null) {
            scanListener.onScanFinish();
        }
    }
}
