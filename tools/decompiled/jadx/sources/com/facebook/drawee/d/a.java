package com.facebook.drawee.d;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import com.facebook.drawee.e.t;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: DebugControllerOverlayDrawable.java */
/* JADX INFO: loaded from: classes2.dex */
public class a extends Drawable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f2074a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f2075b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f2076c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f2077d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f2078e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private t f2079f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f2080g;
    private int h;
    private int i = 80;
    private final Paint j = new Paint(1);
    private final Matrix k = new Matrix();
    private final Rect l = new Rect();
    private final RectF m = new RectF();
    private int n;
    private int o;
    private int p;
    private int q;
    private int r;

    public a() {
        a();
    }

    public void a() {
        this.f2075b = -1;
        this.f2076c = -1;
        this.f2077d = -1;
        this.f2080g = -1;
        this.h = -1;
        this.f2078e = null;
        a((String) null);
        invalidateSelf();
    }

    public void a(@Nullable String str) {
        if (str == null) {
            str = "none";
        }
        this.f2074a = str;
        invalidateSelf();
    }

    public void a(int i, int i2) {
        this.f2075b = i;
        this.f2076c = i2;
        invalidateSelf();
    }

    public void a(int i) {
        this.f2077d = i;
    }

    public void a(t tVar) {
        this.f2079f = tVar;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        a(rect, 7, 7);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Rect bounds = getBounds();
        this.j.setStyle(Paint.Style.STROKE);
        this.j.setStrokeWidth(2.0f);
        this.j.setColor(-26624);
        canvas.drawRect(bounds.left, bounds.top, bounds.right, bounds.bottom, this.j);
        this.j.setStyle(Paint.Style.FILL);
        this.j.setColor(a(this.f2075b, this.f2076c, this.f2079f));
        canvas.drawRect(bounds.left, bounds.top, bounds.right, bounds.bottom, this.j);
        this.j.setStyle(Paint.Style.FILL);
        this.j.setStrokeWidth(0.0f);
        this.j.setColor(-1);
        this.q = this.n;
        this.r = this.o;
        a(canvas, "ID: %s", this.f2074a);
        a(canvas, "D: %dx%d", Integer.valueOf(bounds.width()), Integer.valueOf(bounds.height()));
        a(canvas, "I: %dx%d", Integer.valueOf(this.f2075b), Integer.valueOf(this.f2076c));
        a(canvas, "I: %d KiB", Integer.valueOf(this.f2077d / 1024));
        if (this.f2078e != null) {
            a(canvas, "i format: %s", this.f2078e);
        }
        if (this.f2080g > 0) {
            a(canvas, "anim: f %d, l %d", Integer.valueOf(this.f2080g), Integer.valueOf(this.h));
        }
        if (this.f2079f != null) {
            a(canvas, "scale: %s", this.f2079f);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    private void a(Rect rect, int i, int i2) {
        int iMin = Math.min(40, Math.max(12, Math.min(rect.width() / i2, rect.height() / i)));
        this.j.setTextSize(iMin);
        this.p = iMin + 8;
        if (this.i == 80) {
            this.p *= -1;
        }
        this.n = rect.left + 10;
        this.o = this.i == 80 ? rect.bottom - 10 : rect.top + 10 + 12;
    }

    private void a(Canvas canvas, String str, @Nullable Object... objArr) {
        if (objArr == null) {
            canvas.drawText(str, this.q, this.r, this.j);
        } else {
            canvas.drawText(String.format(str, objArr), this.q, this.r, this.j);
        }
        this.r += this.p;
    }

    int a(int i, int i2, @Nullable t tVar) {
        int iMin;
        int iMin2;
        int iWidth = getBounds().width();
        int iHeight = getBounds().height();
        if (iWidth <= 0 || iHeight <= 0 || i <= 0 || i2 <= 0) {
            return 1727284022;
        }
        if (tVar != null) {
            Rect rect = this.l;
            this.l.top = 0;
            rect.left = 0;
            this.l.right = iWidth;
            this.l.bottom = iHeight;
            this.k.reset();
            tVar.a(this.k, this.l, i, i2, 0.0f, 0.0f);
            RectF rectF = this.m;
            this.m.top = 0.0f;
            rectF.left = 0.0f;
            this.m.right = i;
            this.m.bottom = i2;
            this.k.mapRect(this.m);
            int iWidth2 = (int) this.m.width();
            int iHeight2 = (int) this.m.height();
            iMin2 = Math.min(iWidth, iWidth2);
            iMin = Math.min(iHeight, iHeight2);
        } else {
            iMin = iHeight;
            iMin2 = iWidth;
        }
        float f2 = iMin2 * 0.1f;
        float f3 = iMin2 * 0.5f;
        float f4 = iMin * 0.1f;
        float f5 = iMin * 0.5f;
        int iAbs = Math.abs(i - iMin2);
        int iAbs2 = Math.abs(i2 - iMin);
        if (iAbs >= f2 || iAbs2 >= f4) {
            return (((float) iAbs) >= f3 || ((float) iAbs2) >= f5) ? 1727284022 : 1728026624;
        }
        return 1716301648;
    }
}
