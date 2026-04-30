package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Function;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import java.io.Serializable;
import java.lang.Comparable;
import java.util.Comparator;
import java.util.Iterator;
import java.util.SortedSet;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible
public final class Range<C extends Comparable> implements Predicate<C>, Serializable {
    private static final long serialVersionUID = 0;
    final Cut<C> lowerBound;
    final Cut<C> upperBound;
    private static final Function<Range, Cut> LOWER_BOUND_FN = new Function<Range, Cut>() { // from class: com.google.common.collect.Range.1
        @Override // com.google.common.base.Function
        public Cut apply(Range range) {
            return range.lowerBound;
        }
    };
    private static final Function<Range, Cut> UPPER_BOUND_FN = new Function<Range, Cut>() { // from class: com.google.common.collect.Range.2
        @Override // com.google.common.base.Function
        public Cut apply(Range range) {
            return range.upperBound;
        }
    };
    static final Ordering<Range<?>> RANGE_LEX_ORDERING = new Ordering<Range<?>>() { // from class: com.google.common.collect.Range.3
        @Override // com.google.common.collect.Ordering, java.util.Comparator
        public int compare(Range<?> range, Range<?> range2) {
            return ComparisonChain.start().compare(range.lowerBound, range2.lowerBound).compare(range.upperBound, range2.upperBound).result();
        }
    };
    private static final Range<Comparable> ALL = new Range<>(Cut.belowAll(), Cut.aboveAll());

    static <C extends Comparable<?>> Function<Range<C>, Cut<C>> lowerBoundFn() {
        return LOWER_BOUND_FN;
    }

    static <C extends Comparable<?>> Function<Range<C>, Cut<C>> upperBoundFn() {
        return UPPER_BOUND_FN;
    }

    static <C extends Comparable<?>> Range<C> create(Cut<C> cut, Cut<C> cut2) {
        return new Range<>(cut, cut2);
    }

    public static <C extends Comparable<?>> Range<C> open(C c2, C c3) {
        return create(Cut.aboveValue(c2), Cut.belowValue(c3));
    }

    public static <C extends Comparable<?>> Range<C> closed(C c2, C c3) {
        return create(Cut.belowValue(c2), Cut.aboveValue(c3));
    }

    public static <C extends Comparable<?>> Range<C> closedOpen(C c2, C c3) {
        return create(Cut.belowValue(c2), Cut.belowValue(c3));
    }

    public static <C extends Comparable<?>> Range<C> openClosed(C c2, C c3) {
        return create(Cut.aboveValue(c2), Cut.aboveValue(c3));
    }

    public static <C extends Comparable<?>> Range<C> range(C c2, BoundType boundType, C c3, BoundType boundType2) {
        Preconditions.checkNotNull(boundType);
        Preconditions.checkNotNull(boundType2);
        return create(boundType == BoundType.OPEN ? Cut.aboveValue(c2) : Cut.belowValue(c2), boundType2 == BoundType.OPEN ? Cut.belowValue(c3) : Cut.aboveValue(c3));
    }

    public static <C extends Comparable<?>> Range<C> lessThan(C c2) {
        return create(Cut.belowAll(), Cut.belowValue(c2));
    }

    public static <C extends Comparable<?>> Range<C> atMost(C c2) {
        return create(Cut.belowAll(), Cut.aboveValue(c2));
    }

    public static <C extends Comparable<?>> Range<C> upTo(C c2, BoundType boundType) {
        switch (boundType) {
            case OPEN:
                return lessThan(c2);
            case CLOSED:
                return atMost(c2);
            default:
                throw new AssertionError();
        }
    }

    public static <C extends Comparable<?>> Range<C> greaterThan(C c2) {
        return create(Cut.aboveValue(c2), Cut.aboveAll());
    }

    public static <C extends Comparable<?>> Range<C> atLeast(C c2) {
        return create(Cut.belowValue(c2), Cut.aboveAll());
    }

    public static <C extends Comparable<?>> Range<C> downTo(C c2, BoundType boundType) {
        switch (boundType) {
            case OPEN:
                return greaterThan(c2);
            case CLOSED:
                return atLeast(c2);
            default:
                throw new AssertionError();
        }
    }

    public static <C extends Comparable<?>> Range<C> all() {
        return (Range<C>) ALL;
    }

    public static <C extends Comparable<?>> Range<C> singleton(C c2) {
        return closed(c2, c2);
    }

    public static <C extends Comparable<?>> Range<C> encloseAll(Iterable<C> iterable) {
        Preconditions.checkNotNull(iterable);
        if (iterable instanceof ContiguousSet) {
            return ((ContiguousSet) iterable).range();
        }
        Iterator<C> it = iterable.iterator();
        Comparable comparable = (Comparable) Preconditions.checkNotNull(it.next());
        Comparable comparable2 = comparable;
        Comparable comparable3 = comparable;
        while (it.hasNext()) {
            Comparable comparable4 = (Comparable) Preconditions.checkNotNull(it.next());
            comparable3 = (Comparable) Ordering.natural().min(comparable3, comparable4);
            comparable2 = (Comparable) Ordering.natural().max(comparable2, comparable4);
        }
        return closed(comparable3, comparable2);
    }

