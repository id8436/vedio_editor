package com.google.common.collect;

import android.support.v7.widget.ActivityChooserView;
import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Iterator;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible(emulated = true)
public abstract class ImmutableCollection<E> extends AbstractCollection<E> implements Serializable {
    private transient ImmutableList<E> asList;

    abstract boolean isPartialView();

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public abstract UnmodifiableIterator<E> iterator();

    ImmutableCollection() {
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final Object[] toArray() {
        if (size() == 0) {
            return ObjectArrays.EMPTY_ARRAY;
        }
        Object[] objArr = new Object[size()];
        copyIntoArray(objArr, 0);
        return objArr;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final <T> T[] toArray(T[] tArr) {
        Preconditions.checkNotNull(tArr);
        int size = size();
        if (tArr.length < size) {
            tArr = (T[]) ObjectArrays.newArray(tArr, size);
        } else if (tArr.length > size) {
            tArr[size] = null;
        }
        copyIntoArray(tArr, 0);
        return tArr;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(@Nullable Object obj) {
        return obj != null && super.contains(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final boolean add(E e2) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final boolean remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final boolean addAll(Collection<? extends E> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final boolean removeAll(Collection<?> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final boolean retainAll(Collection<?> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    public ImmutableList<E> asList() {
        ImmutableList<E> immutableList = this.asList;
        if (immutableList != null) {
            return immutableList;
        }
        ImmutableList<E> immutableListCreateAsList = createAsList();
        this.asList = immutableListCreateAsList;
        return immutableListCreateAsList;
    }

    ImmutableList<E> createAsList() {
        switch (size()) {
            case 0:
                return ImmutableList.of();
            case 1:
                return ImmutableList.of((Object) iterator().next());
            default:
                return new RegularImmutableAsList(this, toArray());
        }
    }

    int copyIntoArray(Object[] objArr, int i) {
        Iterator it = iterator();
        while (it.hasNext()) {
            objArr[i] = it.next();
            i++;
        }
        return i;
    }

    Object writeReplace() {
        return new ImmutableList.SerializedForm(toArray());
    }

    /* JADX INFO: loaded from: classes3.dex */
    public abstract class Builder<E> {
        static final int DEFAULT_INITIAL_CAPACITY = 4;

        public abstract Builder<E> add(E e2);

        public abstract ImmutableCollection<E> build();

        static int expandedCapacity(int i, int i2) {
            if (i2 < 0) {
                throw new AssertionError("cannot store more than MAX_VALUE elements");
            }
            int iHighestOneBit = (i >> 1) + i + 1;
            if (iHighestOneBit < i2) {
                iHighestOneBit = Integer.highestOneBit(i2 - 1) << 1;
            }
            if (iHighestOneBit < 0) {
                return ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
            }
            return iHighestOneBit;
        }

        Builder() {
        }

        public Builder<E> add(E... eArr) {
            for (E e2 : eArr) {
                add(e2);
            }
            return this;
        }

        public Builder<E> addAll(Iterable<? extends E> iterable) {
            Iterator<? extends E> it = iterable.iterator();
            while (it.hasNext()) {
                add(it.next());
            }
            return this;
        }

        public Builder<E> addAll(Iterator<? extends E> it) {
            while (it.hasNext()) {
                add(it.next());
            }
            return this;
        }
    }

    /* JADX INFO: loaded from: classes3.dex */
    abstract class ArrayBasedBuilder<E> extends Builder<E> {
        Object[] contents;
        int size;

        ArrayBasedBuilder(int i) {
            CollectPreconditions.checkNonnegative(i, "initialCapacity");
            this.contents = new Object[i];
            this.size = 0;
        }

        private void ensureCapacity(int i) {
            if (this.contents.length < i) {
                this.contents = ObjectArrays.arraysCopyOf(this.contents, expandedCapacity(this.contents.length, i));
            }
        }

        @Override // com.google.common.collect.ImmutableCollection.Builder
        public ArrayBasedBuilder<E> add(E e2) {
            Preconditions.checkNotNull(e2);
            ensureCapacity(this.size + 1);
            Object[] objArr = this.contents;
            int i = this.size;
            this.size = i + 1;
            objArr[i] = e2;
            return this;
        }

        @Override // com.google.common.collect.ImmutableCollection.Builder
        public Builder<E> add(E... eArr) {
            ObjectArrays.checkElementsNotNull(eArr);
            ensureCapacity(this.size + eArr.length);
            System.arraycopy(eArr, 0, this.contents, this.size, eArr.length);
            this.size += eArr.length;
            return this;
        }

        @Override // com.google.common.collect.ImmutableCollection.Builder
        public Builder<E> addAll(Iterable<? extends E> iterable) {
            if (iterable instanceof Collection) {
                ensureCapacity(((Collection) iterable).size() + this.size);
            }
            super.addAll(iterable);
            return this;
        }
    }
}
