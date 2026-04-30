package com.google.android.exoplayer.dash;

import com.google.android.exoplayer.dash.mpd.RangedUri;

/* JADX INFO: loaded from: classes2.dex */
public class DashSingleSegmentIndex implements DashSegmentIndex {
    private final long durationUs;
    private final long startTimeUs;
    private final RangedUri uri;

    public DashSingleSegmentIndex(long j, long j2, RangedUri rangedUri) {
        this.startTimeUs = j;
        this.durationUs = j2;
        this.uri = rangedUri;
    }

    @Override // com.google.android.exoplayer.dash.DashSegmentIndex
    public int getSegmentNum(long j) {
        return 0;
    }

    @Override // com.google.android.exoplayer.dash.DashSegmentIndex
    public long getTimeUs(int i) {
        return this.startTimeUs;
    }

    @Override // com.google.android.exoplayer.dash.DashSegmentIndex
    public long getDurationUs(int i) {
        return this.durationUs;
    }

    @Override // com.google.android.exoplayer.dash.DashSegmentIndex
    public RangedUri getSegmentUrl(int i) {
        return this.uri;
    }

    @Override // com.google.android.exoplayer.dash.DashSegmentIndex
    public int getFirstSegmentNum() {
        return 0;
    }

    @Override // com.google.android.exoplayer.dash.DashSegmentIndex
    public int getLastSegmentNum() {
        return 0;
    }

    @Override // com.google.android.exoplayer.dash.DashSegmentIndex
    public boolean isExplicit() {
        return true;
    }
}
