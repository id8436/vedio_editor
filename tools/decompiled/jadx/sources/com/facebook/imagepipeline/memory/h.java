package com.facebook.imagepipeline.memory;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import javax.annotation.concurrent.ThreadSafe;

/* JADX INFO: compiled from: BitmapPool.java */
/* JADX INFO: loaded from: classes2.dex */
@ThreadSafe
@TargetApi(21)
public class h extends a<Bitmap> {
    public h(com.facebook.d.g.b bVar, ae aeVar, af afVar) {
        super(bVar, aeVar, afVar);
        a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.memory.a
    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
    public Bitmap b(int i) {
        return Bitmap.createBitmap(1, (int) Math.ceil(((double) i) / 2.0d), Bitmap.Config.RGB_565);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.memory.a
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void b(Bitmap bitmap) {
        com.facebook.d.d.k.a(bitmap);
        bitmap.recycle();
    }

    @Override // com.facebook.imagepipeline.memory.a
    protected int c(int i) {
        return i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.memory.a
    /* JADX INFO: renamed from: b, reason: avoid collision after fix types in other method and merged with bridge method [inline-methods] */
    public int c(Bitmap bitmap) {
        com.facebook.d.d.k.a(bitmap);
        return bitmap.getAllocationByteCount();
    }

    @Override // com.facebook.imagepipeline.memory.a
    protected int d(int i) {
        return i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.memory.a
    /* JADX INFO: renamed from: c, reason: avoid collision after fix types in other method and merged with bridge method [inline-methods] */
    public boolean d(Bitmap bitmap) {
        com.facebook.d.d.k.a(bitmap);
        return !bitmap.isRecycled() && bitmap.isMutable();
    }
}
