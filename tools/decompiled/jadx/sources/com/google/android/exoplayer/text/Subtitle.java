package com.google.android.exoplayer.text;

/* JADX INFO: loaded from: classes2.dex */
public interface Subtitle {
    long getEventTime(int i);

    int getEventTimeCount();

    long getLastEventTime();

    int getNextEventTimeIndex(long j);

    long getStartTime();

    String getText(long j);
}
