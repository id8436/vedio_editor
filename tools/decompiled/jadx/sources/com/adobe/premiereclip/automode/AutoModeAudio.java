package com.adobe.premiereclip.automode;

import android.content.Context;
import com.adobe.decoderfactory.DecoderFactory;

/* JADX INFO: loaded from: classes2.dex */
public class AutoModeAudio {
    private static final String TAG = "AutoModeAudio";
    private static int MAX_BINS_PER_TASK = 50;
    private static int FLOAT_SIZE = 4;
    private static float EPSILON = 0.01f;
    public static float SLOW_PACE = 0.0f;
    public static float MEDIUM_PACE = 0.2f;
    public static float FAST_PACE = 0.4f;
    public static float VERY_FAST_PACE = 0.6f;
    public static float VERY_VERY_FAST_PACE = 0.8f;

    public interface ImpactDataResults {
        void onError(String str);

        void onProgress(float f2);

        void onSuccess(float[] fArr);
    }

    public void getImpactData(Context context, String str, ImpactDataResults impactDataResults) {
        DecoderFactory.initialize(context);
        new ImpactDataGenerator().getImpactData(context, str, impactDataResults);
    }

    public float[] getGravityData(float[] fArr) {
        return VeloBridge.PrepareForTransitions(fArr);
    }

    public TransitionData getTransitionData(float[] fArr, float[] fArr2, float f2, float f3, float f4, Boolean bool) {
        float[][] fArr3 = new float[2][];
        VeloBridge.CalculateTransitions(fArr, fArr2, f2, f3, f4, bool.booleanValue(), fArr3);
        TransitionData transitionData = new TransitionData();
        transitionData.transitions = fArr3[0];
        transitionData.pop = fArr3[1];
        return transitionData;
    }

    public class TransitionData {
        public float[] pop;
        public float[] transitions;

        public TransitionData() {
        }
    }

    public float getPaceInBPM(float[] fArr) {
        return VeloBridge.FindPaceInBPM(fArr);
    }
}
