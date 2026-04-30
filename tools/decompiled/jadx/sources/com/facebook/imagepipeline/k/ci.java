package com.facebook.imagepipeline.k;

import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: compiled from: PostprocessorProducer.java */
/* JADX INFO: loaded from: classes.dex */
class ci extends w<com.facebook.d.h.a<com.facebook.imagepipeline.h.b>, com.facebook.d.h.a<com.facebook.imagepipeline.h.b>> implements com.facebook.imagepipeline.l.j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ cd f2733a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @GuardedBy("RepeatedPostprocessorConsumer.this")
    private boolean f2734b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @GuardedBy("RepeatedPostprocessorConsumer.this")
    @Nullable
    private com.facebook.d.h.a<com.facebook.imagepipeline.h.b> f2735c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private ci(cd cdVar, cf cfVar, com.facebook.imagepipeline.l.i iVar, cm cmVar) {
        super(cfVar);
        this.f2733a = cdVar;
        this.f2734b = false;
        this.f2735c = null;
        iVar.a(this);
        cmVar.a(new cj(this, cdVar));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.k.d
    public void a(com.facebook.d.h.a<com.facebook.imagepipeline.h.b> aVar, boolean z) {
        if (z) {
            a(aVar);
            c();
        }
    }

    @Override // com.facebook.imagepipeline.k.w, com.facebook.imagepipeline.k.d
    protected void a(Throwable th) {
        if (e()) {
            d().b(th);
        }
    }

    @Override // com.facebook.imagepipeline.k.w, com.facebook.imagepipeline.k.d
    protected void a() {
        if (e()) {
            d().b();
        }
    }

    private void c() {
        synchronized (this) {
            if (!this.f2734b) {
                com.facebook.d.h.a<com.facebook.imagepipeline.h.b> aVarB = com.facebook.d.h.a.b(this.f2735c);
                try {
                    d().b(aVarB, false);
                } finally {
                    com.facebook.d.h.a.c(aVarB);
                }
            }
        }
    }

    private void a(com.facebook.d.h.a<com.facebook.imagepipeline.h.b> aVar) {
        synchronized (this) {
            if (!this.f2734b) {
                com.facebook.d.h.a<com.facebook.imagepipeline.h.b> aVar2 = this.f2735c;
                this.f2735c = com.facebook.d.h.a.b(aVar);
                com.facebook.d.h.a.c(aVar2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean e() {
        boolean z = true;
        synchronized (this) {
            if (this.f2734b) {
                z = false;
            } else {
                com.facebook.d.h.a<com.facebook.imagepipeline.h.b> aVar = this.f2735c;
                this.f2735c = null;
                this.f2734b = true;
                com.facebook.d.h.a.c(aVar);
            }
        }
        return z;
    }
}
