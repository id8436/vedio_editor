package com.google.common.collect;

import com.google.common.collect.Multiset;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes3.dex */
final class DescendingImmutableSortedMultiset<E> extends ImmutableSortedMultiset<E> {
    private final transient ImmutableSortedMultiset<E> forward;

    DescendingImmutableSortedMultiset(ImmutableSortedMultiset<E> immutableSortedMultiset) {
        this.forward = immutableSortedMultiset;
    }

    @Override // com.google.common.collect.Multiset
    public int count(@Nullable Object obj) {
        return this.forward.count(obj);
    }

    @Override // com.google.common.collect.SortedMultiset
    public Multiset.Entry<E> firstEntry() {
        return this.forward.lastEntry();
    }

    @Override // com.google.common.collect.SortedMultiset
    public Multiset.Entry<E> lastEntry() {
        return this.forward.firstEntry();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public int size() {
        return this.forward.size();
    }

    @Override // com.google.common.collect.ImmutableSortedMultiset, com.google.common.collect.Multiset
    public ImmutableSortedSet<E> elementSet() {
        return this.forward.elementSet().descendingSet();
    }

    @Override // com.google.common.collect.ImmutableMultiset
    Multiset.Entry<E> getEntry(int i) {
        return this.forward.entrySet().asList().reverse().get(i);
    }

    @Override // com.google.common.collect.ImmutableSortedMultiset, com.google.common.collect.SortedMultiset
    public ImmutableSortedMultiset<E> descendingMultiset() {
        return this.forward;
    }

    @Override // com.google.common.collect.ImmutableSortedMultiset, com.google.common.collect.SortedMultiset
    public ImmutableSortedMultiset<E> headMultiset(E e2, BoundType boundType) {
        return this.forward.tailMultiset((Object) e2, boundType).descendingMultiset();
    }

    @Override // com.google.common.collect.ImmutableSortedMultiset, com.google.common.collect.SortedMultiset
    public ImmutableSortedMultiset<E> tailMultiset(E e2, BoundType boundType) {
        return this.forward.headMultiset((Object) e2, boundType).descendingMultiset();
    }

    @Override // com.google.common.collect.ImmutableCollection
    boolean isPartialView() {
        return this.forward.isPartialView();
    }
}
