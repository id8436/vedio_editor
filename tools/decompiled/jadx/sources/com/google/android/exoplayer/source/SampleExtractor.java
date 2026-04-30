package com.google.android.exoplayer.source;

import com.google.android.exoplayer.MediaFormatHolder;
import com.google.android.exoplayer.SampleHolder;
import com.google.android.exoplayer.TrackInfo;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public interface SampleExtractor {
    void deselectTrack(int i);

    long getBufferedPositionUs();

    TrackInfo[] getTrackInfos();

    void getTrackMediaFormat(int i, MediaFormatHolder mediaFormatHolder);

    boolean prepare() throws IOException;

    int readSample(int i, SampleHolder sampleHolder) throws IOException;

    void release();

    void seekTo(long j);

    void selectTrack(int i);
}
