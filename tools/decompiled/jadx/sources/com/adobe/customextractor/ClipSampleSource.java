package com.adobe.customextractor;

import android.content.Context;
import android.media.MediaFormat;
import android.net.Uri;
import android.util.Log;
import com.adobe.customextractor.Tracks.TrackInfo;
import com.adobe.customextractor.Util.Media.MediaFormatHolder;
import com.adobe.customextractor.Util.SampleHolder;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public final class ClipSampleSource {
    public static final int DISCONTINUITY_READ = -5;
    public static final int END_OF_STREAM = -1;
    public static final int FORMAT_READ = -4;
    public static final int NOTHING_READ = -2;
    public static final int SAMPLE_READ = -3;
    private static final String TAG = "ClipSampleSource";
    private ClipExtractor clipExtractor;
    private Context context;
    private int downstreamRendererCount;
    private boolean formatRead = false;
    private boolean[] pendingDiscontinuityRead;
    private boolean prepared;
    private int sampleCountRead;
    private Uri sourceUri;
    private TrackInfo[] trackInfos;

    public ClipSampleSource(Context context, Uri uri, int i) {
        this.context = context;
        this.sourceUri = uri;
        this.downstreamRendererCount = i;
        this.clipExtractor = new ClipExtractor(this.context);
    }

    public void prepare() throws IOException {
        if (!this.prepared) {
            if (this.clipExtractor.setDataSource(this.sourceUri, false)) {
                this.prepared = true;
                int trackCount = this.clipExtractor.getTrackCount();
                this.pendingDiscontinuityRead = new boolean[trackCount];
                this.trackInfos = new TrackInfo[trackCount];
                for (int i = 0; i < trackCount; i++) {
                    MediaFormat nativeTrackFormat = this.clipExtractor.getNativeTrackFormat(i);
                    long j = 0;
                    String string = "";
                    if (nativeTrackFormat != null) {
                        j = nativeTrackFormat.containsKey("durationUs") ? nativeTrackFormat.getLong("durationUs") : -1L;
                        string = nativeTrackFormat.getString("mime");
                    } else {
                        Log.e(TAG, "Track format not found for index " + i);
                    }
                    this.trackInfos[i] = new TrackInfo(string, j);
                }
                return;
            }
            this.prepared = false;
        }
    }

    public boolean continueBuffering(long j) throws IOException {
        return true;
    }

    public void release() {
        if (this.downstreamRendererCount > 0) {
            int i = this.downstreamRendererCount - 1;
            this.downstreamRendererCount = i;
            if (i == 0) {
                this.clipExtractor.release();
            }
        }
    }

    public int getTrackCount() {
        return this.clipExtractor.getTrackCount();
    }

    public com.adobe.customextractor.Util.Media.MediaFormat getTrackFormat(int i) {
        return this.clipExtractor.getTrackFormat(i);
    }

    public MediaFormat getNativeTrackFormat(int i) {
        return this.clipExtractor.getNativeTrackFormat(i);
    }

    public TrackInfo getTrackInfo(int i) {
        if (this.trackInfos == null || i >= getTrackCount()) {
            return null;
        }
        return this.trackInfos[i];
    }

    public void enable(int i, long j) {
        this.clipExtractor.selectTrack(i);
        this.clipExtractor.seekTo(j);
        this.sampleCountRead = 0;
    }

    public void disable(int i) {
        this.clipExtractor.unselectTrack(i);
        for (int i2 = 0; i2 < getTrackCount(); i2++) {
            this.pendingDiscontinuityRead[i2] = false;
        }
    }

    public void seekToUs(long j) {
        this.clipExtractor.seekTo(j);
        for (int i = 0; i < getTrackCount(); i++) {
            this.pendingDiscontinuityRead[i] = true;
        }
    }

    public int readData(int i, long j, MediaFormatHolder mediaFormatHolder, SampleHolder sampleHolder, boolean z) {
        if (!this.prepared) {
            return -2;
        }
        if (this.pendingDiscontinuityRead[i]) {
            this.pendingDiscontinuityRead[i] = false;
            return -5;
        }
        if (z) {
            return -2;
        }
        if (!this.formatRead) {
            mediaFormatHolder.mediaFormat = this.clipExtractor.getTrackFormat(i);
            this.formatRead = true;
            return -4;
        }
        return readSampleData(sampleHolder);
    }

    private int readSampleData(SampleHolder sampleHolder) {
        if (sampleHolder.data != null) {
            int iPosition = sampleHolder.data.position();
            int sampleData = this.clipExtractor.readSampleData(sampleHolder.data, iPosition);
            if (sampleData >= 0) {
                sampleHolder.size = sampleData;
                sampleHolder.data.position(sampleHolder.size + iPosition);
                this.sampleCountRead++;
                sampleHolder.timeUs = this.clipExtractor.getSampleTime();
                sampleHolder.flags = this.clipExtractor.getSampleFlags();
                if ((sampleHolder.flags & 2) != 0) {
                    sampleHolder.cryptoInfo.setFromExtractorV16(this.clipExtractor);
                }
                this.clipExtractor.advance();
                return -3;
            }
            if (sampleData == -1) {
                sampleHolder.size = 0;
                return -1;
            }
            sampleHolder.size = 0;
            return -2;
        }
        sampleHolder.size = 0;
        return -2;
    }
}
