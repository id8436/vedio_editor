package com.google.common.util.concurrent;

import com.google.common.annotations.Beta;
import java.lang.Exception;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes3.dex */
@Beta
public interface CheckedFuture<V, X extends Exception> extends ListenableFuture<V> {
    V checkedGet() throws Exception;

    V checkedGet(long j, TimeUnit timeUnit) throws Exception;
}
