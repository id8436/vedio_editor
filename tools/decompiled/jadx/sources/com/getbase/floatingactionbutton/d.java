package com.getbase.floatingactionbutton;

import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;

/* JADX INFO: compiled from: FloatingActionButton.java */
/* JADX INFO: loaded from: classes2.dex */
class d extends LayerDrawable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f3126a;

    public d(int i, Drawable... drawableArr) {
        super(drawableArr);
        this.f3126a = i;
    }

    @Override // android.graphics.drawable.LayerDrawable, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Rect bounds = getBounds();
        canvas.saveLayerAlpha(bounds.left, bounds.top, bounds.right, bounds.bottom, this.f3126a, 31);
        super.draw(canvas);
        canvas.restore();
    }
}
