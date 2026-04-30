package com.facebook.imagepipeline.k;

import java.util.Map;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: DiskCacheReadProducer.java */
/* JADX INFO: loaded from: classes2.dex */
public class x implements cl<com.facebook.imagepipeline.h.d> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final cl<com.facebook.imagepipeline.h.d> f2833a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.facebook.imagepipeline.c.w f2834b;

    public x(cl<com.facebook.imagepipeline.h.d> clVar, com.facebook.imagepipeline.c.w wVar) {
        this.f2833a = clVar;
        this.f2834b = wVar;
    }

    @Override // com.facebook.imagepipeline.k.cl
    public void a(o<com.facebook.imagepipeline.h.d> oVar, cm cmVar) {
        com.facebook.imagepipeline.l.a aVarA = cmVar.a();
        if (!aVarA.m()) {
            c(oVar, cmVar);
            return;
        }
        cmVar.c().a(cmVar.b(), "DiskCacheProducer");
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        this.f2834b.a(aVarA, cmVar.d(), atomicBoolean).a((a.j<com.facebook.imagepipeline.h.d, TContinuationResult>) b(oVar, cmVar));
        a(atomicBoolean, cmVar);
    }

    private a.j<com.facebook.imagepipeline.h.d, Void> b(o<com.facebook.imagepipeline.h.d> oVar, cm cmVar) {
        return new y(this, cmVar.c(), cmVar.b(), oVar, cmVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean b(a.l<?> lVar) {
        return lVar.c() || (lVar.d() && (lVar.f() instanceof CancellationException));
    }

    private void c(o<com.facebook.imagepipeline.h.d> oVar, cm cmVar) {
        if (cmVar.e().a() >= com.facebook.imagepipeline.l.c.DISK_CACHE.a()) {
            oVar.b(null, true);
        } else {
            this.f2833a.a(oVar, cmVar);
        }
    }

    static Map<String, String> a(co coVar, String str, boolean z) {
        if (coVar.b(str)) {
            return com.facebook.d.d.e.a("cached_value_found", String.valueOf(z));
        }
        return null;
    }

    private void a(AtomicBoolean atomicBoolean, cm cmVar) {
        cmVar.a(new z(this, atomicBoolean));
    }
}
