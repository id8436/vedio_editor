package com.google.android.exoplayer.chunk;

import com.google.android.exoplayer.MediaFormat;
import com.google.android.exoplayer.TrackInfo;
import com.google.android.exoplayer.upstream.DataSource;
import com.google.android.exoplayer.upstream.DataSpec;
import java.io.IOException;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class SingleSampleChunkSource implements ChunkSource {
    private final DataSource dataSource;
    private final DataSpec dataSpec;
    private final long durationUs;
    private final Format format;
    private final MediaFormat mediaFormat;
    private final TrackInfo trackInfo;

    public SingleSampleChunkSource(DataSource dataSource, DataSpec dataSpec, Format format, long j, MediaFormat mediaFormat) {
        this.dataSource = dataSource;
        this.dataSpec = dataSpec;
        this.format = format;
        this.durationUs = j;
        this.mediaFormat = mediaFormat;
        this.trackInfo = new TrackInfo(format.mimeType, j);
    }

    @Override // com.google.android.exoplayer.chunk.ChunkSource
    public TrackInfo getTrackInfo() {
        return this.trackInfo;
    }

    @Override // com.google.android.exoplayer.chunk.ChunkSource
    public void getMaxVideoDimensions(MediaFormat mediaFormat) {
    }

    @Override // com.google.android.exoplayer.chunk.ChunkSource
    public void enable() {
    }

    @Override // com.google.android.exoplayer.chunk.ChunkSource
    public void continueBuffering(long j) {
    }

    @Override // com.google.android.exoplayer.chunk.ChunkSource
    public void getChunkOperation(List<? extends MediaChunk> list, long j, long j2, ChunkOperationHolder chunkOperationHolder) {
        if (list.isEmpty()) {
            chunkOperationHolder.chunk = initChunk();
        }
    }

    @Override // com.google.android.exoplayer.chunk.ChunkSource
    public void disable(List<? extends MediaChunk> list) {
    }

    @Override // com.google.android.exoplayer.chunk.ChunkSource
    public IOException getError() {
        return null;
    }

    @Override // com.google.android.exoplayer.chunk.ChunkSource
    public void onChunkLoadError(Chunk chunk, Exception exc) {
    }

    private SingleSampleMediaChunk initChunk() {
        return new SingleSampleMediaChunk(this.dataSource, this.dataSpec, this.format, 0, 0L, this.durationUs, -1, this.mediaFormat);
    }
}
