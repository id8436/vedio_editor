package com.facebook.c.b;

import java.io.File;

/* JADX INFO: compiled from: DefaultDiskStorage.java */
/* JADX INFO: loaded from: classes2.dex */
class d implements q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f1863a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.facebook.b.b f1864b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f1865c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f1866d;

    private d(String str, File file) {
        com.facebook.d.d.k.a(file);
        this.f1863a = (String) com.facebook.d.d.k.a(str);
        this.f1864b = com.facebook.b.b.a(file);
        this.f1865c = -1L;
        this.f1866d = -1L;
    }

    @Override // com.facebook.c.b.q
    public String a() {
        return this.f1863a;
    }

    @Override // com.facebook.c.b.q
    public long b() {
        if (this.f1866d < 0) {
            this.f1866d = this.f1864b.c().lastModified();
        }
        return this.f1866d;
    }

    public com.facebook.b.b c() {
        return this.f1864b;
    }

    @Override // com.facebook.c.b.q
    public long d() {
        if (this.f1865c < 0) {
            this.f1865c = this.f1864b.b();
        }
        return this.f1865c;
    }
}
