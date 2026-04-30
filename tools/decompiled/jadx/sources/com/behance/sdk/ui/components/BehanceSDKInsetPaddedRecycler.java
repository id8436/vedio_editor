package com.behance.sdk.ui.components;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.support.annotation.Nullable;
import android.support.v7.widget.RecyclerView;
import android.util.AttributeSet;
import android.view.WindowInsets;
import com.behance.sdk.R;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKInsetPaddedRecycler extends RecyclerView {
    private int bottomSystemPadding;
    private boolean padSystemWindowsBottom;
    private boolean padSystemWindowsTop;
    private int paddingBottom;
    private int paddingTop;
    private int topSystemPadding;

    public BehanceSDKInsetPaddedRecycler(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        init(context, attributeSet);
    }

    public BehanceSDKInsetPaddedRecycler(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init(context, attributeSet);
    }

    private void init(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.BehanceSDKEndlessScrollRecycler);
        this.padSystemWindowsTop = typedArrayObtainStyledAttributes.getBoolean(R.styleable.BehanceSDKEndlessScrollRecycler_padSystemWindowTop, false);
        this.padSystemWindowsBottom = typedArrayObtainStyledAttributes.getBoolean(R.styleable.BehanceSDKEndlessScrollRecycler_padSystemWindowBottom, false);
        typedArrayObtainStyledAttributes.recycle();
        if (isPadInsets()) {
            this.paddingTop = getPaddingTop();
            this.paddingBottom = getPaddingBottom();
            this.topSystemPadding = 0;
            this.bottomSystemPadding = 0;
        }
    }

    @SuppressLint({"NewApi"})
    public void setPadding(int i) {
        if (isPadInsets()) {
            this.paddingTop = i;
            setPadding(getPaddingLeft(), this.topSystemPadding + i, getPaddingRight(), this.paddingBottom + this.bottomSystemPadding);
        } else {
            setPadding(getPaddingLeft(), i, getPaddingRight(), this.paddingBottom);
        }
    }

    @SuppressLint({"NewApi"})
    public void setPadding(int i, int i2) {
        if (isPadInsets()) {
            this.paddingBottom = i2;
            this.paddingTop = i;
            setPadding(getPaddingLeft(), this.topSystemPadding + i, getPaddingRight(), this.bottomSystemPadding + i2);
            return;
        }
        setPadding(getPaddingLeft(), i, getPaddingRight(), i2);
    }

    @Override // android.view.View
    @SuppressLint({"NewApi"})
    public WindowInsets onApplyWindowInsets(WindowInsets windowInsets) {
        if (isPadInsets()) {
            this.topSystemPadding = this.padSystemWindowsTop ? windowInsets.getSystemWindowInsetTop() : 0;
            this.bottomSystemPadding = this.padSystemWindowsBottom ? windowInsets.getSystemWindowInsetBottom() : 0;
            setPadding(getPaddingLeft(), this.paddingTop + this.topSystemPadding, getPaddingRight(), this.paddingBottom + this.bottomSystemPadding);
        }
        return super.onApplyWindowInsets(windowInsets);
    }

    private boolean isPadInsets() {
        return (this.padSystemWindowsTop || this.padSystemWindowsBottom) && Build.VERSION.SDK_INT >= 20;
    }
}
