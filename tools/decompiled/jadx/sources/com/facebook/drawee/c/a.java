package com.facebook.drawee.c;

import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.view.MotionEvent;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;
import javax.annotation.concurrent.NotThreadSafe;

/* JADX INFO: compiled from: AbstractDraweeController.java */
/* JADX INFO: loaded from: classes.dex */
@NotThreadSafe
public abstract class a<T, INFO> implements com.facebook.drawee.b.c, com.facebook.drawee.g.b, com.facebook.drawee.h.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Class<?> f2047a = a.class;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.facebook.drawee.b.d f2048b = com.facebook.drawee.b.d.a();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.facebook.drawee.b.a f2049c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Executor f2050d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Nullable
    private com.facebook.drawee.b.f f2051e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Nullable
    private com.facebook.drawee.g.a f2052f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Nullable
    private i<INFO> f2053g;

    @Nullable
    private j h;

    @Nullable
    private com.facebook.drawee.h.c i;

    @Nullable
    private Drawable j;
    private String k;
    private Object l;
    private boolean m;
    private boolean n;
    private boolean o;
    private boolean p;
    private boolean q;

    @Nullable
    private String r;

    @Nullable
    private com.facebook.e.f<T> s;

    @Nullable
    private T t;

    @Nullable
    private Drawable u;

    @Nullable
    private Throwable v;

    protected abstract com.facebook.e.f<T> a();

    protected abstract void a(@Nullable Drawable drawable);

    protected abstract void a(@Nullable T t);

    @Nullable
    protected abstract INFO c(T t);

    protected abstract Drawable d(T t);

    public a(com.facebook.drawee.b.a aVar, Executor executor, String str, Object obj) {
        this.f2049c = aVar;
        this.f2050d = executor;
        a(str, obj, true);
    }

    protected void a(String str, Object obj) {
        a(str, obj, false);
    }

    private void a(String str, Object obj, boolean z) {
        this.f2048b.a(com.facebook.drawee.b.e.ON_INIT_CONTROLLER);
        if (com.facebook.d.h.a.e()) {
            this.v = new Throwable();
        }
        if (!z && this.f2049c != null) {
            this.f2049c.b(this);
        }
        this.m = false;
        this.o = false;
        b();
        this.q = false;
        if (this.f2051e != null) {
            this.f2051e.a();
        }
        if (this.f2052f != null) {
            this.f2052f.a();
            this.f2052f.a(this);
        }
        if (this.f2053g instanceof c) {
            ((c) this.f2053g).a();
        } else {
            this.f2053g = null;
        }
        this.h = null;
        if (this.i != null) {
            this.i.b();
            this.i.a((Drawable) null);
            this.i = null;
        }
        this.j = null;
        if (com.facebook.d.e.a.a(2)) {
            com.facebook.d.e.a.a(f2047a, "controller %x %s -> %s: initialize", Integer.valueOf(System.identityHashCode(this)), this.k, str);
        }
        this.k = str;
        this.l = obj;
    }

    @Override // com.facebook.drawee.b.c
    public void d() {
        this.f2048b.a(com.facebook.drawee.b.e.ON_RELEASE_CONTROLLER);
        if (this.f2051e != null) {
            this.f2051e.b();
        }
        if (this.f2052f != null) {
            this.f2052f.b();
        }
        if (this.i != null) {
            this.i.b();
        }
        b();
    }

    private void b() {
        boolean z = this.n;
        this.n = false;
        this.p = false;
        if (this.s != null) {
            this.s.h();
            this.s = null;
        }
        if (this.u != null) {
            a(this.u);
        }
        if (this.r != null) {
            this.r = null;
        }
        this.u = null;
        if (this.t != null) {
            b("release", this.t);
            a(this.t);
            this.t = null;
        }
        if (z) {
            h().a(this.k);
        }
    }

    public String e() {
        return this.k;
    }

    @Nullable
    protected com.facebook.drawee.b.f f() {
        return this.f2051e;
    }

    protected void a(@Nullable com.facebook.drawee.b.f fVar) {
        this.f2051e = fVar;
    }

    @Nullable
    protected com.facebook.drawee.g.a g() {
        return this.f2052f;
    }

    protected void a(@Nullable com.facebook.drawee.g.a aVar) {
        this.f2052f = aVar;
        if (this.f2052f != null) {
            this.f2052f.a(this);
        }
    }

    protected void b(boolean z) {
        this.q = z;
    }

    public void a(@Nullable String str) {
        this.r = str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void a(i<? super INFO> iVar) {
        com.facebook.d.d.k.a(iVar);
        if (this.f2053g instanceof c) {
            ((c) this.f2053g).a(iVar);
        } else if (this.f2053g != null) {
            this.f2053g = c.a(this.f2053g, iVar);
        } else {
            this.f2053g = iVar;
        }
    }

    protected i<INFO> h() {
        return this.f2053g == null ? h.a() : this.f2053g;
    }

    public void a(@Nullable j jVar) {
        this.h = jVar;
    }

    @Override // com.facebook.drawee.h.a
    @Nullable
    public com.facebook.drawee.h.b i() {
        return this.i;
    }

    public void a(@Nullable com.facebook.drawee.h.b bVar) {
        if (com.facebook.d.e.a.a(2)) {
            com.facebook.d.e.a.a(f2047a, "controller %x %s: setHierarchy: %s", Integer.valueOf(System.identityHashCode(this)), this.k, bVar);
        }
        this.f2048b.a(bVar != null ? com.facebook.drawee.b.e.ON_SET_HIERARCHY : com.facebook.drawee.b.e.ON_CLEAR_HIERARCHY);
        if (this.n) {
            this.f2049c.b(this);
            d();
        }
        if (this.i != null) {
            this.i.a((Drawable) null);
            this.i = null;
        }
        if (bVar != null) {
            com.facebook.d.d.k.a(bVar instanceof com.facebook.drawee.h.c);
            this.i = (com.facebook.drawee.h.c) bVar;
            this.i.a(this.j);
        }
    }

    protected void b(@Nullable Drawable drawable) {
        this.j = drawable;
        if (this.i != null) {
            this.i.a(this.j);
        }
    }

    @Nullable
    protected Drawable j() {
        return this.j;
    }

    @Override // com.facebook.drawee.h.a
    public void k() {
        if (com.facebook.d.e.a.a(2)) {
            com.facebook.d.e.a.a(f2047a, "controller %x %s: onAttach: %s", Integer.valueOf(System.identityHashCode(this)), this.k, this.n ? "request already submitted" : "request needs submit");
        }
        this.f2048b.a(com.facebook.drawee.b.e.ON_ATTACH_CONTROLLER);
        com.facebook.d.d.k.a(this.i);
        this.f2049c.b(this);
        this.m = true;
        if (!this.n) {
            o();
        }
    }

    @Override // com.facebook.drawee.h.a
    public void l() {
        if (com.facebook.d.e.a.a(2)) {
            com.facebook.d.e.a.a(f2047a, "controller %x %s: onDetach", Integer.valueOf(System.identityHashCode(this)), this.k);
        }
        this.f2048b.a(com.facebook.drawee.b.e.ON_DETACH_CONTROLLER);
        this.m = false;
        this.f2049c.a(this);
    }

    @Override // com.facebook.drawee.h.a
    public boolean a(MotionEvent motionEvent) {
        if (com.facebook.d.e.a.a(2)) {
            com.facebook.d.e.a.a(f2047a, "controller %x %s: onTouchEvent %s", Integer.valueOf(System.identityHashCode(this)), this.k, motionEvent);
        }
        if (this.f2052f == null) {
            return false;
        }
        if (!this.f2052f.c() && !m()) {
            return false;
        }
        this.f2052f.a(motionEvent);
        return true;
    }

    protected boolean m() {
        return q();
    }

    private boolean q() {
        return this.p && this.f2051e != null && this.f2051e.c();
    }

    @Override // com.facebook.drawee.g.b
    public boolean n() {
        if (com.facebook.d.e.a.a(2)) {
            com.facebook.d.e.a.a(f2047a, "controller %x %s: onClick", Integer.valueOf(System.identityHashCode(this)), this.k);
        }
        if (!q()) {
            return false;
        }
        this.f2051e.d();
        this.i.b();
        o();
        return true;
    }

    protected void o() {
        T tC = c();
        if (tC != null) {
            this.s = null;
            this.n = true;
            this.p = false;
            this.f2048b.a(com.facebook.drawee.b.e.ON_SUBMIT_CACHE_HIT);
            h().a(this.k, this.l);
            a(this.k, this.s, tC, 1.0f, true, true);
            return;
        }
        this.f2048b.a(com.facebook.drawee.b.e.ON_DATASOURCE_SUBMIT);
        h().a(this.k, this.l);
        this.i.a(0.0f, true);
        this.n = true;
        this.p = false;
        this.s = a();
        if (com.facebook.d.e.a.a(2)) {
            com.facebook.d.e.a.a(f2047a, "controller %x %s: submitRequest: dataSource: %x", Integer.valueOf(System.identityHashCode(this)), this.k, Integer.valueOf(System.identityHashCode(this.s)));
        }
        this.s.a(new b(this, this.k, this.s.c()), this.f2050d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, com.facebook.e.f<T> fVar, @Nullable T t, float f2, boolean z, boolean z2) {
        if (!a(str, (com.facebook.e.f) fVar)) {
            b("ignore_old_datasource @ onNewResult", t);
            a(t);
            fVar.h();
            return;
        }
        this.f2048b.a(z ? com.facebook.drawee.b.e.ON_DATASOURCE_RESULT : com.facebook.drawee.b.e.ON_DATASOURCE_RESULT_INT);
        try {
            Drawable drawableD = d(t);
            T t2 = this.t;
            Drawable drawable = this.u;
            this.t = t;
            this.u = drawableD;
            try {
                if (z) {
                    b("set_final_result @ onNewResult", t);
                    this.s = null;
                    this.i.a(drawableD, 1.0f, z2);
                    h().a(str, c(t), p());
                } else {
                    b("set_intermediate_result @ onNewResult", t);
                    this.i.a(drawableD, f2, z2);
                    h().b(str, c(t));
                }
                if (drawable != null && drawable != drawableD) {
                    a(drawable);
                }
                if (t2 != null && t2 != t) {
                    b("release_previous_result @ onNewResult", t2);
                    a(t2);
                }
            } catch (Throwable th) {
                if (drawable != null && drawable != drawableD) {
                    a(drawable);
                }
                if (t2 != null && t2 != t) {
                    b("release_previous_result @ onNewResult", t2);
                    a(t2);
                }
                throw th;
            }
        } catch (Exception e2) {
            b("drawable_failed @ onNewResult", t);
            a(t);
            a(str, fVar, e2, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, com.facebook.e.f<T> fVar, Throwable th, boolean z) {
        if (!a(str, (com.facebook.e.f) fVar)) {
            a("ignore_old_datasource @ onFailure", th);
            fVar.h();
            return;
        }
        this.f2048b.a(z ? com.facebook.drawee.b.e.ON_DATASOURCE_FAILURE : com.facebook.drawee.b.e.ON_DATASOURCE_FAILURE_INT);
        if (z) {
            a("final_failed @ onFailure", th);
            this.s = null;
            this.p = true;
            if (this.q && this.u != null) {
                this.i.a(this.u, 1.0f, true);
            } else if (q()) {
                this.i.b(th);
            } else {
                this.i.a(th);
            }
            h().b(this.k, th);
            return;
        }
        a("intermediate_failed @ onFailure", th);
        h().a(this.k, th);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, com.facebook.e.f<T> fVar, float f2, boolean z) {
        if (!a(str, (com.facebook.e.f) fVar)) {
            a("ignore_old_datasource @ onProgress", (Throwable) null);
            fVar.h();
        } else if (!z) {
            this.i.a(f2, false);
        }
    }

    private boolean a(String str, com.facebook.e.f<T> fVar) {
        if (fVar == null && this.s == null) {
            return true;
        }
        return str.equals(this.k) && fVar == this.s && this.n;
    }

    private void b(String str, T t) {
        if (com.facebook.d.e.a.a(2)) {
            com.facebook.d.e.a.a(f2047a, "controller %x %s: %s: image: %s %x", Integer.valueOf(System.identityHashCode(this)), this.k, str, e(t), Integer.valueOf(b(t)));
        }
    }

    private void a(String str, Throwable th) {
        if (com.facebook.d.e.a.a(2)) {
            com.facebook.d.e.a.a(f2047a, "controller %x %s: %s: failure: %s", Integer.valueOf(System.identityHashCode(this)), this.k, str, th);
        }
    }

    @Nullable
    public Animatable p() {
        if (this.u instanceof Animatable) {
            return (Animatable) this.u;
        }
        return null;
    }

    protected String e(@Nullable T t) {
        return t != null ? t.getClass().getSimpleName() : "<null>";
    }

    protected int b(@Nullable T t) {
        return System.identityHashCode(t);
    }

    public String toString() {
        return com.facebook.d.d.g.a(this).a("isAttached", this.m).a("isRequestSubmitted", this.n).a("hasFetchFailed", this.p).a("fetchedImage", b(this.t)).a("events", this.f2048b.toString()).toString();
    }

    protected T c() {
        return null;
    }
}
