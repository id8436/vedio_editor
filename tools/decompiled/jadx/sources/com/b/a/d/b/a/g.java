package com.b.a.d.b.a;

import com.b.a.d.b.a.n;
import com.google.gdata.data.Category;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: GroupedLinkedMap.java */
/* JADX INFO: loaded from: classes2.dex */
class g<K extends n, V> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final h<K, V> f794a = new h<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map<K, h<K, V>> f795b = new HashMap();

    g() {
    }

    public void a(K k, V v) {
        h<K, V> hVar = this.f795b.get(k);
        if (hVar == null) {
            hVar = new h<>(k);
            b(hVar);
            this.f795b.put(k, hVar);
        } else {
            k.a();
        }
        hVar.a(v);
    }

    public V a(K k) {
        h<K, V> hVar = this.f795b.get(k);
        if (hVar == null) {
            hVar = new h<>(k);
            this.f795b.put(k, hVar);
        } else {
            k.a();
        }
        a(hVar);
        return hVar.a();
    }

    public V a() {
        h hVar = this.f794a.f797b;
        while (true) {
            h hVar2 = hVar;
            if (!hVar2.equals(this.f794a)) {
                V v = (V) hVar2.a();
                if (v == null) {
                    d(hVar2);
                    this.f795b.remove(hVar2.f798c);
                    ((n) hVar2.f798c).a();
                    hVar = hVar2.f797b;
                } else {
                    return v;
                }
            } else {
                return null;
            }
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("GroupedLinkedMap( ");
        boolean z = false;
        for (h hVar = this.f794a.f796a; !hVar.equals(this.f794a); hVar = hVar.f796a) {
            z = true;
            sb.append(Category.SCHEME_PREFIX).append(hVar.f798c).append(':').append(hVar.b()).append("}, ");
        }
        if (z) {
            sb.delete(sb.length() - 2, sb.length());
        }
        return sb.append(" )").toString();
    }

    private void a(h<K, V> hVar) {
        d(hVar);
        hVar.f797b = this.f794a;
        hVar.f796a = this.f794a.f796a;
        c(hVar);
    }

    private void b(h<K, V> hVar) {
        d(hVar);
        hVar.f797b = this.f794a.f797b;
        hVar.f796a = this.f794a;
        c(hVar);
    }

    private static <K, V> void c(h<K, V> hVar) {
        hVar.f796a.f797b = hVar;
        hVar.f797b.f796a = hVar;
    }

    private static <K, V> void d(h<K, V> hVar) {
        hVar.f797b.f796a = hVar.f796a;
        hVar.f796a.f797b = hVar.f797b;
    }
}
