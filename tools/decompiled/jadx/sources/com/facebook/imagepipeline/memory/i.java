package com.facebook.imagepipeline.memory;

import java.util.LinkedList;
import java.util.Queue;
import javax.annotation.Nullable;
import javax.annotation.concurrent.NotThreadSafe;

/* JADX INFO: compiled from: Bucket.java */
/* JADX INFO: loaded from: classes.dex */
@NotThreadSafe
class i<V> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f2929a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f2930b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final Queue f2931c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f2932d;

    public i(int i, int i2, int i3) {
        com.facebook.d.d.k.b(i > 0);
        com.facebook.d.d.k.b(i2 >= 0);
        com.facebook.d.d.k.b(i3 >= 0);
        this.f2929a = i;
        this.f2930b = i2;
        this.f2931c = new LinkedList();
        this.f2932d = i3;
    }

    public boolean a() {
        return this.f2932d + b() > this.f2930b;
    }

    int b() {
        return this.f2931c.size();
    }

    @Nullable
    public V c() {
        V vD = d();
        if (vD != null) {
            this.f2932d++;
        }
        return vD;
    }

    @Nullable
    public V d() {
        return (V) this.f2931c.poll();
    }

    public void e() {
        this.f2932d++;
    }

    public void a(V v) {
        com.facebook.d.d.k.a(v);
        com.facebook.d.d.k.b(this.f2932d > 0);
        this.f2932d--;
        b(v);
    }

    void b(V v) {
        this.f2931c.add(v);
    }

    public void f() {
        com.facebook.d.d.k.b(this.f2932d > 0);
        this.f2932d--;
    }
}
