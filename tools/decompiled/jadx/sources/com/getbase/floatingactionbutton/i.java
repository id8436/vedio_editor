package com.getbase.floatingactionbutton;

import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;

/* JADX INFO: compiled from: FloatingActionsMenu.java */
/* JADX INFO: loaded from: classes2.dex */
class i extends LayerDrawable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private float f3135a;

    public i(Drawable drawable) {
        super(new Drawable[]{drawable});
    }

    public float getRotation() {
        return this.f3135a;
    }

    public void setRotation(float f2) {
        this.f3135a = f2;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.LayerDrawable, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        canvas.save();
        canvas.rotate(this.f3135a, getBounds().centerX(), getBounds().centerY());
        super.draw(canvas);
        canvas.restore();
    }
}
