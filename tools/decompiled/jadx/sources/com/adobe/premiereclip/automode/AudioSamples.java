package com.adobe.premiereclip.automode;

/* JADX INFO: loaded from: classes2.dex */
public class AudioSamples {
    public int count;
    public int offset;
    public long position;
    public float[] samples;

    AudioSamples() {
        this.samples = null;
        this.offset = 0;
        this.count = 0;
        this.position = 0L;
    }

    AudioSamples(float[] fArr, int i, int i2, long j) {
        this.samples = fArr;
        this.offset = i;
        this.count = i2;
        this.position = j;
    }

    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public AudioSamples m6clone() {
        return new AudioSamples(this.samples, this.offset, this.count, this.position);
    }
}
