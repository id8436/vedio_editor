package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import java.util.Set;
import java.util.SortedSet;

/* JADX INFO: loaded from: classes3.dex */
@GwtCompatible
final class Constraints {
    private Constraints() {
    }

    public static <E> Collection<E> constrainedCollection(Collection<E> collection, Constraint<? super E> constraint) {
        return new ConstrainedCollection(collection, constraint);
    }

    class ConstrainedCollection<E> extends ForwardingCollection<E> {
        private final Constraint<? super E> constraint;
        private final Collection<E> delegate;

        public ConstrainedCollection(Collection<E> collection, Constraint<? super E> constraint) {
            this.delegate = (Collection) Preconditions.checkNotNull(collection);
            this.constraint = (Constraint) Preconditions.checkNotNull(constraint);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.ForwardingCollection, com.google.common.collect.ForwardingObject
        public Collection<E> delegate() {
            return this.delegate;
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection
        public boolean add(E e2) {
            this.constraint.checkElement(e2);
            return this.delegate.add(e2);
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection
        public boolean addAll(Collection<? extends E> collection) {
            return this.delegate.addAll(Constraints.checkElements(collection, this.constraint));
        }
    }

    public static <E> Set<E> constrainedSet(Set<E> set, Constraint<? super E> constraint) {
        return new ConstrainedSet(set, constraint);
    }

    class ConstrainedSet<E> extends ForwardingSet<E> {
        private final Constraint<? super E> constraint;
        private final Set<E> delegate;

        public ConstrainedSet(Set<E> set, Constraint<? super E> constraint) {
            this.delegate = (Set) Preconditions.checkNotNull(set);
            this.constraint = (Constraint) Preconditions.checkNotNull(constraint);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.ForwardingSet, com.google.common.collect.ForwardingCollection, com.google.common.collect.ForwardingObject
        public Set<E> delegate() {
            return this.delegate;
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection
        public boolean add(E e2) {
            this.constraint.checkElement(e2);
            return this.delegate.add(e2);
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection
        public boolean addAll(Collection<? extends E> collection) {
            return this.delegate.addAll(Constraints.checkElements(collection, this.constraint));
        }
    }

    public static <E> SortedSet<E> constrainedSortedSet(SortedSet<E> sortedSet, Constraint<? super E> constraint) {
        return new ConstrainedSortedSet(sortedSet, constraint);
    }

    class ConstrainedSortedSet<E> extends ForwardingSortedSet<E> {
        final Constraint<? super E> constraint;
        final SortedSet<E> delegate;

        ConstrainedSortedSet(SortedSet<E> sortedSet, Constraint<? super E> constraint) {
            this.delegate = (SortedSet) Preconditions.checkNotNull(sortedSet);
            this.constraint = (Constraint) Preconditions.checkNotNull(constraint);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.ForwardingSortedSet, com.google.common.collect.ForwardingSet, com.google.common.collect.ForwardingCollection, com.google.common.collect.ForwardingObject
        public SortedSet<E> delegate() {
            return this.delegate;
        }

        @Override // com.google.common.collect.ForwardingSortedSet, java.util.SortedSet
        public SortedSet<E> headSet(E e2) {
            return Constraints.constrainedSortedSet(this.delegate.headSet(e2), this.constraint);
        }

        @Override // com.google.common.collect.ForwardingSortedSet, java.util.SortedSet
        public SortedSet<E> subSet(E e2, E e3) {
            return Constraints.constrainedSortedSet(this.delegate.subSet(e2, e3), this.constraint);
        }

        @Override // com.google.common.collect.ForwardingSortedSet, java.util.SortedSet
        public SortedSet<E> tailSet(E e2) {
            return Constraints.constrainedSortedSet(this.delegate.tailSet(e2), this.constraint);
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection
        public boolean add(E e2) {
            this.constraint.checkElement(e2);
            return this.delegate.add(e2);
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection
        public boolean addAll(Collection<? extends E> collection) {
            return this.delegate.addAll(Constraints.checkElements(collection, this.constraint));
        }
    }

    public static <E> List<E> constrainedList(List<E> list, Constraint<? super E> constraint) {
        return list instanceof RandomAccess ? new ConstrainedRandomAccessList(list, constraint) : new ConstrainedList(list, constraint);
    }

    @GwtCompatible
    class ConstrainedList<E> extends ForwardingList<E> {
        final Constraint<? super E> constraint;
        final List<E> delegate;

        ConstrainedList(List<E> list, Constraint<? super E> constraint) {
            this.delegate = (List) Preconditions.checkNotNull(list);
            this.constraint = (Constraint) Preconditions.checkNotNull(constraint);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.ForwardingList, com.google.common.collect.ForwardingCollection, com.google.common.collect.ForwardingObject
        public List<E> delegate() {
            return this.delegate;
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection
        public boolean add(E e2) {
            this.constraint.checkElement(e2);
            return this.delegate.add(e2);
        }

        @Override // com.google.common.collect.ForwardingList, java.util.List
        public void add(int i, E e2) {
            this.constraint.checkElement(e2);
            this.delegate.add(i, e2);
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection
        public boolean addAll(Collection<? extends E> collection) {
            return this.delegate.addAll(Constraints.checkElements(collection, this.constraint));
        }

        @Override // com.google.common.collect.ForwardingList, java.util.List
        public boolean addAll(int i, Collection<? extends E> collection) {
            return this.delegate.addAll(i, Constraints.checkElements(collection, this.constraint));
        }

        @Override // com.google.common.collect.ForwardingList, java.util.List
        public ListIterator<E> listIterator() {
            return Constraints.constrainedListIterator(this.delegate.listIterator(), this.constraint);
        }

        @Override // com.google.common.collect.ForwardingList, java.util.List
        public ListIterator<E> listIterator(int i) {
            return Constraints.constrainedListIterator(this.delegate.listIterator(i), this.constraint);
        }

        @Override // com.google.common.collect.ForwardingList, java.util.List
        public E set(int i, E e2) {
            this.constraint.checkElement(e2);
            return this.delegate.set(i, e2);
        }

        @Override // com.google.common.collect.ForwardingList, java.util.List
        public List<E> subList(int i, int i2) {
            return Constraints.constrainedList(this.delegate.subList(i, i2), this.constraint);
        }
    }

    class ConstrainedRandomAccessList<E> extends ConstrainedList<E> implements RandomAccess {
        ConstrainedRandomAccessList(List<E> list, Constraint<? super E> constraint) {
            super(list, constraint);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <E> ListIterator<E> constrainedListIterator(ListIterator<E> listIterator, Constraint<? super E> constraint) {
        return new ConstrainedListIterator(listIterator, constraint);
    }

    class ConstrainedListIterator<E> extends ForwardingListIterator<E> {
        private final Constraint<? super E> constraint;
        private final ListIterator<E> delegate;

        public ConstrainedListIterator(ListIterator<E> listIterator, Constraint<? super E> constraint) {
            this.delegate = listIterator;
            this.constraint = constraint;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.ForwardingListIterator, com.google.common.collect.ForwardingIterator, com.google.common.collect.ForwardingObject
        public ListIterator<E> delegate() {
            return this.delegate;
        }

        @Override // com.google.common.collect.ForwardingListIterator, java.util.ListIterator
        public void add(E e2) {
            this.constraint.checkElement(e2);
            this.delegate.add(e2);
        }

        @Override // com.google.common.collect.ForwardingListIterator, java.util.ListIterator
        public void set(E e2) {
            this.constraint.checkElement(e2);
            this.delegate.set(e2);
        }
    }

    static <E> Collection<E> constrainedTypePreservingCollection(Collection<E> collection, Constraint<E> constraint) {
        if (collection instanceof SortedSet) {
            return constrainedSortedSet((SortedSet) collection, constraint);
        }
        if (collection instanceof Set) {
            return constrainedSet((Set) collection, constraint);
        }
        if (collection instanceof List) {
            return constrainedList((List) collection, constraint);
        }
        return constrainedCollection(collection, constraint);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <E> Collection<E> checkElements(Collection<E> collection, Constraint<? super E> constraint) {
        ArrayList arrayListNewArrayList = Lists.newArrayList(collection);
        Iterator<E> it = arrayListNewArrayList.iterator();
        while (it.hasNext()) {
            constraint.checkElement(it.next());
        }
        return arrayListNewArrayList;
    }
}
