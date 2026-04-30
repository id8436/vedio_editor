package com.learnncode.mediachooser;

import android.graphics.Bitmap;
import android.util.LruCache;

/* JADX INFO: compiled from: GalleryCacheModified.java */
/* JADX INFO: loaded from: classes3.dex */
final class c extends LruCache<String, Bitmap> {
    c(int i) {
        super(i);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.util.LruCache
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public int sizeOf(String str, Bitmap bitmap) {
        return bitmap.getByteCount() / 1024;
    }
}
