package com.facebook.imagepipeline.e;

import com.facebook.c.b.ab;
import com.facebook.c.b.w;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

/* JADX INFO: compiled from: DiskStorageCacheFactory.java */
/* JADX INFO: loaded from: classes2.dex */
public class b implements f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private c f2492a;

    public b(c cVar) {
        this.f2492a = cVar;
    }

    public static com.facebook.c.b.s a(com.facebook.c.b.l lVar, com.facebook.c.b.p pVar) {
        return a(lVar, pVar, Executors.newSingleThreadExecutor());
    }

    public static com.facebook.c.b.s a(com.facebook.c.b.l lVar, com.facebook.c.b.p pVar, Executor executor) {
        return new com.facebook.c.b.s(pVar, lVar.g(), new w(lVar.f(), lVar.e(), lVar.d()), lVar.i(), lVar.h(), lVar.j(), lVar.k(), executor, lVar.l());
    }

    @Override // com.facebook.imagepipeline.e.f
    public ab a(com.facebook.c.b.l lVar) {
        return a(lVar, this.f2492a.a(lVar));
    }
}
