package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Function;
import com.google.common.base.Optional;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Queue;
import java.util.RandomAccess;
import java.util.Set;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible(emulated = true)
public final class Iterables {
    private Iterables() {
    }

    public static <T> Iterable<T> unmodifiableIterable(Iterable<T> iterable) {
        Preconditions.checkNotNull(iterable);
        return ((iterable instanceof UnmodifiableIterable) || (iterable instanceof ImmutableCollection)) ? iterable : new UnmodifiableIterable(iterable);
    }

    @Deprecated
    public static <E> Iterable<E> unmodifiableIterable(ImmutableCollection<E> immutableCollection) {
        return (Iterable) Preconditions.checkNotNull(immutableCollection);
    }

    /* JADX INFO: loaded from: classes3.dex */
    final class UnmodifiableIterable<T> extends FluentIterable<T> {
        private final Iterable<T> iterable;

        private UnmodifiableIterable(Iterable<T> iterable) {
            this.iterable = iterable;
        }

        @Override // java.lang.Iterable
        public Iterator<T> iterator() {
            return Iterators.unmodifiableIterator(this.iterable.iterator());
        }

        @Override // com.google.common.collect.FluentIterable
        public String toString() {
            return this.iterable.toString();
        }
    }

    public static int size(Iterable<?> iterable) {
        return iterable instanceof Collection ? ((Collection) iterable).size() : Iterators.size(iterable.iterator());
    }

    public static boolean contains(Iterable<?> iterable, @Nullable Object obj) {
        return iterable instanceof Collection ? Collections2.safeContains((Collection) iterable, obj) : Iterators.contains(iterable.iterator(), obj);
    }

    public static boolean removeAll(Iterable<?> iterable, Collection<?> collection) {
        return iterable instanceof Collection ? ((Collection) iterable).removeAll((Collection) Preconditions.checkNotNull(collection)) : Iterators.removeAll(iterable.iterator(), collection);
    }

    public static boolean retainAll(Iterable<?> iterable, Collection<?> collection) {
        return iterable instanceof Collection ? ((Collection) iterable).retainAll((Collection) Preconditions.checkNotNull(collection)) : Iterators.retainAll(iterable.iterator(), collection);
    }

    public static <T> boolean removeIf(Iterable<T> iterable, Predicate<? super T> predicate) {
        return ((iterable instanceof RandomAccess) && (iterable instanceof List)) ? removeIfFromRandomAccessList((List) iterable, (Predicate) Preconditions.checkNotNull(predicate)) : Iterators.removeIf(iterable.iterator(), predicate);
    }

    private static <T> boolean removeIfFromRandomAccessList(List<T> list, Predicate<? super T> predicate) {
        int i = 0;
        int i2 = 0;
        while (i2 < list.size()) {
            T t = list.get(i2);
            if (!predicate.apply(t)) {
                if (i2 > i) {
                    try {
                        list.set(i, t);
                    } catch (UnsupportedOperationException e2) {
                        slowRemoveIfForRemainingElements(list, predicate, i, i2);
                        return true;
                    }
                }
                i++;
            }
            i2++;
        }
        list.subList(i, list.size()).clear();
        return i2 != i;
    }

    private static <T> void slowRemoveIfForRemainingElements(List<T> list, Predicate<? super T> predicate, int i, int i2) {
        for (int size = list.size() - 1; size > i2; size--) {
            if (predicate.apply(list.get(size))) {
                list.remove(size);
            }
        }
        for (int i3 = i2 - 1; i3 >= i; i3--) {
            list.remove(i3);
        }
    }

    @Nullable
    static <T> T removeFirstMatching(Iterable<T> iterable, Predicate<? super T> predicate) {
        Preconditions.checkNotNull(predicate);
        Iterator<T> it = iterable.iterator();
        while (it.hasNext()) {
            T next = it.next();
            if (predicate.apply(next)) {
                it.remove();
                return next;
            }
        }
        return null;
    }

    public static boolean elementsEqual(Iterable<?> iterable, Iterable<?> iterable2) {
        if ((iterable instanceof Collection) && (iterable2 instanceof Collection) && ((Collection) iterable).size() != ((Collection) iterable2).size()) {
            return false;
        }
        return Iterators.elementsEqual(iterable.iterator(), iterable2.iterator());
    }

    public static String toString(Iterable<?> iterable) {
        return Iterators.toString(iterable.iterator());
    }