    private Range(Cut<C> cut, Cut<C> cut2) {
        if (cut.compareTo((Cut) cut2) > 0 || cut == Cut.aboveAll() || cut2 == Cut.belowAll()) {
            throw new IllegalArgumentException("Invalid range: " + toString(cut, cut2));
        }
        this.lowerBound = (Cut) Preconditions.checkNotNull(cut);
        this.upperBound = (Cut) Preconditions.checkNotNull(cut2);
    }

    public boolean hasLowerBound() {
        return this.lowerBound != Cut.belowAll();
    }

    public C lowerEndpoint() {
        return (C) this.lowerBound.endpoint();
    }

    public BoundType lowerBoundType() {
        return this.lowerBound.typeAsLowerBound();
    }

    public boolean hasUpperBound() {
        return this.upperBound != Cut.aboveAll();
    }

    public C upperEndpoint() {
        return (C) this.upperBound.endpoint();
    }

    public BoundType upperBoundType() {
        return this.upperBound.typeAsUpperBound();
    }

    public boolean isEmpty() {
        return this.lowerBound.equals(this.upperBound);
    }

    public boolean contains(C c2) {
        Preconditions.checkNotNull(c2);
        return this.lowerBound.isLessThan(c2) && !this.upperBound.isLessThan(c2);
    }

    @Override // com.google.common.base.Predicate
    @Deprecated
    public boolean apply(C c2) {
        return contains(c2);
    }

    public boolean containsAll(Iterable<? extends C> iterable) {
        if (Iterables.isEmpty(iterable)) {
            return true;
        }
        if (iterable instanceof SortedSet) {
            SortedSet sortedSetCast = cast(iterable);
            Comparator comparator = sortedSetCast.comparator();
            if (Ordering.natural().equals(comparator) || comparator == null) {
                return contains((Comparable) sortedSetCast.first()) && contains((Comparable) sortedSetCast.last());
            }
        }
        Iterator<? extends C> it = iterable.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    public boolean encloses(Range<C> range) {
        return this.lowerBound.compareTo((Cut) range.lowerBound) <= 0 && this.upperBound.compareTo((Cut) range.upperBound) >= 0;
    }

    public boolean isConnected(Range<C> range) {
        return this.lowerBound.compareTo((Cut) range.upperBound) <= 0 && range.lowerBound.compareTo((Cut) this.upperBound) <= 0;
    }

    public Range<C> intersection(Range<C> range) {
        int iCompareTo = this.lowerBound.compareTo((Cut) range.lowerBound);
        int iCompareTo2 = this.upperBound.compareTo((Cut) range.upperBound);
        if (iCompareTo < 0 || iCompareTo2 > 0) {
            if (iCompareTo > 0 || iCompareTo2 < 0) {
                return create(iCompareTo >= 0 ? this.lowerBound : range.lowerBound, iCompareTo2 <= 0 ? this.upperBound : range.upperBound);
            }
            return range;
        }
        return this;
    }

    public Range<C> span(Range<C> range) {
        int iCompareTo = this.lowerBound.compareTo((Cut) range.lowerBound);
        int iCompareTo2 = this.upperBound.compareTo((Cut) range.upperBound);
        if (iCompareTo > 0 || iCompareTo2 < 0) {
            if (iCompareTo < 0 || iCompareTo2 > 0) {
                return create(iCompareTo <= 0 ? this.lowerBound : range.lowerBound, iCompareTo2 >= 0 ? this.upperBound : range.upperBound);
            }
            return range;
        }
        return this;
    }

    public Range<C> canonical(DiscreteDomain<C> discreteDomain) {
        Preconditions.checkNotNull(discreteDomain);
        Cut<C> cutCanonical = this.lowerBound.canonical(discreteDomain);
        Cut<C> cutCanonical2 = this.upperBound.canonical(discreteDomain);
        return (cutCanonical == this.lowerBound && cutCanonical2 == this.upperBound) ? this : create(cutCanonical, cutCanonical2);
    }

    @Override // com.google.common.base.Predicate
    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof Range)) {
            return false;
        }
        Range range = (Range) obj;
        return this.lowerBound.equals(range.lowerBound) && this.upperBound.equals(range.upperBound);
    }

    public int hashCode() {
        return (this.lowerBound.hashCode() * 31) + this.upperBound.hashCode();
    }

    public String toString() {
        return toString(this.lowerBound, this.upperBound);
    }

    private static String toString(Cut<?> cut, Cut<?> cut2) {
        StringBuilder sb = new StringBuilder(16);
        cut.describeAsLowerBound(sb);
        sb.append((char) 8229);
        cut2.describeAsUpperBound(sb);
        return sb.toString();
    }

    private static <T> SortedSet<T> cast(Iterable<T> iterable) {
        return (SortedSet) iterable;
    }

    Object readResolve() {
        if (equals(ALL)) {
            return all();
        }
        return this;
    }

    static int compareOrThrow(Comparable comparable, Comparable comparable2) {
        return comparable.compareTo(comparable2);
    }
}
