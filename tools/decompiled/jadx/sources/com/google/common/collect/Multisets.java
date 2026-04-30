package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import com.google.common.base.Predicates;
import com.google.common.collect.Multiset;
import com.google.common.collect.Sets;
import com.google.common.primitives.Ints;
import java.io.Serializable;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Set;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible
public final class Multisets {
    private static final Ordering<Multiset.Entry<?>> DECREASING_COUNT_ORDERING = new Ordering<Multiset.Entry<?>>() { // from class: com.google.common.collect.Multisets.5
        @Override // com.google.common.collect.Ordering, java.util.Comparator
        public int compare(Multiset.Entry<?> entry, Multiset.Entry<?> entry2) {
            return Ints.compare(entry2.getCount(), entry.getCount());
        }
    };

    private Multisets() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <E> Multiset<E> unmodifiableMultiset(Multiset<? extends E> multiset) {
        return ((multiset instanceof UnmodifiableMultiset) || (multiset instanceof ImmutableMultiset)) ? multiset : new UnmodifiableMultiset((Multiset) Preconditions.checkNotNull(multiset));
    }

    @Deprecated
    public static <E> Multiset<E> unmodifiableMultiset(ImmutableMultiset<E> immutableMultiset) {
        return (Multiset) Preconditions.checkNotNull(immutableMultiset);
    }

    /* JADX INFO: loaded from: classes3.dex */
    class UnmodifiableMultiset<E> extends ForwardingMultiset<E> implements Serializable {
        private static final long serialVersionUID = 0;
        final Multiset<? extends E> delegate;
        transient Set<E> elementSet;
        transient Set<Multiset.Entry<E>> entrySet;

