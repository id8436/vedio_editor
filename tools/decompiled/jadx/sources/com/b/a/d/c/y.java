package com.b.a.d.c;

import java.net.URL;

/* JADX INFO: compiled from: UrlLoader.java */
/* JADX INFO: loaded from: classes2.dex */
public class y<T> implements s<URL, T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final s<e, T> f957a;

    public y(s<e, T> sVar) {
        this.f957a = sVar;
    }

    @Override // com.b.a.d.c.s
    public com.b.a.d.a.c<T> a(URL url, int i, int i2) {
        return this.f957a.a(new e(url), i, i2);
    }
}
