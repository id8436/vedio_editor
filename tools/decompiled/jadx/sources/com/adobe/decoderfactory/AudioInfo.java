package com.adobe.decoderfactory;

/* JADX INFO: loaded from: classes2.dex */
public class AudioInfo {
    int channels;
    long durationInMicroSeconds;
    int sampleRate;
    int sampleSize;
    SampleType sampleType;

    public enum SampleType {
        Signed16Bit
    }

    public AudioInfo(int i, int i2, SampleType sampleType, long j) {
        this.sampleRate = i;
        this.channels = i2;
        this.sampleType = sampleType;
        if (sampleType == SampleType.Signed16Bit) {
            this.sampleSize = 16;
        } else {
            this.sampleSize = 0;
        }
        this.durationInMicroSeconds = j;
    }

    public int getSampleRate() {
        return this.sampleRate;
    }

    public int getChannels() {
        return this.channels;
    }

    public int getSampleSize() {
        return this.sampleSize;
    }

    public SampleType getSampleType() {
        return this.sampleType;
    }

    public long getDuration() {
        return this.durationInMicroSeconds;
    }

    public boolean hasAudio() {
        return (this.sampleRate == 0 || this.channels == 0) ? false : true;
    }
}
