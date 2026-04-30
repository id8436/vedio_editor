package com.facebook.imagepipeline.memory;

/* JADX INFO: compiled from: NoOpPoolStatsTracker.java */
/* JADX INFO: loaded from: classes2.dex */
public class x implements af {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static x f2947a = null;

    private x() {
    }

    public static synchronized x a() {
        if (f2947a == null) {
            f2947a = new x();
        }
        return f2947a;
    }

    @Override // com.facebook.imagepipeline.memory.af
    public void a(a aVar) {
    }

    @Override // com.facebook.imagepipeline.memory.af
    public void a(int i) {
    }

    @Override // com.facebook.imagepipeline.memory.af
    public void b() {
    }

    @Override // com.facebook.imagepipeline.memory.af
    public void c() {
    }

    @Override // com.facebook.imagepipeline.memory.af
    public void b(int i) {
    }

    @Override // com.facebook.imagepipeline.memory.af
    public void c(int i) {
    }

    @Override // com.facebook.imagepipeline.memory.af
    public void d(int i) {
    }
}
