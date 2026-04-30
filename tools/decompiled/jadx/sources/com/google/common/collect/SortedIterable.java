package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import java.util.Comparator;
import java.util.Iterator;

/* JADX INFO: loaded from: classes3.dex */
@GwtCompatible
interface SortedIterable<T> extends Iterable<T> {
    Comparator<? super T> comparator();

    @Override // java.lang.Iterable
    Iterator<T> iterator();
}
