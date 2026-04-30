package com.g.a;

import android.view.View;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: ObjectAnimator.java */
/* JADX INFO: loaded from: classes2.dex */
public final class i extends ac {
    private static final Map<String, com.g.b.c> h = new HashMap();
    private Object i;
    private String j;
    private com.g.b.c k;

    static {
        h.put("alpha", j.f3076a);
        h.put("pivotX", j.f3077b);
        h.put("pivotY", j.f3078c);
        h.put("translationX", j.f3079d);
        h.put("translationY", j.f3080e);
        h.put("rotation", j.f3081f);
        h.put("rotationX", j.f3082g);
        h.put("rotationY", j.h);
        h.put("scaleX", j.i);
        h.put("scaleY", j.j);
        h.put("scrollX", j.k);
        h.put("scrollY", j.l);
        h.put("x", j.m);
        h.put("y", j.n);
    }

    public void a(com.g.b.c cVar) {
        if (this.f3062f != null) {
            y yVar = this.f3062f[0];
            String strC = yVar.c();
            yVar.a(cVar);
            this.f3063g.remove(strC);
            this.f3063g.put(this.j, yVar);
        }
        if (this.k != null) {
            this.j = cVar.a();
        }
        this.k = cVar;
        this.f3061e = false;
    }

    public i() {
    }

    private <T> i(T t, com.g.b.c<T, ?> cVar) {
        this.i = t;
        a(cVar);
    }

    public static <T> i a(T t, com.g.b.c<T, Float> cVar, float... fArr) {
        i iVar = new i(t, cVar);
        iVar.a(fArr);
        return iVar;
    }

    @Override // com.g.a.ac
    public void a(float... fArr) {
        if (this.f3062f == null || this.f3062f.length == 0) {
            if (this.k != null) {
                a(y.a((com.g.b.c<?, Float>) this.k, fArr));
                return;
            } else {
                a(y.a(this.j, fArr));
                return;
            }
        }
        super.a(fArr);
    }

    @Override // com.g.a.ac, com.g.a.a
    public void a() {
        super.a();
    }

    @Override // com.g.a.ac
    void d() {
        if (!this.f3061e) {
            if (this.k == null && com.g.c.a.a.f3092a && (this.i instanceof View) && h.containsKey(this.j)) {
                a(h.get(this.j));
            }
            int length = this.f3062f.length;
            for (int i = 0; i < length; i++) {
                this.f3062f[i].a(this.i);
            }
            super.d();
        }
    }

    @Override // com.g.a.ac
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public i b(long j) {
        super.b(j);
        return this;
    }

    @Override // com.g.a.ac
    void a(float f2) {
        super.a(f2);
        int length = this.f3062f.length;
        for (int i = 0; i < length; i++) {
            this.f3062f[i].b(this.i);
        }
    }

    @Override // com.g.a.ac
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public i clone() {
        return (i) super.clone();
    }

    @Override // com.g.a.ac
    public String toString() {
        String str = "ObjectAnimator@" + Integer.toHexString(hashCode()) + ", target " + this.i;
        if (this.f3062f != null) {
            for (int i = 0; i < this.f3062f.length; i++) {
                str = str + "\n    " + this.f3062f[i].toString();
            }
        }
        return str;
    }
}
