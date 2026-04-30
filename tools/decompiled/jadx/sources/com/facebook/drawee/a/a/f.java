package com.facebook.drawee.a.a;

import android.content.Context;
import android.net.Uri;
import com.facebook.imagepipeline.c.k;
import java.util.Set;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: PipelineDraweeControllerBuilder.java */
/* JADX INFO: loaded from: classes2.dex */
public class f extends com.facebook.drawee.c.d<f, com.facebook.imagepipeline.l.a, com.facebook.d.h.a<com.facebook.imagepipeline.h.b>, com.facebook.imagepipeline.h.e> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.facebook.imagepipeline.e.g f2015a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final i f2016b;

    public f(Context context, i iVar, com.facebook.imagepipeline.e.g gVar, Set<com.facebook.drawee.c.i> set) {
        super(context, set);
        this.f2015a = gVar;
        this.f2016b = iVar;
    }

    @Override // com.facebook.drawee.h.d
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public f b(@Nullable Uri uri) {
        if (uri == null) {
            return (f) super.b((Object) null);
        }
        return (f) super.b(com.facebook.imagepipeline.l.d.a(uri).a(com.facebook.imagepipeline.d.e.b()).n());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.drawee.c.d
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public d d() {
        com.facebook.drawee.h.a aVarJ = j();
        if (aVarJ instanceof d) {
            d dVar = (d) aVarJ;
            dVar.a(o(), n(), q(), e());
            return dVar;
        }
        return this.f2016b.a(o(), n(), q(), e());
    }

    private com.facebook.c.a.f q() {
        com.facebook.imagepipeline.l.a aVarF = f();
        k kVarB = this.f2015a.b();
        if (kVarB == null || aVarF == null) {
            return null;
        }
        if (aVarF.o() != null) {
            return kVarB.b(aVarF, e());
        }
        return kVarB.a(aVarF, e());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.drawee.c.d
    public com.facebook.e.f<com.facebook.d.h.a<com.facebook.imagepipeline.h.b>> a(com.facebook.imagepipeline.l.a aVar, Object obj, com.facebook.drawee.c.g gVar) {
        return this.f2015a.a(aVar, obj, a(gVar));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.drawee.c.d
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public f c() {
        return this;
    }

    public static com.facebook.imagepipeline.l.c a(com.facebook.drawee.c.g gVar) {
        switch (gVar) {
            case FULL_FETCH:
                return com.facebook.imagepipeline.l.c.FULL_FETCH;
            case DISK_CACHE:
                return com.facebook.imagepipeline.l.c.DISK_CACHE;
            case BITMAP_MEMORY_CACHE:
                return com.facebook.imagepipeline.l.c.BITMAP_MEMORY_CACHE;
            default:
                throw new RuntimeException("Cache level" + gVar + "is not supported. ");
        }
    }
}
