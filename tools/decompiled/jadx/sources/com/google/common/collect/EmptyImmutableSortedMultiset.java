package com.google.common.collect;

import com.google.common.base.Preconditions;
import com.google.common.collect.Multiset;
import java.util.Collection;
import java.util.Comparator;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes3.dex */
final class EmptyImmutableSortedMultiset<E> extends ImmutableSortedMultiset<E> {
    private final ImmutableSortedSet<E> elementSet;

    EmptyImmutableSortedMultiset(Comparator<? super E> comparator) {
        this.elementSet = ImmutableSortedSet.emptySet(comparator);
    }

    @Override // com.google.common.collect.SortedMultiset
    public Multiset.Entry<E> firstEntry() {
        return null;
    }

    @Override // com.google.common.collect.SortedMultiset
    public Multiset.Entry<E> lastEntry() {
        return null;
    }

    @Override // com.google.common.collect.Multiset
    public int count(@Nullable Object obj) {
        return 0;
    }

    @Override // com.google.common.collect.ImmutableMultiset, java.util.AbstractCollection, java.util.Collection, com.google.common.collect.Multiset
    public boolean containsAll(Collection<?> collection) {
        return collection.isEmpty();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public int size() {
        return 0;
    }

    @Override // com.google.common.collect.ImmutableSortedMultiset, com.google.common.collect.Multiset
    public ImmutableSortedSet<E> elementSet() {
        return this.elementSet;
    }

    @Override // com.google.common.collect.ImmutableMultiset
    Multiset.Entry<E> getEntry(int i) {
        throw new AssertionError("should never be called");
    }

    @Override // com.google.common.collect.ImmutableSortedMultiset, com.google.common.collect.SortedMultiset
    public ImmutableSortedMultiset<E> headMultiset(E e2, BoundType boundType) {
        Preconditions.checkNotNull(e2);
        Preconditions.checkNotNull(boundType);
        return this;
    }

    @Override // com.google.common.collect.ImmutableSortedMultiset, com.google.common.collect.SortedMultiset
    public ImmutableSortedMultiset<E> tailMultiset(E e2, BoundType boundType) {
        Preconditions.checkNotNull(e2);
        Preconditions.checkNotNull(boundType);
        return this;
    }

    @Override // com.google.common.collect.ImmutableMultiset, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public UnmodifiableIterator<E> iterator() {
        return Iterators.emptyIterator();
    }

    @Override // com.google.common.collect.ImmutableMultiset, java.util.Collection, com.google.common.collect.Multiset
    public boolean equals(@Nullable Object obj) {
        if (obj instanceof Multiset) {
            return ((Multiset) obj).isEmpty();
        }
        return false;
    }

    @Override // com.google.common.collect.ImmutableCollection
    boolean isPartialView() {
        return false;
    }

    @Override // com.google.common.collect.ImmutableMultiset, com.google.common.collect.ImmutableCollection
    int copyIntoArray(Object[] objArr, int i) {
        return i;
    }

    @Override // com.google.common.collect.ImmutableCollection
    public ImmutableList<E> asList() {
        return ImmutableList.of();
    }
}
