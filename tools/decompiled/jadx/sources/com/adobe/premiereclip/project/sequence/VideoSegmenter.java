package com.adobe.premiereclip.project.sequence;

/* JADX INFO: loaded from: classes2.dex */
public class VideoSegmenter {
    public static float[] getVideoSegmentsForAssetReference(AssetReference assetReference, float f2, float f3) {
        double durationUs = assetReference.getDurationUs() / 1000000.0d;
        double dRound = ((double) Math.round((1.0f - f2) * 13.0f)) + ((double) Math.round((1.0f - f3) * 3.0f));
        if (durationUs / 10.0d >= dRound) {
            dRound = durationUs / 10.0d;
        }
        long jRound = (int) Math.round(durationUs / dRound);
        if (jRound < 1) {
            jRound = 1;
        }
        return getSegmentStartTimesWithDuration(durationUs, (int) jRound);
    }

    private static float[] getSegmentStartTimesWithDuration(double d2, int i) {
        float[] fArr = new float[i];
        double d3 = 0.0d;
        double d4 = d2 / ((double) i);
        for (int i2 = 0; i2 < i; i2++) {
            fArr[i2] = (float) d3;
            d3 += d4;
        }
        return fArr;
    }
}
