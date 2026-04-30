package com.facebook.imagepipeline.c;

import android.net.Uri;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: DefaultCacheKeyFactory.java */
/* JADX INFO: loaded from: classes2.dex */
public class u implements k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static u f2461a = null;

    protected u() {
    }

    public static synchronized u a() {
        if (f2461a == null) {
            f2461a = new u();
        }
        return f2461a;
    }

    @Override // com.facebook.imagepipeline.c.k
    public com.facebook.c.a.f a(com.facebook.imagepipeline.l.a aVar, Object obj) {
        return new e(a(aVar.b()).toString(), aVar.f(), aVar.g(), aVar.h(), null, null, obj);
    }

    @Override // com.facebook.imagepipeline.c.k
    public com.facebook.c.a.f b(com.facebook.imagepipeline.l.a aVar, Object obj) {
        com.facebook.c.a.f fVarB;
        String name = null;
        com.facebook.imagepipeline.l.h hVarO = aVar.o();
        if (hVarO != null) {
            fVarB = hVarO.b();
            name = hVarO.getClass().getName();
        } else {
            fVarB = null;
        }
        return new e(a(aVar.b()).toString(), aVar.f(), aVar.g(), aVar.h(), fVarB, name, obj);
    }

    @Override // com.facebook.imagepipeline.c.k
    public com.facebook.c.a.f c(com.facebook.imagepipeline.l.a aVar, @Nullable Object obj) {
        return a(aVar, aVar.b(), obj);
    }

    @Override // com.facebook.imagepipeline.c.k
    public com.facebook.c.a.f a(com.facebook.imagepipeline.l.a aVar, Uri uri, @Nullable Object obj) {
        return new com.facebook.c.a.k(a(uri).toString());
    }

    protected Uri a(Uri uri) {
        return uri;
    }
}
