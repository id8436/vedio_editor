package com.facebook.imagepipeline.e;

import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

/* JADX INFO: compiled from: DefaultExecutorSupplier.java */
/* JADX INFO: loaded from: classes2.dex */
public class a implements e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Executor f2488a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Executor f2489b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Executor f2490c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Executor f2491d;

    public a(int i) {
        p pVar = new p(10);
        this.f2488a = Executors.newFixedThreadPool(2);
        this.f2489b = Executors.newFixedThreadPool(i, pVar);
        this.f2490c = Executors.newFixedThreadPool(i, pVar);
        this.f2491d = Executors.newFixedThreadPool(1, pVar);
    }

    @Override // com.facebook.imagepipeline.e.e
    public Executor a() {
        return this.f2488a;
    }

    @Override // com.facebook.imagepipeline.e.e
    public Executor b() {
        return this.f2488a;
    }

    @Override // com.facebook.imagepipeline.e.e
    public Executor c() {
        return this.f2489b;
    }

    @Override // com.facebook.imagepipeline.e.e
    public Executor d() {
        return this.f2490c;
    }

    @Override // com.facebook.imagepipeline.e.e
    public Executor e() {
        return this.f2491d;
    }
}
