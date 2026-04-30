package com.google.common.util.concurrent;

import com.google.common.annotations.Beta;

/* JADX INFO: loaded from: classes3.dex */
@Beta
public interface FutureFallback<V> {
    ListenableFuture<V> create(Throwable th) throws Exception;
}
