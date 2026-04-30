package com.facebook.imagepipeline.k;

import android.os.SystemClock;
import java.io.IOException;
import java.io.InputStream;
import java.util.Map;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: NetworkFetchProducer.java */
/* JADX INFO: loaded from: classes.dex */
public class bw implements cl<com.facebook.imagepipeline.h.d> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.facebook.imagepipeline.memory.aj f2709a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.facebook.imagepipeline.memory.j f2710b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final by f2711c;

    public bw(com.facebook.imagepipeline.memory.aj ajVar, com.facebook.imagepipeline.memory.j jVar, by byVar) {
        this.f2709a = ajVar;
        this.f2710b = jVar;
        this.f2711c = byVar;
    }

    @Override // com.facebook.imagepipeline.k.cl
    public void a(o<com.facebook.imagepipeline.h.d> oVar, cm cmVar) {
        cmVar.c().a(cmVar.b(), "NetworkFetchProducer");
        ah ahVarA = this.f2711c.a(oVar, cmVar);
        this.f2711c.a(ahVarA, new bx(this, ahVarA));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(ah ahVar, InputStream inputStream, int i) throws IOException {
        com.facebook.imagepipeline.memory.al alVarB;
        if (i > 0) {
            alVarB = this.f2709a.b(i);
        } else {
            alVarB = this.f2709a.b();
        }
        byte[] bArrA = this.f2710b.a(16384);
        while (true) {
            try {
                int i2 = inputStream.read(bArrA);
                if (i2 >= 0) {
                    if (i2 > 0) {
                        alVarB.write(bArrA, 0, i2);
                        a(alVarB, ahVar);
                        ahVar.a().b(a(alVarB.b(), i));
                    }
                } else {
                    this.f2711c.a(ahVar, alVarB.b());
                    b(alVarB, ahVar);
                    return;
                }
            } finally {
                this.f2710b.a(bArrA);
                alVarB.close();
            }
        }
    }

    private static float a(int i, int i2) {
        return i2 > 0 ? i / i2 : 1.0f - ((float) Math.exp(((double) (-i)) / 50000.0d));
    }

    private void a(com.facebook.imagepipeline.memory.al alVar, ah ahVar) throws Throwable {
        long jUptimeMillis = SystemClock.uptimeMillis();
        if (b(ahVar) && jUptimeMillis - ahVar.f() >= 100) {
            ahVar.a(jUptimeMillis);
            ahVar.d().a(ahVar.c(), "NetworkFetchProducer", "intermediate_result");
            a(alVar, false, ahVar.a());
        }
    }

    private void b(com.facebook.imagepipeline.memory.al alVar, ah ahVar) throws Throwable {
        ahVar.d().a(ahVar.c(), "NetworkFetchProducer", a(ahVar, alVar.b()));
        a(alVar, true, ahVar.a());
    }

    private void a(com.facebook.imagepipeline.memory.al alVar, boolean z, o<com.facebook.imagepipeline.h.d> oVar) throws Throwable {
        com.facebook.imagepipeline.h.d dVar;
        com.facebook.d.h.a aVarA = com.facebook.d.h.a.a(alVar.c());
        try {
            dVar = new com.facebook.imagepipeline.h.d((com.facebook.d.h.a<com.facebook.imagepipeline.memory.ah>) aVarA);
            try {
                dVar.l();
                oVar.b(dVar, z);
                com.facebook.imagepipeline.h.d.d(dVar);
                com.facebook.d.h.a.c(aVarA);
            } catch (Throwable th) {
                th = th;
                com.facebook.imagepipeline.h.d.d(dVar);
                com.facebook.d.h.a.c(aVarA);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            dVar = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(ah ahVar, Throwable th) {
        ahVar.d().a(ahVar.c(), "NetworkFetchProducer", th, null);
        ahVar.a().b(th);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(ah ahVar) {
        ahVar.d().b(ahVar.c(), "NetworkFetchProducer", null);
        ahVar.a().b();
    }

    private boolean b(ah ahVar) {
        if (ahVar.b().a().i()) {
            return this.f2711c.a(ahVar);
        }
        return false;
    }

    @Nullable
    private Map<String, String> a(ah ahVar, int i) {
        if (ahVar.d().b(ahVar.c())) {
            return this.f2711c.b(ahVar, i);
        }
        return null;
    }
}
