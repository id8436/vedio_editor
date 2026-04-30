package com.google.android.exoplayer.upstream.cache;

import com.google.android.exoplayer.upstream.cache.Cache;

/* JADX INFO: loaded from: classes2.dex */
public interface CacheEvictor extends Cache.Listener {
    void onStartFile(Cache cache, String str, long j, long j2);
}
