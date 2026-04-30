package com.google.common.collect;

import a.j;
import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableSet;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.SortedSet;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible(emulated = true, serializable = true)
public abstract class ImmutableSortedSet<E> extends ImmutableSortedSetFauxverideShim<E> implements SortedIterable<E>, SortedSet<E> {
    final transient Comparator<? super E> comparator;

    @GwtIncompatible("NavigableSet")
    transient ImmutableSortedSet<E> descendingSet;
    private static final Comparator<Comparable> NATURAL_ORDER = Ordering.natural();
    private static final ImmutableSortedSet<Comparable> NATURAL_EMPTY_SET = new EmptyImmutableSortedSet(NATURAL_ORDER);

    @GwtIncompatible("NavigableSet")
    public abstract UnmodifiableIterator<E> descendingIterator();

    abstract ImmutableSortedSet<E> headSetImpl(E e2, boolean z);

    abstract int indexOf(@Nullable Object obj);

    @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public abstract UnmodifiableIterator<E> iterator();

    abstract ImmutableSortedSet<E> subSetImpl(E e2, boolean z, E e3, boolean z2);

    abstract ImmutableSortedSet<E> tailSetImpl(E e2, boolean z);

    private static <E> ImmutableSortedSet<E> emptySet() {
        return (ImmutableSortedSet<E>) NATURAL_EMPTY_SET;
    }

    static <E> ImmutableSortedSet<E> emptySet(Comparator<? super E> comparator) {
        return NATURAL_ORDER.equals(comparator) ? emptySet() : new EmptyImmutableSortedSet(comparator);
    }

