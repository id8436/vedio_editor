package com.adobe.premiereclip.project.sequence;

import com.adobe.premiereclip.automode.AutoModeAudio;
import com.adobe.premiereclip.automode.AutoModeManager;

/* JADX INFO: loaded from: classes2.dex */
public class SyncData {
    private static final String TAG = "SyncData";
    private AutoModeAudio mAma;
    private float mBPMScaleFactor;
    private float mDuration;
    private float[] mGravity;
    private float[] mImpact;
    private float[] mLoopTransitions;
    private float mPace;
    private float mStartTime;
    private float[] mStartTransitions;

    public SyncData(float[] fArr, float f2, float f3) {
        init(fArr, f2, f3);
    }

    private void init(float[] fArr, float f2, float f3) {
        if (this.mAma == null) {
            AutoModeManager.getSharedInstance().Initialize();
            this.mAma = new AutoModeAudio();
        }
        this.mImpact = fArr;
        this.mPace = f2;
        this.mStartTime = f3;
        this.mBPMScaleFactor = -1.0f;
        this.mGravity = this.mAma.getGravityData(this.mImpact);
        this.mDuration = this.mImpact[0] * (this.mImpact.length - 1);
        this.mStartTransitions = this.mAma.getTransitionData(this.mImpact, this.mGravity, this.mPace, this.mStartTime, this.mDuration - this.mStartTime, true).transitions;
        this.mLoopTransitions = this.mStartTime == 0.0f ? this.mStartTransitions : null;
    }

    public void reset(float[] fArr, float f2, float f3) {
        if (this.mImpact != fArr || this.mPace != f2 || this.mStartTime != f3) {
            init(fArr, f2, f3);
        }
    }

    public float getTransition(int i) {
        float f2 = i;
        if (i < this.mStartTransitions.length) {
            return this.mStartTransitions[i];
        }
        if (this.mLoopTransitions == null) {
            this.mLoopTransitions = this.mAma.getTransitionData(this.mImpact, this.mGravity, this.mPace, 0.0f, this.mDuration, true).transitions;
        }
        float f3 = this.mStartTransitions[this.mStartTransitions.length - 1];
        float f4 = this.mLoopTransitions[this.mLoopTransitions.length - 1];
        int length = i - this.mStartTransitions.length;
        return f3 + this.mLoopTransitions[(length % (this.mLoopTransitions.length - 1)) + 1] + (f4 * (length / (this.mLoopTransitions.length - 1)));
    }

    public float getBPMScaleFactor() {
        if (this.mBPMScaleFactor == -1.0f) {
            this.mBPMScaleFactor = 1.0f;
            if (this.mImpact.length > 0) {
                float paceInBPM = this.mAma.getPaceInBPM(this.mImpact);
                if (paceInBPM < 156.0f) {
                    this.mBPMScaleFactor = (paceInBPM * 0.5f) / 156.0f;
                }
            }
        }
        return this.mBPMScaleFactor;
    }
}