    public static <T> T getOnlyElement(Iterable<T> iterable) {
        return (T) Iterators.getOnlyElement(iterable.iterator());
    }

    @Nullable
    public static <T> T getOnlyElement(Iterable<? extends T> iterable, @Nullable T t) {
        return (T) Iterators.getOnlyElement(iterable.iterator(), t);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @GwtIncompatible("Array.newInstance(Class, int)")
    public static <T> T[] toArray(Iterable<? extends T> iterable, Class<T> cls) {
        Collection collection = toCollection(iterable);
        return (T[]) collection.toArray(ObjectArrays.newArray(cls, collection.size()));
    }

    static Object[] toArray(Iterable<?> iterable) {
        return toCollection(iterable).toArray();
    }

    private static <E> Collection<E> toCollection(Iterable<E> iterable) {
        return iterable instanceof Collection ? (Collection) iterable : Lists.newArrayList(iterable.iterator());
    }

    public static <T> boolean addAll(Collection<T> collection, Iterable<? extends T> iterable) {
        return iterable instanceof Collection ? collection.addAll(Collections2.cast(iterable)) : Iterators.addAll(collection, ((Iterable) Preconditions.checkNotNull(iterable)).iterator());
    }

    public static int frequency(Iterable<?> iterable, @Nullable Object obj) {
        if (iterable instanceof Multiset) {
            return ((Multiset) iterable).count(obj);
        }
        if (iterable instanceof Set) {
            return ((Set) iterable).contains(obj) ? 1 : 0;
        }
        return Iterators.frequency(iterable.iterator(), obj);
    }

    public static <T> Iterable<T> cycle(final Iterable<T> iterable) {
        Preconditions.checkNotNull(iterable);
        return new FluentIterable<T>() { // from class: com.google.common.collect.Iterables.1
            @Override // java.lang.Iterable
            public Iterator<T> iterator() {
                return Iterators.cycle(iterable);
            }

            @Override // com.google.common.collect.FluentIterable
            public String toString() {
                return iterable.toString() + " (cycled)";
            }
        };
    }

    public static <T> Iterable<T> cycle(T... tArr) {
        return cycle(Lists.newArrayList(tArr));
    }

    public static <T> Iterable<T> concat(Iterable<? extends T> iterable, Iterable<? extends T> iterable2) {
        return concat(ImmutableList.of(iterable, iterable2));
    }

    public static <T> Iterable<T> concat(Iterable<? extends T> iterable, Iterable<? extends T> iterable2, Iterable<? extends T> iterable3) {
        return concat(ImmutableList.of(iterable, iterable2, iterable3));
    }

    public static <T> Iterable<T> concat(Iterable<? extends T> iterable, Iterable<? extends T> iterable2, Iterable<? extends T> iterable3, Iterable<? extends T> iterable4) {
        return concat(ImmutableList.of(iterable, iterable2, iterable3, iterable4));
    }

    public static <T> Iterable<T> concat(Iterable<? extends T>... iterableArr) {
        return concat(ImmutableList.copyOf(iterableArr));
    }

    public static <T> Iterable<T> concat(final Iterable<? extends Iterable<? extends T>> iterable) {
        Preconditions.checkNotNull(iterable);
        return new FluentIterable<T>() { // from class: com.google.common.collect.Iterables.2
            @Override // java.lang.Iterable
            public Iterator<T> iterator() {
                return Iterators.concat(Iterables.iterators(iterable));
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <T> Iterator<Iterator<? extends T>> iterators(Iterable<? extends Iterable<? extends T>> iterable) {
        return new TransformedIterator<Iterable<? extends T>, Iterator<? extends T>>(iterable.iterator()) { // from class: com.google.common.collect.Iterables.3
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.google.common.collect.TransformedIterator
            public Iterator<? extends T> transform(Iterable<? extends T> iterable2) {
                return iterable2.iterator();
            }
        };
    }

    public static <T> Iterable<List<T>> partition(final Iterable<T> iterable, final int i) {
        Preconditions.checkNotNull(iterable);
        Preconditions.checkArgument(i > 0);
        return new FluentIterable<List<T>>() { // from class: com.google.common.collect.Iterables.4
            @Override // java.lang.Iterable
            public Iterator<List<T>> iterator() {
                return Iterators.partition(iterable.iterator(), i);
            }
        };
    }

    public static <T> Iterable<List<T>> paddedPartition(final Iterable<T> iterable, final int i) {
        Preconditions.checkNotNull(iterable);
        Preconditions.checkArgument(i > 0);
        return new FluentIterable<List<T>>() { // from class: com.google.common.collect.Iterables.5
            @Override // java.lang.Iterable
            public Iterator<List<T>> iterator() {
                return Iterators.paddedPartition(iterable.iterator(), i);
            }
        };
    }

    public static <T> Iterable<T> filter(final Iterable<T> iterable, final Predicate<? super T> predicate) {
        Preconditions.checkNotNull(iterable);
        Preconditions.checkNotNull(predicate);
        return new FluentIterable<T>() { // from class: com.google.common.collect.Iterables.6
            @Override // java.lang.Iterable
            public Iterator<T> iterator() {
                return Iterators.filter(iterable.iterator(), predicate);
            }
        };
    }

    @GwtIncompatible("Class.isInstance")
    public static <T> Iterable<T> filter(final Iterable<?> iterable, final Class<T> cls) {
        Preconditions.checkNotNull(iterable);
        Preconditions.checkNotNull(cls);
        return new FluentIterable<T>() { // from class: com.google.common.collect.Iterables.7
            @Override // java.lang.Iterable
            public Iterator<T> iterator() {
                return Iterators.filter((Iterator<?>) iterable.iterator(), cls);
            }
        };
    }

    public static <T> boolean any(Iterable<T> iterable, Predicate<? super T> predicate) {
        return Iterators.any(iterable.iterator(), predicate);
    }

    public static <T> boolean all(Iterable<T> iterable, Predicate<? super T> predicate) {
        return Iterators.all(iterable.iterator(), predicate);
    }

    public static <T> T find(Iterable<T> iterable, Predicate<? super T> predicate) {
        return (T) Iterators.find(iterable.iterator(), predicate);
    }

    @Nullable
    public static <T> T find(Iterable<? extends T> iterable, Predicate<? super T> predicate, @Nullable T t) {
        return (T) Iterators.find(iterable.iterator(), predicate, t);
    }

    public static <T> Optional<T> tryFind(Iterable<T> iterable, Predicate<? super T> predicate) {
        return Iterators.tryFind(iterable.iterator(), predicate);
    }

    public static <T> int indexOf(Iterable<T> iterable, Predicate<? super T> predicate) {
        return Iterators.indexOf(iterable.iterator(), predicate);
    }

    public static <F, T> Iterable<T> transform(final Iterable<F> iterable, final Function<? super F, ? extends T> function) {
        Preconditions.checkNotNull(iterable);
        Preconditions.checkNotNull(function);
        return new FluentIterable<T>() { // from class: com.google.common.collect.Iterables.8
            @Override // java.lang.Iterable
            public Iterator<T> iterator() {
                return Iterators.transform(iterable.iterator(), function);
            }
        };
    }

    public static <T> T get(Iterable<T> iterable, int i) {
        Preconditions.checkNotNull(iterable);
        return iterable instanceof List ? (T) ((List) iterable).get(i) : (T) Iterators.get(iterable.iterator(), i);
    }

    @Nullable
    public static <T> T get(Iterable<? extends T> iterable, int i, @Nullable T t) {
        Preconditions.checkNotNull(iterable);
        Iterators.checkNonnegative(i);
        if (iterable instanceof List) {
            List listCast = Lists.cast(iterable);
            return i < listCast.size() ? (T) listCast.get(i) : t;
        }
        Iterator<? extends T> it = iterable.iterator();
        Iterators.advance(it, i);
        return (T) Iterators.getNext(it, t);
    }

    @Nullable
    public static <T> T getFirst(Iterable<? extends T> iterable, @Nullable T t) {
        return (T) Iterators.getNext(iterable.iterator(), t);
    }

    public static <T> T getLast(Iterable<T> iterable) {
        if (!(iterable instanceof List)) {
            return (T) Iterators.getLast(iterable.iterator());
        }
        List list = (List) iterable;
        if (list.isEmpty()) {
            throw new NoSuchElementException();
        }
        return (T) getLastInNonemptyList(list);
    }

    @Nullable
    public static <T> T getLast(Iterable<? extends T> iterable, @Nullable T t) {
        if (iterable instanceof Collection) {
            if (!Collections2.cast(iterable).isEmpty()) {
                if (iterable instanceof List) {
                    return (T) getLastInNonemptyList(Lists.cast(iterable));
                }
            } else {
                return t;
            }
        }
        return (T) Iterators.getLast(iterable.iterator(), t);
    }

    private static <T> T getLastInNonemptyList(List<T> list) {
        return list.get(list.size() - 1);
    }

    public static <T> Iterable<T> skip(final Iterable<T> iterable, final int i) {
        Preconditions.checkNotNull(iterable);
        Preconditions.checkArgument(i >= 0, "number to skip cannot be negative");
        if (iterable instanceof List) {
            final List list = (List) iterable;
            return new FluentIterable<T>() { // from class: com.google.common.collect.Iterables.9
                @Override // java.lang.Iterable
                public Iterator<T> iterator() {
                    return list.subList(Math.min(list.size(), i), list.size()).iterator();
                }
            };
        }
        return new FluentIterable<T>() { // from class: com.google.common.collect.Iterables.10
            @Override // java.lang.Iterable
            public Iterator<T> iterator() {
                final Iterator<T> it = iterable.iterator();
                Iterators.advance(it, i);
                return new Iterator<T>() { // from class: com.google.common.collect.Iterables.10.1
                    boolean atStart = true;

                    @Override // java.util.Iterator
                    public boolean hasNext() {
                        return it.hasNext();
                    }

                    @Override // java.util.Iterator
                    public T next() {
                        T t = (T) it.next();
                        this.atStart = false;
                        return t;
                    }

                    @Override // java.util.Iterator
                    public void remove() {
                        CollectPreconditions.checkRemove(!this.atStart);
                        it.remove();
                    }
                };
            }
        };
    }

    public static <T> Iterable<T> limit(final Iterable<T> iterable, final int i) {
        Preconditions.checkNotNull(iterable);
        Preconditions.checkArgument(i >= 0, "limit is negative");
        return new FluentIterable<T>() { // from class: com.google.common.collect.Iterables.11
            @Override // java.lang.Iterable
            public Iterator<T> iterator() {
                return Iterators.limit(iterable.iterator(), i);
            }
        };
    }

    public static <T> Iterable<T> consumingIterable(final Iterable<T> iterable) {
        if (iterable instanceof Queue) {
            return new FluentIterable<T>() { // from class: com.google.common.collect.Iterables.12
                @Override // java.lang.Iterable
                public Iterator<T> iterator() {
                    return new ConsumingQueueIterator((Queue) iterable);
                }

                @Override // com.google.common.collect.FluentIterable
                public String toString() {
                    return "Iterables.consumingIterable(...)";
                }
            };
        }
        Preconditions.checkNotNull(iterable);
        return new FluentIterable<T>() { // from class: com.google.common.collect.Iterables.13
            @Override // java.lang.Iterable
            public Iterator<T> iterator() {
                return Iterators.consumingIterator(iterable.iterator());
            }

            @Override // com.google.common.collect.FluentIterable
            public String toString() {
                return "Iterables.consumingIterable(...)";
            }
        };
    }

    /* JADX INFO: loaded from: classes3.dex */
    class ConsumingQueueIterator<T> extends AbstractIterator<T> {
        private final Queue<T> queue;

        private ConsumingQueueIterator(Queue<T> queue) {
            this.queue = queue;
        }

        @Override // com.google.common.collect.AbstractIterator
        public T computeNext() {
            try {
                return this.queue.remove();
            } catch (NoSuchElementException e2) {
                return endOfData();
            }
        }
    }

    public static boolean isEmpty(Iterable<?> iterable) {
        if (iterable instanceof Collection) {
            return ((Collection) iterable).isEmpty();
        }
        return !iterable.iterator().hasNext();
    }

    @Beta
    public static <T> Iterable<T> mergeSorted(final Iterable<? extends Iterable<? extends T>> iterable, final Comparator<? super T> comparator) {
        Preconditions.checkNotNull(iterable, "iterables");
        Preconditions.checkNotNull(comparator, "comparator");
        return new UnmodifiableIterable(new FluentIterable<T>() { // from class: com.google.common.collect.Iterables.14
            @Override // java.lang.Iterable
            public Iterator<T> iterator() {
                return Iterators.mergeSorted(Iterables.transform(iterable, Iterables.toIterator()), comparator);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <T> Function<Iterable<? extends T>, Iterator<? extends T>> toIterator() {
        return new Function<Iterable<? extends T>, Iterator<? extends T>>() { // from class: com.google.common.collect.Iterables.15
            @Override // com.google.common.base.Function
            public Iterator<? extends T> apply(Iterable<? extends T> iterable) {
                return iterable.iterator();
            }
        };
    }
}
