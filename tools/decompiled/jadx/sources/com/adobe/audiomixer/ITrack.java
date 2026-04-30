package com.adobe.audiomixer;

/* JADX INFO: loaded from: classes.dex */
public interface ITrack {
    VideoTime getDuration();

    boolean prepare();

    void release();

    void reset();
}
