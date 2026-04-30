package com.adobe.audiomixer;

import com.adobe.decoderfactory.AudioInfo;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public interface IAudioSequence {
    IVideoTrack getAudioTrack();

    IBackgroundMusicTrack getBackgroundMusicTrack();

    int getBufferSize();

    int getChannels();

    VideoTime getDuration();

    int getSampleRate();

    int getSampleSize();

    AudioInfo.SampleType getSampleType();

    boolean isBackgroundMusicMute();

    boolean prepare();

    int readSamples(VideoTime videoTime, ByteBuffer byteBuffer);

    boolean readyForRendering();

    void release();

    void reset();

    void seekTo(VideoTime videoTime);

    void setBackgroundMusicMute(boolean z);

    void setBufferSize(int i);

    void setChannels(int i);

    void setSampleRate(int i);

    void setSampleType(AudioInfo.SampleType sampleType);
}
