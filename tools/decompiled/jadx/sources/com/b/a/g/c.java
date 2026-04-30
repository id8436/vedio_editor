package com.b.a.g;

import com.b.a.j.g;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: DataLoadProviderRegistry.java */
/* JADX INFO: loaded from: classes2.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final g f1153a = new g();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map<g, b<?, ?>> f1154b = new HashMap();

    public <T, Z> void a(Class<T> cls, Class<Z> cls2, b<T, Z> bVar) {
        this.f1154b.put(new g(cls, cls2), bVar);
    }

    public <T, Z> b<T, Z> a(Class<T> cls, Class<Z> cls2) {
        b<T, Z> bVar;
        synchronized (f1153a) {
            f1153a.a(cls, cls2);
            bVar = (b) this.f1154b.get(f1153a);
        }
        if (bVar == null) {
            return d.e();
        }
        return bVar;
    }
}
