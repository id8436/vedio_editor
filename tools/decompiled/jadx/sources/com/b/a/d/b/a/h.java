package com.b.a.d.b.a;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: GroupedLinkedMap.java */
/* JADX INFO: loaded from: classes2.dex */
class h<K, V> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    h<K, V> f796a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    h<K, V> f797b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final K f798c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private List<V> f799d;

    public h() {
        this(null);
    }

    public h(K k) {
        this.f797b = this;
        this.f796a = this;
        this.f798c = k;
    }

    public V a() {
        int iB = b();
        if (iB > 0) {
            return this.f799d.remove(iB - 1);
        }
        return null;
    }

    public int b() {
        if (this.f799d != null) {
            return this.f799d.size();
        }
        return 0;
    }

    public void a(V v) {
        if (this.f799d == null) {
            this.f799d = new ArrayList();
        }
        this.f799d.add(v);
    }
}
