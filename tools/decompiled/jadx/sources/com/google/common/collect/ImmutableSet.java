package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableCollection;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.Set;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes3.dex */
@GwtCompatible(emulated = true, serializable = true)
public abstract class ImmutableSet<E> extends ImmutableCollection<E> implements Set<E> {
    private static final int CUTOFF = 751619276;
    private static final double DESIRED_LOAD_FACTOR = 0.7d;
    static final int MAX_TABLE_SIZE = 1073741824;

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public abstract UnmodifiableIterator<E> iterator();

    public static <E> ImmutableSet<E> of() {
        return EmptyImmutableSet.INSTANCE;
    }

    public static <E> ImmutableSet<E> of(E e2) {
        return new SingletonImmutableSet(e2);
    }

    public static <E> ImmutableSet<E> of(E e2, E e3) {
        return construct(2, e2, e3);
    }

    public static <E> ImmutableSet<E> of(E e2, E e3, E e4) {
        return construct(3, e2, e3, e4);
    }

    public static <E> ImmutableSet<E> of(E e2, E e3, E e4, E e5) {
        return construct(4, e2, e3, e4, e5);
    }

    public static <E> ImmutableSet<E> of(E e2, E e3, E e4, E e5, E e6) {
        return construct(5, e2, e3, e4, e5, e6);
    }

    public static <E> ImmutableSet<E> of(E e2, E e3, E e4, E e5, E e6, E e7, E... eArr) {
        Object[] objArr = new Object[eArr.length + 6];
        objArr[0] = e2;
        objArr[1] = e3;
        objArr[2] = e4;
        objArr[3] = e5;
        objArr[4] = e6;
        objArr[5] = e7;
        System.arraycopy(eArr, 0, objArr, 6, eArr.length);
        return construct(objArr.length, objArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <E> ImmutableSet<E> construct(int i, Object... objArr) {
        int i2;
        int i3;
        switch (i) {
            case 0:
                return of();
            case 1:
                return of(objArr[0]);
            default:
                int iChooseTableSize = chooseTableSize(i);
                Object[] objArr2 = new Object[iChooseTableSize];
                int i4 = iChooseTableSize - 1;
                int i5 = 0;
                int i6 = 0;
                int i7 = 0;
                while (i5 < i) {
                    Object objCheckElementNotNull = ObjectArrays.checkElementNotNull(objArr[i5], i5);
                    int iHashCode = objCheckElementNotNull.hashCode();
                    int iSmear = Hashing.smear(iHashCode);
                    while (true) {
                        int i8 = iSmear & i4;
                        Object obj = objArr2[i8];
                        if (obj == null) {
                            i2 = i6 + 1;
                            objArr[i6] = objCheckElementNotNull;
                            objArr2[i8] = objCheckElementNotNull;
                            i3 = i7 + iHashCode;
                        } else if (obj.equals(objCheckElementNotNull)) {
                            i2 = i6;
                            i3 = i7;
                        } else {
                            iSmear++;
                        }
                    }
                    i5++;
                    i7 = i3;
                    i6 = i2;
                }
                Arrays.fill(objArr, i6, i, (Object) null);
                if (i6 == 1) {
                    return new SingletonImmutableSet(objArr[0], i7);
                }
                if (iChooseTableSize != chooseTableSize(i6)) {
                    return construct(i6, objArr);
                }
                if (i6 < objArr.length) {
                    objArr = ObjectArrays.arraysCopyOf(objArr, i6);
                }
                return new RegularImmutableSet(objArr, i7, objArr2, i4);
        }
    }

    @VisibleForTesting
    static int chooseTableSize(int i) {
        if (i < CUTOFF) {
            int iHighestOneBit = Integer.highestOneBit(i - 1);
            do {
                iHighestOneBit <<= 1;
            } while (((double) iHighestOneBit) * DESIRED_LOAD_FACTOR < i);
            return iHighestOneBit;
        }
        Preconditions.checkArgument(i < 1073741824, "collection too large");
        return 1073741824;
    }

    public static <E> ImmutableSet<E> copyOf(E[] eArr) {
        switch (eArr.length) {
            case 0:
                return of();
            case 1:
                return of((Object) eArr[0]);
            default:
                return construct(eArr.length, (Object[]) eArr.clone());
        }
    }

    public static <E> ImmutableSet<E> copyOf(Iterable<? extends E> iterable) {
        return iterable instanceof Collection ? copyOf(Collections2.cast(iterable)) : copyOf(iterable.iterator());
    }

    public static <E> ImmutableSet<E> copyOf(Iterator<? extends E> it) {
        if (!it.hasNext()) {
            return of();
        }
        E next = it.next();
        if (!it.hasNext()) {
            return of((Object) next);
        }
        return new Builder().add((Object) next).addAll((Iterator) it).build();
    }

    public static <E> ImmutableSet<E> copyOf(Collection<? extends E> collection) {
        if ((collection instanceof ImmutableSet) && !(collection instanceof ImmutableSortedSet)) {
            ImmutableSet<E> immutableSet = (ImmutableSet) collection;
            if (!immutableSet.isPartialView()) {
                return immutableSet;
            }
        } else if (collection instanceof EnumSet) {
            return copyOfEnumSet((EnumSet) collection);
        }
        Object[] array = collection.toArray();
        return construct(array.length, array);
    }

    private static <E extends Enum<E>> ImmutableSet<E> copyOfEnumSet(EnumSet<E> enumSet) {
        return ImmutableEnumSet.asImmutable(EnumSet.copyOf((EnumSet) enumSet));
    }

    ImmutableSet() {
    }

    boolean isHashCodeFast() {
        return false;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof ImmutableSet) && isHashCodeFast() && ((ImmutableSet) obj).isHashCodeFast() && hashCode() != obj.hashCode()) {
            return false;
        }
        return Sets.equalsImpl(this, obj);
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        return Sets.hashCodeImpl(this);
    }

