package com.adobe.premiereclip.project.sequence;

import com.adobe.premiereclip.project.sequence.Clip;

/* JADX INFO: loaded from: classes2.dex */
public class VideoClip extends Clip {
    public VideoClip(AssetReference assetReference, long j, long j2, String str) {
        super(assetReference, j, j2, Clip.CLIP_TYPE.VIDEO, str);
    }

    public float[] getVideoSegmentStartTimesWithPace(float f2, float f3) {
        if (getClipType() != Clip.CLIP_TYPE.VIDEO) {
            return null;
        }
        return VideoSegmenter.getVideoSegmentsForAssetReference(getAssetReference(), f2, f3);
    }
}
