package com.adobe.audiomixer;

import android.content.Context;
import com.adobe.decoderfactory.DecoderFactory;

/* JADX INFO: loaded from: classes.dex */
public class AudioMixer {
    static Context currentContext;

    public static IAudioSequence createSequence() {
        return new ImplIAudioSequnce();
    }

    public static void initialize(Context context) {
        currentContext = context;
        DecoderFactory.initialize(currentContext);
        JniInterface.initialize();
    }

    public static void terminate() {
        JniInterface.terminate();
        DecoderFactory.terminate();
    }

    public static Context getCurrentContext() {
        return currentContext;
    }
}
