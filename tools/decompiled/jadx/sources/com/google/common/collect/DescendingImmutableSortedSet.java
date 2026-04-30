package com.google.common.collect;

import com.google.common.annotations.GwtIncompatible;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes3.dex */
class DescendingImmutableSortedSet<E> extends ImmutableSortedSet<E> {
    private final ImmutableSortedSet<E> forward;

    DescendingImmutableSortedSet(ImmutableSortedSet<E> immutableSortedSet) {
        super(Ordering.from(immutableSortedSet.comparator()).reverse());
        this.forward = immutableSortedSet;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return this.forward.size();
    }

    @Override // com.google.common.collect.ImmutableSortedSet, com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public UnmodifiableIterator<E> iterator() {
        return this.forward.descendingIterator();
    }

    @Override // com.google.common.collect.ImmutableSortedSet
    ImmutableSortedSet<E> headSetImpl(E e2, boolean z) {
        return this.forward.tailSet(e2, z).descendingSet();
    }

    @Override // com.google.common.collect.ImmutableSortedSet
    ImmutableSortedSet<E> subSetImpl(E e2, boolean z, E e3, boolean z2) {
        return this.forward.subSet(e3, z2, e2, z).descendingSet();
    }

    @Override // com.google.common.collect.ImmutableSortedSet
    ImmutableSortedSet<E> tailSetImpl(E e2, boolean z) {
        return this.forward.headSet(e2, z).descendingSet();
    }

    @Override // com.google.common.collect.ImmutableSortedSet
    @GwtIncompatible("NavigableSet")
    public ImmutableSortedSet<E> descendingSet() {
        return this.forward;
    }

    @Override // com.google.common.collect.ImmutableSortedSet
    @GwtIncompatible("NavigableSet")
    public UnmodifiableIterator<E> descendingIterator() {
        return this.forward.iterator();
    }

    @Override // com.google.common.collect.ImmutableSortedSet
    @GwtIncompatible("NavigableSet")
    ImmutableSortedSet<E> createDescendingSet() {
        throw new AssertionError("should never be called");
    }

    @Override // com.google.common.collect.ImmutableSortedSet
    public E lower(E e2) {
        return this.forward.higher(e2);
    }

    @Override // com.google.common.collect.ImmutableSortedSet
    public E floor(E e2) {
        return this.forward.ceiling(e2);
    }

    @Override // com.google.common.collect.ImmutableSortedSet
    public E ceiling(E e2) {
        return this.forward.floor(e2);
    }

    @Override // com.google.common.collect.ImmutableSortedSet
    public E higher(E e2) {
        return this.forward.lower(e2);
    }

    @Override // com.google.common.collect.ImmutableSortedSet
    int indexOf(@Nullable Object obj) {
        int iIndexOf = this.forward.indexOf(obj);
        return iIndexOf == -1 ? iIndexOf : (size() - 1) - iIndexOf;
    }

    @Override // com.google.common.collect.ImmutableCollection
    boolean isPartialView() {
        return this.forward.isPartialView();
    }
}
