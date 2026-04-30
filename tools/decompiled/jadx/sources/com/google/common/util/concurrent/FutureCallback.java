package com.google.common.util.concurrent;

import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes3.dex */
public interface FutureCallback<V> {
    void onFailure(Throwable th);

    void onSuccess(@Nullable V v);
}
