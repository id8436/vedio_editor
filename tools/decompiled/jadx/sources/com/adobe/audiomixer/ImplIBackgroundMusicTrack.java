package com.adobe.audiomixer;

import com.adobe.decoderfactory.AudioInfo;

/* JADX INFO: loaded from: classes.dex */
public class ImplIBackgroundMusicTrack implements IBackgroundMusicTrack {
    private long musicTrackHandle;
    private VideoTime trackDuration = null;
    static int AudioFilter_FadeIn = 1;
    static int AudioFilter_FadeOut = 2;
    static int AudioFilter_AutoDuck = 16;

    public ImplIBackgroundMusicTrack(long j) {
        this.musicTrackHandle = 0L;
        this.musicTrackHandle = j;
    }

    protected void finalyze() {
        release();
    }

    @Override // com.adobe.audiomixer.IBackgroundMusicTrack
    public void setSource(String str) {
        JniInterface.setBackgroundMusicSource(this.musicTrackHandle, str);
        resetInternal();
    }

    @Override // com.adobe.audiomixer.IBackgroundMusicTrack
    public ISourceMedia getSourceMedia() {
        return new ImplISourceMedia(JniInterface.getBackgroundMusicSource(this.musicTrackHandle));
    }

    @Override // com.adobe.audiomixer.IBackgroundMusicTrack
    public void setAudioFadeIn(boolean z) {
        int i;
        int backgroundMusicAudioFilter = JniInterface.getBackgroundMusicAudioFilter(this.musicTrackHandle);
        if (z) {
            i = AudioFilter_FadeIn | backgroundMusicAudioFilter;
        } else {
            i = (AudioFilter_FadeIn ^ (-1)) & backgroundMusicAudioFilter;
        }
        if (i != backgroundMusicAudioFilter) {
            JniInterface.setBackgroundMusicAudioFilter(this.musicTrackHandle, i);
        }
    }

    @Override // com.adobe.audiomixer.IBackgroundMusicTrack
    public void setAudioFadeOut(boolean z) {
        int i;
        int backgroundMusicAudioFilter = JniInterface.getBackgroundMusicAudioFilter(this.musicTrackHandle);
        if (z) {
            i = AudioFilter_FadeOut | backgroundMusicAudioFilter;
        } else {
            i = (AudioFilter_FadeOut ^ (-1)) & backgroundMusicAudioFilter;
        }
        if (i != backgroundMusicAudioFilter) {
            JniInterface.setBackgroundMusicAudioFilter(this.musicTrackHandle, i);
        }
    }

    @Override // com.adobe.audiomixer.IBackgroundMusicTrack
    public void setAudioAutoDuck(boolean z) {
        int i;
        int backgroundMusicAudioFilter = JniInterface.getBackgroundMusicAudioFilter(this.musicTrackHandle);
        if (z) {
            i = AudioFilter_AutoDuck | backgroundMusicAudioFilter;
        } else {
            i = (AudioFilter_AutoDuck ^ (-1)) & backgroundMusicAudioFilter;
        }
        if (i != backgroundMusicAudioFilter) {
            JniInterface.setBackgroundMusicAudioFilter(this.musicTrackHandle, i);
        }
    }

    @Override // com.adobe.audiomixer.IBackgroundMusicTrack
    public void setInTime(VideoTime videoTime) {
        if (!JniInterface.getBackgroundMusicInTime(this.musicTrackHandle).equals(videoTime)) {
            JniInterface.setBackgroundMusicInTime(this.musicTrackHandle, videoTime);
        }
    }

    @Override // com.adobe.audiomixer.IBackgroundMusicTrack
    public VideoTime getInTime() {
        return JniInterface.getBackgroundMusicInTime(this.musicTrackHandle);
    }

    @Override // com.adobe.audiomixer.IBackgroundMusicTrack
    public boolean isAudioFadeIn() {
        return (JniInterface.getBackgroundMusicAudioFilter(this.musicTrackHandle) & AudioFilter_FadeIn) != 0;
    }

    @Override // com.adobe.audiomixer.IBackgroundMusicTrack
    public boolean isAudioFadeOut() {
        return (JniInterface.getBackgroundMusicAudioFilter(this.musicTrackHandle) & AudioFilter_FadeIn) != 0;
    }

    @Override // com.adobe.audiomixer.IBackgroundMusicTrack
    public boolean isAudioAutoDuck() {
        return (JniInterface.getBackgroundMusicAudioFilter(this.musicTrackHandle) & AudioFilter_AutoDuck) != 0;
    }

    @Override // com.adobe.audiomixer.IBackgroundMusicTrack
    public void setAudioGainLevel(float f2) {
        if (JniInterface.getBackgroundMusicAudioGainLevel(this.musicTrackHandle) != f2) {
            JniInterface.setBackgroundMusicAudioGainLevel(this.musicTrackHandle, f2);
        }
    }

    @Override // com.adobe.audiomixer.IBackgroundMusicTrack
    public float getAudioGainLevel() {
        return JniInterface.getBackgroundMusicAudioGainLevel(this.musicTrackHandle);
    }

    @Override // com.adobe.audiomixer.ITrack
    public void reset() {
        JniInterface.resetBackgroundMusicTrack(this.musicTrackHandle);
        resetInternal();
    }

    @Override // com.adobe.audiomixer.ITrack
    public boolean prepare() {
        AudioInfo audioMediaInfo;
        if (this.trackDuration == null) {
            this.trackDuration = new VideoTime();
            ISourceMedia sourceMedia = getSourceMedia();
            if (sourceMedia != null && (audioMediaInfo = sourceMedia.getAudioMediaInfo()) != null) {
                this.trackDuration = new VideoTime(audioMediaInfo.getDuration(), 1000000L);
            }
        }
        return true;
    }

    @Override // com.adobe.audiomixer.ITrack
    public VideoTime getDuration() {
        prepare();
        return this.trackDuration;
    }

    private void Initialize() {
    }

    private void resetInternal() {
        this.trackDuration = null;
    }

    @Override // com.adobe.audiomixer.ITrack
    public void release() {
        if (this.musicTrackHandle != 0) {
            JniInterface.release(this.musicTrackHandle);
            this.musicTrackHandle = 0L;
        }
    }
}
