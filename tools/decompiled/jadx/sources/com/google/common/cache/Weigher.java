package com.google.common.cache;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;

/* JADX INFO: loaded from: classes3.dex */
@Beta
@GwtCompatible
public interface Weigher<K, V> {
    int weigh(K k, V v);
}
