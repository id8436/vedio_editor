package com.b.a.g;

import com.b.a.d.c.s;
import java.io.File;

/* JADX INFO: compiled from: ChildLoadProvider.java */
/* JADX INFO: loaded from: classes2.dex */
public class a<A, T, Z, R> implements f<A, T, Z, R>, Cloneable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final f<A, T, Z, R> f1147a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.b.a.d.e<File, Z> f1148b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private com.b.a.d.e<T, Z> f1149c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.b.a.d.f<Z> f1150d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private com.b.a.d.d.f.c<Z, R> f1151e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private com.b.a.d.b<T> f1152f;

    public a(f<A, T, Z, R> fVar) {
        this.f1147a = fVar;
    }

    @Override // com.b.a.g.f
    public s<A, T> e() {
        return this.f1147a.e();
    }

    public void a(com.b.a.d.e<T, Z> eVar) {
        this.f1149c = eVar;
    }

    public void a(com.b.a.d.b<T> bVar) {
        this.f1152f = bVar;
    }

    @Override // com.b.a.g.b
    public com.b.a.d.e<File, Z> a() {
        return this.f1148b != null ? this.f1148b : this.f1147a.a();
    }

    @Override // com.b.a.g.b
    public com.b.a.d.e<T, Z> b() {
        return this.f1149c != null ? this.f1149c : this.f1147a.b();
    }

    @Override // com.b.a.g.b
    public com.b.a.d.b<T> c() {
        return this.f1152f != null ? this.f1152f : this.f1147a.c();
    }

    @Override // com.b.a.g.b
    public com.b.a.d.f<Z> d() {
        return this.f1150d != null ? this.f1150d : this.f1147a.d();
    }

    @Override // com.b.a.g.f
    public com.b.a.d.d.f.c<Z, R> f() {
        return this.f1151e != null ? this.f1151e : this.f1147a.f();
    }

    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public a<A, T, Z, R> clone() {
        try {
            return (a) super.clone();
        } catch (CloneNotSupportedException e2) {
            throw new RuntimeException(e2);
        }
    }
}