    class SerializedForm implements Serializable {
        private static final long serialVersionUID = 0;
        final Object[] elements;

        SerializedForm(Object[] objArr) {
            this.elements = objArr;
        }

        Object readResolve() {
            return ImmutableSet.copyOf(this.elements);
        }
    }

    @Override // com.google.common.collect.ImmutableCollection
    Object writeReplace() {
        return new SerializedForm(toArray());
    }

    public static <E> Builder<E> builder() {
        return new Builder<>();
    }

    public class Builder<E> extends ImmutableCollection.ArrayBasedBuilder<E> {
        public Builder() {
            this(4);
        }

        Builder(int i) {
            super(i);
        }

        @Override // com.google.common.collect.ImmutableCollection.ArrayBasedBuilder, com.google.common.collect.ImmutableCollection.Builder
        public Builder<E> add(E e2) {
            super.add((Object) e2);
            return this;
        }

        @Override // com.google.common.collect.ImmutableCollection.ArrayBasedBuilder, com.google.common.collect.ImmutableCollection.Builder
        public Builder<E> add(E... eArr) {
            super.add((Object[]) eArr);
            return this;
        }

        @Override // com.google.common.collect.ImmutableCollection.ArrayBasedBuilder, com.google.common.collect.ImmutableCollection.Builder
        public Builder<E> addAll(Iterable<? extends E> iterable) {
            super.addAll((Iterable) iterable);
            return this;
        }

        @Override // com.google.common.collect.ImmutableCollection.Builder
        public Builder<E> addAll(Iterator<? extends E> it) {
            super.addAll((Iterator) it);
            return this;
        }

        @Override // com.google.common.collect.ImmutableCollection.Builder
        public ImmutableSet<E> build() {
            ImmutableSet<E> immutableSetConstruct = ImmutableSet.construct(this.size, this.contents);
            this.size = immutableSetConstruct.size();
            return immutableSetConstruct;
        }
    }
}
