package com.facebook.c.a;

import java.util.List;

/* JADX INFO: compiled from: MultiCacheKey.java */
/* JADX INFO: loaded from: classes2.dex */
public class h implements f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final List<f> f1843a;

    public List<f> b() {
        return this.f1843a;
    }

    public String toString() {
        return "MultiCacheKey:" + this.f1843a.toString();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof h) {
            return this.f1843a.equals(((h) obj).f1843a);
        }
        return false;
    }

    public int hashCode() {
        return this.f1843a.hashCode();
    }

    @Override // com.facebook.c.a.f
    public String a() {
        return this.f1843a.get(0).a();
    }
}
