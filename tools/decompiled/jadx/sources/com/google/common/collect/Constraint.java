package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;

/* JADX INFO: loaded from: classes3.dex */
@GwtCompatible
interface Constraint<E> {
    E checkElement(E e2);

    String toString();
}
