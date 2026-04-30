package com.d.a.a;

/* JADX INFO: compiled from: JsonStreamContext.java */
/* JADX INFO: loaded from: classes2.dex */
public abstract class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected int f1512a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected int f1513b;

    protected n() {
    }

    public final boolean a() {
        return this.f1512a == 1;
    }

    public final boolean b() {
        return this.f1512a == 0;
    }

    public final boolean c() {
        return this.f1512a == 2;
    }

    public final String d() {
        switch (this.f1512a) {
            case 0:
                return "ROOT";
            case 1:
                return "ARRAY";
            case 2:
                return "OBJECT";
            default:
                return "?";
        }
    }

    public final int e() {
        return this.f1513b + 1;
    }

    public final int f() {
        if (this.f1513b < 0) {
            return 0;
        }
        return this.f1513b;
    }
}
