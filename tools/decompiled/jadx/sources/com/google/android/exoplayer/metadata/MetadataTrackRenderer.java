package com.google.android.exoplayer.metadata;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.google.android.exoplayer.ExoPlaybackException;
import com.google.android.exoplayer.MediaFormatHolder;
import com.google.android.exoplayer.SampleHolder;
import com.google.android.exoplayer.SampleSource;
import com.google.android.exoplayer.TrackRenderer;
import com.google.android.exoplayer.util.Assertions;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class MetadataTrackRenderer<T> extends TrackRenderer implements Handler.Callback {
    private static final int MSG_INVOKE_RENDERER = 0;
    private long currentPositionUs;
    private final MediaFormatHolder formatHolder;
    private boolean inputStreamEnded;
    private final Handler metadataHandler;
    private final MetadataParser<T> metadataParser;
    private final MetadataRenderer<T> metadataRenderer;
    private T pendingMetadata;
    private long pendingMetadataTimestamp;
    private final SampleHolder sampleHolder;
    private final SampleSource source;
    private int trackIndex;

    public interface MetadataRenderer<T> {
        void onMetadata(T t);
    }

    public MetadataTrackRenderer(SampleSource sampleSource, MetadataParser<T> metadataParser, MetadataRenderer<T> metadataRenderer, Looper looper) {
        this.source = (SampleSource) Assertions.checkNotNull(sampleSource);
        this.metadataParser = (MetadataParser) Assertions.checkNotNull(metadataParser);
        this.metadataRenderer = (MetadataRenderer) Assertions.checkNotNull(metadataRenderer);
        this.metadataHandler = looper == null ? null : new Handler(looper, this);
        this.formatHolder = new MediaFormatHolder();
        this.sampleHolder = new SampleHolder(1);
    }

    @Override // com.google.android.exoplayer.TrackRenderer
    protected int doPrepare() throws ExoPlaybackException {
        try {
            if (!this.source.prepare()) {
                return 0;
            }
            for (int i = 0; i < this.source.getTrackCount(); i++) {
                if (this.metadataParser.canParse(this.source.getTrackInfo(i).mimeType)) {
                    this.trackIndex = i;
                    return 1;
                }
            }
            return -1;
        } catch (IOException e2) {
            throw new ExoPlaybackException(e2);
        }
    }

    @Override // com.google.android.exoplayer.TrackRenderer
    protected void onEnabled(long j, boolean z) {
        this.source.enable(this.trackIndex, j);
        seekToInternal(j);
    }

    @Override // com.google.android.exoplayer.TrackRenderer
    protected void seekTo(long j) throws ExoPlaybackException {
        this.source.seekToUs(j);
        seekToInternal(j);
    }

    private void seekToInternal(long j) {
        this.currentPositionUs = j;
        this.pendingMetadata = null;
        this.inputStreamEnded = false;
    }

    @Override // com.google.android.exoplayer.TrackRenderer
    protected void doSomeWork(long j, long j2) throws ExoPlaybackException {
        this.currentPositionUs = j;
        try {
            this.source.continueBuffering(j);
            if (!this.inputStreamEnded && this.pendingMetadata == null) {
                try {
                    int data = this.source.readData(this.trackIndex, j, this.formatHolder, this.sampleHolder, false);
                    if (data == -3) {
                        this.pendingMetadataTimestamp = this.sampleHolder.timeUs;
                        this.pendingMetadata = this.metadataParser.parse(this.sampleHolder.data.array(), this.sampleHolder.size);
                        this.sampleHolder.data.clear();
                    } else if (data == -1) {
                        this.inputStreamEnded = true;
                    }
                } catch (IOException e2) {
                    throw new ExoPlaybackException(e2);
                }
            }
            if (this.pendingMetadata != null && this.pendingMetadataTimestamp <= this.currentPositionUs) {
                invokeRenderer(this.pendingMetadata);
                this.pendingMetadata = null;
            }
        } catch (IOException e3) {
            throw new ExoPlaybackException(e3);
        }
    }

    @Override // com.google.android.exoplayer.TrackRenderer
    protected void onDisabled() {
        this.pendingMetadata = null;
        this.source.disable(this.trackIndex);
    }

    @Override // com.google.android.exoplayer.TrackRenderer
    protected long getDurationUs() {
        return this.source.getTrackInfo(this.trackIndex).durationUs;
    }

    @Override // com.google.android.exoplayer.TrackRenderer
    protected long getCurrentPositionUs() {
        return this.currentPositionUs;
    }

    @Override // com.google.android.exoplayer.TrackRenderer
    protected long getBufferedPositionUs() {
        return -3L;
    }

    @Override // com.google.android.exoplayer.TrackRenderer
    protected boolean isEnded() {
        return this.inputStreamEnded;
    }

    @Override // com.google.android.exoplayer.TrackRenderer
    protected boolean isReady() {
        return true;
    }

    private void invokeRenderer(T t) {
        if (this.metadataHandler != null) {
            this.metadataHandler.obtainMessage(0, t).sendToTarget();
        } else {
            invokeRendererInternal(t);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        switch (message.what) {
            case 0:
                invokeRendererInternal(message.obj);
                return true;
            default:
                return false;
        }
    }

    private void invokeRendererInternal(T t) {
        this.metadataRenderer.onMetadata(t);
    }
}
