package com.github.chrisbanes.photoview;

import android.graphics.Matrix;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Interpolator;
import android.widget.ImageView;

/* JADX INFO: compiled from: PhotoViewAttacher.java */
/* JADX INFO: loaded from: classes2.dex */
public class l implements View.OnLayoutChangeListener, View.OnTouchListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static float f3150a = 3.0f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static float f3151b = 1.75f;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static float f3152c = 1.0f;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static int f3153d = 200;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static int f3154e = 1;
    private h A;
    private i B;
    private j C;
    private r D;
    private float F;
    private ImageView m;
    private GestureDetector n;
    private b o;
    private e u;
    private g v;
    private f w;
    private k x;
    private View.OnClickListener y;
    private View.OnLongClickListener z;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Interpolator f3155f = new AccelerateDecelerateInterpolator();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f3156g = f3153d;
    private float h = f3152c;
    private float i = f3151b;
    private float j = f3150a;
    private boolean k = true;
    private boolean l = false;
    private final Matrix p = new Matrix();
    private final Matrix q = new Matrix();
    private final Matrix r = new Matrix();
    private final RectF s = new RectF();
    private final float[] t = new float[9];
    private int E = 2;
    private boolean G = true;
    private ImageView.ScaleType H = ImageView.ScaleType.FIT_CENTER;
    private d I = new m(this);

    public l(ImageView imageView) {
        this.m = imageView;
        imageView.setOnTouchListener(this);
        imageView.addOnLayoutChangeListener(this);
        if (!imageView.isInEditMode()) {
            this.F = 0.0f;
            this.o = new b(imageView.getContext(), this.I);
            this.n = new GestureDetector(imageView.getContext(), new n(this));
            this.n.setOnDoubleTapListener(new o(this));
        }
    }

    public void a(GestureDetector.OnDoubleTapListener onDoubleTapListener) {
        this.n.setOnDoubleTapListener(onDoubleTapListener);
    }

    public void a(h hVar) {
        this.A = hVar;
    }

    public void a(i iVar) {
        this.B = iVar;
    }

    public RectF a() {
        n();
        return b(k());
    }

    public void a(float f2) {
        this.r.setRotate(f2 % 360.0f);
        m();
    }

    public void b(float f2) {
        this.r.postRotate(f2 % 360.0f);
        m();
    }

    public float b() {
        return this.h;
    }

    public float c() {
        return this.i;
    }

    public float d() {
        return this.j;
    }

    public float e() {
        return (float) Math.sqrt(((float) Math.pow(a(this.r, 0), 2.0d)) + ((float) Math.pow(a(this.r, 3), 2.0d)));
    }

    public ImageView.ScaleType f() {
        return this.H;
    }

    @Override // android.view.View.OnLayoutChangeListener
    public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        if (i != i5 || i2 != i6 || i3 != i7 || i4 != i8) {
            a(this.m.getDrawable());
        }
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        boolean zA;
        RectF rectFA;
        boolean z = false;
        if (!this.G || !s.a((ImageView) view)) {
            return false;
        }
        switch (motionEvent.getAction()) {
            case 0:
                ViewParent parent = view.getParent();
                if (parent != null) {
                    parent.requestDisallowInterceptTouchEvent(true);
                }
                o();
                zA = false;
                break;
            case 1:
            case 3:
                if (e() < this.h) {
                    RectF rectFA2 = a();
                    if (rectFA2 == null) {
                        zA = false;
                    } else {
                        view.post(new q(this, e(), this.h, rectFA2.centerX(), rectFA2.centerY()));
                        zA = true;
                    }
                } else if (e() > this.j && (rectFA = a()) != null) {
                    view.post(new q(this, e(), this.j, rectFA.centerX(), rectFA.centerY()));
                    zA = true;
                } else {
                    zA = false;
                }
                break;
            case 2:
            default:
                zA = false;
                break;
        }
        if (this.o != null) {
            boolean zA2 = this.o.a();
            boolean zB = this.o.b();
            zA = this.o.a(motionEvent);
            boolean z2 = (zA2 || this.o.a()) ? false : true;
            boolean z3 = (zB || this.o.b()) ? false : true;
            if (z2 && z3) {
                z = true;
            }
            this.l = z;
        }
        if (this.n == null || !this.n.onTouchEvent(motionEvent)) {
            return zA;
        }
        return true;
    }

    public void a(boolean z) {
        this.k = z;
    }

    public void c(float f2) {
        s.a(f2, this.i, this.j);
        this.h = f2;
    }

    public void d(float f2) {
        s.a(this.h, f2, this.j);
        this.i = f2;
    }

    public void e(float f2) {
        s.a(this.h, this.i, f2);
        this.j = f2;
    }

    public void a(float f2, float f3, float f4) {
        s.a(f2, f3, f4);
        this.h = f2;
        this.i = f3;
        this.j = f4;
    }

    public void a(View.OnLongClickListener onLongClickListener) {
        this.z = onLongClickListener;
    }

    public void a(View.OnClickListener onClickListener) {
        this.y = onClickListener;
    }

    public void a(e eVar) {
        this.u = eVar;
    }

    public void a(g gVar) {
        this.v = gVar;
    }

    public void a(f fVar) {
        this.w = fVar;
    }

    public void a(k kVar) {
        this.x = kVar;
    }

    public void a(j jVar) {
        this.C = jVar;
    }

    public void f(float f2) {
        a(f2, false);
    }

    public void a(float f2, boolean z) {
        a(f2, this.m.getRight() / 2, this.m.getBottom() / 2, z);
    }

    public void a(float f2, float f3, float f4, boolean z) {
        if (f2 < this.h || f2 > this.j) {
            throw new IllegalArgumentException("Scale must be within the range of minScale and maxScale");
        }
        if (z) {
            this.m.post(new q(this, e(), f2, f3, f4));
        } else {
            this.r.setScale(f2, f2, f3, f4);
            m();
        }
    }

    public void a(ImageView.ScaleType scaleType) {
        if (s.a(scaleType) && scaleType != this.H) {
            this.H = scaleType;
            g();
        }
    }

    public void b(boolean z) {
        this.G = z;
        g();
    }

    public void g() {
        if (this.G) {
            a(this.m.getDrawable());
        } else {
            l();
        }
    }

    private Matrix k() {
        this.q.set(this.p);
        this.q.postConcat(this.r);
        return this.q;
    }

    public Matrix h() {
        return this.q;
    }

    public void a(int i) {
        this.f3156g = i;
    }

    private float a(Matrix matrix, int i) {
        matrix.getValues(this.t);
        return this.t[i];
    }

    private void l() {
        this.r.reset();
        b(this.F);
        a(k());
        n();
    }

    private void a(Matrix matrix) {
        RectF rectFB;
        this.m.setImageMatrix(matrix);
        if (this.u != null && (rectFB = b(matrix)) != null) {
            this.u.a(rectFB);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m() {
        if (n()) {
            a(k());
        }
    }

    private RectF b(Matrix matrix) {
        if (this.m.getDrawable() == null) {
            return null;
        }
        this.s.set(0.0f, 0.0f, r0.getIntrinsicWidth(), r0.getIntrinsicHeight());
        matrix.mapRect(this.s);
        return this.s;
    }

    private void a(Drawable drawable) {
        if (drawable != null) {
            float fA = a(this.m);
            float fB = b(this.m);
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            this.p.reset();
            float f2 = fA / intrinsicWidth;
            float f3 = fB / intrinsicHeight;
            if (this.H == ImageView.ScaleType.CENTER) {
                this.p.postTranslate((fA - intrinsicWidth) / 2.0f, (fB - intrinsicHeight) / 2.0f);
            } else if (this.H == ImageView.ScaleType.CENTER_CROP) {
                float fMax = Math.max(f2, f3);
                this.p.postScale(fMax, fMax);
                this.p.postTranslate((fA - (intrinsicWidth * fMax)) / 2.0f, (fB - (fMax * intrinsicHeight)) / 2.0f);
            } else if (this.H == ImageView.ScaleType.CENTER_INSIDE) {
                float fMin = Math.min(1.0f, Math.min(f2, f3));
                this.p.postScale(fMin, fMin);
                this.p.postTranslate((fA - (intrinsicWidth * fMin)) / 2.0f, (fB - (fMin * intrinsicHeight)) / 2.0f);
            } else {
                RectF rectF = new RectF(0.0f, 0.0f, intrinsicWidth, intrinsicHeight);
                RectF rectF2 = new RectF(0.0f, 0.0f, fA, fB);
                if (((int) this.F) % 180 != 0) {
                    rectF = new RectF(0.0f, 0.0f, intrinsicHeight, intrinsicWidth);
                }
                switch (p.f3160a[this.H.ordinal()]) {
                    case 1:
                        this.p.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.CENTER);
                        break;
                    case 2:
                        this.p.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.START);
                        break;
                    case 3:
                        this.p.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.END);
                        break;
                    case 4:
                        this.p.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.FILL);
                        break;
                }
            }
            l();
        }
    }

    private boolean n() {
        float f2;
        float f3 = 0.0f;
        RectF rectFB = b(k());
        if (rectFB == null) {
            return false;
        }
        float fHeight = rectFB.height();
        float fWidth = rectFB.width();
        int iB = b(this.m);
        if (fHeight <= iB) {
            switch (p.f3160a[this.H.ordinal()]) {
                case 2:
                    f2 = -rectFB.top;
                    break;
                case 3:
                    f2 = (iB - fHeight) - rectFB.top;
                    break;
                default:
                    f2 = ((iB - fHeight) / 2.0f) - rectFB.top;
                    break;
            }
        } else if (rectFB.top > 0.0f) {
            f2 = -rectFB.top;
        } else {
            f2 = rectFB.bottom < ((float) iB) ? iB - rectFB.bottom : 0.0f;
        }
        int iA = a(this.m);
        if (fWidth <= iA) {
            switch (p.f3160a[this.H.ordinal()]) {
                case 2:
                    f3 = -rectFB.left;
                    break;
                case 3:
                    f3 = (iA - fWidth) - rectFB.left;
                    break;
                default:
                    f3 = ((iA - fWidth) / 2.0f) - rectFB.left;
                    break;
            }
            this.E = 2;
        } else if (rectFB.left > 0.0f) {
            this.E = 0;
            f3 = -rectFB.left;
        } else if (rectFB.right < iA) {
            f3 = iA - rectFB.right;
            this.E = 1;
        } else {
            this.E = -1;
        }
        this.r.postTranslate(f3, f2);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int a(ImageView imageView) {
        return (imageView.getWidth() - imageView.getPaddingLeft()) - imageView.getPaddingRight();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int b(ImageView imageView) {
        return (imageView.getHeight() - imageView.getPaddingTop()) - imageView.getPaddingBottom();
    }

    private void o() {
        if (this.D != null) {
            this.D.a();
            this.D = null;
        }
    }
}
