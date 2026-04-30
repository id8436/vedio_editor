package com.adobe.premiereclip.automode;

/* JADX INFO: loaded from: classes2.dex */
public class VeloBridge {
    private static String LIB_NAME = "VeloBridge";
    private long mVeloSyncHandle = JNINewVeloSyncObject();

    private static native void JNIAddSFTBin(long j, float[] fArr, int i, int i2);

    public static native void JNICalculateTransitions(float[] fArr, float[] fArr2, float f2, float f3, float f4, boolean z, float[][] fArr3);

    private static native void JNIDisposeVeloSyncObject(long j);

    private static native float JNIFindPaceInBPM(float[] fArr);

    private static native int JNIGetSamplesPerSpectrogramBin(long j);

    private static native float JNIGetVeloSyncVersion();

    private static native int JNIGetWindowBufferPadding(long j);

    private static native void JNIInitForThreading(long j, int i);

    private static native long JNINewVeloSyncObject();

    private static native float[] JNIPrepareForTransitions(float[] fArr);

    private static native float[] JNIProcessRequest(long j);

    private static native void JNISetAudioDurationInSamples(long j, int i);

    public void InitForThreading(int i) {
        JNIInitForThreading(this.mVeloSyncHandle, i);
    }

    public float[] ProcessRequest() {
        return JNIProcessRequest(this.mVeloSyncHandle);
    }

    public void AddSFTBin(float[] fArr, int i, int i2) {
        JNIAddSFTBin(this.mVeloSyncHandle, fArr, i, i2);
    }

    public int GetSamplesPerSpectrogramBin() {
        return JNIGetSamplesPerSpectrogramBin(this.mVeloSyncHandle);
    }

    public int GetWindowBufferPadding() {
        return JNIGetWindowBufferPadding(this.mVeloSyncHandle);
    }

    public void SetAudioDurationInSamples(int i) {
        JNISetAudioDurationInSamples(this.mVeloSyncHandle, i);
    }

    public static float[] PrepareForTransitions(float[] fArr) {
        return JNIPrepareForTransitions(fArr);
    }

    public static void CalculateTransitions(float[] fArr, float[] fArr2, float f2, float f3, float f4, boolean z, float[][] fArr3) {
        JNICalculateTransitions(fArr, fArr2, f2, f3, f4, z, fArr3);
    }

    public static float getVeloSyncVersion() {
        return JNIGetVeloSyncVersion();
    }

    public static float FindPaceInBPM(float[] fArr) {
        return JNIFindPaceInBPM(fArr);
    }

    public void dispose() {
        JNIDisposeVeloSyncObject(this.mVeloSyncHandle);
        this.mVeloSyncHandle = 0L;
    }

    static {
        System.loadLibrary(LIB_NAME);
    }
}