    public static <E> ImmutableSortedSet<E> of() {
        return emptySet();
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;)Lcom/google/common/collect/ImmutableSortedSet<TE;>; */
    public static ImmutableSortedSet of(Comparable comparable) {
        return new RegularImmutableSortedSet(ImmutableList.of(comparable), Ordering.natural());
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;TE;)Lcom/google/common/collect/ImmutableSortedSet<TE;>; */
    public static ImmutableSortedSet of(Comparable comparable, Comparable comparable2) {
        return construct(Ordering.natural(), 2, comparable, comparable2);
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;TE;TE;)Lcom/google/common/collect/ImmutableSortedSet<TE;>; */
    public static ImmutableSortedSet of(Comparable comparable, Comparable comparable2, Comparable comparable3) {
        return construct(Ordering.natural(), 3, comparable, comparable2, comparable3);
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;TE;TE;TE;)Lcom/google/common/collect/ImmutableSortedSet<TE;>; */
    public static ImmutableSortedSet of(Comparable comparable, Comparable comparable2, Comparable comparable3, Comparable comparable4) {
        return construct(Ordering.natural(), 4, comparable, comparable2, comparable3, comparable4);
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;TE;TE;TE;TE;)Lcom/google/common/collect/ImmutableSortedSet<TE;>; */
    public static ImmutableSortedSet of(Comparable comparable, Comparable comparable2, Comparable comparable3, Comparable comparable4, Comparable comparable5) {
        return construct(Ordering.natural(), 5, comparable, comparable2, comparable3, comparable4, comparable5);
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;TE;TE;TE;TE;TE;[TE;)Lcom/google/common/collect/ImmutableSortedSet<TE;>; */
    public static ImmutableSortedSet of(Comparable comparable, Comparable comparable2, Comparable comparable3, Comparable comparable4, Comparable comparable5, Comparable comparable6, Comparable... comparableArr) {
        Comparable[] comparableArr2 = new Comparable[comparableArr.length + 6];
        comparableArr2[0] = comparable;
        comparableArr2[1] = comparable2;
        comparableArr2[2] = comparable3;
        comparableArr2[3] = comparable4;
        comparableArr2[4] = comparable5;
        comparableArr2[5] = comparable6;
        System.arraycopy(comparableArr, 0, comparableArr2, 6, comparableArr.length);
        return construct(Ordering.natural(), comparableArr2.length, comparableArr2);
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>([TE;)Lcom/google/common/collect/ImmutableSortedSet<TE;>; */
    public static ImmutableSortedSet copyOf(Comparable[] comparableArr) {
        return construct(Ordering.natural(), comparableArr.length, (Object[]) comparableArr.clone());
    }

    public static <E> ImmutableSortedSet<E> copyOf(Iterable<? extends E> iterable) {
        return copyOf(Ordering.natural(), iterable);
    }

    public static <E> ImmutableSortedSet<E> copyOf(Collection<? extends E> collection) {
        return copyOf((Comparator) Ordering.natural(), (Collection) collection);
    }

    public static <E> ImmutableSortedSet<E> copyOf(Iterator<? extends E> it) {
        return copyOf(Ordering.natural(), it);
    }

    public static <E> ImmutableSortedSet<E> copyOf(Comparator<? super E> comparator, Iterator<? extends E> it) {
        return new Builder(comparator).addAll((Iterator) it).build();
    }

    public static <E> ImmutableSortedSet<E> copyOf(Comparator<? super E> comparator, Iterable<? extends E> iterable) {
        Preconditions.checkNotNull(comparator);
        if (SortedIterables.hasSameComparator(comparator, iterable) && (iterable instanceof ImmutableSortedSet)) {
            ImmutableSortedSet<E> immutableSortedSet = (ImmutableSortedSet) iterable;
            if (!immutableSortedSet.isPartialView()) {
                return immutableSortedSet;
            }
        }
        Object[] array = Iterables.toArray(iterable);
        return construct(comparator, array.length, array);
    }

    public static <E> ImmutableSortedSet<E> copyOf(Comparator<? super E> comparator, Collection<? extends E> collection) {
        return copyOf((Comparator) comparator, (Iterable) collection);
    }

    public static <E> ImmutableSortedSet<E> copyOfSorted(SortedSet<E> sortedSet) {
        Comparator comparator = SortedIterables.comparator(sortedSet);
        ImmutableList immutableListCopyOf = ImmutableList.copyOf((Collection) sortedSet);
        return immutableListCopyOf.isEmpty() ? emptySet(comparator) : new RegularImmutableSortedSet(immutableListCopyOf, comparator);
    }

    /* JADX WARN: Multi-variable type inference failed */
    static <E> ImmutableSortedSet<E> construct(Comparator<? super E> comparator, int i, E... eArr) {
        int i2;
        if (i == 0) {
            return emptySet(comparator);
        }
        ObjectArrays.checkElementsNotNull(eArr, i);
        Arrays.sort(eArr, 0, i, comparator);
        int i3 = 1;
        int i4 = 1;
        while (i3 < i) {
            j jVar = (Object) eArr[i3];
            if (comparator.compare(jVar, (Object) eArr[i4 - 1]) != 0) {
                i2 = i4 + 1;
                eArr[i4] = jVar;
            } else {
                i2 = i4;
            }
            i3++;
            i4 = i2;
        }
        Arrays.fill(eArr, i4, i, (Object) null);
        return new RegularImmutableSortedSet(ImmutableList.asImmutableList(eArr, i4), comparator);
    }

    public static <E> Builder<E> orderedBy(Comparator<E> comparator) {
        return new Builder<>(comparator);
    }

    public static <E extends Comparable<?>> Builder<E> reverseOrder() {
        return new Builder<>(Ordering.natural().reverse());
    }

    public static <E extends Comparable<?>> Builder<E> naturalOrder() {
        return new Builder<>(Ordering.natural());
    }

    /* JADX INFO: loaded from: classes3.dex */
    public final class Builder<E> extends ImmutableSet.Builder<E> {
        private final Comparator<? super E> comparator;

        public Builder(Comparator<? super E> comparator) {
            this.comparator = (Comparator) Preconditions.checkNotNull(comparator);
        }

        @Override // com.google.common.collect.ImmutableSet.Builder, com.google.common.collect.ImmutableCollection.ArrayBasedBuilder, com.google.common.collect.ImmutableCollection.Builder
        public Builder<E> add(E e2) {
            super.add((Object) e2);
            return this;
        }

        @Override // com.google.common.collect.ImmutableSet.Builder, com.google.common.collect.ImmutableCollection.ArrayBasedBuilder, com.google.common.collect.ImmutableCollection.Builder
        public Builder<E> add(E... eArr) {
            super.add((Object[]) eArr);
            return this;
        }

        @Override // com.google.common.collect.ImmutableSet.Builder, com.google.common.collect.ImmutableCollection.ArrayBasedBuilder, com.google.common.collect.ImmutableCollection.Builder
        public Builder<E> addAll(Iterable<? extends E> iterable) {
            super.addAll((Iterable) iterable);
            return this;
        }

        @Override // com.google.common.collect.ImmutableSet.Builder, com.google.common.collect.ImmutableCollection.Builder
        public Builder<E> addAll(Iterator<? extends E> it) {
            super.addAll((Iterator) it);
            return this;
        }

        @Override // com.google.common.collect.ImmutableSet.Builder, com.google.common.collect.ImmutableCollection.Builder
        public ImmutableSortedSet<E> build() {
            ImmutableSortedSet<E> immutableSortedSetConstruct = ImmutableSortedSet.construct(this.comparator, this.size, this.contents);
            this.size = immutableSortedSetConstruct.size();
            return immutableSortedSetConstruct;
        }
    }

    int unsafeCompare(Object obj, Object obj2) {
        return unsafeCompare(this.comparator, obj, obj2);
    }

    static int unsafeCompare(Comparator<?> comparator, Object obj, Object obj2) {
        return comparator.compare(obj, obj2);
    }

    ImmutableSortedSet(Comparator<? super E> comparator) {
        this.comparator = comparator;
    }

    @Override // com.google.common.collect.SortedIterable
    public Comparator<? super E> comparator() {
        return this.comparator;
    }

    @Override // java.util.SortedSet
    public ImmutableSortedSet<E> headSet(E e2) {
        return headSet(e2, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @GwtIncompatible("NavigableSet")
    public ImmutableSortedSet<E> headSet(E e2, boolean z) {
        return headSetImpl(Preconditions.checkNotNull(e2), z);
    }

    @Override // java.util.SortedSet
    public ImmutableSortedSet<E> subSet(E e2, E e3) {
        return subSet(e2, true, e3, false);
    }

    @GwtIncompatible("NavigableSet")
    public ImmutableSortedSet<E> subSet(E e2, boolean z, E e3, boolean z2) {
        Preconditions.checkNotNull(e2);
        Preconditions.checkNotNull(e3);
        Preconditions.checkArgument(this.comparator.compare(e2, e3) <= 0);
        return subSetImpl(e2, z, e3, z2);
    }

    @Override // java.util.SortedSet
    public ImmutableSortedSet<E> tailSet(E e2) {
        return tailSet(e2, true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @GwtIncompatible("NavigableSet")
    public ImmutableSortedSet<E> tailSet(E e2, boolean z) {
        return tailSetImpl(Preconditions.checkNotNull(e2), z);
    }

    @GwtIncompatible("NavigableSet")
    public E lower(E e2) {
        return (E) Iterators.getNext(headSet(e2, false).descendingIterator(), null);
    }

    @GwtIncompatible("NavigableSet")
    public E floor(E e2) {
        return (E) Iterators.getNext(headSet(e2, true).descendingIterator(), null);
    }

    @GwtIncompatible("NavigableSet")
    public E ceiling(E e2) {
        return (E) Iterables.getFirst(tailSet(e2, true), null);
    }

    @GwtIncompatible("NavigableSet")
    public E higher(E e2) {
        return (E) Iterables.getFirst(tailSet(e2, false), null);
    }

    public E first() {
        return iterator().next();
    }

    public E last() {
        return descendingIterator().next();
    }

    @GwtIncompatible("NavigableSet")
    @Deprecated
    public final E pollFirst() {
        throw new UnsupportedOperationException();
    }

    @GwtIncompatible("NavigableSet")
    @Deprecated
    public final E pollLast() {
        throw new UnsupportedOperationException();
    }

    @GwtIncompatible("NavigableSet")
    public ImmutableSortedSet<E> descendingSet() {
        ImmutableSortedSet<E> immutableSortedSet = this.descendingSet;
        if (immutableSortedSet == null) {
            ImmutableSortedSet<E> immutableSortedSetCreateDescendingSet = createDescendingSet();
            this.descendingSet = immutableSortedSetCreateDescendingSet;
            immutableSortedSetCreateDescendingSet.descendingSet = this;
            return immutableSortedSetCreateDescendingSet;
        }
        return immutableSortedSet;
    }

    @GwtIncompatible("NavigableSet")
    ImmutableSortedSet<E> createDescendingSet() {
        return new DescendingImmutableSortedSet(this);
    }

    /* JADX INFO: loaded from: classes3.dex */
    class SerializedForm<E> implements Serializable {
        private static final long serialVersionUID = 0;
        final Comparator<? super E> comparator;
        final Object[] elements;

        public SerializedForm(Comparator<? super E> comparator, Object[] objArr) {
            this.comparator = comparator;
            this.elements = objArr;
        }

        /* JADX WARN: Multi-variable type inference failed */
        Object readResolve() {
            return new Builder(this.comparator).add(this.elements).build();
        }
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Use SerializedForm");
    }

    @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection
    Object writeReplace() {
        return new SerializedForm(this.comparator, toArray());
    }
}
