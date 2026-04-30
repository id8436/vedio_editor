package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.VisibleForTesting;

/* JADX INFO: loaded from: classes3.dex */
@GwtCompatible(emulated = true, serializable = true)
final class RegularImmutableSet<E> extends ImmutableSet<E> {
    private final Object[] elements;
    private final transient int hashCode;
    private final transient int mask;

    @VisibleForTesting
    final transient Object[] table;

    RegularImmutableSet(Object[] objArr, int i, Object[] objArr2, int i2) {
        this.elements = objArr;
        this.table = objArr2;
        this.mask = i2;
        this.hashCode = i;
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        if (obj == null) {
            return false;
        }
        int iSmear = Hashing.smear(obj.hashCode());
        while (true) {
            Object obj2 = this.table[this.mask & iSmear];
            if (obj2 == null) {
                return false;
            }
            if (!obj2.equals(obj)) {
                iSmear++;
            } else {
                return true;
            }
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return this.elements.length;
    }

    @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public UnmodifiableIterator<E> iterator() {
        return Iterators.forArray(this.elements);
    }

    @Override // com.google.common.collect.ImmutableCollection
    int copyIntoArray(Object[] objArr, int i) {
        System.arraycopy(this.elements, 0, objArr, i, this.elements.length);
        return this.elements.length + i;
    }

    @Override // com.google.common.collect.ImmutableCollection
    ImmutableList<E> createAsList() {
        return new RegularImmutableAsList(this, this.elements);
    }

    @Override // com.google.common.collect.ImmutableCollection
    boolean isPartialView() {
        return false;
    }

    @Override // com.google.common.collect.ImmutableSet, java.util.Collection, java.util.Set
    public int hashCode() {
        return this.hashCode;
    }

    @Override // com.google.common.collect.ImmutableSet
    boolean isHashCodeFast() {
        return true;
    }
}
