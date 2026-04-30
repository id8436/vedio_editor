package com.google.api.client.repackaged.com.google.common.base;

import com.google.api.client.repackaged.com.google.common.annotations.GwtCompatible;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes3.dex */
@GwtCompatible
public interface Predicate<T> {
    boolean apply(@Nullable T t);

    boolean equals(@Nullable Object obj);
}
