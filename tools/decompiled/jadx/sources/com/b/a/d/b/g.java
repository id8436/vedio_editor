package com.b.a.d.b;

import java.util.concurrent.ExecutorService;

/* JADX INFO: compiled from: Engine.java */
/* JADX INFO: loaded from: classes2.dex */
class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ExecutorService f872a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ExecutorService f873b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final p f874c;

    public g(ExecutorService executorService, ExecutorService executorService2, p pVar) {
        this.f872a = executorService;
        this.f873b = executorService2;
        this.f874c = pVar;
    }

    public l a(com.b.a.d.c cVar, boolean z) {
        return new l(cVar, this.f872a, this.f873b, z, this.f874c);
    }
}
