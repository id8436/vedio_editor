package com.facebook.imagepipeline.k;

import android.graphics.Bitmap;
import com.adobe.premiereclip.dcx.DCXProjectKeys;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: compiled from: DecodeProducer.java */
/* JADX INFO: loaded from: classes2.dex */
abstract class t extends w<com.facebook.imagepipeline.h.d, com.facebook.d.h.a<com.facebook.imagepipeline.h.b>> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final cm f2820a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ q f2821b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final co f2822c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.facebook.imagepipeline.d.a f2823d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @GuardedBy("this")
    private boolean f2824e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final al f2825f;

    protected abstract int a(com.facebook.imagepipeline.h.d dVar);

    protected abstract com.facebook.imagepipeline.h.g c();

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t(q qVar, o<com.facebook.d.h.a<com.facebook.imagepipeline.h.b>> oVar, cm cmVar, boolean z) {
        super(oVar);
        this.f2821b = qVar;
        this.f2820a = cmVar;
        this.f2822c = cmVar.c();
        this.f2823d = cmVar.a().h();
        this.f2824e = false;
        this.f2825f = new al(qVar.f2809b, new u(this, qVar, cmVar), this.f2823d.f2463a);
        this.f2820a.a(new v(this, qVar, z));
    }

    @Override // com.facebook.imagepipeline.k.d
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public void a(com.facebook.imagepipeline.h.d dVar, boolean z) {
        if (z && !com.facebook.imagepipeline.h.d.e(dVar)) {
            c(new com.facebook.d.m.a("Encoded image is not valid."));
        } else if (a(dVar, z)) {
            if (z || this.f2820a.h()) {
                this.f2825f.b();
            }
        }
    }

    @Override // com.facebook.imagepipeline.k.w, com.facebook.imagepipeline.k.d
    protected void a(float f2) {
        super.a(0.99f * f2);
    }

    @Override // com.facebook.imagepipeline.k.w, com.facebook.imagepipeline.k.d
    public void a(Throwable th) {
        c(th);
    }

    @Override // com.facebook.imagepipeline.k.w, com.facebook.imagepipeline.k.d
    public void a() {
        f();
    }

    protected boolean a(com.facebook.imagepipeline.h.d dVar, boolean z) {
        return this.f2825f.a(dVar, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(com.facebook.imagepipeline.h.d dVar, boolean z) {
        String strA;
        String str;
        String strValueOf;
        String str2;
        long jC;
        com.facebook.imagepipeline.h.g gVarC;
        if (!e() && com.facebook.imagepipeline.h.d.e(dVar)) {
            com.facebook.g.c cVarE = dVar.e();
            if (cVarE != null) {
                strA = cVarE.a();
            } else {
                strA = "unknown";
            }
            if (dVar != null) {
                str = dVar.g() + "x" + dVar.h();
                strValueOf = String.valueOf(dVar.i());
            } else {
                str = "unknown";
                strValueOf = "unknown";
            }
            com.facebook.imagepipeline.d.d dVarF = this.f2820a.a().f();
            if (dVarF != null) {
                str2 = dVarF.f2479a + "x" + dVarF.f2480b;
            } else {
                str2 = "unknown";
            }
            try {
                jC = this.f2825f.c();
                int iK = z ? dVar.k() : a(dVar);
                gVarC = z ? com.facebook.imagepipeline.h.f.f2585a : c();
                this.f2822c.a(this.f2820a.b(), "DecodeProducer");
                com.facebook.imagepipeline.h.b bVarA = this.f2821b.f2810c.a(dVar, iK, gVarC, this.f2823d);
                this.f2822c.a(this.f2820a.b(), "DecodeProducer", a(bVarA, jC, gVarC, z, strA, str, str2, strValueOf));
                a(bVarA, z);
            } catch (Exception e2) {
                this.f2822c.a(this.f2820a.b(), "DecodeProducer", e2, a(null, jC, gVarC, z, strA, str, str2, strValueOf));
                c(e2);
            } finally {
                com.facebook.imagepipeline.h.d.d(dVar);
            }
        }
    }

    private Map<String, String> a(@Nullable com.facebook.imagepipeline.h.b bVar, long j, com.facebook.imagepipeline.h.g gVar, boolean z, String str, String str2, String str3, String str4) {
        if (!this.f2822c.b(this.f2820a.b())) {
            return null;
        }
        String strValueOf = String.valueOf(j);
        String strValueOf2 = String.valueOf(gVar.b());
        String strValueOf3 = String.valueOf(z);
        if (bVar instanceof com.facebook.imagepipeline.h.c) {
            Bitmap bitmapE = ((com.facebook.imagepipeline.h.c) bVar).e();
            String str5 = bitmapE.getWidth() + "x" + bitmapE.getHeight();
            HashMap map = new HashMap(8);
            map.put("bitmapSize", str5);
            map.put("queueTime", strValueOf);
            map.put("hasGoodQuality", strValueOf2);
            map.put("isFinal", strValueOf3);
            map.put("encodedImageSize", str2);
            map.put("imageFormat", str);
            map.put("requestedImageSize", str3);
            map.put(DCXProjectKeys.kDCXKey_FrameRate_sampleSize, str4);
            return com.facebook.d.d.e.a(map);
        }
        HashMap map2 = new HashMap(7);
        map2.put("queueTime", strValueOf);
        map2.put("hasGoodQuality", strValueOf2);
        map2.put("isFinal", strValueOf3);
        map2.put("encodedImageSize", str2);
        map2.put("imageFormat", str);
        map2.put("requestedImageSize", str3);
        map2.put(DCXProjectKeys.kDCXKey_FrameRate_sampleSize, str4);
        return com.facebook.d.d.e.a(map2);
    }

    private synchronized boolean e() {
        return this.f2824e;
    }

    /* JADX WARN: Removed duplicated region for block: B:6:0x0007 A[Catch: all -> 0x001c, DONT_GENERATE, TryCatch #0 {, blocks: (B:4:0x0003, B:8:0x0009, B:9:0x0015, B:6:0x0007), top: B:15:0x0003 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(boolean r3) {
        /*
            r2 = this;
            monitor-enter(r2)
            if (r3 == 0) goto L7
            boolean r0 = r2.f2824e     // Catch: java.lang.Throwable -> L1c
            if (r0 == 0) goto L9
        L7:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L1c
        L8:
            return
        L9:
            com.facebook.imagepipeline.k.o r0 = r2.d()     // Catch: java.lang.Throwable -> L1c
            r1 = 1065353216(0x3f800000, float:1.0)
            r0.b(r1)     // Catch: java.lang.Throwable -> L1c
            r0 = 1
            r2.f2824e = r0     // Catch: java.lang.Throwable -> L1c
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L1c
            com.facebook.imagepipeline.k.al r0 = r2.f2825f
            r0.a()
            goto L8
        L1c:
            r0 = move-exception
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L1c
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.imagepipeline.k.t.a(boolean):void");
    }

    private void a(com.facebook.imagepipeline.h.b bVar, boolean z) {
        com.facebook.d.h.a<com.facebook.imagepipeline.h.b> aVarA = com.facebook.d.h.a.a(bVar);
        try {
            a(z);
            d().b(aVarA, z);
        } finally {
            com.facebook.d.h.a.c(aVarA);
        }
    }

    private void c(Throwable th) {
        a(true);
        d().b(th);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        a(true);
        d().b();
    }
}
