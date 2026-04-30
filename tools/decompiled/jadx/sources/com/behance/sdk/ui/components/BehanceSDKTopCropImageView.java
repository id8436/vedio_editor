package com.behance.sdk.ui.components;

import android.content.Context;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.widget.ImageView;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKTopCropImageView extends ImageView {
    public BehanceSDKTopCropImageView(Context context) {
        super(context);
        setScale();
    }

    public BehanceSDKTopCropImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setScale();
    }

    public BehanceSDKTopCropImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        setScale();
    }

    private void setScale() {
        setScaleType(ImageView.ScaleType.MATRIX);
    }

    @Override // android.widget.ImageView
    public boolean setFrame(int i, int i2, int i3, int i4) {
        computeImageMatrix();
        return super.setFrame(i, i2, i3, i4);
    }

    private void computeImageMatrix() {
        float f2;
        if (getDrawable() != null) {
            Matrix imageMatrix = getImageMatrix();
            int width = (getWidth() - getPaddingLeft()) - getPaddingRight();
            int height = (getHeight() - getPaddingTop()) - getPaddingBottom();
            int intrinsicWidth = getDrawable().getIntrinsicWidth();
            int intrinsicHeight = getDrawable().getIntrinsicHeight();
            if (intrinsicWidth * height > intrinsicHeight * width) {
                f2 = height / intrinsicHeight;
            } else {
                f2 = width / intrinsicWidth;
            }
            imageMatrix.setRectToRect(new RectF(0.0f, intrinsicHeight - (height / f2), intrinsicWidth, intrinsicHeight), new RectF(0.0f, 0.0f, width, height), Matrix.ScaleToFit.FILL);
            setImageMatrix(imageMatrix);
        }
    }

    @Override // android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        computeVerticalScrollOffset();
    }
}