        UnmodifiableMultiset(Multiset<? extends E> multiset) {
            this.delegate = multiset;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.ForwardingMultiset, com.google.common.collect.ForwardingCollection, com.google.common.collect.ForwardingObject
        public Multiset<E> delegate() {
            return this.delegate;
        }

        Set<E> createElementSet() {
            return Collections.unmodifiableSet(this.delegate.elementSet());
        }

        @Override // com.google.common.collect.ForwardingMultiset, com.google.common.collect.Multiset
        public Set<E> elementSet() {
            Set<E> set = this.elementSet;
            if (set != null) {
                return set;
            }
            Set<E> setCreateElementSet = createElementSet();
            this.elementSet = setCreateElementSet;
            return setCreateElementSet;
        }

        @Override // com.google.common.collect.ForwardingMultiset, com.google.common.collect.Multiset
        public Set<Multiset.Entry<E>> entrySet() {
            Set<Multiset.Entry<E>> set = this.entrySet;
            if (set != null) {
                return set;
            }
            Set<Multiset.Entry<E>> setUnmodifiableSet = Collections.unmodifiableSet(this.delegate.entrySet());
            this.entrySet = setUnmodifiableSet;
            return setUnmodifiableSet;
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<E> iterator() {
            return Iterators.unmodifiableIterator(this.delegate.iterator());
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection
        public boolean add(E e2) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.ForwardingMultiset, com.google.common.collect.Multiset
        public int add(E e2, int i) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection
        public boolean addAll(Collection<? extends E> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.ForwardingMultiset, com.google.common.collect.Multiset
        public int remove(Object obj, int i) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Set
        public boolean removeAll(Collection<?> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Set
        public boolean retainAll(Collection<?> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Set
        public void clear() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.ForwardingMultiset, com.google.common.collect.Multiset
        public int setCount(E e2, int i) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.ForwardingMultiset, com.google.common.collect.Multiset
        public boolean setCount(E e2, int i, int i2) {
            throw new UnsupportedOperationException();
        }
    }

    @Beta
    public static <E> SortedMultiset<E> unmodifiableSortedMultiset(SortedMultiset<E> sortedMultiset) {
        return new UnmodifiableSortedMultiset((SortedMultiset) Preconditions.checkNotNull(sortedMultiset));
    }

    public static <E> Multiset.Entry<E> immutableEntry(@Nullable E e2, int i) {
        return new ImmutableEntry(e2, i);
    }

    final class ImmutableEntry<E> extends AbstractEntry<E> implements Serializable {
        private static final long serialVersionUID = 0;
        final int count;

        @Nullable
        final E element;

        ImmutableEntry(@Nullable E e2, int i) {
            this.element = e2;
            this.count = i;
            CollectPreconditions.checkNonnegative(i, "count");
        }

        @Override // com.google.common.collect.Multiset.Entry
        @Nullable
        public E getElement() {
            return this.element;
        }

        @Override // com.google.common.collect.Multiset.Entry
        public int getCount() {
            return this.count;
        }
    }

    @Beta
    public static <E> Multiset<E> filter(Multiset<E> multiset, Predicate<? super E> predicate) {
        if (!(multiset instanceof FilteredMultiset)) {
            return new FilteredMultiset(multiset, predicate);
        }
        FilteredMultiset filteredMultiset = (FilteredMultiset) multiset;
        return new FilteredMultiset(filteredMultiset.unfiltered, Predicates.and(filteredMultiset.predicate, predicate));
    }

    /* JADX INFO: loaded from: classes3.dex */
    final class FilteredMultiset<E> extends AbstractMultiset<E> {
        final Predicate<? super E> predicate;
        final Multiset<E> unfiltered;

        FilteredMultiset(Multiset<E> multiset, Predicate<? super E> predicate) {
            this.unfiltered = (Multiset) Preconditions.checkNotNull(multiset);
            this.predicate = (Predicate) Preconditions.checkNotNull(predicate);
        }

        @Override // com.google.common.collect.AbstractMultiset, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, com.google.common.collect.Multiset
        public UnmodifiableIterator<E> iterator() {
            return Iterators.filter(this.unfiltered.iterator(), this.predicate);
        }

        @Override // com.google.common.collect.AbstractMultiset
        Set<E> createElementSet() {
            return Sets.filter(this.unfiltered.elementSet(), this.predicate);
        }

        @Override // com.google.common.collect.AbstractMultiset
        Set<Multiset.Entry<E>> createEntrySet() {
            return Sets.filter(this.unfiltered.entrySet(), new Predicate<Multiset.Entry<E>>() { // from class: com.google.common.collect.Multisets.FilteredMultiset.1
                @Override // com.google.common.base.Predicate
                public boolean apply(Multiset.Entry<E> entry) {
                    return FilteredMultiset.this.predicate.apply(entry.getElement());
                }
            });
        }

        @Override // com.google.common.collect.AbstractMultiset
        Iterator<Multiset.Entry<E>> entryIterator() {
            throw new AssertionError("should never be called");
        }

        @Override // com.google.common.collect.AbstractMultiset
        int distinctElements() {
            return elementSet().size();
        }

        @Override // com.google.common.collect.AbstractMultiset, com.google.common.collect.Multiset
        public int count(@Nullable Object obj) {
            int iCount = this.unfiltered.count(obj);
            if (iCount <= 0 || !this.predicate.apply(obj)) {
                return 0;
            }
            return iCount;
        }

        @Override // com.google.common.collect.AbstractMultiset, com.google.common.collect.Multiset
        public int add(@Nullable E e2, int i) {
            Preconditions.checkArgument(this.predicate.apply(e2), "Element %s does not match predicate %s", e2, this.predicate);
            return this.unfiltered.add(e2, i);
        }

        @Override // com.google.common.collect.AbstractMultiset, com.google.common.collect.Multiset
        public int remove(@Nullable Object obj, int i) {
            CollectPreconditions.checkNonnegative(i, "occurrences");
            if (i == 0) {
                return count(obj);
            }
            if (contains(obj)) {
                return this.unfiltered.remove(obj, i);
            }
            return 0;
        }

        @Override // com.google.common.collect.AbstractMultiset, java.util.AbstractCollection, java.util.Collection
        public void clear() {
            elementSet().clear();
        }
    }

    static int inferDistinctElements(Iterable<?> iterable) {
        if (iterable instanceof Multiset) {
            return ((Multiset) iterable).elementSet().size();
        }
        return 11;
    }

    @Beta
    public static <E> Multiset<E> union(final Multiset<? extends E> multiset, final Multiset<? extends E> multiset2) {
        Preconditions.checkNotNull(multiset);
        Preconditions.checkNotNull(multiset2);
        return new AbstractMultiset<E>() { // from class: com.google.common.collect.Multisets.1
            @Override // com.google.common.collect.AbstractMultiset, java.util.AbstractCollection, java.util.Collection, com.google.common.collect.Multiset
            public boolean contains(@Nullable Object obj) {
                return multiset.contains(obj) || multiset2.contains(obj);
            }

            @Override // com.google.common.collect.AbstractMultiset, java.util.AbstractCollection, java.util.Collection
            public boolean isEmpty() {
                return multiset.isEmpty() && multiset2.isEmpty();
            }

            @Override // com.google.common.collect.AbstractMultiset, com.google.common.collect.Multiset
            public int count(Object obj) {
                return Math.max(multiset.count(obj), multiset2.count(obj));
            }

            @Override // com.google.common.collect.AbstractMultiset
            Set<E> createElementSet() {
                return Sets.union(multiset.elementSet(), multiset2.elementSet());
            }

            @Override // com.google.common.collect.AbstractMultiset
            Iterator<Multiset.Entry<E>> entryIterator() {
                final Iterator<Multiset.Entry<E>> it = multiset.entrySet().iterator();
                final Iterator<Multiset.Entry<E>> it2 = multiset2.entrySet().iterator();
                return new AbstractIterator<Multiset.Entry<E>>() { // from class: com.google.common.collect.Multisets.1.1
                    /* JADX INFO: Access modifiers changed from: protected */
                    @Override // com.google.common.collect.AbstractIterator
                    public Multiset.Entry<E> computeNext() {
                        if (it.hasNext()) {
                            Multiset.Entry entry = (Multiset.Entry) it.next();
                            Object element = entry.getElement();
                            return Multisets.immutableEntry(element, Math.max(entry.getCount(), multiset2.count(element)));
                        }
                        while (it2.hasNext()) {
                            Multiset.Entry entry2 = (Multiset.Entry) it2.next();
                            Object element2 = entry2.getElement();
                            if (!multiset.contains(element2)) {
                                return Multisets.immutableEntry(element2, entry2.getCount());
                            }
                        }
                        return endOfData();
                    }
                };
            }

            @Override // com.google.common.collect.AbstractMultiset
            int distinctElements() {
                return elementSet().size();
            }
        };
    }

    public static <E> Multiset<E> intersection(final Multiset<E> multiset, final Multiset<?> multiset2) {
        Preconditions.checkNotNull(multiset);
        Preconditions.checkNotNull(multiset2);
        return new AbstractMultiset<E>() { // from class: com.google.common.collect.Multisets.2
            @Override // com.google.common.collect.AbstractMultiset, com.google.common.collect.Multiset
            public int count(Object obj) {
                int iCount = multiset.count(obj);
                if (iCount == 0) {
                    return 0;
                }
                return Math.min(iCount, multiset2.count(obj));
            }

            @Override // com.google.common.collect.AbstractMultiset
            Set<E> createElementSet() {
                return Sets.intersection(multiset.elementSet(), multiset2.elementSet());
            }

            @Override // com.google.common.collect.AbstractMultiset
            Iterator<Multiset.Entry<E>> entryIterator() {
                final Iterator<Multiset.Entry<E>> it = multiset.entrySet().iterator();
                return new AbstractIterator<Multiset.Entry<E>>() { // from class: com.google.common.collect.Multisets.2.1
                    /* JADX INFO: Access modifiers changed from: protected */
                    @Override // com.google.common.collect.AbstractIterator
                    public Multiset.Entry<E> computeNext() {
                        while (it.hasNext()) {
                            Multiset.Entry entry = (Multiset.Entry) it.next();
                            Object element = entry.getElement();
                            int iMin = Math.min(entry.getCount(), multiset2.count(element));
                            if (iMin > 0) {
                                return Multisets.immutableEntry(element, iMin);
                            }
                        }
                        return endOfData();
                    }
                };
            }

            @Override // com.google.common.collect.AbstractMultiset
            int distinctElements() {
                return elementSet().size();
            }
        };
    }

    @Beta
    public static <E> Multiset<E> sum(final Multiset<? extends E> multiset, final Multiset<? extends E> multiset2) {
        Preconditions.checkNotNull(multiset);
        Preconditions.checkNotNull(multiset2);
        return new AbstractMultiset<E>() { // from class: com.google.common.collect.Multisets.3
            @Override // com.google.common.collect.AbstractMultiset, java.util.AbstractCollection, java.util.Collection, com.google.common.collect.Multiset
            public boolean contains(@Nullable Object obj) {
                return multiset.contains(obj) || multiset2.contains(obj);
            }

            @Override // com.google.common.collect.AbstractMultiset, java.util.AbstractCollection, java.util.Collection
            public boolean isEmpty() {
                return multiset.isEmpty() && multiset2.isEmpty();
            }

            @Override // com.google.common.collect.AbstractMultiset, java.util.AbstractCollection, java.util.Collection
            public int size() {
                return multiset.size() + multiset2.size();
            }

            @Override // com.google.common.collect.AbstractMultiset, com.google.common.collect.Multiset
            public int count(Object obj) {
                return multiset.count(obj) + multiset2.count(obj);
            }

            @Override // com.google.common.collect.AbstractMultiset
            Set<E> createElementSet() {
                return Sets.union(multiset.elementSet(), multiset2.elementSet());
            }

            @Override // com.google.common.collect.AbstractMultiset
            Iterator<Multiset.Entry<E>> entryIterator() {
                final Iterator<Multiset.Entry<E>> it = multiset.entrySet().iterator();
                final Iterator<Multiset.Entry<E>> it2 = multiset2.entrySet().iterator();
                return new AbstractIterator<Multiset.Entry<E>>() { // from class: com.google.common.collect.Multisets.3.1
                    /* JADX INFO: Access modifiers changed from: protected */
                    @Override // com.google.common.collect.AbstractIterator
                    public Multiset.Entry<E> computeNext() {
                        if (it.hasNext()) {
                            Multiset.Entry entry = (Multiset.Entry) it.next();
                            Object element = entry.getElement();
                            return Multisets.immutableEntry(element, entry.getCount() + multiset2.count(element));
                        }
                        while (it2.hasNext()) {
                            Multiset.Entry entry2 = (Multiset.Entry) it2.next();
                            Object element2 = entry2.getElement();
                            if (!multiset.contains(element2)) {
                                return Multisets.immutableEntry(element2, entry2.getCount());
                            }
                        }
                        return endOfData();
                    }
                };
            }

            @Override // com.google.common.collect.AbstractMultiset
            int distinctElements() {
                return elementSet().size();
            }
        };
    }

    @Beta
    public static <E> Multiset<E> difference(final Multiset<E> multiset, final Multiset<?> multiset2) {
        Preconditions.checkNotNull(multiset);
        Preconditions.checkNotNull(multiset2);
        return new AbstractMultiset<E>() { // from class: com.google.common.collect.Multisets.4
            @Override // com.google.common.collect.AbstractMultiset, com.google.common.collect.Multiset
            public int count(@Nullable Object obj) {
                int iCount = multiset.count(obj);
                if (iCount == 0) {
                    return 0;
                }
                return Math.max(0, iCount - multiset2.count(obj));
            }

            @Override // com.google.common.collect.AbstractMultiset
            Iterator<Multiset.Entry<E>> entryIterator() {
                final Iterator<Multiset.Entry<E>> it = multiset.entrySet().iterator();
                return new AbstractIterator<Multiset.Entry<E>>() { // from class: com.google.common.collect.Multisets.4.1
                    /* JADX INFO: Access modifiers changed from: protected */
                    @Override // com.google.common.collect.AbstractIterator
                    public Multiset.Entry<E> computeNext() {
                        while (it.hasNext()) {
                            Multiset.Entry entry = (Multiset.Entry) it.next();
                            Object element = entry.getElement();
                            int count = entry.getCount() - multiset2.count(element);
                            if (count > 0) {
                                return Multisets.immutableEntry(element, count);
                            }
                        }
                        return endOfData();
                    }
                };
            }

            @Override // com.google.common.collect.AbstractMultiset
            int distinctElements() {
                return Iterators.size(entryIterator());
            }
        };
    }

    public static boolean containsOccurrences(Multiset<?> multiset, Multiset<?> multiset2) {
        Preconditions.checkNotNull(multiset);
        Preconditions.checkNotNull(multiset2);
        for (Multiset.Entry<?> entry : multiset2.entrySet()) {
            if (multiset.count(entry.getElement()) < entry.getCount()) {
                return false;
            }
        }
        return true;
    }

    public static boolean retainOccurrences(Multiset<?> multiset, Multiset<?> multiset2) {
        return retainOccurrencesImpl(multiset, multiset2);
    }

    private static <E> boolean retainOccurrencesImpl(Multiset<E> multiset, Multiset<?> multiset2) {
        Preconditions.checkNotNull(multiset);
        Preconditions.checkNotNull(multiset2);
        Iterator<Multiset.Entry<E>> it = multiset.entrySet().iterator();
        boolean z = false;
        while (true) {
            boolean z2 = z;
            if (it.hasNext()) {
                Multiset.Entry<E> next = it.next();
                int iCount = multiset2.count(next.getElement());
                if (iCount == 0) {
                    it.remove();
                    z = true;
                } else if (iCount < next.getCount()) {
                    multiset.setCount(next.getElement(), iCount);
                    z = true;
                } else {
                    z = z2;
                }
            } else {
                return z2;
            }
        }
    }

    public static boolean removeOccurrences(Multiset<?> multiset, Multiset<?> multiset2) {
        return removeOccurrencesImpl(multiset, multiset2);
    }

    private static <E> boolean removeOccurrencesImpl(Multiset<E> multiset, Multiset<?> multiset2) {
        Preconditions.checkNotNull(multiset);
        Preconditions.checkNotNull(multiset2);
        boolean z = false;
        Iterator<Multiset.Entry<E>> it = multiset.entrySet().iterator();
        while (true) {
            boolean z2 = z;
            if (it.hasNext()) {
                Multiset.Entry<E> next = it.next();
                int iCount = multiset2.count(next.getElement());
                if (iCount >= next.getCount()) {
                    it.remove();
                    z = true;
                } else if (iCount > 0) {
                    multiset.remove(next.getElement(), iCount);
                    z = true;
                } else {
                    z = z2;
                }
            } else {
                return z2;
            }
        }
    }

    /* JADX INFO: loaded from: classes3.dex */
    abstract class AbstractEntry<E> implements Multiset.Entry<E> {
        AbstractEntry() {
        }

        @Override // com.google.common.collect.Multiset.Entry
        public boolean equals(@Nullable Object obj) {
            if (!(obj instanceof Multiset.Entry)) {
                return false;
            }
            Multiset.Entry entry = (Multiset.Entry) obj;
            return getCount() == entry.getCount() && Objects.equal(getElement(), entry.getElement());
        }

        @Override // com.google.common.collect.Multiset.Entry
        public int hashCode() {
            E element = getElement();
            return (element == null ? 0 : element.hashCode()) ^ getCount();
        }

        @Override // com.google.common.collect.Multiset.Entry
        public String toString() {
            String strValueOf = String.valueOf(getElement());
            int count = getCount();
            return count == 1 ? strValueOf : strValueOf + " x " + count;
        }
    }

    static boolean equalsImpl(Multiset<?> multiset, @Nullable Object obj) {
        if (obj == multiset) {
            return true;
        }
        if (!(obj instanceof Multiset)) {
            return false;
        }
        Multiset multiset2 = (Multiset) obj;
        if (multiset.size() != multiset2.size() || multiset.entrySet().size() != multiset2.entrySet().size()) {
            return false;
        }
        for (Multiset.Entry entry : multiset2.entrySet()) {
            if (multiset.count(entry.getElement()) != entry.getCount()) {
                return false;
            }
        }
        return true;
    }

    static <E> boolean addAllImpl(Multiset<E> multiset, Collection<? extends E> collection) {
        if (collection.isEmpty()) {
            return false;
        }
        if (collection instanceof Multiset) {
            for (Multiset.Entry<E> entry : cast(collection).entrySet()) {
                multiset.add(entry.getElement(), entry.getCount());
            }
        } else {
            Iterators.addAll(multiset, collection.iterator());
        }
        return true;
    }

    static boolean removeAllImpl(Multiset<?> multiset, Collection<?> collection) {
        if (collection instanceof Multiset) {
            collection = ((Multiset) collection).elementSet();
        }
        return multiset.elementSet().removeAll(collection);
    }

    static boolean retainAllImpl(Multiset<?> multiset, Collection<?> collection) {
        Preconditions.checkNotNull(collection);
        if (collection instanceof Multiset) {
            collection = ((Multiset) collection).elementSet();
        }
        return multiset.elementSet().retainAll(collection);
    }

    static <E> int setCountImpl(Multiset<E> multiset, E e2, int i) {
        CollectPreconditions.checkNonnegative(i, "count");
        int iCount = multiset.count(e2);
        int i2 = i - iCount;
        if (i2 > 0) {
            multiset.add(e2, i2);
        } else if (i2 < 0) {
            multiset.remove(e2, -i2);
        }
        return iCount;
    }

    static <E> boolean setCountImpl(Multiset<E> multiset, E e2, int i, int i2) {
        CollectPreconditions.checkNonnegative(i, "oldCount");
        CollectPreconditions.checkNonnegative(i2, "newCount");
        if (multiset.count(e2) != i) {
            return false;
        }
        multiset.setCount(e2, i2);
        return true;
    }

    /* JADX INFO: loaded from: classes3.dex */
    abstract class ElementSet<E> extends Sets.ImprovedAbstractSet<E> {
        abstract Multiset<E> multiset();

        ElementSet() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            multiset().clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return multiset().contains(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean containsAll(Collection<?> collection) {
            return multiset().containsAll(collection);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return multiset().isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<E> iterator() {
            return new TransformedIterator<Multiset.Entry<E>, E>(multiset().entrySet().iterator()) { // from class: com.google.common.collect.Multisets.ElementSet.1
                /* JADX INFO: Access modifiers changed from: package-private */
                @Override // com.google.common.collect.TransformedIterator
                public E transform(Multiset.Entry<E> entry) {
                    return entry.getElement();
                }
            };
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            int iCount = multiset().count(obj);
            if (iCount <= 0) {
                return false;
            }
            multiset().remove(obj, iCount);
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return multiset().entrySet().size();
        }
    }

    /* JADX INFO: loaded from: classes3.dex */
    abstract class EntrySet<E> extends Sets.ImprovedAbstractSet<Multiset.Entry<E>> {
        abstract Multiset<E> multiset();

        EntrySet() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(@Nullable Object obj) {
            if (!(obj instanceof Multiset.Entry)) {
                return false;
            }
            Multiset.Entry entry = (Multiset.Entry) obj;
            return entry.getCount() > 0 && multiset().count(entry.getElement()) == entry.getCount();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            if (!(obj instanceof Multiset.Entry)) {
                return false;
            }
            Multiset.Entry entry = (Multiset.Entry) obj;
            Object element = entry.getElement();
            int count = entry.getCount();
            if (count != 0) {
                return multiset().setCount(element, count, 0);
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            multiset().clear();
        }
    }

    static <E> Iterator<E> iteratorImpl(Multiset<E> multiset) {
        return new MultisetIteratorImpl(multiset, multiset.entrySet().iterator());
    }

    /* JADX INFO: loaded from: classes3.dex */
    final class MultisetIteratorImpl<E> implements Iterator<E> {
        private boolean canRemove;
        private Multiset.Entry<E> currentEntry;
        private final Iterator<Multiset.Entry<E>> entryIterator;
        private int laterCount;
        private final Multiset<E> multiset;
        private int totalCount;

        MultisetIteratorImpl(Multiset<E> multiset, Iterator<Multiset.Entry<E>> it) {
            this.multiset = multiset;
            this.entryIterator = it;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.laterCount > 0 || this.entryIterator.hasNext();
        }

        @Override // java.util.Iterator
        public E next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            if (this.laterCount == 0) {
                this.currentEntry = this.entryIterator.next();
                int count = this.currentEntry.getCount();
                this.laterCount = count;
                this.totalCount = count;
            }
            this.laterCount--;
            this.canRemove = true;
            return this.currentEntry.getElement();
        }

        @Override // java.util.Iterator
        public void remove() {
            CollectPreconditions.checkRemove(this.canRemove);
            if (this.totalCount == 1) {
                this.entryIterator.remove();
            } else {
                this.multiset.remove(this.currentEntry.getElement());
            }
            this.totalCount--;
            this.canRemove = false;
        }
    }

    static int sizeImpl(Multiset<?> multiset) {
        long count = 0;
        Iterator<Multiset.Entry<?>> it = multiset.entrySet().iterator();
        while (true) {
            long j = count;
            if (it.hasNext()) {
                count = ((long) it.next().getCount()) + j;
            } else {
                return Ints.saturatedCast(j);
            }
        }
    }

    static <T> Multiset<T> cast(Iterable<T> iterable) {
        return (Multiset) iterable;
    }

    @Beta
    public static <E> ImmutableMultiset<E> copyHighestCountFirst(Multiset<E> multiset) {
        return ImmutableMultiset.copyFromEntries(DECREASING_COUNT_ORDERING.immutableSortedCopy(multiset.entrySet()));
    }
}
