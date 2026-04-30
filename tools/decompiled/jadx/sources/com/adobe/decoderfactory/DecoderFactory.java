package com.adobe.decoderfactory;

import android.content.Context;

/* JADX INFO: loaded from: classes2.dex */
public class DecoderFactory {
    static Context currentContext;

    public static void initialize(Context context) {
        currentContext = context;
        AudioDecoderCache.initialize();
    }

    public static void terminate() {
        AudioDecoderCache.terminate();
    }

    public static Context getCurrentContext() {
        return currentContext;
    }

    public static synchronized IAudioDecoder getAudioDecoder(int i, String str) {
        return AudioDecoderCache.Instance() != null ? AudioDecoderCache.Instance().getDecoder(i, str) : null;
    }
}
