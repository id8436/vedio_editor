package com.facebook.imagepipeline.k;

import android.graphics.Bitmap;
import java.util.Map;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: compiled from: PostprocessorProducer.java */
/* JADX INFO: loaded from: classes.dex */
class cf extends w<com.facebook.d.h.a<com.facebook.imagepipeline.h.b>, com.facebook.d.h.a<com.facebook.imagepipeline.h.b>> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ cd f2723a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final co f2724b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f2725c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.facebook.imagepipeline.l.h f2726d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @GuardedBy("PostprocessorConsumer.this")
    private boolean f2727e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @GuardedBy("PostprocessorConsumer.this")
    @Nullable
    private com.facebook.d.h.a<com.facebook.imagepipeline.h.b> f2728f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @GuardedBy("PostprocessorConsumer.this")
    private boolean f2729g;

    @GuardedBy("PostprocessorConsumer.this")
    private boolean h;

    @GuardedBy("PostprocessorConsumer.this")
    private boolean i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public cf(cd cdVar, o<com.facebook.d.h.a<com.facebook.imagepipeline.h.b>> oVar, co coVar, String str, com.facebook.imagepipeline.l.h hVar, cm cmVar) {
        super(oVar);
        this.f2723a = cdVar;
        this.f2728f = null;
        this.f2729g = false;
        this.h = false;
        this.i = false;
        this.f2724b = coVar;
        this.f2725c = str;
        this.f2726d = hVar;
        cmVar.a(new cg(this, cdVar));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.k.d
    public void a(com.facebook.d.h.a<com.facebook.imagepipeline.h.b> aVar, boolean z) {
        if (!com.facebook.d.h.a.a((com.facebook.d.h.a<?>) aVar)) {
            if (z) {
                d(null, true);
                return;
            }
            return;
        }
        b(aVar, z);
    }

    @Override // com.facebook.imagepipeline.k.w, com.facebook.imagepipeline.k.d
    protected void a(Throwable th) {
        c(th);
    }

    @Override // com.facebook.imagepipeline.k.w, com.facebook.imagepipeline.k.d
    protected void a() {
        g();
    }

    private void b(@Nullable com.facebook.d.h.a<com.facebook.imagepipeline.h.b> aVar, boolean z) {
        synchronized (this) {
            if (!this.f2727e) {
                com.facebook.d.h.a<com.facebook.imagepipeline.h.b> aVar2 = this.f2728f;
                this.f2728f = com.facebook.d.h.a.b(aVar);
                this.f2729g = z;
                this.h = true;
                boolean zF = f();
                com.facebook.d.h.a.c(aVar2);
                if (zF) {
                    c();
                }
            }
        }
    }

    private void c() {
        this.f2723a.f2722c.execute(new ch(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        boolean zF;
        synchronized (this) {
            this.i = false;
            zF = f();
        }
        if (zF) {
            c();
        }
    }

    private synchronized boolean f() {
        boolean z = true;
        synchronized (this) {
            if (this.f2727e || !this.h || this.i || !com.facebook.d.h.a.a((com.facebook.d.h.a<?>) this.f2728f)) {
                z = false;
            } else {
                this.i = true;
            }
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(com.facebook.d.h.a<com.facebook.imagepipeline.h.b> aVar, boolean z) {
        com.facebook.d.d.k.a(com.facebook.d.h.a.a((com.facebook.d.h.a<?>) aVar));
        if (!a(aVar.a())) {
            d(aVar, z);
            return;
        }
        this.f2724b.a(this.f2725c, "PostprocessorProducer");
        com.facebook.d.h.a<com.facebook.imagepipeline.h.b> aVarB = null;
        try {
            aVarB = b(aVar.a());
            this.f2724b.a(this.f2725c, "PostprocessorProducer", a(this.f2724b, this.f2725c, this.f2726d));
            d(aVarB, z);
        } catch (Exception e2) {
            this.f2724b.a(this.f2725c, "PostprocessorProducer", e2, a(this.f2724b, this.f2725c, this.f2726d));
            c(e2);
        } finally {
            com.facebook.d.h.a.c(aVarB);
        }
    }

    private Map<String, String> a(co coVar, String str, com.facebook.imagepipeline.l.h hVar) {
        if (coVar.b(str)) {
            return com.facebook.d.d.e.a("Postprocessor", hVar.a());
        }
        return null;
    }

    private boolean a(com.facebook.imagepipeline.h.b bVar) {
        return bVar instanceof com.facebook.imagepipeline.h.c;
    }

    private com.facebook.d.h.a<com.facebook.imagepipeline.h.b> b(com.facebook.imagepipeline.h.b bVar) {
        com.facebook.imagepipeline.h.c cVar = (com.facebook.imagepipeline.h.c) bVar;
        com.facebook.d.h.a<Bitmap> aVarA = this.f2726d.a(cVar.e(), this.f2723a.f2721b);
        try {
            return com.facebook.d.h.a.a(new com.facebook.imagepipeline.h.c(aVarA, bVar.c(), cVar.h()));
        } finally {
            com.facebook.d.h.a.c(aVarA);
        }
    }

    private void d(com.facebook.d.h.a<com.facebook.imagepipeline.h.b> aVar, boolean z) {
        if ((!z && !h()) || (z && i())) {
            d().b(aVar, z);
        }
    }

    private void c(Throwable th) {
        if (i()) {
            d().b(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        if (i()) {
            d().b();
        }
    }

    private synchronized boolean h() {
        return this.f2727e;
    }

    private boolean i() {
        boolean z = true;
        synchronized (this) {
            if (this.f2727e) {
                z = false;
            } else {
                com.facebook.d.h.a<com.facebook.imagepipeline.h.b> aVar = this.f2728f;
                this.f2728f = null;
                this.f2727e = true;
                com.facebook.d.h.a.c(aVar);
            }
        }
        return z;
    }
}
