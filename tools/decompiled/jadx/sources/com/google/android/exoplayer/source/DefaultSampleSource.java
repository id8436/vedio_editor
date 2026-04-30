package com.google.android.exoplayer.source;

import com.google.android.exoplayer.MediaFormatHolder;
import com.google.android.exoplayer.SampleHolder;
import com.google.android.exoplayer.SampleSource;
import com.google.android.exoplayer.TrackInfo;
import com.google.android.exoplayer.util.Assertions;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public final class DefaultSampleSource implements SampleSource {
    private static final int TRACK_STATE_DISABLED = 0;
    private static final int TRACK_STATE_ENABLED = 1;
    private static final int TRACK_STATE_FORMAT_SENT = 2;
    private boolean[] pendingDiscontinuities;
    private boolean prepared;
    private int remainingReleaseCount;
    private final SampleExtractor sampleExtractor;
    private long seekPositionUs;
    private TrackInfo[] trackInfos;
    private int[] trackStates;

    public DefaultSampleSource(SampleExtractor sampleExtractor, int i) {
        this.sampleExtractor = (SampleExtractor) Assertions.checkNotNull(sampleExtractor);
        this.remainingReleaseCount = i;
    }

    @Override // com.google.android.exoplayer.SampleSource
    public boolean prepare() throws IOException {
        if (this.prepared) {
            return true;
        }
        if (this.sampleExtractor.prepare()) {
            this.prepared = true;
            this.trackInfos = this.sampleExtractor.getTrackInfos();
            this.trackStates = new int[this.trackInfos.length];
            this.pendingDiscontinuities = new boolean[this.trackInfos.length];
        }
        return this.prepared;
    }

    @Override // com.google.android.exoplayer.SampleSource
    public int getTrackCount() {
        Assertions.checkState(this.prepared);
        return this.trackInfos.length;
    }

    @Override // com.google.android.exoplayer.SampleSource
    public TrackInfo getTrackInfo(int i) {
        Assertions.checkState(this.prepared);
        return this.trackInfos[i];
    }

    @Override // com.google.android.exoplayer.SampleSource
    public void enable(int i, long j) {
        Assertions.checkState(this.prepared);
        Assertions.checkState(this.trackStates[i] == 0);
        this.trackStates[i] = 1;
        this.sampleExtractor.selectTrack(i);
        seekToUsInternal(j, j != 0);
    }

    @Override // com.google.android.exoplayer.SampleSource
    public void disable(int i) {
        Assertions.checkState(this.prepared);
        Assertions.checkState(this.trackStates[i] != 0);
        this.sampleExtractor.deselectTrack(i);
        this.pendingDiscontinuities[i] = false;
        this.trackStates[i] = 0;
    }

    @Override // com.google.android.exoplayer.SampleSource
    public boolean continueBuffering(long j) throws IOException {
        return true;
    }

    @Override // com.google.android.exoplayer.SampleSource
    public int readData(int i, long j, MediaFormatHolder mediaFormatHolder, SampleHolder sampleHolder, boolean z) throws IOException {
        Assertions.checkState(this.prepared);
        Assertions.checkState(this.trackStates[i] != 0);
        if (this.pendingDiscontinuities[i]) {
            this.pendingDiscontinuities[i] = false;
            return -5;
        }
        if (z) {
            return -2;
        }
        if (this.trackStates[i] != 2) {
            this.sampleExtractor.getTrackMediaFormat(i, mediaFormatHolder);
            this.trackStates[i] = 2;
            return -4;
        }
        this.seekPositionUs = -1L;
        return this.sampleExtractor.readSample(i, sampleHolder);
    }

    @Override // com.google.android.exoplayer.SampleSource
    public void seekToUs(long j) {
        Assertions.checkState(this.prepared);
        seekToUsInternal(j, false);
    }

    @Override // com.google.android.exoplayer.SampleSource
    public long getBufferedPositionUs() {
        Assertions.checkState(this.prepared);
        return this.sampleExtractor.getBufferedPositionUs();
    }

    @Override // com.google.android.exoplayer.SampleSource
    public void release() {
        Assertions.checkState(this.remainingReleaseCount > 0);
        int i = this.remainingReleaseCount - 1;
        this.remainingReleaseCount = i;
        if (i == 0) {
            this.sampleExtractor.release();
        }
    }

    private void seekToUsInternal(long j, boolean z) {
        if (z || this.seekPositionUs != j) {
            this.seekPositionUs = j;
            this.sampleExtractor.seekTo(j);
            for (int i = 0; i < this.trackStates.length; i++) {
                if (this.trackStates[i] != 0) {
                    this.pendingDiscontinuities[i] = true;
                }
            }
        }
    }
}
