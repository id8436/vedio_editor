package com.adobe.audiomixer;

/* JADX INFO: loaded from: classes.dex */
public interface IBackgroundMusicTrack extends ITrack {
    float getAudioGainLevel();

    VideoTime getInTime();

    ISourceMedia getSourceMedia();

    boolean isAudioAutoDuck();

    boolean isAudioFadeIn();

    boolean isAudioFadeOut();

    void setAudioAutoDuck(boolean z);

    void setAudioFadeIn(boolean z);

    void setAudioFadeOut(boolean z);

    void setAudioGainLevel(float f2);

    void setInTime(VideoTime videoTime);

    void setSource(String str);
}
