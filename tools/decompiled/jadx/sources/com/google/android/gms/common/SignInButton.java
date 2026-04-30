package com.google.android.gms.common;

import android.content.Context;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import com.google.android.gms.common.internal.zzv;
import com.google.android.gms.common.internal.zzy;
import com.google.android.gms.common.internal.zzz;
import com.google.android.gms.dynamic.zzg;

/* JADX INFO: loaded from: classes2.dex */
public final class SignInButton extends FrameLayout implements View.OnClickListener {
    public static final int COLOR_DARK = 0;
    public static final int COLOR_LIGHT = 1;
    public static final int SIZE_ICON_ONLY = 2;
    public static final int SIZE_STANDARD = 0;
    public static final int SIZE_WIDE = 1;
    private int mColor;
    private int mSize;
    private View zzPb;
    private View.OnClickListener zzPc;

    public SignInButton(Context context) {
        this(context, null);
    }

    public SignInButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SignInButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.zzPc = null;
        setStyle(0, 0);
    }

    private void zzS(Context context) {
        if (this.zzPb != null) {
            removeView(this.zzPb);
        }
        try {
            this.zzPb = zzy.zzb(context, this.mSize, this.mColor);
        } catch (zzg.zza e2) {
            Log.w("SignInButton", "Sign in button not found, using placeholder instead");
            this.zzPb = zza(context, this.mSize, this.mColor);
        }
        addView(this.zzPb);
        this.zzPb.setEnabled(isEnabled());
        this.zzPb.setOnClickListener(this);
    }

    private static Button zza(Context context, int i, int i2) {
        zzz zzzVar = new zzz(context);
        zzzVar.zza(context.getResources(), i, i2);
        return zzzVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (this.zzPc == null || view != this.zzPb) {
            return;
        }
        this.zzPc.onClick(this);
    }

    public void setColorScheme(int i) {
        setStyle(this.mSize, i);
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        this.zzPb.setEnabled(z);
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        this.zzPc = onClickListener;
        if (this.zzPb != null) {
            this.zzPb.setOnClickListener(this);
        }
    }

    public void setSize(int i) {
        setStyle(i, this.mColor);
    }

    public void setStyle(int i, int i2) {
        zzv.zza(i >= 0 && i < 3, "Unknown button size %d", Integer.valueOf(i));
        zzv.zza(i2 >= 0 && i2 < 2, "Unknown color scheme %s", Integer.valueOf(i2));
        this.mSize = i;
        this.mColor = i2;
        zzS(getContext());
    }
}
