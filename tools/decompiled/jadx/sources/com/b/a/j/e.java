package com.b.a.j;

import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: compiled from: LruCache.java */
/* JADX INFO: loaded from: classes2.dex */
public class e<T, Y> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f1228b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f1229c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LinkedHashMap<T, Y> f1227a = new LinkedHashMap<>(100, 0.75f, true);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f1230d = 0;

    public e(int i) {
        this.f1229c = i;
        this.f1228b = i;
    }

    protected int a(Y y) {
        return 1;
    }

    protected void a(T t, Y y) {
    }

    public int b() {
        return this.f1230d;
    }

    public Y b(T t) {
        return this.f1227a.get(t);
    }

    public Y b(T t, Y y) {
        if (a(y) >= this.f1228b) {
            a(t, y);
            return null;
        }
        Y yPut = this.f1227a.put(t, y);
        if (y != null) {
            this.f1230d += a(y);
        }
        if (yPut != null) {
            this.f1230d -= a(yPut);
        }
        c();
        return yPut;
    }

    public Y c(T t) {
        Y yRemove = this.f1227a.remove(t);
        if (yRemove != null) {
            this.f1230d -= a(yRemove);
        }
        return yRemove;
    }

    public void a() {
        b(0);
    }

    protected void b(int i) {
        while (this.f1230d > i) {
            Map.Entry<T, Y> next = this.f1227a.entrySet().iterator().next();
            Y value = next.getValue();
            this.f1230d -= a(value);
            T key = next.getKey();
            this.f1227a.remove(key);
            a(key, value);
        }
    }

    private void c() {
        b(this.f1228b);
    }
}
