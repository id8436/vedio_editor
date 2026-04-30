package com.google.api.client.repackaged.com.google.common.base;

import com.google.api.client.repackaged.com.google.common.annotations.GwtCompatible;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible
public interface Function<F, T> {
    @Nullable
    T apply(@Nullable F f2);

    boolean equals(@Nullable Object obj);
}
