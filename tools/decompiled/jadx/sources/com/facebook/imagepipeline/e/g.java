package com.facebook.imagepipeline.e;

import com.facebook.imagepipeline.c.ad;
import com.facebook.imagepipeline.k.cl;
import com.facebook.imagepipeline.k.ct;
import com.facebook.imagepipeline.k.cy;
import com.facebook.imagepipeline.memory.ah;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicLong;
import javax.annotation.concurrent.ThreadSafe;

/* JADX INFO: compiled from: ImagePipeline.java */
/* JADX INFO: loaded from: classes2.dex */
@ThreadSafe
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final CancellationException f2493a = new CancellationException("Prefetching is not enabled");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final s f2494b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.facebook.imagepipeline.i.b f2495c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.facebook.d.d.m<Boolean> f2496d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final ad<com.facebook.c.a.f, com.facebook.imagepipeline.h.b> f2497e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final ad<com.facebook.c.a.f, ah> f2498f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final com.facebook.imagepipeline.c.g f2499g;
    private final com.facebook.imagepipeline.c.g h;
    private final com.facebook.imagepipeline.c.k i;
    private final cy j;
    private final com.facebook.d.d.m<Boolean> k;
    private AtomicLong l = new AtomicLong();

    public g(s sVar, Set<com.facebook.imagepipeline.i.b> set, com.facebook.d.d.m<Boolean> mVar, ad<com.facebook.c.a.f, com.facebook.imagepipeline.h.b> adVar, ad<com.facebook.c.a.f, ah> adVar2, com.facebook.imagepipeline.c.g gVar, com.facebook.imagepipeline.c.g gVar2, com.facebook.imagepipeline.c.k kVar, cy cyVar, com.facebook.d.d.m<Boolean> mVar2) {
        this.f2494b = sVar;
        this.f2495c = new com.facebook.imagepipeline.i.a(set);
        this.f2496d = mVar;
        this.f2497e = adVar;
        this.f2498f = adVar2;
        this.f2499g = gVar;
        this.h = gVar2;
        this.i = kVar;
        this.j = cyVar;
        this.k = mVar2;
    }

    private String c() {
        return String.valueOf(this.l.getAndIncrement());
    }

    public com.facebook.e.f<com.facebook.d.h.a<com.facebook.imagepipeline.h.b>> a(com.facebook.imagepipeline.l.a aVar, Object obj, com.facebook.imagepipeline.l.c cVar) {
        try {
            return a(this.f2494b.a(aVar), aVar, cVar, obj);
        } catch (Exception e2) {
            return com.facebook.e.g.a(e2);
        }
    }

    public ad<com.facebook.c.a.f, com.facebook.imagepipeline.h.b> a() {
        return this.f2497e;
    }

    private <T> com.facebook.e.f<com.facebook.d.h.a<T>> a(cl<com.facebook.d.h.a<T>> clVar, com.facebook.imagepipeline.l.a aVar, com.facebook.imagepipeline.l.c cVar, Object obj) {
        com.facebook.imagepipeline.i.b bVarA = a(aVar);
        try {
            return com.facebook.imagepipeline.f.c.a(clVar, new ct(aVar, c(), bVarA, obj, com.facebook.imagepipeline.l.c.a(aVar.l(), cVar), false, (!aVar.i() && aVar.c() == null && com.facebook.d.m.f.a(aVar.b())) ? false : true, aVar.k()), bVarA);
        } catch (Exception e2) {
            return com.facebook.e.g.a(e2);
        }
    }

    private com.facebook.imagepipeline.i.b a(com.facebook.imagepipeline.l.a aVar) {
        return aVar.p() == null ? this.f2495c : new com.facebook.imagepipeline.i.a(this.f2495c, aVar.p());
    }

    public com.facebook.imagepipeline.c.k b() {
        return this.i;
    }
}
