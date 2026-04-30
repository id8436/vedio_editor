package com.b.a.d.b.a;

import android.graphics.Bitmap;

/* JADX INFO: compiled from: AttributeStrategy.java */
/* JADX INFO: loaded from: classes2.dex */
class b implements n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final c f789a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f790b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f791c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Bitmap.Config f792d;

    public b(c cVar) {
        this.f789a = cVar;
    }

    public void a(int i, int i2, Bitmap.Config config) {
        this.f790b = i;
        this.f791c = i2;
        this.f792d = config;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.f790b == bVar.f790b && this.f791c == bVar.f791c && this.f792d == bVar.f792d;
    }

    public int hashCode() {
        return (this.f792d != null ? this.f792d.hashCode() : 0) + (((this.f790b * 31) + this.f791c) * 31);
    }

    public String toString() {
        return a.d(this.f790b, this.f791c, this.f792d);
    }

    @Override // com.b.a.d.b.a.n
    public void a() {
        this.f789a.a(this);
    }
}
