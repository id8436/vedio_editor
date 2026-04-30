package com.google.android.exoplayer.dash.mpd;

import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class MediaPresentationDescription {
    public final long availabilityStartTime;
    public final long duration;
    public final boolean dynamic;
    public final long minBufferTime;
    public final long minUpdatePeriod;
    public final List<Period> periods;
    public final long timeShiftBufferDepth;
    public final UtcTimingElement utcTiming;

    public MediaPresentationDescription(long j, long j2, long j3, boolean z, long j4, long j5, UtcTimingElement utcTimingElement, List<Period> list) {
        this.availabilityStartTime = j;
        this.duration = j2;
        this.minBufferTime = j3;
        this.dynamic = z;
        this.minUpdatePeriod = j4;
        this.timeShiftBufferDepth = j5;
        this.utcTiming = utcTimingElement;
        this.periods = Collections.unmodifiableList(list);
    }
}
