package com.facebook.drawee.a.a;

import android.content.res.Resources;
import com.facebook.d.d.k;
import com.facebook.d.d.m;
import com.facebook.imagepipeline.c.ad;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: PipelineDraweeControllerFactory.java */
/* JADX INFO: loaded from: classes.dex */
public class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Resources f2022a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.facebook.drawee.b.a f2023b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private com.facebook.imagepipeline.a.a.a f2024c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Executor f2025d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ad<com.facebook.c.a.f, com.facebook.imagepipeline.h.b> f2026e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Nullable
    private com.facebook.d.d.d<a> f2027f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Nullable
    private m<Boolean> f2028g;

    public void a(Resources resources, com.facebook.drawee.b.a aVar, com.facebook.imagepipeline.a.a.a aVar2, Executor executor, ad<com.facebook.c.a.f, com.facebook.imagepipeline.h.b> adVar, @Nullable com.facebook.d.d.d<a> dVar, @Nullable m<Boolean> mVar) {
        this.f2022a = resources;
        this.f2023b = aVar;
        this.f2024c = aVar2;
        this.f2025d = executor;
        this.f2026e = adVar;
        this.f2027f = dVar;
        this.f2028g = mVar;
    }

    public d a(m<com.facebook.e.f<com.facebook.d.h.a<com.facebook.imagepipeline.h.b>>> mVar, String str, com.facebook.c.a.f fVar, Object obj) {
        k.b(this.f2022a != null, "init() not called");
        d dVarA = a(this.f2022a, this.f2023b, this.f2024c, this.f2025d, this.f2026e, this.f2027f, mVar, str, fVar, obj);
        if (this.f2028g != null) {
            dVarA.a(this.f2028g.b().booleanValue());
        }
        return dVarA;
    }

    protected d a(Resources resources, com.facebook.drawee.b.a aVar, com.facebook.imagepipeline.a.a.a aVar2, Executor executor, ad<com.facebook.c.a.f, com.facebook.imagepipeline.h.b> adVar, @Nullable com.facebook.d.d.d<a> dVar, m<com.facebook.e.f<com.facebook.d.h.a<com.facebook.imagepipeline.h.b>>> mVar, String str, com.facebook.c.a.f fVar, Object obj) {
        return new d(resources, aVar, aVar2, executor, adVar, mVar, str, fVar, obj, dVar);
    }
}
