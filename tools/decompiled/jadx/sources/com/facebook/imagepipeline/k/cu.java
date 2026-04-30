package com.facebook.imagepipeline.k;

import java.util.Map;

/* JADX INFO: compiled from: StatefulProducerRunnable.java */
/* JADX INFO: loaded from: classes2.dex */
public abstract class cu<T> extends com.facebook.d.b.e<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final o<T> f2753b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final co f2754c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f2755d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f2756e;

    @Override // com.facebook.d.b.e
    protected abstract void b(T t);

    public cu(o<T> oVar, co coVar, String str, String str2) {
        this.f2753b = oVar;
        this.f2754c = coVar;
        this.f2755d = str;
        this.f2756e = str2;
        this.f2754c.a(this.f2756e, this.f2755d);
    }

    @Override // com.facebook.d.b.e
    protected void a(T t) {
        this.f2754c.a(this.f2756e, this.f2755d, this.f2754c.b(this.f2756e) ? c(t) : null);
        this.f2753b.b(t, true);
    }

    @Override // com.facebook.d.b.e
    protected void a(Exception exc) {
        this.f2754c.a(this.f2756e, this.f2755d, exc, this.f2754c.b(this.f2756e) ? b(exc) : null);
        this.f2753b.b(exc);
    }

    @Override // com.facebook.d.b.e
    protected void b() {
        this.f2754c.b(this.f2756e, this.f2755d, this.f2754c.b(this.f2756e) ? e() : null);
        this.f2753b.b();
    }

    protected Map<String, String> c(T t) {
        return null;
    }

    protected Map<String, String> b(Exception exc) {
        return null;
    }

    protected Map<String, String> e() {
        return null;
    }
}
