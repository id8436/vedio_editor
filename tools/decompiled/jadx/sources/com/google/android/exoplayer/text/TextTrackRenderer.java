package com.google.android.exoplayer.text;

import android.annotation.TargetApi;
import android.os.Handler;
import android.os.HandlerThread;
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
@TargetApi(16)
public class TextTrackRenderer extends TrackRenderer implements Handler.Callback {
    private static final int MSG_UPDATE_OVERLAY = 0;
    private long currentPositionUs;
    private final MediaFormatHolder formatHolder;
    private boolean inputStreamEnded;
    private int nextSubtitleEventIndex;
    private SubtitleParserHelper parserHelper;
    private int parserIndex;
    private HandlerThread parserThread;
    private final SampleSource source;
    private Subtitle subtitle;
    private final SubtitleParser[] subtitleParsers;
    private final TextRenderer textRenderer;
    private final Handler textRendererHandler;
    private boolean textRendererNeedsUpdate;
    private int trackIndex;

    public TextTrackRenderer(SampleSource sampleSource, TextRenderer textRenderer, Looper looper, SubtitleParser... subtitleParserArr) {
        this.source = (SampleSource) Assertions.checkNotNull(sampleSource);
        this.textRenderer = (TextRenderer) Assertions.checkNotNull(textRenderer);
        this.textRendererHandler = looper == null ? null : new Handler(looper, this);
        this.subtitleParsers = (SubtitleParser[]) Assertions.checkNotNull(subtitleParserArr);
        this.formatHolder = new MediaFormatHolder();
    }

    @Override // com.google.android.exoplayer.TrackRenderer
    protected int doPrepare() throws ExoPlaybackException {
        try {
            if (!this.source.prepare()) {
                return 0;
            }
            for (int i = 0; i < this.subtitleParsers.length; i++) {
                for (int i2 = 0; i2 < this.source.getTrackCount(); i2++) {
                    if (this.subtitleParsers[i].canParse(this.source.getTrackInfo(i2).mimeType)) {
                        this.parserIndex = i;
                        this.trackIndex = i2;
                        return 1;
                    }
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
        this.parserThread = new HandlerThread("textParser");
        this.parserThread.start();
        this.parserHelper = new SubtitleParserHelper(this.parserThread.getLooper(), this.subtitleParsers[this.parserIndex]);
        seekToInternal(j);
    }

    @Override // com.google.android.exoplayer.TrackRenderer
    protected void seekTo(long j) {
        this.source.seekToUs(j);
        seekToInternal(j);
    }

    private void seekToInternal(long j) {
        this.inputStreamEnded = false;
        this.currentPositionUs = j;
        this.source.seekToUs(j);
        if (this.subtitle != null && (j < this.subtitle.getStartTime() || this.subtitle.getLastEventTime() <= j)) {
            this.subtitle = null;
        }
        this.parserHelper.flush();
        clearTextRenderer();
        syncNextEventIndex(j);
        this.textRendererNeedsUpdate = this.subtitle != null;
    }

    @Override // com.google.android.exoplayer.TrackRenderer
    protected void doSomeWork(long j, long j2) throws ExoPlaybackException {
        Subtitle andClearResult;
        this.currentPositionUs = j;
        try {
            this.source.continueBuffering(j);
            if (!this.parserHelper.isParsing()) {
                if (this.subtitle == null) {
                    try {
                        andClearResult = this.parserHelper.getAndClearResult();
                    } catch (IOException e2) {
                        throw new ExoPlaybackException(e2);
                    }
                } else {
                    andClearResult = null;
                }
                if (this.subtitle == null && andClearResult != null) {
                    this.subtitle = andClearResult;
                    syncNextEventIndex(j);
                    this.textRendererNeedsUpdate = true;
                } else if (this.subtitle != null) {
                    long nextEventTime = getNextEventTime();
                    while (nextEventTime <= j) {
                        this.nextSubtitleEventIndex++;
                        nextEventTime = getNextEventTime();
                        this.textRendererNeedsUpdate = true;
                    }
                    if (nextEventTime == Long.MAX_VALUE) {
                        this.subtitle = null;
                    }
                }
                if (!this.inputStreamEnded && this.subtitle == null) {
                    try {
                        SampleHolder sampleHolder = this.parserHelper.getSampleHolder();
                        sampleHolder.clearData();
                        int data = this.source.readData(this.trackIndex, j, this.formatHolder, sampleHolder, false);
                        if (data == -3 && !sampleHolder.decodeOnly) {
                            this.parserHelper.startParseOperation();
                            this.textRendererNeedsUpdate = false;
                        } else if (data == -1) {
                            this.inputStreamEnded = true;
                        }
                    } catch (IOException e3) {
                        throw new ExoPlaybackException(e3);
                    }
                }
                if (this.textRendererNeedsUpdate && getState() == 3) {
                    this.textRendererNeedsUpdate = false;
                    if (this.subtitle == null) {
                        clearTextRenderer();
                    } else {
                        updateTextRenderer(j);
                    }
                }
            }
        } catch (IOException e4) {
            throw new ExoPlaybackException(e4);
        }
    }

    @Override // com.google.android.exoplayer.TrackRenderer
    protected void onDisabled() {
        this.subtitle = null;
        this.parserThread.quit();
        this.parserThread = null;
        this.parserHelper = null;
        clearTextRenderer();
        this.source.disable(this.trackIndex);
    }

    @Override // com.google.android.exoplayer.TrackRenderer
    protected void onReleased() {
        this.source.release();
    }

    @Override // com.google.android.exoplayer.TrackRenderer
    protected long getCurrentPositionUs() {
        return this.currentPositionUs;
    }

    @Override // com.google.android.exoplayer.TrackRenderer
    protected long getDurationUs() {
        return this.source.getTrackInfo(this.trackIndex).durationUs;
    }

    @Override // com.google.android.exoplayer.TrackRenderer
    protected long getBufferedPositionUs() {
        return -3L;
    }

    @Override // com.google.android.exoplayer.TrackRenderer
    protected boolean isEnded() {
        return this.inputStreamEnded && this.subtitle == null;
    }

    @Override // com.google.android.exoplayer.TrackRenderer
    protected boolean isReady() {
        return true;
    }

    private void syncNextEventIndex(long j) {
        this.nextSubtitleEventIndex = this.subtitle == null ? -1 : this.subtitle.getNextEventTimeIndex(j);
    }

    private long getNextEventTime() {
        if (this.nextSubtitleEventIndex == -1 || this.nextSubtitleEventIndex >= this.subtitle.getEventTimeCount()) {
            return Long.MAX_VALUE;
        }
        return this.subtitle.getEventTime(this.nextSubtitleEventIndex);
    }

    private void updateTextRenderer(long j) {
        String text = this.subtitle.getText(j);
        if (this.textRendererHandler != null) {
            this.textRendererHandler.obtainMessage(0, text).sendToTarget();
        } else {
            invokeRendererInternal(text);
        }
    }

    private void clearTextRenderer() {
        if (this.textRendererHandler != null) {
            this.textRendererHandler.obtainMessage(0, null).sendToTarget();
        } else {
            invokeRendererInternal(null);
        }
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        switch (message.what) {
            case 0:
                invokeRendererInternal((String) message.obj);
                return true;
            default:
                return false;
        }
    }

    private void invokeRendererInternal(String str) {
        this.textRenderer.onText(str);
    }
}
