package com.google.android.exoplayer.chunk;

import com.google.android.exoplayer.ExoPlaybackException;
import com.google.android.exoplayer.ExoPlayer;
import com.google.android.exoplayer.MediaFormat;
import com.google.android.exoplayer.TrackInfo;
import com.google.android.exoplayer.util.Assertions;
import java.io.IOException;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class MultiTrackChunkSource implements ExoPlayer.ExoPlayerComponent, ChunkSource {
    public static final int MSG_SELECT_TRACK = 1;
    private final ChunkSource[] allSources;
    private boolean enabled;
    private ChunkSource selectedSource;

    public MultiTrackChunkSource(ChunkSource... chunkSourceArr) {
        this.allSources = chunkSourceArr;
        this.selectedSource = chunkSourceArr[0];
    }

    public MultiTrackChunkSource(List<ChunkSource> list) {
        this(toChunkSourceArray(list));
    }

    public int getTrackCount() {
        return this.allSources.length;
    }

    @Override // com.google.android.exoplayer.chunk.ChunkSource
    public TrackInfo getTrackInfo() {
        return this.selectedSource.getTrackInfo();
    }

    @Override // com.google.android.exoplayer.chunk.ChunkSource
    public void enable() {
        this.selectedSource.enable();
        this.enabled = true;
    }

    @Override // com.google.android.exoplayer.chunk.ChunkSource
    public void disable(List<? extends MediaChunk> list) {
        this.selectedSource.disable(list);
        this.enabled = false;
    }

    @Override // com.google.android.exoplayer.chunk.ChunkSource
    public void continueBuffering(long j) {
        this.selectedSource.continueBuffering(j);
    }

    @Override // com.google.android.exoplayer.chunk.ChunkSource
    public void getChunkOperation(List<? extends MediaChunk> list, long j, long j2, ChunkOperationHolder chunkOperationHolder) {
        this.selectedSource.getChunkOperation(list, j, j2, chunkOperationHolder);
    }

    @Override // com.google.android.exoplayer.chunk.ChunkSource
    public IOException getError() {
        return null;
    }

    @Override // com.google.android.exoplayer.chunk.ChunkSource
    public void getMaxVideoDimensions(MediaFormat mediaFormat) {
        this.selectedSource.getMaxVideoDimensions(mediaFormat);
    }

    @Override // com.google.android.exoplayer.ExoPlayer.ExoPlayerComponent
    public void handleMessage(int i, Object obj) throws ExoPlaybackException {
        Assertions.checkState(!this.enabled);
        if (i == 1) {
            this.selectedSource = this.allSources[((Integer) obj).intValue()];
        }
    }

    @Override // com.google.android.exoplayer.chunk.ChunkSource
    public void onChunkLoadError(Chunk chunk, Exception exc) {
        this.selectedSource.onChunkLoadError(chunk, exc);
    }

    private static ChunkSource[] toChunkSourceArray(List<ChunkSource> list) {
        ChunkSource[] chunkSourceArr = new ChunkSource[list.size()];
        list.toArray(chunkSourceArr);
        return chunkSourceArr;
    }
}
