package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableSortedSet;
import java.lang.Comparable;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes.dex */
@Beta
@GwtCompatible(emulated = true)
public abstract class ContiguousSet<C extends Comparable> extends ImmutableSortedSet<C> {
    final DiscreteDomain<C> domain;

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableSortedSet
    public abstract ContiguousSet<C> headSetImpl(C c2, boolean z);

    public abstract ContiguousSet<C> intersection(ContiguousSet<C> contiguousSet);

    public abstract Range<C> range();

    public abstract Range<C> range(BoundType boundType, BoundType boundType2);

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableSortedSet
    public abstract ContiguousSet<C> subSetImpl(C c2, boolean z, C c3, boolean z2);

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableSortedSet
    public abstract ContiguousSet<C> tailSetImpl(C c2, boolean z);

    public static <C extends Comparable> ContiguousSet<C> create(Range<C> range, DiscreteDomain<C> discreteDomain) {
        Preconditions.checkNotNull(range);
        Preconditions.checkNotNull(discreteDomain);
        try {
            Range<C> rangeIntersection = !range.hasLowerBound() ? range.intersection(Range.atLeast(discreteDomain.minValue())) : range;
            if (!range.hasUpperBound()) {
                rangeIntersection = rangeIntersection.intersection(Range.atMost(discreteDomain.maxValue()));
            }
            return rangeIntersection.isEmpty() || Range.compareOrThrow(range.lowerBound.leastValueAbove(discreteDomain), range.upperBound.greatestValueBelow(discreteDomain)) > 0 ? new EmptyContiguousSet(discreteDomain) : new RegularContiguousSet(rangeIntersection, discreteDomain);
        } catch (NoSuchElementException e2) {
            throw new IllegalArgumentException(e2);
        }
    }

    ContiguousSet(DiscreteDomain<C> discreteDomain) {
        super(Ordering.natural());
        this.domain = discreteDomain;
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.SortedSet
    public ContiguousSet<C> headSet(C c2) {
        return headSetImpl((Comparable) Preconditions.checkNotNull(c2), false);
    }

    @Override // com.google.common.collect.ImmutableSortedSet
    @GwtIncompatible("NavigableSet")
    public ContiguousSet<C> headSet(C c2, boolean z) {
        return headSetImpl((Comparable) Preconditions.checkNotNull(c2), z);
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.SortedSet
    public ContiguousSet<C> subSet(C c2, C c3) {
        Preconditions.checkNotNull(c2);
        Preconditions.checkNotNull(c3);
        Preconditions.checkArgument(comparator().compare(c2, c3) <= 0);
        return subSetImpl((Comparable) c2, true, (Comparable) c3, false);
    }

    @Override // com.google.common.collect.ImmutableSortedSet
    @GwtIncompatible("NavigableSet")
    public ContiguousSet<C> subSet(C c2, boolean z, C c3, boolean z2) {
        Preconditions.checkNotNull(c2);
        Preconditions.checkNotNull(c3);
        Preconditions.checkArgument(comparator().compare(c2, c3) <= 0);
        return subSetImpl((Comparable) c2, z, (Comparable) c3, z2);
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.SortedSet
    public ContiguousSet<C> tailSet(C c2) {
        return tailSetImpl((Comparable) Preconditions.checkNotNull(c2), true);
    }

    @Override // com.google.common.collect.ImmutableSortedSet
    @GwtIncompatible("NavigableSet")
    public ContiguousSet<C> tailSet(C c2, boolean z) {
        return tailSetImpl((Comparable) Preconditions.checkNotNull(c2), z);
    }

    @Override // java.util.AbstractCollection
    public String toString() {
        return range().toString();
    }

    @Deprecated
    public static <E> ImmutableSortedSet.Builder<E> builder() {
        throw new UnsupportedOperationException();
    }
}
