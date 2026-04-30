package com.adobe.audiomixer;

/* JADX INFO: loaded from: classes.dex */
public interface IClip {
    float getAudioGainLevel();

    float getAudioSpeedLevel();

    VideoTime getDuration();

    VideoTime getInTime();

    VideoTime getOutTime();

    ISourceMedia getSourceMedia();

    VideoTime getTimelineTime();

    boolean hasAudio();

    boolean isAudioFadeIn();

    boolean isAudioFadeOut();

    boolean isAudioMute();

    boolean isAudioSpeechLevel();

    void release();

    void setAudioFadeIn(boolean z);

    void setAudioFadeOut(boolean z);

    void setAudioGainLevel(float f2);

    void setAudioMute(boolean z);

    void setAudioSpeechLevel(boolean z);

    void setAudioSpeedLevel(float f2);

    void setDuration(VideoTime videoTime);

    void setInTime(VideoTime videoTime);

    void setTimelineTime(VideoTime videoTime);
}
