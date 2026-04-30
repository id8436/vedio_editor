package com.facebook.drawee.a.a;

import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import com.facebook.drawee.e.j;

/* JADX INFO: compiled from: PipelineDraweeController.java */
/* JADX INFO: loaded from: classes2.dex */
class e implements a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ d f2014a;

    e(d dVar) {
        this.f2014a = dVar;
    }

    @Override // com.facebook.drawee.a.a.a
    public boolean a(com.facebook.imagepipeline.h.b bVar) {
        return true;
    }

    @Override // com.facebook.drawee.a.a.a
    public Drawable b(com.facebook.imagepipeline.h.b bVar) {
        if (!(bVar instanceof com.facebook.imagepipeline.h.c)) {
            if (this.f2014a.f2009c != null) {
                return this.f2014a.f2009c.a(bVar);
            }
            return null;
        }
        com.facebook.imagepipeline.h.c cVar = (com.facebook.imagepipeline.h.c) bVar;
        BitmapDrawable bitmapDrawable = new BitmapDrawable(this.f2014a.f2008b, cVar.e());
        return (cVar.h() == 0 || cVar.h() == -1) ? bitmapDrawable : new j(bitmapDrawable, cVar.h());
    }
}
