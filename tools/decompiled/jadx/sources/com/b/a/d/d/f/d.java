package com.b.a.d.d.f;

import com.b.a.j.g;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: TranscoderRegistry.java */
/* JADX INFO: loaded from: classes2.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final g f1105a = new g();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map<g, c<?, ?>> f1106b = new HashMap();

    public <Z, R> void a(Class<Z> cls, Class<R> cls2, c<Z, R> cVar) {
        this.f1106b.put(new g(cls, cls2), cVar);
    }

    public <Z, R> c<Z, R> a(Class<Z> cls, Class<R> cls2) {
        c<Z, R> cVar;
        if (cls.equals(cls2)) {
            return e.b();
        }
        synchronized (f1105a) {
            f1105a.a(cls, cls2);
            cVar = (c) this.f1106b.get(f1105a);
        }
        if (cVar == null) {
            throw new IllegalArgumentException("No transcoder registered for " + cls + " and " + cls2);
        }
        return cVar;
    }
}
