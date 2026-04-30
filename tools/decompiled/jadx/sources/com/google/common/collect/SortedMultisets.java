package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.collect.Multiset;
import com.google.common.collect.Multisets;
import java.util.Comparator;
import java.util.NoSuchElementException;
import java.util.SortedSet;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes3.dex */
@GwtCompatible(emulated = true)
final class SortedMultisets {
    private SortedMultisets() {
    }

    class ElementSet<E> extends Multisets.ElementSet<E> implements SortedSet<E> {
        private final SortedMultiset<E> multiset;

        ElementSet(SortedMultiset<E> sortedMultiset) {
            this.multiset = sortedMultiset;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.Multisets.ElementSet
        public final SortedMultiset<E> multiset() {
            return this.multiset;
        }

        @Override // java.util.SortedSet
        public Comparator<? super E> comparator() {
            return multiset().comparator();
        }

        @Override // java.util.SortedSet
        public SortedSet<E> subSet(E e2, E e3) {
            return multiset().subMultiset(e2, BoundType.CLOSED, e3, BoundType.OPEN).elementSet();
        }

        @Override // java.util.SortedSet
        public SortedSet<E> headSet(E e2) {
            return multiset().headMultiset(e2, BoundType.OPEN).elementSet();
        }

        @Override // java.util.SortedSet
        public SortedSet<E> tailSet(E e2) {
            return multiset().tailMultiset(e2, BoundType.CLOSED).elementSet();
        }

        @Override // java.util.SortedSet
        public E first() {
            return (E) SortedMultisets.getElementOrThrow(multiset().firstEntry());
        }

        @Override // java.util.SortedSet
        public E last() {
            return (E) SortedMultisets.getElementOrThrow(multiset().lastEntry());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <E> E getElementOrThrow(Multiset.Entry<E> entry) {
        if (entry == null) {
            throw new NoSuchElementException();
        }
        return entry.getElement();
    }

    private static <E> E getElementOrNull(@Nullable Multiset.Entry<E> entry) {
        if (entry == null) {
            return null;
        }
        return entry.getElement();
    }
}
