package com.google.android.exoplayer.text.ttml;

import com.google.android.exoplayer.text.Subtitle;
import com.google.android.exoplayer.util.Util;

/* JADX INFO: loaded from: classes2.dex */
public final class TtmlSubtitle implements Subtitle {
    private final long[] eventTimesUs;
    private final TtmlNode root;
    private final long startTimeUs;

    public TtmlSubtitle(TtmlNode ttmlNode, long j) {
        this.root = ttmlNode;
        this.startTimeUs = j;
        this.eventTimesUs = ttmlNode.getEventTimesUs();
    }

    @Override // com.google.android.exoplayer.text.Subtitle
    public long getStartTime() {
        return this.startTimeUs;
    }

    @Override // com.google.android.exoplayer.text.Subtitle
    public int getNextEventTimeIndex(long j) {
        int iBinarySearchCeil = Util.binarySearchCeil(this.eventTimesUs, j - this.startTimeUs, false, false);
        if (iBinarySearchCeil < this.eventTimesUs.length) {
            return iBinarySearchCeil;
        }
        return -1;
    }

    @Override // com.google.android.exoplayer.text.Subtitle
    public int getEventTimeCount() {
        return this.eventTimesUs.length;
    }

    @Override // com.google.android.exoplayer.text.Subtitle
    public long getEventTime(int i) {
        return this.eventTimesUs[i] + this.startTimeUs;
    }

    @Override // com.google.android.exoplayer.text.Subtitle
    public long getLastEventTime() {
        return (this.eventTimesUs.length == 0 ? -1L : this.eventTimesUs[this.eventTimesUs.length - 1]) + this.startTimeUs;
    }

    @Override // com.google.android.exoplayer.text.Subtitle
    public String getText(long j) {
        return this.root.getText(j - this.startTimeUs);
    }
}
