package com.google.android.exoplayer;

import android.content.Context;
import android.util.AttributeSet;
import android.view.SurfaceView;

/* JADX INFO: loaded from: classes2.dex */
public class VideoSurfaceView extends SurfaceView {
    private static final float MAX_ASPECT_RATIO_DEFORMATION_PERCENT = 0.01f;
    private float videoAspectRatio;

    public VideoSurfaceView(Context context) {
        super(context);
    }

    public VideoSurfaceView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public void setVideoWidthHeightRatio(float f2) {
        if (this.videoAspectRatio != f2) {
            this.videoAspectRatio = f2;
            requestLayout();
        }
    }

    @Override // android.view.SurfaceView, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        if (this.videoAspectRatio != 0.0f) {
            float f2 = (this.videoAspectRatio / (measuredWidth / measuredHeight)) - 1.0f;
            if (f2 > MAX_ASPECT_RATIO_DEFORMATION_PERCENT) {
                measuredHeight = (int) (measuredWidth / this.videoAspectRatio);
            } else if (f2 < -0.01f) {
                measuredWidth = (int) (measuredHeight * this.videoAspectRatio);
            }
        }
        setMeasuredDimension(measuredWidth, measuredHeight);
    }
}
