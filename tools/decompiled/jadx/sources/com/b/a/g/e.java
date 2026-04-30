package com.b.a.g;

import com.b.a.d.c.s;
import java.io.File;

/* JADX INFO: compiled from: FixedLoadProvider.java */
/* JADX INFO: loaded from: classes2.dex */
public class e<A, T, Z, R> implements f<A, T, Z, R> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final s<A, T> f1156a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.b.a.d.d.f.c<Z, R> f1157b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final b<T, Z> f1158c;

    public e(s<A, T> sVar, com.b.a.d.d.f.c<Z, R> cVar, b<T, Z> bVar) {
        if (sVar == null) {
            throw new NullPointerException("ModelLoader must not be null");
        }
        this.f1156a = sVar;
        if (cVar == null) {
            throw new NullPointerException("Transcoder must not be null");
        }
        this.f1157b = cVar;
        if (bVar == null) {
            throw new NullPointerException("DataLoadProvider must not be null");
        }
        this.f1158c = bVar;
    }

    @Override // com.b.a.g.f
    public s<A, T> e() {
        return this.f1156a;
    }

    @Override // com.b.a.g.f
    public com.b.a.d.d.f.c<Z, R> f() {
        return this.f1157b;
    }

    @Override // com.b.a.g.b
    public com.b.a.d.e<File, Z> a() {
        return this.f1158c.a();
    }

    @Override // com.b.a.g.b
    public com.b.a.d.e<T, Z> b() {
        return this.f1158c.b();
    }

    @Override // com.b.a.g.b
    public com.b.a.d.b<T> c() {
        return this.f1158c.c();
    }

    @Override // com.b.a.g.b
    public com.b.a.d.f<Z> d() {
        return this.f1158c.d();
    }
}
