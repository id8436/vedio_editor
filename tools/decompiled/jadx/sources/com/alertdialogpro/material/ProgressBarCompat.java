package com.alertdialogpro.material;

import android.R;
import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.widget.ProgressBar;

/* JADX INFO: loaded from: classes2.dex */
public class ProgressBarCompat extends ProgressBar {
    public ProgressBarCompat(Context context) {
        this(context, null);
    }

    public ProgressBarCompat(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.progressBarStyle);
    }

    public ProgressBarCompat(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        if (Build.VERSION.SDK_INT < 21 && isIndeterminate()) {
            int iA = a(context, b.colorControlActivated);
            float fApplyDimension = TypedValue.applyDimension(1, 4.0f, getResources().getDisplayMetrics());
            if (iA != 0) {
                setIndeterminateDrawable(new com.alertdialogpro.material.a.a(iA, fApplyDimension));
            }
        }
    }

    private int a(Context context, int i) {
        if (context == null) {
            return 0;
        }
        TypedValue typedValue = new TypedValue();
        if (!context.getTheme().resolveAttribute(i, typedValue, true)) {
            return 0;
        }
        if (typedValue.type >= 16 && typedValue.type <= 31) {
            return typedValue.data;
        }
        if (typedValue.type == 3) {
            return context.getResources().getColor(typedValue.resourceId);
        }
        return 0;
    }
}
