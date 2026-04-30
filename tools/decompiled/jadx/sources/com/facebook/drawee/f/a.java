package com.facebook.drawee.f;

import android.content.res.Resources;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import com.facebook.drawee.e.h;
import com.facebook.drawee.e.i;
import com.facebook.drawee.e.q;
import com.facebook.drawee.e.t;
import java.util.Iterator;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: GenericDraweeHierarchy.java */
/* JADX INFO: loaded from: classes.dex */
public class a implements com.facebook.drawee.h.c {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Resources f2156b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Nullable
    private e f2157c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final d f2158d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final com.facebook.drawee.e.g f2159e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Drawable f2155a = new ColorDrawable(0);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final h f2160f = new h(this.f2155a);

    a(b bVar) {
        int i = 0;
        this.f2156b = bVar.a();
        this.f2157c = bVar.s();
        int size = (bVar.q() != null ? bVar.q().size() : 1) + (bVar.r() != null ? 1 : 0);
        Drawable[] drawableArr = new Drawable[size + 6];
        drawableArr[0] = a(bVar.p(), (t) null);
        drawableArr[1] = a(bVar.d(), bVar.e());
        drawableArr[2] = a(this.f2160f, bVar.l(), bVar.n(), bVar.m(), bVar.o());
        drawableArr[3] = a(bVar.j(), bVar.k());
        drawableArr[4] = a(bVar.f(), bVar.g());
        drawableArr[5] = a(bVar.h(), bVar.i());
        if (size > 0) {
            if (bVar.q() != null) {
                Iterator<Drawable> it = bVar.q().iterator();
                while (it.hasNext()) {
                    drawableArr[i + 6] = a(it.next(), (t) null);
                    i++;
                }
            } else {
                i = 1;
            }
            if (bVar.r() != null) {
                drawableArr[i + 6] = a(bVar.r(), (t) null);
            }
        }
        this.f2159e = new com.facebook.drawee.e.g(drawableArr);
        this.f2159e.c(bVar.b());
        this.f2158d = new d(g.a(this.f2159e, this.f2157c));
        this.f2158d.mutate();
        d();
    }

    @Nullable
    private Drawable a(Drawable drawable, @Nullable t tVar, @Nullable PointF pointF, @Nullable Matrix matrix, @Nullable ColorFilter colorFilter) {
        drawable.setColorFilter(colorFilter);
        return g.a(g.a(drawable, tVar, pointF), matrix);
    }

    @Nullable
    private Drawable a(@Nullable Drawable drawable, @Nullable t tVar) {
        return g.a(g.a(drawable, this.f2157c, this.f2156b), tVar);
    }

    private void c() {
        this.f2160f.a(this.f2155a);
    }

    private void d() {
        if (this.f2159e != null) {
            this.f2159e.b();
            this.f2159e.d();
            e();
            a(1);
            this.f2159e.e();
            this.f2159e.c();
        }
    }

    private void e() {
        b(1);
        b(2);
        b(3);
        b(4);
        b(5);
    }

    private void a(int i) {
        if (i >= 0) {
            this.f2159e.d(i);
        }
    }

    private void b(int i) {
        if (i >= 0) {
            this.f2159e.e(i);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void a(float f2) {
        Drawable drawableA = this.f2159e.a(3);
        if (drawableA != 0) {
            if (f2 >= 0.999f) {
                if (drawableA instanceof Animatable) {
                    ((Animatable) drawableA).stop();
                }
                b(3);
            } else {
                if (drawableA instanceof Animatable) {
                    ((Animatable) drawableA).start();
                }
                a(3);
            }
            drawableA.setLevel(Math.round(10000.0f * f2));
        }
    }

    @Override // com.facebook.drawee.h.b
    public Drawable a() {
        return this.f2158d;
    }

    @Override // com.facebook.drawee.h.c
    public void b() {
        c();
        d();
    }

    @Override // com.facebook.drawee.h.c
    public void a(Drawable drawable, float f2, boolean z) {
        Drawable drawableA = g.a(drawable, this.f2157c, this.f2156b);
        drawableA.mutate();
        this.f2160f.a(drawableA);
        this.f2159e.b();
        e();
        a(2);
        a(f2);
        if (z) {
            this.f2159e.e();
        }
        this.f2159e.c();
    }

    @Override // com.facebook.drawee.h.c
    public void a(float f2, boolean z) {
        if (this.f2159e.a(3) != null) {
            this.f2159e.b();
            a(f2);
            if (z) {
                this.f2159e.e();
            }
            this.f2159e.c();
        }
    }

    @Override // com.facebook.drawee.h.c
    public void a(Throwable th) {
        this.f2159e.b();
        e();
        if (this.f2159e.a(5) != null) {
            a(5);
        } else {
            a(1);
        }
        this.f2159e.c();
    }

    @Override // com.facebook.drawee.h.c
    public void b(Throwable th) {
        this.f2159e.b();
        e();
        if (this.f2159e.a(4) != null) {
            a(4);
        } else {
            a(1);
        }
        this.f2159e.c();
    }

    @Override // com.facebook.drawee.h.c
    public void a(@Nullable Drawable drawable) {
        this.f2158d.d(drawable);
    }

    private com.facebook.drawee.e.d c(int i) {
        com.facebook.drawee.e.d dVarB = this.f2159e.b(i);
        if (dVarB.a() instanceof i) {
            dVarB = (i) dVarB.a();
        }
        if (dVarB.a() instanceof q) {
            return (q) dVarB.a();
        }
        return dVarB;
    }

    private void a(int i, @Nullable Drawable drawable) {
        if (drawable == null) {
            this.f2159e.a(i, null);
        } else {
            c(i).a(g.a(drawable, this.f2157c, this.f2156b));
        }
    }

    public void b(@Nullable Drawable drawable) {
        a(1, drawable);
    }
}
