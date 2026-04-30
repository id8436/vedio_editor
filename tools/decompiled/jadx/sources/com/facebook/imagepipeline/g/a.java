package com.facebook.imagepipeline.g;

import android.graphics.Bitmap;
import java.io.InputStream;
import java.util.Map;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: DefaultImageDecoder.java */
/* JADX INFO: loaded from: classes.dex */
public class a implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.facebook.imagepipeline.a.a.d f2558a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Bitmap.Config f2559b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.facebook.imagepipeline.j.e f2560c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final c f2561d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Nullable
    private final Map<com.facebook.g.c, c> f2562e;

    public a(com.facebook.imagepipeline.a.a.d dVar, com.facebook.imagepipeline.j.e eVar, Bitmap.Config config) {
        this(dVar, eVar, config, null);
    }

    public a(com.facebook.imagepipeline.a.a.d dVar, com.facebook.imagepipeline.j.e eVar, Bitmap.Config config, @Nullable Map<com.facebook.g.c, c> map) {
        this.f2561d = new b(this);
        this.f2558a = dVar;
        this.f2559b = config;
        this.f2560c = eVar;
        this.f2562e = map;
    }

    @Override // com.facebook.imagepipeline.g.c
    public com.facebook.imagepipeline.h.b a(com.facebook.imagepipeline.h.d dVar, int i, com.facebook.imagepipeline.h.g gVar, com.facebook.imagepipeline.d.a aVar) {
        c cVar;
        com.facebook.g.c cVarE = dVar.e();
        if (cVarE == null || cVarE == com.facebook.g.c.f2252a) {
            cVarE = com.facebook.g.e.c(dVar.d());
            dVar.a(cVarE);
        }
        return (this.f2562e == null || (cVar = this.f2562e.get(cVarE)) == null) ? this.f2561d.a(dVar, i, gVar, aVar) : cVar.a(dVar, i, gVar, aVar);
    }

    public com.facebook.imagepipeline.h.b a(com.facebook.imagepipeline.h.d dVar, com.facebook.imagepipeline.d.a aVar) {
        com.facebook.imagepipeline.h.b bVarB;
        InputStream inputStreamD = dVar.d();
        if (inputStreamD == null) {
            return null;
        }
        try {
            if (!aVar.f2467e && this.f2558a != null) {
                bVarB = this.f2558a.a(dVar, aVar, this.f2559b);
            } else {
                bVarB = b(dVar, aVar);
                com.facebook.d.d.b.a(inputStreamD);
            }
            return bVarB;
        } finally {
            com.facebook.d.d.b.a(inputStreamD);
        }
    }

    public com.facebook.imagepipeline.h.c b(com.facebook.imagepipeline.h.d dVar, com.facebook.imagepipeline.d.a aVar) {
        com.facebook.d.h.a<Bitmap> aVarA = this.f2560c.a(dVar, aVar.f2468f);
        try {
            return new com.facebook.imagepipeline.h.c(aVarA, com.facebook.imagepipeline.h.f.f2585a, dVar.f());
        } finally {
            aVarA.close();
        }
    }

    public com.facebook.imagepipeline.h.c b(com.facebook.imagepipeline.h.d dVar, int i, com.facebook.imagepipeline.h.g gVar, com.facebook.imagepipeline.d.a aVar) {
        com.facebook.d.h.a<Bitmap> aVarA = this.f2560c.a(dVar, aVar.f2468f, i);
        try {
            return new com.facebook.imagepipeline.h.c(aVarA, gVar, dVar.f());
        } finally {
            aVarA.close();
        }
    }

    public com.facebook.imagepipeline.h.b c(com.facebook.imagepipeline.h.d dVar, com.facebook.imagepipeline.d.a aVar) {
        return this.f2558a.b(dVar, aVar, this.f2559b);
    }
}
