package com.facebook.imagepipeline.k;

import android.graphics.Bitmap;
import android.media.ThumbnailUtils;
import java.util.Map;

/* JADX INFO: compiled from: LocalVideoThumbnailProducer.java */
/* JADX INFO: loaded from: classes2.dex */
class be extends cu<com.facebook.d.h.a<com.facebook.imagepipeline.h.b>> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ com.facebook.imagepipeline.l.a f2658b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ bd f2659c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    be(bd bdVar, o oVar, co coVar, String str, String str2, com.facebook.imagepipeline.l.a aVar) {
        super(oVar, coVar, str, str2);
        this.f2659c = bdVar;
        this.f2658b = aVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.d.b.e
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public com.facebook.d.h.a<com.facebook.imagepipeline.h.b> c() throws Exception {
        Bitmap bitmapCreateVideoThumbnail = ThumbnailUtils.createVideoThumbnail(this.f2658b.n().getPath(), bd.b(this.f2658b));
        if (bitmapCreateVideoThumbnail == null) {
            return null;
        }
        return com.facebook.d.h.a.a(new com.facebook.imagepipeline.h.c(bitmapCreateVideoThumbnail, com.facebook.imagepipeline.b.h.a(), com.facebook.imagepipeline.h.f.f2585a, 0));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.k.cu
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public Map<String, String> c(com.facebook.d.h.a<com.facebook.imagepipeline.h.b> aVar) {
        return com.facebook.d.d.e.a("createdThumbnail", String.valueOf(aVar != null));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.k.cu, com.facebook.d.b.e
    public void b(com.facebook.d.h.a<com.facebook.imagepipeline.h.b> aVar) {
        com.facebook.d.h.a.c(aVar);
    }
}
