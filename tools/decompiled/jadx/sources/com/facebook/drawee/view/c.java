package com.facebook.drawee.view;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.MotionEvent;
import com.facebook.d.d.g;
import com.facebook.d.d.k;
import com.facebook.drawee.e.af;
import com.facebook.drawee.e.ag;
import com.facebook.drawee.h.b;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: DraweeHolder.java */
/* JADX INFO: loaded from: classes.dex */
public class c<DH extends com.facebook.drawee.h.b> implements ag {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private DH f2195d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f2192a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f2193b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f2194c = true;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private com.facebook.drawee.h.a f2196e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final com.facebook.drawee.b.d f2197f = com.facebook.drawee.b.d.a();

    public static <DH extends com.facebook.drawee.h.b> c<DH> a(@Nullable DH dh, Context context) {
        c<DH> cVar = new c<>(dh);
        cVar.a(context);
        return cVar;
    }

    public void a(Context context) {
    }

    public c(@Nullable DH dh) {
        if (dh != null) {
            a(dh);
        }
    }

    public void b() {
        this.f2197f.a(com.facebook.drawee.b.e.ON_HOLDER_ATTACH);
        this.f2193b = true;
        i();
    }

    public void c() {
        this.f2197f.a(com.facebook.drawee.b.e.ON_HOLDER_DETACH);
        this.f2193b = false;
        i();
    }

    public boolean a(MotionEvent motionEvent) {
        if (j()) {
            return this.f2196e.a(motionEvent);
        }
        return false;
    }

    @Override // com.facebook.drawee.e.ag
    public void a(boolean z) {
        if (this.f2194c != z) {
            this.f2197f.a(z ? com.facebook.drawee.b.e.ON_DRAWABLE_SHOW : com.facebook.drawee.b.e.ON_DRAWABLE_HIDE);
            this.f2194c = z;
            i();
        }
    }

    @Override // com.facebook.drawee.e.ag
    public void a() {
        if (!this.f2192a) {
            com.facebook.d.e.a.d(com.facebook.drawee.b.d.class, "%x: Draw requested for a non-attached controller %x. %s", Integer.valueOf(System.identityHashCode(this)), Integer.valueOf(System.identityHashCode(this.f2196e)), toString());
            this.f2193b = true;
            this.f2194c = true;
            i();
        }
    }

    private void a(@Nullable ag agVar) {
        Object objF = f();
        if (objF instanceof af) {
            ((af) objF).a(agVar);
        }
    }

    public void a(@Nullable com.facebook.drawee.h.a aVar) {
        boolean z = this.f2192a;
        if (z) {
            h();
        }
        if (j()) {
            this.f2197f.a(com.facebook.drawee.b.e.ON_CLEAR_OLD_CONTROLLER);
            this.f2196e.a((com.facebook.drawee.h.b) null);
        }
        this.f2196e = aVar;
        if (this.f2196e != null) {
            this.f2197f.a(com.facebook.drawee.b.e.ON_SET_CONTROLLER);
            this.f2196e.a(this.f2195d);
        } else {
            this.f2197f.a(com.facebook.drawee.b.e.ON_CLEAR_CONTROLLER);
        }
        if (z) {
            g();
        }
    }

    @Nullable
    public com.facebook.drawee.h.a d() {
        return this.f2196e;
    }

    public void a(DH dh) {
        this.f2197f.a(com.facebook.drawee.b.e.ON_SET_HIERARCHY);
        boolean zJ = j();
        a((ag) null);
        this.f2195d = (DH) k.a(dh);
        Drawable drawableA = this.f2195d.a();
        a(drawableA == null || drawableA.isVisible());
        a(this);
        if (zJ) {
            this.f2196e.a(dh);
        }
    }

    public DH e() {
        return (DH) k.a(this.f2195d);
    }

    public Drawable f() {
        if (this.f2195d == null) {
            return null;
        }
        return this.f2195d.a();
    }

    private void g() {
        if (!this.f2192a) {
            this.f2197f.a(com.facebook.drawee.b.e.ON_ATTACH_CONTROLLER);
            this.f2192a = true;
            if (this.f2196e != null && this.f2196e.i() != null) {
                this.f2196e.k();
            }
        }
    }

    private void h() {
        if (this.f2192a) {
            this.f2197f.a(com.facebook.drawee.b.e.ON_DETACH_CONTROLLER);
            this.f2192a = false;
            if (j()) {
                this.f2196e.l();
            }
        }
    }

    private void i() {
        if (this.f2193b && this.f2194c) {
            g();
        } else {
            h();
        }
    }

    public String toString() {
        return g.a(this).a("controllerAttached", this.f2192a).a("holderAttached", this.f2193b).a("drawableVisible", this.f2194c).a("events", this.f2197f.toString()).toString();
    }

    private boolean j() {
        return this.f2196e != null && this.f2196e.i() == this.f2195d;
    }
}
