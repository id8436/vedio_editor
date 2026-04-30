package com.b.a.d.c;

import java.util.Queue;

/* JADX INFO: compiled from: ModelCache.java */
/* JADX INFO: loaded from: classes2.dex */
final class r<A> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Queue<r<?>> f948a = com.b.a.j.h.a(0);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f949b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f950c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private A f951d;

    static <A> r<A> a(A a2, int i, int i2) {
        r<A> rVar = (r) f948a.poll();
        if (rVar == null) {
            rVar = new r<>();
        }
        rVar.b(a2, i, i2);
        return rVar;
    }

    private r() {
    }

    private void b(A a2, int i, int i2) {
        this.f951d = a2;
        this.f950c = i;
        this.f949b = i2;
    }

    public void a() {
        f948a.offer(this);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof r)) {
            return false;
        }
        r rVar = (r) obj;
        return this.f950c == rVar.f950c && this.f949b == rVar.f949b && this.f951d.equals(rVar.f951d);
    }

    public int hashCode() {
        return (((this.f949b * 31) + this.f950c) * 31) + this.f951d.hashCode();
    }
}
