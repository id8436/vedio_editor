package com.google.android.exoplayer.dash;

import com.google.android.exoplayer.dash.mpd.RangedUri;

/* JADX INFO: loaded from: classes2.dex */
public interface DashSegmentIndex {
    public static final int INDEX_UNBOUNDED = -1;

    long getDurationUs(int i);

    int getFirstSegmentNum();

    int getLastSegmentNum();

    int getSegmentNum(long j);

    RangedUri getSegmentUrl(int i);

    long getTimeUs(int i);

    boolean isExplicit();
}
