package com.google.common.collect;

import com.google.common.base.Preconditions;
import com.google.common.collect.Multiset;
import com.google.common.primitives.Ints;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes3.dex */
final class RegularImmutableSortedMultiset<E> extends ImmutableSortedMultiset<E> {
    private final transient int[] counts;
    private final transient long[] cumulativeCounts;
    private final transient RegularImmutableSortedSet<E> elementSet;
    private final transient int length;
    private final transient int offset;

    RegularImmutableSortedMultiset(RegularImmutableSortedSet<E> regularImmutableSortedSet, int[] iArr, long[] jArr, int i, int i2) {
        this.elementSet = regularImmutableSortedSet;
        this.counts = iArr;
        this.cumulativeCounts = jArr;
        this.offset = i;
        this.length = i2;
    }

    @Override // com.google.common.collect.ImmutableMultiset
    Multiset.Entry<E> getEntry(int i) {
        return Multisets.immutableEntry(this.elementSet.asList().get(i), this.counts[this.offset + i]);
    }

    @Override // com.google.common.collect.SortedMultiset
    public Multiset.Entry<E> firstEntry() {
        return getEntry(0);
    }

    @Override // com.google.common.collect.SortedMultiset
    public Multiset.Entry<E> lastEntry() {
        return getEntry(this.length - 1);
    }

    @Override // com.google.common.collect.Multiset
    public int count(@Nullable Object obj) {
        int iIndexOf = this.elementSet.indexOf(obj);
        if (iIndexOf == -1) {
            return 0;
        }
        return this.counts[iIndexOf + this.offset];
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public int size() {
        return Ints.saturatedCast(this.cumulativeCounts[this.offset + this.length] - this.cumulativeCounts[this.offset]);
    }

    @Override // com.google.common.collect.ImmutableSortedMultiset, com.google.common.collect.Multiset
    public ImmutableSortedSet<E> elementSet() {
        return this.elementSet;
    }

    @Override // com.google.common.collect.ImmutableSortedMultiset, com.google.common.collect.SortedMultiset
    public ImmutableSortedMultiset<E> headMultiset(E e2, BoundType boundType) {
        return getSubMultiset(0, this.elementSet.headIndex(e2, Preconditions.checkNotNull(boundType) == BoundType.CLOSED));
    }

    @Override // com.google.common.collect.ImmutableSortedMultiset, com.google.common.collect.SortedMultiset
    public ImmutableSortedMultiset<E> tailMultiset(E e2, BoundType boundType) {
        return getSubMultiset(this.elementSet.tailIndex(e2, Preconditions.checkNotNull(boundType) == BoundType.CLOSED), this.length);
    }

    ImmutableSortedMultiset<E> getSubMultiset(int i, int i2) {
        Preconditions.checkPositionIndexes(i, i2, this.length);
        if (i == i2) {
            return emptyMultiset(comparator());
        }
        return (i == 0 && i2 == this.length) ? this : new RegularImmutableSortedMultiset((RegularImmutableSortedSet) this.elementSet.getSubSet(i, i2), this.counts, this.cumulativeCounts, this.offset + i, i2 - i);
    }

    @Override // com.google.common.collect.ImmutableCollection
    boolean isPartialView() {
        return this.offset > 0 || this.length < this.counts.length;
    }
}
