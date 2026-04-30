package com.google.android.exoplayer.upstream.cache;

/* JADX INFO: loaded from: classes2.dex */
public class NoOpCacheEvictor implements CacheEvictor {
    @Override // com.google.android.exoplayer.upstream.cache.CacheEvictor
    public void onStartFile(Cache cache, String str, long j, long j2) {
    }

    @Override // com.google.android.exoplayer.upstream.cache.Cache.Listener
    public void onSpanAdded(Cache cache, CacheSpan cacheSpan) {
    }

    @Override // com.google.android.exoplayer.upstream.cache.Cache.Listener
    public void onSpanRemoved(Cache cache, CacheSpan cacheSpan) {
    }

    @Override // com.google.android.exoplayer.upstream.cache.Cache.Listener
    public void onSpanTouched(Cache cache, CacheSpan cacheSpan, CacheSpan cacheSpan2) {
    }
}
