package com.getbase.floatingactionbutton;

import android.R;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.StateListDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.os.Build;
import android.support.annotation.ColorRes;
import android.support.annotation.DimenRes;
import android.support.annotation.DrawableRes;
import android.support.annotation.NonNull;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.widget.ImageButton;
import android.widget.TextView;

/* JADX INFO: loaded from: classes2.dex */
public class FloatingActionButton extends ImageButton {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @DrawableRes
    private int f3099a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f3100b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f3101c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f3102d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    String f3103e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    boolean f3104f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Drawable f3105g;
    private int h;
    private float i;
    private float j;
    private float k;
    private int l;

    public FloatingActionButton(Context context) {
        this(context, null);
    }

    public FloatingActionButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context, attributeSet);
    }

    public FloatingActionButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(context, attributeSet);
    }

    void a(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, o.FloatingActionButton, 0, 0);
        this.f3100b = typedArrayObtainStyledAttributes.getColor(o.FloatingActionButton_fab_colorNormal, a(R.color.holo_blue_dark));
        this.f3101c = typedArrayObtainStyledAttributes.getColor(o.FloatingActionButton_fab_colorPressed, a(R.color.holo_blue_light));
        this.f3102d = typedArrayObtainStyledAttributes.getColor(o.FloatingActionButton_fab_colorDisabled, a(R.color.darker_gray));
        this.h = typedArrayObtainStyledAttributes.getInt(o.FloatingActionButton_fab_size, 0);
        this.f3099a = typedArrayObtainStyledAttributes.getResourceId(o.FloatingActionButton_fab_icon, 0);
        this.f3103e = typedArrayObtainStyledAttributes.getString(o.FloatingActionButton_fab_title);
        this.f3104f = typedArrayObtainStyledAttributes.getBoolean(o.FloatingActionButton_fab_stroke_visible, true);
        typedArrayObtainStyledAttributes.recycle();
        c();
        this.j = b(l.fab_shadow_radius);
        this.k = b(l.fab_shadow_offset);
        b();
        a();
    }

    private void b() {
        this.l = (int) (this.i + (2.0f * this.j));
    }

    private void c() {
        this.i = b(this.h == 0 ? l.fab_size_normal : l.fab_size_mini);
    }

    public void setSize(int i) {
        if (i != 1 && i != 0) {
            throw new IllegalArgumentException("Use @FAB_SIZE constants only!");
        }
        if (this.h != i) {
            this.h = i;
            c();
            b();
            a();
        }
    }

    public int getSize() {
        return this.h;
    }

    public void setIcon(@DrawableRes int i) {
        if (this.f3099a != i) {
            this.f3099a = i;
            this.f3105g = null;
            a();
        }
    }

    public void setIconDrawable(@NonNull Drawable drawable) {
        if (this.f3105g != drawable) {
            this.f3099a = 0;
            this.f3105g = drawable;
            a();
        }
    }

    public int getColorNormal() {
        return this.f3100b;
    }

    public void setColorNormalResId(@ColorRes int i) {
        setColorNormal(a(i));
    }

    public void setColorNormal(int i) {
        if (this.f3100b != i) {
            this.f3100b = i;
            a();
        }
    }

    public int getColorPressed() {
        return this.f3101c;
    }

    public void setColorPressedResId(@ColorRes int i) {
        setColorPressed(a(i));
    }

    public void setColorPressed(int i) {
        if (this.f3101c != i) {
            this.f3101c = i;
            a();
        }
    }

    public int getColorDisabled() {
        return this.f3102d;
    }

    public void setColorDisabledResId(@ColorRes int i) {
        setColorDisabled(a(i));
    }

    public void setColorDisabled(int i) {
        if (this.f3102d != i) {
            this.f3102d = i;
            a();
        }
    }

    public void setStrokeVisible(boolean z) {
        if (this.f3104f != z) {
            this.f3104f = z;
            a();
        }
    }

    int a(@ColorRes int i) {
        return getResources().getColor(i);
    }

    float b(@DimenRes int i) {
        return getResources().getDimension(i);
    }

    public void setTitle(String str) {
        this.f3103e = str;
        TextView labelView = getLabelView();
        if (labelView != null) {
            labelView.setText(str);
        }
    }

    TextView getLabelView() {
        return (TextView) getTag(n.fab_label);
    }

    public String getTitle() {
        return this.f3103e;
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        setMeasuredDimension(this.l, this.l);
    }

    void a() {
        float fB = b(l.fab_stroke_width);
        float f2 = fB / 2.0f;
        Drawable[] drawableArr = new Drawable[4];
        drawableArr[0] = getResources().getDrawable(this.h == 0 ? m.fab_bg_normal : m.fab_bg_mini);
        drawableArr[1] = a(fB);
        drawableArr[2] = b(fB);
        drawableArr[3] = getIconDrawable();
        LayerDrawable layerDrawable = new LayerDrawable(drawableArr);
        int iB = ((int) (this.i - b(l.fab_icon_size))) / 2;
        int i = (int) this.j;
        int i2 = (int) (this.j - this.k);
        int i3 = (int) (this.j + this.k);
        layerDrawable.setLayerInset(1, i, i2, i, i3);
        layerDrawable.setLayerInset(2, (int) (i - f2), (int) (i2 - f2), (int) (i - f2), (int) (i3 - f2));
        layerDrawable.setLayerInset(3, i + iB, i2 + iB, i + iB, i3 + iB);
        setBackgroundCompat(layerDrawable);
    }

    Drawable getIconDrawable() {
        if (this.f3105g != null) {
            return this.f3105g;
        }
        if (this.f3099a != 0) {
            return getResources().getDrawable(this.f3099a);
        }
        return new ColorDrawable(0);
    }

    private StateListDrawable a(float f2) {
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{-16842910}, a(this.f3102d, f2));
        stateListDrawable.addState(new int[]{R.attr.state_pressed}, a(this.f3101c, f2));
        stateListDrawable.addState(new int[0], a(this.f3100b, f2));
        return stateListDrawable;
    }

    private Drawable a(int i, float f2) {
        int iAlpha = Color.alpha(i);
        int iF = f(i);
        ShapeDrawable shapeDrawable = new ShapeDrawable(new OvalShape());
        Paint paint = shapeDrawable.getPaint();
        paint.setAntiAlias(true);
        paint.setColor(iF);
        Drawable[] drawableArr = {shapeDrawable, c(iF, f2)};
        LayerDrawable layerDrawable = (iAlpha == 255 || !this.f3104f) ? new LayerDrawable(drawableArr) : new d(iAlpha, drawableArr);
        int i2 = (int) (f2 / 2.0f);
        layerDrawable.setLayerInset(1, i2, i2, i2, i2);
        return layerDrawable;
    }

    private Drawable b(float f2) {
        ShapeDrawable shapeDrawable = new ShapeDrawable(new OvalShape());
        Paint paint = shapeDrawable.getPaint();
        paint.setAntiAlias(true);
        paint.setStrokeWidth(f2);
        paint.setStyle(Paint.Style.STROKE);
        paint.setColor(ViewCompat.MEASURED_STATE_MASK);
        paint.setAlpha(c(0.02f));
        return shapeDrawable;
    }

    private int c(float f2) {
        return (int) (255.0f * f2);
    }

    private int c(int i) {
        return b(i, 0.9f);
    }

    private int d(int i) {
        return b(i, 1.1f);
    }

    private int b(int i, float f2) {
        float[] fArr = new float[3];
        Color.colorToHSV(i, fArr);
        fArr[2] = Math.min(fArr[2] * f2, 1.0f);
        return Color.HSVToColor(Color.alpha(i), fArr);
    }

    private int e(int i) {
        return Color.argb(Color.alpha(i) / 2, Color.red(i), Color.green(i), Color.blue(i));
    }

    private int f(int i) {
        return Color.rgb(Color.red(i), Color.green(i), Color.blue(i));
    }

    private Drawable c(int i, float f2) {
        if (!this.f3104f) {
            return new ColorDrawable(0);
        }
        ShapeDrawable shapeDrawable = new ShapeDrawable(new OvalShape());
        int iC = c(i);
        int iE = e(iC);
        int iD = d(i);
        int iE2 = e(iD);
        Paint paint = shapeDrawable.getPaint();
        paint.setAntiAlias(true);
        paint.setStrokeWidth(f2);
        paint.setStyle(Paint.Style.STROKE);
        shapeDrawable.setShaderFactory(new c(this, iD, iE2, i, iE, iC));
        return shapeDrawable;
    }

    @SuppressLint({"NewApi"})
    private void setBackgroundCompat(Drawable drawable) {
        if (Build.VERSION.SDK_INT >= 16) {
            setBackground(drawable);
        } else {
            setBackgroundDrawable(drawable);
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public void setVisibility(int i) {
        TextView labelView = getLabelView();
        if (labelView != null) {
            labelView.setVisibility(i);
        }
        super.setVisibility(i);
    }
}
