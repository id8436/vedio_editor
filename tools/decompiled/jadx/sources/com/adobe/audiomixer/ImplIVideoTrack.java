package com.adobe.audiomixer;

import com.adobe.decoderfactory.AudioInfo;
import com.adobe.decoderfactory.DecoderFactory;
import com.adobe.decoderfactory.IAudioDecoder;

/* JADX INFO: loaded from: classes.dex */
class ImplIVideoTrack implements IVideoTrack {
    private VideoTime trackDuration = null;
    private long videoTrackHandle;

    public ImplIVideoTrack(long j) {
        this.videoTrackHandle = 0L;
        this.videoTrackHandle = j;
    }

    protected void finalyze() {
        release();
    }

    @Override // com.adobe.audiomixer.IVideoTrack
    public int getClipCount() {
        return JniInterface.getVideoClipCount(this.videoTrackHandle);
    }

    @Override // com.adobe.audiomixer.IVideoTrack
    public IClip appendMedia(String str) {
        VideoTime videoTime = new VideoTime();
        int clipCount = getClipCount();
        if (clipCount > 0) {
            IClip clip = getClip(clipCount - 1);
            videoTime = VideoTime.add(clip.getTimelineTime(), clip.getDuration());
            clip.release();
        }
        return appendMedia(str, videoTime, new VideoTime(), null);
    }

    @Override // com.adobe.audiomixer.IVideoTrack
    public IClip getClip(int i) {
        return new ImplIClip(JniInterface.getVideoClip(this.videoTrackHandle, i));
    }

    @Override // com.adobe.audiomixer.IVideoTrack
    public IClip appendMedia(String str, VideoTime videoTime, VideoTime videoTime2, VideoTime videoTime3) {
        IAudioDecoder audioDecoder;
        AudioInfo sourceInfo;
        long jCreateVideoClip = JniInterface.createVideoClip(str);
        JniInterface.setClipTimelineTime(jCreateVideoClip, videoTime);
        JniInterface.setClipInTime(jCreateVideoClip, videoTime2);
        VideoTime videoTime4 = (videoTime3 != null || (audioDecoder = DecoderFactory.getAudioDecoder(0, str)) == null || (sourceInfo = audioDecoder.getSourceInfo()) == null || !sourceInfo.hasAudio()) ? videoTime3 : new VideoTime(sourceInfo.getDuration(), 1000000L);
        if (videoTime4 == null) {
            videoTime4 = new VideoTime();
        }
        JniInterface.setClipDuration(jCreateVideoClip, videoTime4);
        JniInterface.appendClipToVideoTrack(this.videoTrackHandle, jCreateVideoClip);
        resetInternal();
        return new ImplIClip(jCreateVideoClip);
    }

    @Override // com.adobe.audiomixer.IVideoTrack, com.adobe.audiomixer.ITrack
    public void reset() {
        JniInterface.resetVideoTrack(this.videoTrackHandle);
        resetInternal();
    }

    @Override // com.adobe.audiomixer.ITrack
    public boolean prepare() {
        IClip clip;
        if (this.trackDuration == null) {
            this.trackDuration = new VideoTime();
            int clipCount = getClipCount();
            if (clipCount > 0 && (clip = getClip(clipCount - 1)) != null) {
                this.trackDuration = VideoTime.add(clip.getTimelineTime(), clip.getDuration());
                clip.release();
            }
        }
        return true;
    }

    @Override // com.adobe.audiomixer.ITrack
    public VideoTime getDuration() {
        prepare();
        return this.trackDuration;
    }

    public void onClipChanged(IClip iClip) {
        resetInternal();
    }

    public void onBackgroundMusicChanged(IBackgroundMusicTrack iBackgroundMusicTrack) {
    }

    public void onAudioTrackChanged(IVideoTrack iVideoTrack) {
    }

    public void onAudioSequenceChanged(IAudioSequence iAudioSequence) {
    }

    private void resetInternal() {
        this.trackDuration = null;
    }

    @Override // com.adobe.audiomixer.ITrack
    public void release() {
        if (this.videoTrackHandle != 0) {
            JniInterface.release(this.videoTrackHandle);
            this.videoTrackHandle = 0L;
        }
    }
}
