package com.facebook.imagepipeline.k;

/* JADX INFO: compiled from: PostprocessorProducer.java */
/* JADX INFO: loaded from: classes2.dex */
class ch implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ cf f2732a;

    ch(cf cfVar) {
        this.f2732a = cfVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        com.facebook.d.h.a aVar;
        boolean z;
        synchronized (this.f2732a) {
            aVar = this.f2732a.f2728f;
            z = this.f2732a.f2729g;
            this.f2732a.f2728f = null;
            this.f2732a.h = false;
        }
        if (com.facebook.d.h.a.a((com.facebook.d.h.a<?>) aVar)) {
            try {
                this.f2732a.c(aVar, z);
            } finally {
                com.facebook.d.h.a.c(aVar);
            }
        }
        this.f2732a.e();
    }
}
