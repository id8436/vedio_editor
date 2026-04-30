package com.d.a.a.d;

/* JADX INFO: compiled from: CharsToNameCanonicalizer.java */
/* JADX INFO: loaded from: classes2.dex */
final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f1445a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final d f1446b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f1447c;

    public d(String str, d dVar) {
        this.f1445a = str;
        this.f1446b = dVar;
        this.f1447c = dVar == null ? 1 : dVar.f1447c + 1;
    }

    public String a(char[] cArr, int i, int i2) {
        if (this.f1445a.length() != i2) {
            return null;
        }
        int i3 = 0;
        while (this.f1445a.charAt(i3) == cArr[i + i3]) {
            i3++;
            if (i3 >= i2) {
                return this.f1445a;
            }
        }
        return null;
    }
}
