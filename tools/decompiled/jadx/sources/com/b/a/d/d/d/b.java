package com.b.a.d.d.d;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.Gravity;

/* JADX INFO: compiled from: GifDrawable.java */
/* JADX INFO: loaded from: classes2.dex */
public class b extends com.b.a.d.d.b.b implements j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Paint f1034a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Rect f1035b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final c f1036c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.b.a.b.a f1037d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final g f1038e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f1039f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f1040g;
    private boolean h;
    private boolean i;
    private int j;
    private int k;
    private boolean l;

    public b(Context context, com.b.a.b.b bVar, com.b.a.d.b.a.e eVar, com.b.a.d.g<Bitmap> gVar, int i, int i2, com.b.a.b.d dVar, byte[] bArr, Bitmap bitmap) {
        this(new c(dVar, bArr, context, gVar, i, i2, bVar, eVar, bitmap));
    }

    public b(b bVar, Bitmap bitmap, com.b.a.d.g<Bitmap> gVar) {
        this(new c(bVar.f1036c.f1041a, bVar.f1036c.f1042b, bVar.f1036c.f1043c, gVar, bVar.f1036c.f1045e, bVar.f1036c.f1046f, bVar.f1036c.f1047g, bVar.f1036c.h, bitmap));
    }

    b(c cVar) {
        this.f1035b = new Rect();
        this.i = true;
        this.k = -1;
        if (cVar == null) {
            throw new NullPointerException("GifState must not be null");
        }
        this.f1036c = cVar;
        this.f1037d = new com.b.a.b.a(cVar.f1047g);
        this.f1034a = new Paint();
        this.f1037d.a(cVar.f1041a, cVar.f1042b);
        this.f1038e = new g(cVar.f1043c, this, this.f1037d, cVar.f1045e, cVar.f1046f);
        this.f1038e.a(cVar.f1044d);
    }

    public Bitmap b() {
        return this.f1036c.i;
    }

    public com.b.a.d.g<Bitmap> c() {
        return this.f1036c.f1044d;
    }

    public byte[] d() {
        return this.f1036c.f1042b;
    }

    public int e() {
        return this.f1037d.c();
    }

    private void g() {
        this.j = 0;
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        this.f1040g = true;
        g();
        if (this.i) {
            i();
        }
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        this.f1040g = false;
        j();
        if (Build.VERSION.SDK_INT < 11) {
            h();
        }
    }

    private void h() {
        this.f1038e.c();
        invalidateSelf();
    }

    private void i() {
        if (this.f1037d.c() == 1) {
            invalidateSelf();
        } else if (!this.f1039f) {
            this.f1039f = true;
            this.f1038e.a();
            invalidateSelf();
        }
    }

    private void j() {
        this.f1039f = false;
        this.f1038e.b();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        this.i = z;
        if (!z) {
            j();
        } else if (this.f1040g) {
            i();
        }
        return super.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f1036c.i.getWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f1036c.i.getHeight();
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.f1039f;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.l = true;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (!this.h) {
            if (this.l) {
                Gravity.apply(119, getIntrinsicWidth(), getIntrinsicHeight(), getBounds(), this.f1035b);
                this.l = false;
            }
            Bitmap bitmapD = this.f1038e.d();
            if (bitmapD == null) {
                bitmapD = this.f1036c.i;
            }
            canvas.drawBitmap(bitmapD, (Rect) null, this.f1035b, this.f1034a);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f1034a.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f1034a.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -2;
    }

    @Override // com.b.a.d.d.d.j
    @TargetApi(11)
    public void b(int i) {
        if (Build.VERSION.SDK_INT >= 11 && getCallback() == null) {
            stop();
            h();
            return;
        }
        invalidateSelf();
        if (i == this.f1037d.c() - 1) {
            this.j++;
        }
        if (this.k != -1 && this.j >= this.k) {
            stop();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        return this.f1036c;
    }

    public void f() {
        this.h = true;
        this.f1036c.h.a(this.f1036c.i);
        this.f1038e.c();
        this.f1038e.b();
    }

    @Override // com.b.a.d.d.b.b
    public boolean a() {
        return true;
    }

    @Override // com.b.a.d.d.b.b
    public void a(int i) {
        if (i <= 0 && i != -1 && i != 0) {
            throw new IllegalArgumentException("Loop count must be greater than 0, or equal to GlideDrawable.LOOP_FOREVER, or equal to GlideDrawable.LOOP_INTRINSIC");
        }
        if (i == 0) {
            int iE = this.f1037d.e();
            this.k = iE != 0 ? iE : -1;
        } else {
            this.k = i;
        }
    }
}
