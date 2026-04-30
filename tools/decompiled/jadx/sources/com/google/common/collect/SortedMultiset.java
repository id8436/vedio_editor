package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.collect.Multiset;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Set;
import java.util.SortedSet;

/* JADX INFO: loaded from: classes3.dex */
@Beta
@GwtCompatible(emulated = true)
public interface SortedMultiset<E> extends SortedIterable<E>, SortedMultisetBridge<E> {
    @Override // com.google.common.collect.SortedIterable
    Comparator<? super E> comparator();

    SortedMultiset<E> descendingMultiset();

    @Override // com.google.common.collect.SortedMultisetBridge, com.google.common.collect.Multiset
    SortedSet<E> elementSet();

    @Override // com.google.common.collect.Multiset
    Set<Multiset.Entry<E>> entrySet();

    Multiset.Entry<E> firstEntry();

    SortedMultiset<E> headMultiset(E e2, BoundType boundType);

    @Override // com.google.common.collect.SortedIterable, java.lang.Iterable
    Iterator<E> iterator();

    Multiset.Entry<E> lastEntry();

    Multiset.Entry<E> pollFirstEntry();

    Multiset.Entry<E> pollLastEntry();

    SortedMultiset<E> subMultiset(E e2, BoundType boundType, E e3, BoundType boundType2);

    SortedMultiset<E> tailMultiset(E e2, BoundType boundType);
}
