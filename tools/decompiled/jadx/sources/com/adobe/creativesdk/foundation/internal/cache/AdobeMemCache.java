package com.adobe.creativesdk.foundation.internal.cache;

import android.util.LruCache;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;

/* JADX INFO: loaded from: classes.dex */
public class AdobeMemCache extends LruCache<String, Object> {
    public AdobeMemCache(int i) {
        super(i);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.util.LruCache
    public void entryRemoved(boolean z, String str, Object obj, Object obj2) {
        super.entryRemoved(z, str, obj, obj2);
        AdobeLogger.log(Level.INFO, AdobeMemCache.class.getName(), "Removing entry " + str + " from mem cache.");
    }
}
