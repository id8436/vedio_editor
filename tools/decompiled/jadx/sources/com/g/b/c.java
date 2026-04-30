package com.g.b;

/* JADX INFO: compiled from: Property.java */
/* JADX INFO: loaded from: classes2.dex */
public abstract class c<T, V> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f3090a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Class<V> f3091b;

    public abstract V a(T t);

    public c(Class<V> cls, String str) {
        this.f3090a = str;
        this.f3091b = cls;
    }

    public void a(T t, V v) {
        throw new UnsupportedOperationException("Property " + a() + " is read-only");
    }

    public String a() {
        return this.f3090a;
    }
}
