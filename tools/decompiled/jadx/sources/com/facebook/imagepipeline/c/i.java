package com.facebook.imagepipeline.c;

/* JADX INFO: compiled from: BufferedDiskCache.java */
/* JADX INFO: loaded from: classes2.dex */
class i implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.facebook.c.a.f f2435a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ com.facebook.imagepipeline.h.d f2436b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ g f2437c;

    i(g gVar, com.facebook.c.a.f fVar, com.facebook.imagepipeline.h.d dVar) {
        this.f2437c = gVar;
        this.f2435a = fVar;
        this.f2436b = dVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f2437c.c(this.f2435a, this.f2436b);
        } finally {
            this.f2437c.f2431g.b(this.f2435a, this.f2436b);
            com.facebook.imagepipeline.h.d.d(this.f2436b);
        }
    }
}
