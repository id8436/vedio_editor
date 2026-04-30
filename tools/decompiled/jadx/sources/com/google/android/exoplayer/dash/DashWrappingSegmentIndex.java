package com.google.android.exoplayer.dash;

import android.net.Uri;
import com.google.android.exoplayer.chunk.parser.SegmentIndex;
import com.google.android.exoplayer.dash.mpd.RangedUri;
import com.google.android.exoplayer.util.Util;

/* JADX INFO: loaded from: classes2.dex */
public class DashWrappingSegmentIndex implements DashSegmentIndex {
    private final long indexAnchor;
    private final SegmentIndex segmentIndex;
    private final Uri uri;

    public DashWrappingSegmentIndex(SegmentIndex segmentIndex, Uri uri, long j) {
        this.segmentIndex = segmentIndex;
        this.uri = uri;
        this.indexAnchor = j;
    }

    @Override // com.google.android.exoplayer.dash.DashSegmentIndex
    public int getFirstSegmentNum() {
        return 0;
    }

    @Override // com.google.android.exoplayer.dash.DashSegmentIndex
    public int getLastSegmentNum() {
        return this.segmentIndex.length - 1;
    }

    @Override // com.google.android.exoplayer.dash.DashSegmentIndex
    public long getTimeUs(int i) {
        return this.segmentIndex.timesUs[i];
    }

    @Override // com.google.android.exoplayer.dash.DashSegmentIndex
    public long getDurationUs(int i) {
        return this.segmentIndex.durationsUs[i];
    }

    @Override // com.google.android.exoplayer.dash.DashSegmentIndex
    public RangedUri getSegmentUrl(int i) {
        return new RangedUri(this.uri, null, this.indexAnchor + this.segmentIndex.offsets[i], this.segmentIndex.sizes[i]);
    }

    @Override // com.google.android.exoplayer.dash.DashSegmentIndex
    public int getSegmentNum(long j) {
        return Util.binarySearchFloor(this.segmentIndex.timesUs, j, true, true);
    }

    @Override // com.google.android.exoplayer.dash.DashSegmentIndex
    public boolean isExplicit() {
        return true;
    }
}
