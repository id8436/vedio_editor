package com.b.a.d.d;

import com.b.a.d.b.z;

/* JADX INFO: compiled from: SimpleResource.java */
/* JADX INFO: loaded from: classes2.dex */
public class c<T> implements z<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final T f1025a;

    public c(T t) {
        if (t == null) {
            throw new NullPointerException("Data must not be null");
        }
        this.f1025a = t;
    }

    @Override // com.b.a.d.b.z
    public final T b() {
        return this.f1025a;
    }

    @Override // com.b.a.d.b.z
    public final int c() {
        return 1;
    }

    @Override // com.b.a.d.b.z
    public void d() {
    }
}
