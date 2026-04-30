package com.adobe.customextractor.extractor;

import android.content.Context;
import android.media.MediaCodec;
import android.net.Uri;
import android.util.Log;
import com.adobe.customextractor.Util.Media.MediaFormat;
import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class MediaExtractor {
    public static final int END_OF_STREAM = -1;
    public static final int SAMPLE_NOT_FOUND = -2;
    public static final int SEEK_TO_NEXT_CLOSEST_FRAME = 3;
    public static final int SEEK_TO_NEXT_SYNC = 2;
    public static final int SEEK_TO_PREV_SYNC = 1;
    private static final String TAG = "MediaExtractor";
    private String filePath;
    private Uri fileUri;
    private CustomSource source;

    public MediaExtractor(Context context) {
        this.source = new CustomSource(context);
    }

    public void release() {
        if (this.source != null) {
            this.source.release();
        }
    }

    public void setTrackType(String str) {
        this.source.setTrackType(str);
    }

    public boolean setDataSource(Context context, Uri uri, Map<String, String> map) throws IOException {
        this.source = new CustomSource(context);
        return setDataSource(uri);
    }

    public boolean setDataSource(String str) throws IOException {
        return setDataSource(str, true);
    }

    public boolean setDataSource(Uri uri) throws IOException {
        return setDataSource(uri, true);
    }

    public boolean setDataSource(String str, boolean z) throws IOException {
        this.filePath = str;
        this.fileUri = Uri.fromFile(new File(str));
        return setDataSourceInternal(z);
    }

    public boolean setDataSource(Uri uri, boolean z) throws IOException {
        this.fileUri = uri;
        this.filePath = this.fileUri.getPath();
        return setDataSourceInternal(z);
    }

    private boolean setDataSourceInternal(boolean z) throws IOException {
        this.source.setSource(this.fileUri);
        return this.source.prepare(0L, z);
    }

    public int getTrackCount() {
        return this.source.getTrackCount();
    }

    public MediaFormat getTrackFormat(int i) {
        return this.source.getTrackFormat(i);
    }

    public android.media.MediaFormat getNativeTrackFormat(int i) {
        return this.source.getNativeTrackFormat(i);
    }

    public void selectTrack(int i) {
        this.source.selectTrack(i);
    }

    public void unselectTrack(int i) {
        this.source.deselectTrack(i);
    }

    public long getSampleTime() {
        return this.source.getSampleTime();
    }

    public int getSampleFlags() {
        return this.source.getSampleFlags();
    }

    public boolean getSampleCryptoInfo(MediaCodec.CryptoInfo cryptoInfo) {
        return this.source.getSampleCryptoInfo(cryptoInfo);
    }

    public int readSampleData(ByteBuffer byteBuffer, int i) {
        try {
            return this.source.readSampleData(byteBuffer, i);
        } catch (IOException e2) {
            Log.e(TAG, "Could not read sample " + e2);
            return -1;
        } catch (InterruptedException e3) {
            Log.e(TAG, "Could not read sample " + e3);
            return -1;
        }
    }

    public void seekTo(long j, int i) {
        try {
            this.source.seekTo(j, i);
        } catch (IOException e2) {
            Log.e(TAG, "Seek failed " + e2);
        }
    }

    public void advance() {
        this.source.advance();
    }

    public boolean hasCacheReachedEndOfStream() {
        return true;
    }
}
