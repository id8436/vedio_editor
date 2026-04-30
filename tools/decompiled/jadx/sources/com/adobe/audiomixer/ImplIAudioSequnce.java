package com.adobe.audiomixer;

import com.adobe.decoderfactory.AudioInfo;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
class ImplIAudioSequnce implements IAudioSequence {
    private ImplIVideoTrack audioTrack;
    private ImplIBackgroundMusicTrack backgroundMusicTrack;
    private long nativeSequenceHandle;

    public ImplIAudioSequnce() {
        this.nativeSequenceHandle = 0L;
        this.nativeSequenceHandle = JniInterface.createSequence();
        long videoTrack = JniInterface.getVideoTrack(this.nativeSequenceHandle);
        long backgroundMusicTrack = JniInterface.getBackgroundMusicTrack(this.nativeSequenceHandle);
        this.audioTrack = new ImplIVideoTrack(videoTrack);
        this.backgroundMusicTrack = new ImplIBackgroundMusicTrack(backgroundMusicTrack);
    }

    protected void finalyze() {
        release();
    }

    @Override // com.adobe.audiomixer.IAudioSequence
    public IVideoTrack getAudioTrack() {
        return this.audioTrack;
    }

    @Override // com.adobe.audiomixer.IAudioSequence
    public IBackgroundMusicTrack getBackgroundMusicTrack() {
        return this.backgroundMusicTrack;
    }

    @Override // com.adobe.audiomixer.IAudioSequence
    public void reset() {
        JniInterface.resetSequence(this.nativeSequenceHandle);
        internalReset();
    }

    @Override // com.adobe.audiomixer.IAudioSequence
    public boolean readyForRendering() {
        return JniInterface.readyForRendering(this.nativeSequenceHandle) != 0;
    }

    @Override // com.adobe.audiomixer.IAudioSequence
    public void setSampleRate(int i) {
        if (JniInterface.getSequenceAudioSampleRate(this.nativeSequenceHandle) != i) {
            JniInterface.setSequenceAudioSampleRate(this.nativeSequenceHandle, i);
        }
    }

    @Override // com.adobe.audiomixer.IAudioSequence
    public void setChannels(int i) {
        if (JniInterface.getSequenceAudioChannels(this.nativeSequenceHandle) != i) {
            JniInterface.setSequenceAudioChannel(this.nativeSequenceHandle, i);
        }
    }

    @Override // com.adobe.audiomixer.IAudioSequence
    public void setSampleType(AudioInfo.SampleType sampleType) {
        if (JniInterface.getSequenceAudioSampleType(this.nativeSequenceHandle) != sampleType) {
            JniInterface.setSequenceAudioSampleType(this.nativeSequenceHandle, sampleType);
        }
    }

    @Override // com.adobe.audiomixer.IAudioSequence
    public int getSampleRate() {
        return JniInterface.getSequenceAudioSampleRate(this.nativeSequenceHandle);
    }

    @Override // com.adobe.audiomixer.IAudioSequence
    public int getChannels() {
        return JniInterface.getSequenceAudioChannels(this.nativeSequenceHandle);
    }

    @Override // com.adobe.audiomixer.IAudioSequence
    public int getSampleSize() {
        return JniInterface.ConvertAudioSampleTypeJavaToNative(JniInterface.getSequenceAudioSampleType(this.nativeSequenceHandle));
    }

    @Override // com.adobe.audiomixer.IAudioSequence
    public AudioInfo.SampleType getSampleType() {
        return JniInterface.getSequenceAudioSampleType(this.nativeSequenceHandle);
    }

    @Override // com.adobe.audiomixer.IAudioSequence
    public VideoTime getDuration() {
        return this.audioTrack.getDuration();
    }

    @Override // com.adobe.audiomixer.IAudioSequence
    public void setBufferSize(int i) {
        JniInterface.setSequenceAudioBufferSize(this.nativeSequenceHandle, i);
    }

    @Override // com.adobe.audiomixer.IAudioSequence
    public int getBufferSize() {
        return JniInterface.getSequenceAudioBufferSize(this.nativeSequenceHandle);
    }

    @Override // com.adobe.audiomixer.IAudioSequence
    public void setBackgroundMusicMute(boolean z) {
        if (isBackgroundMusicMute() != z) {
            JniInterface.setSequenceBackgroundMusicMute(this.nativeSequenceHandle, z);
        }
    }

    @Override // com.adobe.audiomixer.IAudioSequence
    public boolean isBackgroundMusicMute() {
        return JniInterface.getSequenceBackgroundMusicMute(this.nativeSequenceHandle);
    }

    @Override // com.adobe.audiomixer.IAudioSequence
    public void seekTo(VideoTime videoTime) {
        JniInterface.seekSequence(this.nativeSequenceHandle, videoTime);
    }

    @Override // com.adobe.audiomixer.IAudioSequence
    public int readSamples(VideoTime videoTime, ByteBuffer byteBuffer) {
        return JniInterface.readSamples(this.nativeSequenceHandle, videoTime.getSampleTime(JniInterface.getSequenceAudioSampleRate(this.nativeSequenceHandle)), byteBuffer);
    }

    @Override // com.adobe.audiomixer.IAudioSequence
    public boolean prepare() {
        return this.audioTrack.prepare() && this.backgroundMusicTrack.prepare();
    }

    public void onClipChanged(IClip iClip) {
    }

    public void onBackgroundMusicChanged(IBackgroundMusicTrack iBackgroundMusicTrack) {
        internalReset();
    }

    public void onAudioTrackChanged(IVideoTrack iVideoTrack) {
        internalReset();
    }

    public void onAudioSequenceChanged(IAudioSequence iAudioSequence) {
        internalReset();
    }

    private void internalReset() {
    }

    @Override // com.adobe.audiomixer.IAudioSequence
    public void release() {
        if (this.nativeSequenceHandle != 0) {
            JniInterface.release(this.nativeSequenceHandle);
            this.nativeSequenceHandle = 0L;
        }
        if (this.audioTrack != null) {
            this.audioTrack.release();
        }
        if (this.backgroundMusicTrack != null) {
            this.backgroundMusicTrack.release();
        }
    }
}
