package com.b.a.j;

import com.google.gdata.data.Category;

/* JADX INFO: compiled from: MultiClassKey.java */
/* JADX INFO: loaded from: classes2.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Class<?> f1232a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Class<?> f1233b;

    public g() {
    }

    public g(Class<?> cls, Class<?> cls2) {
        a(cls, cls2);
    }

    public void a(Class<?> cls, Class<?> cls2) {
        this.f1232a = cls;
        this.f1233b = cls2;
    }

    public String toString() {
        return "MultiClassKey{first=" + this.f1232a + ", second=" + this.f1233b + Category.SCHEME_SUFFIX;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        g gVar = (g) obj;
        return this.f1232a.equals(gVar.f1232a) && this.f1233b.equals(gVar.f1233b);
    }

    public int hashCode() {
        return (this.f1232a.hashCode() * 31) + this.f1233b.hashCode();
    }
}
