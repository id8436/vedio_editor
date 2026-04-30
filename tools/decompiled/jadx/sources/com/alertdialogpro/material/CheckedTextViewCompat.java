package com.alertdialogpro.material;

import android.R;
import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.v7.widget.TintManager;
import android.support.v7.widget.TintTypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.widget.Checkable;
import android.widget.TextView;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;

/* JADX INFO: loaded from: classes2.dex */
public class CheckedTextViewCompat extends TextView implements Checkable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int[] f662a = {R.attr.checked, R.attr.checkMark};
    private static final int[] h = {R.attr.state_checked};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f663b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f664c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Drawable f665d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f666e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f667f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f668g;
    private final TintManager i;
    private Field j;
    private Field k;

    public CheckedTextViewCompat(Context context) {
        this(context, null);
    }

    public CheckedTextViewCompat(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CheckedTextViewCompat(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        setBasePadding(b());
        TintTypedArray tintTypedArrayObtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context, attributeSet, f662a, i, 0);
        setChecked(tintTypedArrayObtainStyledAttributes.getBoolean(0, false));
        Drawable drawable = tintTypedArrayObtainStyledAttributes.getDrawable(1);
        if (drawable != null) {
            setCheckMarkDrawable(drawable);
        }
        tintTypedArrayObtainStyledAttributes.recycle();
        this.i = tintTypedArrayObtainStyledAttributes.getTintManager();
    }

    @Override // android.widget.Checkable
    public void toggle() {
        setChecked(!this.f663b);
    }

    @Override // android.widget.Checkable
    public boolean isChecked() {
        return this.f663b;
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z) {
        if (this.f663b != z) {
            this.f663b = z;
            refreshDrawableState();
        }
    }

    public void setCheckMarkDrawable(int i) {
        if (i == 0 || i != this.f664c) {
            this.f664c = i;
            setCheckMarkDrawable(this.i.getDrawable(i));
        }
    }

    public void setCheckMarkDrawable(Drawable drawable) {
        if (this.f665d != null) {
            this.f665d.setCallback(null);
            unscheduleDrawable(this.f665d);
        }
        if (drawable != null) {
            drawable.setCallback(this);
            drawable.setVisible(getVisibility() == 0, false);
            drawable.setState(h);
            setMinHeight(drawable.getIntrinsicHeight());
            this.f667f = drawable.getIntrinsicWidth();
            drawable.setState(getDrawableState());
        } else {
            this.f667f = 0;
        }
        this.f665d = drawable;
        a();
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        if (this.f665d != null) {
            this.f665d.setVisible(i == 0, false);
        }
    }

    @Override // android.widget.TextView, android.view.View
    @TargetApi(11)
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        if (this.f665d != null) {
            this.f665d.jumpToCurrentState();
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return drawable == this.f665d || super.verifyDrawable(drawable);
    }

    public Drawable getCheckMarkDrawable() {
        return this.f665d;
    }

    @Override // android.widget.TextView, android.view.View
    public void setPadding(int i, int i2, int i3, int i4) {
        super.setPadding(i, i2, i3, i4);
        setBasePadding(b());
        a();
    }

    @Override // android.widget.TextView, android.view.View
    @TargetApi(16)
    public void setPaddingRelative(int i, int i2, int i3, int i4) {
        super.setPaddingRelative(i, i2, i3, i4);
        setBasePadding(b());
        a();
    }

    @Override // android.widget.TextView, android.view.View
    @TargetApi(17)
    public void onRtlPropertiesChanged(int i) {
        super.onRtlPropertiesChanged(i);
        c();
        setBasePadding(b());
        a();
    }

    private void a() {
        int i = this.f665d != null ? this.f667f + this.f666e : this.f666e;
        if (b()) {
            this.f668g = (getPaddingLeftField() != i) | this.f668g;
            setPaddingLeftField(i);
        } else {
            this.f668g = (getPaddingRightField() != i) | this.f668g;
            setPaddingRightField(i);
        }
        if (this.f668g) {
            requestLayout();
            this.f668g = false;
        }
    }

    private void setBasePadding(boolean z) {
        if (z) {
            this.f666e = getPaddingLeftField();
        } else {
            this.f666e = getPaddingRightField();
        }
    }

    @TargetApi(17)
    private boolean b() {
        return Build.VERSION.SDK_INT < 17 || getLayoutDirection() == 0;
    }

    @Override // android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        int i;
        int i2;
        super.onDraw(canvas);
        Drawable drawable = this.f665d;
        if (drawable != null) {
            int gravity = getGravity() & 112;
            int intrinsicHeight = drawable.getIntrinsicHeight();
            int height = 0;
            switch (gravity) {
                case 16:
                    height = (getHeight() - intrinsicHeight) / 2;
                    break;
                case 80:
                    height = getHeight() - intrinsicHeight;
                    break;
            }
            boolean zB = b();
            int width = getWidth();
            int i3 = height + intrinsicHeight;
            if (zB) {
                i2 = this.f666e;
                i = this.f667f + i2;
            } else {
                i = width - this.f666e;
                i2 = i - this.f667f;
            }
            drawable.setBounds(i2 + getScrollX(), height, i + getScrollX(), i3);
            drawable.draw(canvas);
            drawable.draw(canvas);
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected int[] onCreateDrawableState(int i) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i + 1);
        if (isChecked()) {
            mergeDrawableStates(iArrOnCreateDrawableState, h);
        }
        return iArrOnCreateDrawableState;
    }

    @Override // android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        if (this.f665d != null) {
            this.f665d.setState(getDrawableState());
            invalidate();
        }
    }

    @Override // android.view.View
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        boolean zDispatchPopulateAccessibilityEvent = super.dispatchPopulateAccessibilityEvent(accessibilityEvent);
        if (!zDispatchPopulateAccessibilityEvent) {
            accessibilityEvent.setChecked(this.f663b);
        }
        return zDispatchPopulateAccessibilityEvent;
    }

    private void c() {
        try {
            try {
                View.class.getDeclaredMethod("resetPaddingToInitialValues", new Class[0]).invoke(this, new Object[0]);
            } catch (IllegalAccessException e2) {
                e2.printStackTrace();
            } catch (InvocationTargetException e3) {
                e3.printStackTrace();
            }
        } catch (NoSuchMethodException e4) {
            e4.printStackTrace();
        }
    }

    private void d() {
        if (this.j == null) {
            try {
                this.j = View.class.getDeclaredField("mPaddingLeft");
            } catch (NoSuchFieldException e2) {
                e2.printStackTrace();
            }
        }
    }

    private int getPaddingLeftField() {
        d();
        try {
            return this.j.getInt(this);
        } catch (IllegalAccessException e2) {
            e2.printStackTrace();
            return 0;
        }
    }

    private void setPaddingLeftField(int i) {
        d();
        try {
            this.j.setInt(this, i);
        } catch (IllegalAccessException e2) {
            e2.printStackTrace();
        }
    }

    private void e() {
        if (this.k == null) {
            try {
                this.k = View.class.getDeclaredField("mPaddingRight");
            } catch (NoSuchFieldException e2) {
                e2.printStackTrace();
            }
        }
    }

    private int getPaddingRightField() {
        e();
        try {
            return this.k.getInt(this);
        } catch (IllegalAccessException e2) {
            e2.printStackTrace();
            return 0;
        }
    }

    private void setPaddingRightField(int i) {
        e();
        try {
            this.k.setInt(this, i);
        } catch (IllegalAccessException e2) {
            e2.printStackTrace();
        }
    }
}
