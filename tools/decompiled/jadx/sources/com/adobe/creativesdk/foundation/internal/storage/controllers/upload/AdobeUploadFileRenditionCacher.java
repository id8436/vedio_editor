package com.adobe.creativesdk.foundation.internal.storage.controllers.upload;

import android.graphics.Bitmap;
import com.adobe.creativesdk.foundation.internal.util.LRUModelCache;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeUploadFileRenditionCacher {
    static LRUModelCache<String, Bitmap> _cache = new LRUModelCache<>(20);

    public static void addToCache(String str, Bitmap bitmap) {
        if (str != null && bitmap != null) {
            _cache.addItem(str, bitmap);
        }
    }

    public static void removeFromCache(String str) {
        _cache.removeItem(str);
    }

    public static Bitmap getItem(String str) {
        return _cache.getItem(str);
    }

    public static void clearCache() {
        _cache.clear();
    }
}
