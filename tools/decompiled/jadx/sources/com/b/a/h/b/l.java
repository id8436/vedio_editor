package com.b.a.h.b;

import android.view.View;

/* JADX INFO: compiled from: ViewTarget.java */
/* JADX INFO: loaded from: classes2.dex */
public abstract class l<T extends View, Z> extends a<Z> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static boolean f1199b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static Integer f1200c = null;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final T f1201a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final m f1202d;

    public l(T t) {
        if (t == null) {
            throw new NullPointerException("View must not be null!");
        }
        this.f1201a = t;
        this.f1202d = new m(t);
    }

    public T a() {
        return this.f1201a;
    }

    @Override // com.b.a.h.b.k
    public void getSize(h hVar) {
        this.f1202d.a(hVar);
    }

    @Override // com.b.a.h.b.a, com.b.a.h.b.k
    public void setRequest(com.b.a.h.c cVar) {
        a(cVar);
    }

    @Override // com.b.a.h.b.a, com.b.a.h.b.k
    public com.b.a.h.c getRequest() {
        Object objC = c();
        if (objC == null) {
            return null;
        }
        if (objC instanceof com.b.a.h.c) {
            return (com.b.a.h.c) objC;
        }
        throw new IllegalArgumentException("You must not call setTag() on a view Glide is targeting");
    }

    private void a(Object obj) {
        if (f1200c == null) {
            f1199b = true;
            this.f1201a.setTag(obj);
        } else {
            this.f1201a.setTag(f1200c.intValue(), obj);
        }
    }

    private Object c() {
        return f1200c == null ? this.f1201a.getTag() : this.f1201a.getTag(f1200c.intValue());
    }

    public String toString() {
        return "Target for: " + this.f1201a;
    }
}
