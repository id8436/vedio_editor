package com.google.android.exoplayer.text.eia608;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.adobe.premiereclip.editor.waveform.WaveUtils;
import com.google.android.exoplayer.ExoPlaybackException;
import com.google.android.exoplayer.MediaFormatHolder;
import com.google.android.exoplayer.SampleHolder;
import com.google.android.exoplayer.SampleSource;
import com.google.android.exoplayer.TrackRenderer;
import com.google.android.exoplayer.text.TextRenderer;
import com.google.android.exoplayer.util.Assertions;
import com.google.android.exoplayer.util.Util;
import java.io.IOException;
import java.util.TreeSet;
import org.apache.commons.io.IOUtils;

/* JADX INFO: loaded from: classes2.dex */
public class Eia608TrackRenderer extends TrackRenderer implements Handler.Callback {
    private static final int CC_MODE_PAINT_ON = 3;
    private static final int CC_MODE_POP_ON = 2;
    private static final int CC_MODE_ROLL_UP = 1;
    private static final int CC_MODE_UNKNOWN = 0;
    private static final int DEFAULT_CAPTIONS_ROW_COUNT = 4;
    private static final int MAX_SAMPLE_READAHEAD_US = 5000000;
    private static final int MSG_INVOKE_RENDERER = 0;
    private String caption;
    private int captionMode;
    private int captionRowCount;
    private final StringBuilder captionStringBuilder;
    private long currentPositionUs;
    private final Eia608Parser eia608Parser;
    private final MediaFormatHolder formatHolder;
    private boolean inputStreamEnded;
    private String lastRenderedCaption;
    private final TreeSet<ClosedCaptionList> pendingCaptionLists;
    private final SampleHolder sampleHolder;
    private final SampleSource source;
    private final TextRenderer textRenderer;
    private final Handler textRendererHandler;
    private int trackIndex;

    public Eia608TrackRenderer(SampleSource sampleSource, TextRenderer textRenderer, Looper looper) {
        this.source = (SampleSource) Assertions.checkNotNull(sampleSource);
        this.textRenderer = (TextRenderer) Assertions.checkNotNull(textRenderer);
        this.textRendererHandler = looper == null ? null : new Handler(looper, this);
        this.eia608Parser = new Eia608Parser();
        this.formatHolder = new MediaFormatHolder();
        this.sampleHolder = new SampleHolder(1);
        this.captionStringBuilder = new StringBuilder();
        this.pendingCaptionLists = new TreeSet<>();
    }

