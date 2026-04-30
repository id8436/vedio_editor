package com.g.a;

import android.util.Log;
import java.lang.reflect.InvocationTargetException;

/* JADX INFO: compiled from: PropertyValuesHolder.java */
/* JADX INFO: loaded from: classes2.dex */
class aa extends y {
    d h;
    float i;
    private com.g.b.a j;

    public aa(String str, float... fArr) {
        super(str);
        a(fArr);
    }

    public aa(com.g.b.c cVar, float... fArr) {
        super(cVar);
        a(fArr);
        if (cVar instanceof com.g.b.a) {
            this.j = (com.g.b.a) this.f3084b;
        }
    }

    @Override // com.g.a.y
    public void a(float... fArr) {
        super.a(fArr);
        this.h = (d) this.f3087e;
    }

    @Override // com.g.a.y
    void a(float f2) {
        this.i = this.h.b(f2);
    }

    @Override // com.g.a.y
    Object d() {
        return Float.valueOf(this.i);
    }

    @Override // com.g.a.y
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public aa clone() {
        aa aaVar = (aa) super.clone();
        aaVar.h = (d) aaVar.f3087e;
        return aaVar;
    }

    @Override // com.g.a.y
    void b(Object obj) {
        if (this.j != null) {
            this.j.a(obj, this.i);
            return;
        }
        if (this.f3084b != null) {
            this.f3084b.a(obj, Float.valueOf(this.i));
            return;
        }
        if (this.f3085c != null) {
            try {
                this.f3089g[0] = Float.valueOf(this.i);
                this.f3085c.invoke(obj, this.f3089g);
            } catch (IllegalAccessException e2) {
                Log.e("PropertyValuesHolder", e2.toString());
            } catch (InvocationTargetException e3) {
                Log.e("PropertyValuesHolder", e3.toString());
            }
        }
    }

    @Override // com.g.a.y
    void a(Class cls) {
        if (this.f3084b == null) {
            super.a(cls);
        }
    }
}
