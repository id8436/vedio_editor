package com.i.a.b;

import java.io.File;

/* JADX INFO: compiled from: ImageLoaderEngine.java */
/* JADX INFO: loaded from: classes3.dex */
class p implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ r f3368a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ o f3369b;

    p(o oVar, r rVar) {
        this.f3369b = oVar;
        this.f3368a = rVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        File fileA = this.f3369b.f3361a.o.a(this.f3368a.a());
        boolean z = fileA != null && fileA.exists();
        this.f3369b.e();
        if (z) {
            this.f3369b.f3363c.execute(this.f3368a);
        } else {
            this.f3369b.f3362b.execute(this.f3368a);
        }
    }
}
