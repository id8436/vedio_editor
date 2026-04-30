package com.d.a.a.d;

/* JADX INFO: compiled from: ByteQuadsCanonicalizer.java */
/* JADX INFO: loaded from: classes2.dex */
final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f1431a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f1432b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f1433c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int[] f1434d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String[] f1435e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f1436f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f1437g;

    public b(int i, int i2, int i3, int[] iArr, String[] strArr, int i4, int i5) {
        this.f1431a = i;
        this.f1432b = i2;
        this.f1433c = i3;
        this.f1434d = iArr;
        this.f1435e = strArr;
        this.f1436f = i4;
        this.f1437g = i5;
    }

    public b(a aVar) {
        this.f1431a = aVar.f1429f;
        this.f1432b = aVar.j;
        this.f1433c = aVar.i;
        this.f1434d = aVar.f1428e;
        this.f1435e = aVar.k;
        this.f1436f = aVar.l;
        this.f1437g = aVar.m;
    }

    public static b a(int i) {
        int i2 = i << 3;
        return new b(i, 0, a.e(i), new int[i2], new String[i << 1], i2 - i, i2);
    }
}
