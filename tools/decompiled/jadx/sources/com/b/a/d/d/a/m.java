package com.b.a.d.d.a;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.Gravity;

/* JADX INFO: compiled from: GlideBitmapDrawable.java */
/* JADX INFO: loaded from: classes2.dex */
public class m extends com.b.a.d.d.b.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Rect f981a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f982b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f983c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f984d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f985e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private n f986f;

    public m(Resources resources, Bitmap bitmap) {
        this(resources, new n(bitmap));
    }

    m(Resources resources, n nVar) {
        int i;
        this.f981a = new Rect();
        if (nVar == null) {
            throw new NullPointerException("BitmapState must not be null");
        }
        this.f986f = nVar;
        if (resources != null) {
            i = resources.getDisplayMetrics().densityDpi;
            i = i == 0 ? 160 : i;
            nVar.f989b = i;
        } else {
            i = nVar.f989b;
        }
        this.f982b = nVar.f988a.getScaledWidth(i);
        this.f983c = nVar.f988a.getScaledHeight(i);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f982b;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f983c;
    }

    @Override // com.b.a.d.d.b.b
    public boolean a() {
        return false;
    }

    @Override // com.b.a.d.d.b.b
    public void a(int i) {
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.f984d = true;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        return this.f986f;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.f984d) {
            Gravity.apply(119, this.f982b, this.f983c, getBounds(), this.f981a);
            this.f984d = false;
        }
        canvas.drawBitmap(this.f986f.f988a, (Rect) null, this.f981a, this.f986f.f990c);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        if (this.f986f.f990c.getAlpha() != i) {
            this.f986f.a(i);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f986f.a(colorFilter);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        Bitmap bitmap = this.f986f.f988a;
        return (bitmap == null || bitmap.hasAlpha() || this.f986f.f990c.getAlpha() < 255) ? -3 : -1;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.f985e && super.mutate() == this) {
            this.f986f = new n(this.f986f);
            this.f985e = true;
        }
        return this;
    }

    public Bitmap b() {
        return this.f986f.f988a;
    }
}
