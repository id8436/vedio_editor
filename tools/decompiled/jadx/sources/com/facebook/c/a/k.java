package com.facebook.c.a;

/* JADX INFO: compiled from: SimpleCacheKey.java */
/* JADX INFO: loaded from: classes2.dex */
public class k implements f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final String f1846a;

    public k(String str) {
        this.f1846a = (String) com.facebook.d.d.k.a(str);
    }

    public String toString() {
        return this.f1846a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof k) {
            return this.f1846a.equals(((k) obj).f1846a);
        }
        return false;
    }

    public int hashCode() {
        return this.f1846a.hashCode();
    }

    @Override // com.facebook.c.a.f
    public String a() {
        return this.f1846a;
    }
}
