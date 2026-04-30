package com.getbase.floatingactionbutton;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.ShapeDrawable;
import android.support.annotation.ColorRes;
import android.support.annotation.DrawableRes;
import android.util.AttributeSet;

/* JADX INFO: compiled from: AddFloatingActionButton.java */
/* JADX INFO: loaded from: classes2.dex */
public class a extends FloatingActionButton {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    int f3114a;

    public a(Context context) {
        this(context, null);
    }

    public a(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // com.getbase.floatingactionbutton.FloatingActionButton
    void a(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, o.AddFloatingActionButton, 0, 0);
        this.f3114a = typedArrayObtainStyledAttributes.getColor(o.AddFloatingActionButton_fab_plusIconColor, a(R.color.white));
        typedArrayObtainStyledAttributes.recycle();
        super.a(context, attributeSet);
    }

    public int getPlusColor() {
        return this.f3114a;
    }

    public void setPlusColorResId(@ColorRes int i) {
        setPlusColor(a(i));
    }

    public void setPlusColor(int i) {
        if (this.f3114a != i) {
            this.f3114a = i;
            a();
        }
    }

    @Override // com.getbase.floatingactionbutton.FloatingActionButton
    public void setIcon(@DrawableRes int i) {
        throw new UnsupportedOperationException("Use FloatingActionButton if you want to use custom icon");
    }

    @Override // com.getbase.floatingactionbutton.FloatingActionButton
    Drawable getIconDrawable() {
        float fB = b(l.fab_icon_size);
        ShapeDrawable shapeDrawable = new ShapeDrawable(new b(this, (fB - b(l.fab_plus_icon_size)) / 2.0f, fB / 2.0f, b(l.fab_plus_icon_stroke) / 2.0f, fB));
        Paint paint = shapeDrawable.getPaint();
        paint.setColor(this.f3114a);
        paint.setStyle(Paint.Style.FILL);
        paint.setAntiAlias(true);
        return shapeDrawable;
    }
}
