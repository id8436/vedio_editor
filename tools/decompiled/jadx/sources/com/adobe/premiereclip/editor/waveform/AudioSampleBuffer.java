package com.adobe.premiereclip.editor.waveform;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class AudioSampleBuffer {
    private long bufferSize;
    private ArrayList<float[]> data = new ArrayList<>();
    private int numChannels;

    public AudioSampleBuffer(int i, long j) {
        this.numChannels = i;
        this.bufferSize = j;
    }

    public int getNumChannels() {
        return this.numChannels;
    }

    public long getBufferSize() {
        return this.bufferSize;
    }

    public ArrayList<float[]> getData() {
        return this.data;
    }
}
