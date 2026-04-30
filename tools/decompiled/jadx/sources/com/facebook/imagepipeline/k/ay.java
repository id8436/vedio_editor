package com.facebook.imagepipeline.k;

import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: LocalFetchProducer.java */
/* JADX INFO: loaded from: classes2.dex */
public abstract class ay implements cl<com.facebook.imagepipeline.h.d> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Executor f2650a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.facebook.imagepipeline.memory.aj f2651b;

    protected abstract com.facebook.imagepipeline.h.d a(com.facebook.imagepipeline.l.a aVar) throws IOException;

    protected abstract String a();

    protected ay(Executor executor, com.facebook.imagepipeline.memory.aj ajVar) {
        this.f2650a = executor;
        this.f2651b = ajVar;
    }

    @Override // com.facebook.imagepipeline.k.cl
    public void a(o<com.facebook.imagepipeline.h.d> oVar, cm cmVar) {
        az azVar = new az(this, oVar, cmVar.c(), a(), cmVar.b(), cmVar.a());
        cmVar.a(new ba(this, azVar));
        this.f2650a.execute(azVar);
    }

    protected com.facebook.imagepipeline.h.d a(InputStream inputStream, int i) throws IOException {
        com.facebook.d.h.a aVarA = null;
        try {
            if (i <= 0) {
                aVarA = com.facebook.d.h.a.a(this.f2651b.b(inputStream));
            } else {
                aVarA = com.facebook.d.h.a.a(this.f2651b.b(inputStream, i));
            }
            return new com.facebook.imagepipeline.h.d((com.facebook.d.h.a<com.facebook.imagepipeline.memory.ah>) aVarA);
        } finally {
            com.facebook.d.d.b.a(inputStream);
            com.facebook.d.h.a.c(aVarA);
        }
    }

    protected com.facebook.imagepipeline.h.d b(InputStream inputStream, int i) throws IOException {
        return a(inputStream, i);
    }
}
