package com.adobe.creativesdk.foundation.internal.cache;

/* JADX INFO: loaded from: classes.dex */
public interface AdobeCommonCacheHandler<T> {
    void onHit(T t, AdobeCommonCacheHitLocation adobeCommonCacheHitLocation);

    void onMiss();
}
