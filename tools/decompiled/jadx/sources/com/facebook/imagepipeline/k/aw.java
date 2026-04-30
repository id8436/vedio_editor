package com.facebook.imagepipeline.k;

import android.media.ExifInterface;
import java.util.Map;

/* JADX INFO: compiled from: LocalExifThumbnailProducer.java */
/* JADX INFO: loaded from: classes2.dex */
class aw extends cu<com.facebook.imagepipeline.h.d> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ com.facebook.imagepipeline.l.a f2646b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ av f2647c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    aw(av avVar, o oVar, co coVar, String str, String str2, com.facebook.imagepipeline.l.a aVar) {
        super(oVar, coVar, str, str2);
        this.f2647c = avVar;
        this.f2646b = aVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.d.b.e
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public com.facebook.imagepipeline.h.d c() throws Exception {
        ExifInterface exifInterfaceA = this.f2647c.a(this.f2646b.b());
        if (exifInterfaceA == null || !exifInterfaceA.hasThumbnail()) {
            return null;
        }
        return this.f2647c.a(this.f2647c.f2644b.b(exifInterfaceA.getThumbnail()), exifInterfaceA);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.k.cu, com.facebook.d.b.e
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void b(com.facebook.imagepipeline.h.d dVar) {
        com.facebook.imagepipeline.h.d.d(dVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.k.cu
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public Map<String, String> c(com.facebook.imagepipeline.h.d dVar) {
        return com.facebook.d.d.e.a("createdThumbnail", Boolean.toString(dVar != null));
    }
}
