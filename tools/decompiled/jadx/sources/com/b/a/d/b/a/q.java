package com.b.a.d.b.a;

import android.graphics.Bitmap;

/* JADX INFO: compiled from: SizeConfigStrategy.java */
/* JADX INFO: loaded from: classes2.dex */
final class q implements n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final r f815a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f816b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Bitmap.Config f817c;

    public q(r rVar) {
        this.f815a = rVar;
    }

    public void a(int i, Bitmap.Config config) {
        this.f816b = i;
        this.f817c = config;
    }

    @Override // com.b.a.d.b.a.n
    public void a() {
        this.f815a.a(this);
    }

    public String toString() {
        return o.b(this.f816b, this.f817c);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof q)) {
            return false;
        }
        q qVar = (q) obj;
        if (this.f816b != qVar.f816b) {
            return false;
        }
        if (this.f817c == null) {
            if (qVar.f817c != null) {
                return false;
            }
        } else if (!this.f817c.equals(qVar.f817c)) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        return (this.f817c != null ? this.f817c.hashCode() : 0) + (this.f816b * 31);
    }
}