    @Override // com.google.android.exoplayer.TrackRenderer
    protected int doPrepare() throws ExoPlaybackException {
        try {
            if (!this.source.prepare()) {
                return 0;
            }
            for (int i = 0; i < this.source.getTrackCount(); i++) {
                if (this.eia608Parser.canParse(this.source.getTrackInfo(i).mimeType)) {
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
        this.inputStreamEnded = false;
        this.pendingCaptionLists.clear();
        clearPendingSample();
        this.captionRowCount = 4;
        setCaptionMode(0);
        invokeRenderer(null);
    }

    @Override // com.google.android.exoplayer.TrackRenderer
    protected void doSomeWork(long j, long j2) throws ExoPlaybackException {
        this.currentPositionUs = j;
        try {
            this.source.continueBuffering(j);
            if (isSamplePending()) {
                maybeParsePendingSample();
            }
            int data = this.inputStreamEnded ? -1 : -3;
            while (!isSamplePending() && data == -3) {
                try {
                    data = this.source.readData(this.trackIndex, j, this.formatHolder, this.sampleHolder, false);
                    if (data == -3) {
                        maybeParsePendingSample();
                    } else if (data == -1) {
                        this.inputStreamEnded = true;
                    }
                } catch (IOException e2) {
                    throw new ExoPlaybackException(e2);
                }
            }
            while (!this.pendingCaptionLists.isEmpty() && this.pendingCaptionLists.first().timeUs <= this.currentPositionUs) {
                ClosedCaptionList closedCaptionListPollFirst = this.pendingCaptionLists.pollFirst();
                consumeCaptionList(closedCaptionListPollFirst);
                if (!closedCaptionListPollFirst.decodeOnly) {
                    invokeRenderer(this.caption);
                }
            }
        } catch (IOException e3) {
            throw new ExoPlaybackException(e3);
        }
    }

    @Override // com.google.android.exoplayer.TrackRenderer
    protected void onDisabled() {
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

    private void invokeRenderer(String str) {
        if (!Util.areEqual(this.lastRenderedCaption, str)) {
            this.lastRenderedCaption = str;
            if (this.textRendererHandler != null) {
                this.textRendererHandler.obtainMessage(0, str).sendToTarget();
            } else {
                invokeRendererInternal(str);
            }
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

    private void maybeParsePendingSample() {
        if (this.sampleHolder.timeUs <= this.currentPositionUs + WaveUtils.END_DURATION_BLOCKED) {
            ClosedCaptionList closedCaptionList = this.eia608Parser.parse(this.sampleHolder);
            clearPendingSample();
            if (closedCaptionList != null) {
                this.pendingCaptionLists.add(closedCaptionList);
            }
        }
    }

    private void consumeCaptionList(ClosedCaptionList closedCaptionList) {
        int length = closedCaptionList.captions.length;
        if (length != 0) {
            for (int i = 0; i < length; i++) {
                ClosedCaption closedCaption = closedCaptionList.captions[i];
                if (closedCaption.type == 0) {
                    ClosedCaptionCtrl closedCaptionCtrl = (ClosedCaptionCtrl) closedCaption;
                    if (closedCaptionCtrl.isMiscCode()) {
                        handleMiscCode(closedCaptionCtrl);
                    } else if (closedCaptionCtrl.isPreambleAddressCode()) {
                        handlePreambleAddressCode();
                    }
                } else {
                    handleText((ClosedCaptionText) closedCaption);
                }
            }
            if (this.captionMode == 1 || this.captionMode == 3) {
                this.caption = getDisplayCaption();
            }
        }
    }

    private void handleText(ClosedCaptionText closedCaptionText) {
        if (this.captionMode != 0) {
            this.captionStringBuilder.append(closedCaptionText.text);
        }
    }

    private void handleMiscCode(ClosedCaptionCtrl closedCaptionCtrl) {
        switch (closedCaptionCtrl.cc2) {
            case 32:
                setCaptionMode(2);
                break;
            case 33:
            case 34:
            case 35:
            case 36:
            case 40:
            default:
                if (this.captionMode != 0) {
                    switch (closedCaptionCtrl.cc2) {
                        case 44:
                            this.caption = null;
                            if (this.captionMode == 1 || this.captionMode == 3) {
                                this.captionStringBuilder.setLength(0);
                            }
                            break;
                        case 45:
                            maybeAppendNewline();
                            break;
                        case 46:
                            this.captionStringBuilder.setLength(0);
                            break;
                        case 47:
                            this.caption = getDisplayCaption();
                            this.captionStringBuilder.setLength(0);
                            break;
                    }
                }
                break;
            case 37:
                this.captionRowCount = 2;
                setCaptionMode(1);
                break;
            case 38:
                this.captionRowCount = 3;
                setCaptionMode(1);
                break;
            case 39:
                this.captionRowCount = 4;
                setCaptionMode(1);
                break;
            case 41:
                setCaptionMode(3);
                break;
        }
    }

    private void handlePreambleAddressCode() {
        maybeAppendNewline();
    }

    private void setCaptionMode(int i) {
        if (this.captionMode != i) {
            this.captionMode = i;
            this.captionStringBuilder.setLength(0);
            if (i == 1 || i == 0) {
                this.caption = null;
            }
        }
    }

    private void maybeAppendNewline() {
        int length = this.captionStringBuilder.length();
        if (length > 0 && this.captionStringBuilder.charAt(length - 1) != '\n') {
            this.captionStringBuilder.append('\n');
        }
    }

    private String getDisplayCaption() {
        int length = this.captionStringBuilder.length();
        if (length == 0) {
            return null;
        }
        boolean z = this.captionStringBuilder.charAt(length + (-1)) == '\n';
        if (length == 1 && z) {
            return null;
        }
        if (z) {
            length--;
        }
        if (this.captionMode != 1) {
            return this.captionStringBuilder.substring(0, length);
        }
        int iLastIndexOf = length;
        for (int i = 0; i < this.captionRowCount && iLastIndexOf != -1; i++) {
            iLastIndexOf = this.captionStringBuilder.lastIndexOf(IOUtils.LINE_SEPARATOR_UNIX, iLastIndexOf - 1);
        }
        int i2 = iLastIndexOf != -1 ? iLastIndexOf + 1 : 0;
        this.captionStringBuilder.delete(0, i2);
        return this.captionStringBuilder.substring(0, length - i2);
    }

    private void clearPendingSample() {
        this.sampleHolder.timeUs = -1L;
        this.sampleHolder.clearData();
    }

    private boolean isSamplePending() {
        return this.sampleHolder.timeUs != -1;
    }
}
