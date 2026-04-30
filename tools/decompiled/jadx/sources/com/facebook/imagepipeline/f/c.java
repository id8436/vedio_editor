package com.facebook.imagepipeline.f;

import com.facebook.e.f;
import com.facebook.imagepipeline.k.cl;
import com.facebook.imagepipeline.k.ct;
import javax.annotation.Nullable;
import javax.annotation.concurrent.ThreadSafe;

/* JADX INFO: compiled from: CloseableProducerToDataSourceAdapter.java */
/* JADX INFO: loaded from: classes.dex */
@ThreadSafe
public class c<T> extends a<com.facebook.d.h.a<T>> {
    public static <T> f<com.facebook.d.h.a<T>> a(cl<com.facebook.d.h.a<T>> clVar, ct ctVar, com.facebook.imagepipeline.i.b bVar) {
        return new c(clVar, ctVar, bVar);
    }

    private c(cl<com.facebook.d.h.a<T>> clVar, ct ctVar, com.facebook.imagepipeline.i.b bVar) {
        super(clVar, ctVar, bVar);
    }

    @Override // com.facebook.e.a, com.facebook.e.f
    @Nullable
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public com.facebook.d.h.a<T> d() {
        return com.facebook.d.h.a.b((com.facebook.d.h.a) super.d());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.e.a
    public void a(com.facebook.d.h.a<T> aVar) {
        com.facebook.d.h.a.c(aVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.f.a
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void b(com.facebook.d.h.a<T> aVar, boolean z) {
        super.b(com.facebook.d.h.a.b(aVar), z);
    }
}
