package com.adobe.decoderfactory;

/* JADX INFO: loaded from: classes2.dex */
public interface IAudioDecoder {
    String getName();

    AudioInfo getOutputInfo();

    String getSource();

    AudioInfo getSourceInfo();

    boolean hasError();

    boolean isEOF();

    void readNextSamples(AudioReadData audioReadData);

    void release();

    void seekTo(long j);
}
