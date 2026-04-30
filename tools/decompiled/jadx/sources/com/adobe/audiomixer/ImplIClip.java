package com.adobe.audiomixer;

/* JADX INFO: loaded from: classes.dex */
class ImplIClip implements IClip {
    long videoClipHandle;
    static int AudioFilter_FadeIn = 1;
    static int AudioFilter_FadeOut = 2;
    static int AudioFilter_SpeechLeveler = 4;
    static int AudioFilter_Mute = 8;

    public ImplIClip(long j) {
        this.videoClipHandle = 0L;
        this.videoClipHandle = j;
    }

    protected void finalyze() {
        release();
    }

    @Override // com.adobe.audiomixer.IClip
    public void setTimelineTime(VideoTime videoTime) {
        if (!JniInterface.getClipTimelineTime(this.videoClipHandle).equals(videoTime)) {
            JniInterface.setClipTimelineTime(this.videoClipHandle, videoTime);
        }
    }

    @Override // com.adobe.audiomixer.IClip
    public void setInTime(VideoTime videoTime) {
        if (!JniInterface.getClipInTime(this.videoClipHandle).equals(videoTime)) {
            JniInterface.setClipInTime(this.videoClipHandle, videoTime);
        }
    }

    @Override // com.adobe.audiomixer.IClip
    public void setDuration(VideoTime videoTime) {
        if (!JniInterface.getClipInTime(this.videoClipHandle).equals(videoTime)) {
            JniInterface.setClipDuration(this.videoClipHandle, videoTime);
        }
    }

    @Override // com.adobe.audiomixer.IClip
    public void setAudioMute(boolean z) {
        int i;
        int clipAudioFilter = JniInterface.getClipAudioFilter(this.videoClipHandle);
        if (z) {
            i = AudioFilter_Mute | clipAudioFilter;
        } else {
            i = (AudioFilter_Mute ^ (-1)) & clipAudioFilter;
        }
        if (i != clipAudioFilter) {
            JniInterface.setClipAudioFilter(this.videoClipHandle, i);
        }
    }

    @Override // com.adobe.audiomixer.IClip
    public void setAudioFadeIn(boolean z) {
        int i;
        int clipAudioFilter = JniInterface.getClipAudioFilter(this.videoClipHandle);
        if (z) {
            i = AudioFilter_FadeIn | clipAudioFilter;
        } else {
            i = (AudioFilter_FadeIn ^ (-1)) & clipAudioFilter;
        }
        if (i != clipAudioFilter) {
            JniInterface.setClipAudioFilter(this.videoClipHandle, i);
        }
    }

    @Override // com.adobe.audiomixer.IClip
    public void setAudioFadeOut(boolean z) {
        int i;
        int clipAudioFilter = JniInterface.getClipAudioFilter(this.videoClipHandle);
        if (z) {
            i = AudioFilter_FadeOut | clipAudioFilter;
        } else {
            i = (AudioFilter_FadeOut ^ (-1)) & clipAudioFilter;
        }
        if (i != clipAudioFilter) {
            JniInterface.setClipAudioFilter(this.videoClipHandle, i);
        }
    }

    @Override // com.adobe.audiomixer.IClip
    public void setAudioSpeechLevel(boolean z) {
        int i;
        int clipAudioFilter = JniInterface.getClipAudioFilter(this.videoClipHandle);
        if (z) {
            i = AudioFilter_SpeechLeveler | clipAudioFilter;
        } else {
            i = (AudioFilter_SpeechLeveler ^ (-1)) & clipAudioFilter;
        }
        if (i != clipAudioFilter) {
            JniInterface.setClipAudioFilter(this.videoClipHandle, i);
        }
    }

    @Override // com.adobe.audiomixer.IClip
    public boolean isAudioMute() {
        return (JniInterface.getClipAudioFilter(this.videoClipHandle) & AudioFilter_Mute) != 0;
    }

    @Override // com.adobe.audiomixer.IClip
    public boolean isAudioFadeIn() {
        return (JniInterface.getClipAudioFilter(this.videoClipHandle) & AudioFilter_FadeIn) != 0;
    }

    @Override // com.adobe.audiomixer.IClip
    public boolean isAudioFadeOut() {
        return (JniInterface.getClipAudioFilter(this.videoClipHandle) & AudioFilter_FadeOut) != 0;
    }

    @Override // com.adobe.audiomixer.IClip
    public boolean isAudioSpeechLevel() {
        return (JniInterface.getClipAudioFilter(this.videoClipHandle) & AudioFilter_SpeechLeveler) != 0;
    }

    @Override // com.adobe.audiomixer.IClip
    public void setAudioGainLevel(float f2) {
        if (JniInterface.getClipAudioGainLevel(this.videoClipHandle) != f2) {
            JniInterface.setClipAudioGainLevel(this.videoClipHandle, f2);
        }
    }

    @Override // com.adobe.audiomixer.IClip
    public float getAudioGainLevel() {
        return JniInterface.getClipAudioGainLevel(this.videoClipHandle);
    }

    @Override // com.adobe.audiomixer.IClip
    public void setAudioSpeedLevel(float f2) {
        if (JniInterface.getClipAudioSpeedLevel(this.videoClipHandle) != f2) {
            JniInterface.setClipAudioSpeedLevel(this.videoClipHandle, f2);
        }
    }

    @Override // com.adobe.audiomixer.IClip
    public float getAudioSpeedLevel() {
        return JniInterface.getClipAudioSpeedLevel(this.videoClipHandle);
    }

    @Override // com.adobe.audiomixer.IClip
    public ISourceMedia getSourceMedia() {
        return new ImplISourceMedia(JniInterface.getClipSource(this.videoClipHandle));
    }

    @Override // com.adobe.audiomixer.IClip
    public boolean hasAudio() {
        return JniInterface.hasClipAudio(this.videoClipHandle);
    }

    @Override // com.adobe.audiomixer.IClip
    public VideoTime getTimelineTime() {
        return JniInterface.getClipTimelineTime(this.videoClipHandle);
    }

    @Override // com.adobe.audiomixer.IClip
    public VideoTime getInTime() {
        return JniInterface.getClipInTime(this.videoClipHandle);
    }

    @Override // com.adobe.audiomixer.IClip
    public VideoTime getDuration() {
        return JniInterface.getClipDuration(this.videoClipHandle);
    }

    @Override // com.adobe.audiomixer.IClip
    public VideoTime getOutTime() {
        return VideoTime.add(JniInterface.getClipInTime(this.videoClipHandle), JniInterface.getClipDuration(this.videoClipHandle));
    }

    private void Initialize() {
    }

    @Override // com.adobe.audiomixer.IClip
    public void release() {
        if (this.videoClipHandle != 0) {
            JniInterface.release(this.videoClipHandle);
            this.videoClipHandle = 0L;
        }
    }
}
