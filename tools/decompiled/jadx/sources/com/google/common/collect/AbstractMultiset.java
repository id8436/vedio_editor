package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Objects;
import com.google.common.collect.Multiset;
import com.google.common.collect.Multisets;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes3.dex */
@GwtCompatible
abstract class AbstractMultiset<E> extends AbstractCollection<E> implements Multiset<E> {
    private transient Set<E> elementSet;
    private transient Set<Multiset.Entry<E>> entrySet;

    abstract int distinctElements();

    abstract Iterator<Multiset.Entry<E>> entryIterator();

    AbstractMultiset() {
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public int size() {
        return Multisets.sizeImpl(this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean isEmpty() {
        return entrySet().isEmpty();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, com.google.common.collect.Multiset
    public boolean contains(@Nullable Object obj) {
        return count(obj) > 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, com.google.common.collect.Multiset
    public Iterator<E> iterator() {
        return Multisets.iteratorImpl(this);
    }

    public int count(@Nullable Object obj) {
        for (Multiset.Entry<E> entry : entrySet()) {
            if (Objects.equal(entry.getElement(), obj)) {
                return entry.getCount();
            }
        }
        return 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, com.google.common.collect.Multiset
    public boolean add(@Nullable E e2) {
        add(e2, 1);
        return true;
    }

    public int add(@Nullable E e2, int i) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, com.google.common.collect.Multiset
    public boolean remove(@Nullable Object obj) {
        return remove(obj, 1) > 0;
    }

    public int remove(@Nullable Object obj, int i) {
        throw new UnsupportedOperationException();
    }

    public int setCount(@Nullable E e2, int i) {
        return Multisets.setCountImpl(this, e2, i);
    }

    @Override // com.google.common.collect.Multiset
    public boolean setCount(@Nullable E e2, int i, int i2) {
        return Multisets.setCountImpl(this, e2, i, i2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean addAll(Collection<? extends E> collection) {
        return Multisets.addAllImpl(this, collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, com.google.common.collect.Multiset
    public boolean removeAll(Collection<?> collection) {
        return Multisets.removeAllImpl(this, collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, com.google.common.collect.Multiset
    public boolean retainAll(Collection<?> collection) {
        return Multisets.retainAllImpl(this, collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public void clear() {
        Iterators.clear(entryIterator());
    }

    @Override // com.google.common.collect.Multiset
    public Set<E> elementSet() {
        Set<E> set = this.elementSet;
        if (set == null) {
            Set<E> setCreateElementSet = createElementSet();
            this.elementSet = setCreateElementSet;
            return setCreateElementSet;
        }
        return set;
    }

    Set<E> createElementSet() {
        return new ElementSet();
    }

    class ElementSet extends Multisets.ElementSet<E> {
        ElementSet() {
        }

        @Override // com.google.common.collect.Multisets.ElementSet
        Multiset<E> multiset() {
            return AbstractMultiset.this;
        }
    }

    public Set<Multiset.Entry<E>> entrySet() {
        Set<Multiset.Entry<E>> set = this.entrySet;
        if (set != null) {
            return set;
        }
        Set<Multiset.Entry<E>> setCreateEntrySet = createEntrySet();
        this.entrySet = setCreateEntrySet;
        return setCreateEntrySet;
    }

    class EntrySet extends Multisets.EntrySet<E> {
        EntrySet() {
        }

        @Override // com.google.common.collect.Multisets.EntrySet
        Multiset<E> multiset() {
            return AbstractMultiset.this;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Multiset.Entry<E>> iterator() {
            return AbstractMultiset.this.entryIterator();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return AbstractMultiset.this.distinctElements();
        }
    }

    Set<Multiset.Entry<E>> createEntrySet() {
        return new EntrySet();
    }

    @Override // java.util.Collection, com.google.common.collect.Multiset
    public boolean equals(@Nullable Object obj) {
        return Multisets.equalsImpl(this, obj);
    }

    @Override // java.util.Collection, com.google.common.collect.Multiset
    public int hashCode() {
        return entrySet().hashCode();
    }

    @Override // java.util.AbstractCollection, com.google.common.collect.Multiset
    public String toString() {
        return entrySet().toString();
    }
}
