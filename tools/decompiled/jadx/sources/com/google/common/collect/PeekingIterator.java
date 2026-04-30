package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import java.util.Iterator;

/* JADX INFO: loaded from: classes3.dex */
@GwtCompatible
public interface PeekingIterator<E> extends Iterator<E> {
    E next();

    E peek();

    @Override // java.util.Iterator
    void remove();
}
