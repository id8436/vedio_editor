package com.adobe.creativesdk.foundation.internal.utils;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.NinePatchDrawable;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.util.Property;
import android.widget.RelativeLayout;
import com.adobe.creativesdk.foundation.auth.R;

/* JADX INFO: loaded from: classes2.dex */
public class DrawShadowRelativeLayout extends RelativeLayout {
    private static Property<DrawShadowRelativeLayout, Float> SHADOW_ALPHA = new Property<DrawShadowRelativeLayout, Float>(Float.class, "shadowAlpha") { // from class: com.adobe.creativesdk.foundation.internal.utils.DrawShadowRelativeLayout.1
        @Override // android.util.Property
        public Float get(DrawShadowRelativeLayout drawShadowRelativeLayout) {
            return Float.valueOf(drawShadowRelativeLayout.mAlpha);
        }

        @Override // android.util.Property
        public void set(DrawShadowRelativeLayout drawShadowRelativeLayout, Float f2) {
            drawShadowRelativeLayout.mAlpha = f2.floatValue();
            ViewCompat.postInvalidateOnAnimation(drawShadowRelativeLayout);
        }
    };
    private float mAlpha;
    private ObjectAnimator mAnimator;
    private int mHeight;
    private final boolean mShadowAtBottom;
    private Drawable mShadowDrawable;
    private NinePatchDrawable mShadowNinePatchDrawable;
    private int mShadowTopOffset;
    private boolean mShadowVisible;
    private int mWidth;

    public DrawShadowRelativeLayout(Context context) {
        this(context, null, 0);
    }

    public DrawShadowRelativeLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public DrawShadowRelativeLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mAlpha = 1.0f;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.AdobeCSDKDrawShadowFrameLayout, 0, 0);
        this.mShadowVisible = typedArrayObtainStyledAttributes.getBoolean(R.styleable.AdobeCSDKDrawShadowFrameLayout_adobeCSDKShadowVisible, true);
        this.mShadowAtBottom = typedArrayObtainStyledAttributes.getBoolean(R.styleable.AdobeCSDKDrawShadowFrameLayout_adobeCSDKShadowBottom, false);
        this.mShadowDrawable = typedArrayObtainStyledAttributes.getDrawable(R.styleable.AdobeCSDKDrawShadowFrameLayout_adobeCSDKShadowDrawable);
        if (this.mShadowDrawable == null && this.mShadowVisible) {
            this.mShadowDrawable = context.getResources().getDrawable(R.drawable.adobe_csdk_drop_shadow);
        }
        if (this.mShadowDrawable != null) {
            this.mShadowDrawable.setCallback(this);
            if (this.mShadowDrawable instanceof NinePatchDrawable) {
                this.mShadowNinePatchDrawable = (NinePatchDrawable) this.mShadowDrawable;
            }
        }
        setWillNotDraw(!this.mShadowVisible);
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.mWidth = i;
        this.mHeight = i2;
        if (this.mShadowAtBottom) {
            this.mShadowTopOffset = this.mHeight;
        }
        updateShadowBounds();
    }

    private void updateShadowBounds() {
        if (this.mShadowDrawable != null) {
            this.mShadowDrawable.setBounds(0, this.mShadowTopOffset, this.mWidth, this.mHeight);
        }
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        if (this.mShadowDrawable != null && this.mShadowVisible) {
            if (this.mShadowNinePatchDrawable != null) {
                this.mShadowNinePatchDrawable.getPaint().setAlpha((int) (255.0f * this.mAlpha));
            }
            this.mShadowDrawable.draw(canvas);
        }
    }

    public void setShadowTopOffset(int i) {
        this.mShadowTopOffset = i;
        updateShadowBounds();
        ViewCompat.postInvalidateOnAnimation(this);
    }

    public void setShadowVisible(boolean z, boolean z2) {
        this.mShadowVisible = z;
        if (this.mAnimator != null) {
            this.mAnimator.cancel();
            this.mAnimator = null;
        }
        if (z2 && this.mShadowDrawable != null) {
            Property<DrawShadowRelativeLayout, Float> property = SHADOW_ALPHA;
            float[] fArr = new float[2];
            fArr[0] = z ? 0.0f : 1.0f;
            fArr[1] = z ? 1.0f : 0.0f;
            this.mAnimator = ObjectAnimator.ofFloat(this, property, fArr);
            this.mAnimator.setDuration(1000L);
            this.mAnimator.start();
        }
        ViewCompat.postInvalidateOnAnimation(this);
        setWillNotDraw(!this.mShadowVisible);
    }
}
