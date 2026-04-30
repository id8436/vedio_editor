package com.google.android.exoplayer.chunk;

import com.google.android.exoplayer.MediaFormat;
import com.google.android.exoplayer.ParserException;
import com.google.android.exoplayer.SampleHolder;
import com.google.android.exoplayer.upstream.DataSource;
import com.google.android.exoplayer.upstream.DataSpec;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
public abstract class MediaChunk extends Chunk {
    public final long endTimeUs;
    public final int nextChunkIndex;
    public final long startTimeUs;

    public abstract MediaFormat getMediaFormat();

    public abstract Map<UUID, byte[]> getPsshInfo();

    public abstract boolean prepare() throws ParserException;

    public abstract boolean read(SampleHolder sampleHolder) throws ParserException;

    public abstract boolean sampleAvailable() throws ParserException;

    public abstract boolean seekTo(long j, boolean z);

    public abstract void seekToStart();

    public MediaChunk(DataSource dataSource, DataSpec dataSpec, Format format, int i, long j, long j2, int i2) {
        super(dataSource, dataSpec, format, i);
        this.startTimeUs = j;
        this.endTimeUs = j2;
        this.nextChunkIndex = i2;
    }

    public final boolean isLastChunk() {
        return this.nextChunkIndex == -1;
    }
}
