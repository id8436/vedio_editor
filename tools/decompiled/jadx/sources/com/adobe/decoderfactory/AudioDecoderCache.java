package com.adobe.decoderfactory;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class AudioDecoderCache {
    private static int MAX_OPEN_MEDIA_COUNT = 4;
    private static AudioDecoderCache sInstance;
    private List<DecoderInfo> mSourceList = new ArrayList();

    class DecoderInfo {
        IAudioDecoder decoder;
        int sequenceId;

        public DecoderInfo(int i, IAudioDecoder iAudioDecoder) {
            this.sequenceId = i;
            this.decoder = iAudioDecoder;
        }

        public int getSequenceId() {
            return this.sequenceId;
        }

        public IAudioDecoder getDecoder() {
            return this.decoder;
        }
    }

    public static void initialize() {
        if (sInstance == null) {
            sInstance = new AudioDecoderCache();
        }
    }

    public static void terminate() {
        if (sInstance != null) {
            sInstance.release();
            sInstance = null;
        }
    }

    private AudioDecoderCache() {
    }

    protected void finalyze() {
        release();
    }

    public void release() {
        this.mSourceList.clear();
    }

    /* JADX WARN: Removed duplicated region for block: B:6:0x0009  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized com.adobe.decoderfactory.IAudioDecoder getDecoder(int r4, java.lang.String r5) {
        /*
            r3 = this;
            monitor-enter(r3)
            if (r5 == 0) goto L9
            boolean r0 = r5.isEmpty()     // Catch: java.lang.Throwable -> L48
            if (r0 == 0) goto Lc
        L9:
            r0 = 0
        La:
            monitor-exit(r3)
            return r0
        Lc:
            if (r4 >= 0) goto L13
            com.adobe.decoderfactory.IAudioDecoder r0 = r3.createDecoder(r5)     // Catch: java.lang.Throwable -> L48
            goto La
        L13:
            r0 = 0
        L14:
            java.util.List<com.adobe.decoderfactory.AudioDecoderCache$DecoderInfo> r1 = r3.mSourceList     // Catch: java.lang.Throwable -> L48
            int r1 = r1.size()     // Catch: java.lang.Throwable -> L48
            if (r0 >= r1) goto L3b
            com.adobe.decoderfactory.AudioDecoderCache$DecoderInfo r1 = r3.getDecoderInfo(r0)     // Catch: java.lang.Throwable -> L48
            int r2 = r1.getSequenceId()     // Catch: java.lang.Throwable -> L48
            if (r2 != r4) goto L38
            com.adobe.decoderfactory.IAudioDecoder r2 = r1.decoder     // Catch: java.lang.Throwable -> L48
            java.lang.String r2 = r2.getSource()     // Catch: java.lang.Throwable -> L48
            boolean r2 = r5.equals(r2)     // Catch: java.lang.Throwable -> L48
            if (r2 == 0) goto L38
            r3.removeAndPutAtBegining(r0)     // Catch: java.lang.Throwable -> L48
            com.adobe.decoderfactory.IAudioDecoder r0 = r1.decoder     // Catch: java.lang.Throwable -> L48
            goto La
        L38:
            int r0 = r0 + 1
            goto L14
        L3b:
            com.adobe.decoderfactory.IAudioDecoder r0 = r3.createDecoder(r5)     // Catch: java.lang.Throwable -> L48
            if (r0 == 0) goto La
            r3.addDecoderToList(r4, r0)     // Catch: java.lang.Throwable -> L48
            r3.updateList()     // Catch: java.lang.Throwable -> L48
            goto La
        L48:
            r0 = move-exception
            monitor-exit(r3)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.adobe.decoderfactory.AudioDecoderCache.getDecoder(int, java.lang.String):com.adobe.decoderfactory.IAudioDecoder");
    }

    private static String getFileExt(String str) {
        return str == null ? "" : str.substring(str.lastIndexOf(".") + 1, str.length());
    }

    public IAudioDecoder createDecoder(String str) {
        if (getFileExt(str).toUpperCase().equals("MOV")) {
            CustomAudioDecoder customAudioDecoder = new CustomAudioDecoder();
            if (!customAudioDecoder.open(str) || customAudioDecoder.hasError()) {
                SystemDefaultAudioDecoder systemDefaultAudioDecoder = new SystemDefaultAudioDecoder();
                if (systemDefaultAudioDecoder.open(str) && !systemDefaultAudioDecoder.hasError()) {
                    return systemDefaultAudioDecoder;
                }
            } else {
                return customAudioDecoder;
            }
        } else {
            SystemDefaultAudioDecoder systemDefaultAudioDecoder2 = new SystemDefaultAudioDecoder();
            if (!systemDefaultAudioDecoder2.open(str) || systemDefaultAudioDecoder2.hasError()) {
                CustomAudioDecoder customAudioDecoder2 = new CustomAudioDecoder();
                if (customAudioDecoder2.open(str) && !customAudioDecoder2.hasError()) {
                    return customAudioDecoder2;
                }
            } else {
                return systemDefaultAudioDecoder2;
            }
        }
        return null;
    }

    private synchronized DecoderInfo getDecoderInfo(int i) {
        return this.mSourceList.get(i);
    }

    private synchronized void removeAndPutAtBegining(int i) {
        DecoderInfo decoderInfo = getDecoderInfo(i);
        this.mSourceList.remove(i);
        this.mSourceList.add(0, decoderInfo);
    }

    private synchronized void addDecoderToList(int i, IAudioDecoder iAudioDecoder) {
        this.mSourceList.add(0, new DecoderInfo(i, iAudioDecoder));
    }

    private synchronized void updateList() {
        int size;
        while (this.mSourceList.size() > MAX_OPEN_MEDIA_COUNT && this.mSourceList.size() - 1 != 0) {
            this.mSourceList.get(size);
            this.mSourceList.remove(size);
        }
    }

    public static AudioDecoderCache Instance() {
        if (sInstance == null) {
            initialize();
        }
        return sInstance;
    }
}
