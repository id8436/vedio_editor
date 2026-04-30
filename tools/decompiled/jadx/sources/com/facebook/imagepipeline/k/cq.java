package com.facebook.imagepipeline.k;

import com.facebook.imagepipeline.nativecode.JpegTranscoder;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: ResizeAndRotateProducer.java */
/* JADX INFO: loaded from: classes2.dex */
class cq extends w<com.facebook.imagepipeline.h.d, com.facebook.imagepipeline.h.d> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ cp f2744a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final cm f2745b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f2746c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final al f2747d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public cq(cp cpVar, o<com.facebook.imagepipeline.h.d> oVar, cm cmVar) {
        super(oVar);
        this.f2744a = cpVar;
        this.f2746c = false;
        this.f2745b = cmVar;
        this.f2747d = new al(cpVar.f2739a, new cr(this, cpVar), 100);
        this.f2745b.a(new cs(this, cpVar, oVar));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.k.d
    public void a(@Nullable com.facebook.imagepipeline.h.d dVar, boolean z) {
        if (!this.f2746c) {
            if (dVar != null) {
                com.facebook.d.m.e eVarC = cp.c(this.f2745b.a(), dVar, this.f2744a.f2741c);
                if (z || eVarC != com.facebook.d.m.e.UNSET) {
                    if (eVarC != com.facebook.d.m.e.YES) {
                        d().b(dVar, z);
                        return;
                    } else {
                        if (this.f2747d.a(dVar, z)) {
                            if (z || this.f2745b.h()) {
                                this.f2747d.b();
                                return;
                            }
                            return;
                        }
                        return;
                    }
                }
                return;
            }
            if (z) {
                d().b(null, true);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [com.facebook.imagepipeline.k.co] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v4, types: [java.io.InputStream] */
    public void b(com.facebook.imagepipeline.h.d dVar, boolean z) throws Throwable {
        InputStream inputStreamD;
        Map<String, String> map = null;
        ?? C = this.f2745b.c();
        ?? B = this.f2745b.b();
        C.a(B, "ResizeAndRotateProducer");
        com.facebook.imagepipeline.l.a aVarA = this.f2745b.a();
        com.facebook.imagepipeline.memory.al alVarB = this.f2744a.f2740b.b();
        try {
            try {
                try {
                    int iD = cp.d(aVarA, dVar, this.f2744a.f2741c);
                    int iA = cp.a(ad.a(aVarA, dVar));
                    int i = this.f2744a.f2743e ? iA : iD;
                    int iB = cp.b(aVarA.g(), dVar);
                    Map<String, String> mapA = a(dVar, aVarA, i, iA, iD, iB);
                    try {
                        inputStreamD = dVar.d();
                        try {
                            JpegTranscoder.a(inputStreamD, alVarB, iB, i, 85);
                            com.facebook.d.h.a aVarA2 = com.facebook.d.h.a.a(alVarB.c());
                            try {
                                com.facebook.imagepipeline.h.d dVar2 = new com.facebook.imagepipeline.h.d((com.facebook.d.h.a<com.facebook.imagepipeline.memory.ah>) aVarA2);
                                dVar2.a(com.facebook.g.b.f2245a);
                                try {
                                    dVar2.l();
                                    this.f2745b.c().a(this.f2745b.b(), "ResizeAndRotateProducer", mapA);
                                    d().b(dVar2, z);
                                    com.facebook.d.d.b.a(inputStreamD);
                                    alVarB.close();
                                } finally {
                                    com.facebook.imagepipeline.h.d.d(dVar2);
                                }
                            } finally {
                                com.facebook.d.h.a.c(aVarA2);
                            }
                        } catch (Exception e2) {
                            e = e2;
                            map = mapA;
                            this.f2745b.c().a(this.f2745b.b(), "ResizeAndRotateProducer", e, map);
                            d().b(e);
                            com.facebook.d.d.b.a(inputStreamD);
                            alVarB.close();
                        }
                    } catch (Exception e3) {
                        e = e3;
                        inputStreamD = null;
                        map = mapA;
                    }
                } catch (Throwable th) {
                    th = th;
                    com.facebook.d.d.b.a(B);
                    alVarB.close();
                    throw th;
                }
            } catch (Exception e4) {
                e = e4;
                inputStreamD = null;
            }
        } catch (Throwable th2) {
            th = th2;
            B = 0;
            com.facebook.d.d.b.a(B);
            alVarB.close();
            throw th;
        }
    }

    private Map<String, String> a(com.facebook.imagepipeline.h.d dVar, com.facebook.imagepipeline.l.a aVar, int i, int i2, int i3, int i4) {
        String str;
        if (!this.f2745b.c().b(this.f2745b.b())) {
            return null;
        }
        String str2 = dVar.g() + "x" + dVar.h();
        if (aVar.f() != null) {
            str = aVar.f().f2479a + "x" + aVar.f().f2480b;
        } else {
            str = "Unspecified";
        }
        String str3 = i > 0 ? i + "/8" : "";
        HashMap map = new HashMap();
        map.put("Original size", str2);
        map.put("Requested size", str);
        map.put("Fraction", str3);
        map.put("queueTime", String.valueOf(this.f2747d.c()));
        map.put("downsampleEnumerator", Integer.toString(i2));
        map.put("softwareEnumerator", Integer.toString(i3));
        map.put("rotationAngle", Integer.toString(i4));
        return com.facebook.d.d.e.a(map);
    }
}
