package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableCollection;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.Multiset;
import com.google.common.primitives.Ints;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible(emulated = true, serializable = true)
public abstract class ImmutableMultiset<E> extends ImmutableCollection<E> implements Multiset<E> {
    private static final ImmutableMultiset<Object> EMPTY = new RegularImmutableMultiset(ImmutableMap.of(), 0);
    private transient ImmutableSet<Multiset.Entry<E>> entrySet;

    abstract Multiset.Entry<E> getEntry(int i);

    public static <E> ImmutableMultiset<E> of() {
        return (ImmutableMultiset<E>) EMPTY;
    }

    public static <E> ImmutableMultiset<E> of(E e2) {
        return copyOfInternal(e2);
    }

    public static <E> ImmutableMultiset<E> of(E e2, E e3) {
        return copyOfInternal(e2, e3);
    }

    public static <E> ImmutableMultiset<E> of(E e2, E e3, E e4) {
        return copyOfInternal(e2, e3, e4);
    }

    public static <E> ImmutableMultiset<E> of(E e2, E e3, E e4, E e5) {
        return copyOfInternal(e2, e3, e4, e5);
    }

    public static <E> ImmutableMultiset<E> of(E e2, E e3, E e4, E e5, E e6) {
        return copyOfInternal(e2, e3, e4, e5, e6);
    }

    public static <E> ImmutableMultiset<E> of(E e2, E e3, E e4, E e5, E e6, E e7, E... eArr) {
        return new Builder().add((Object) e2).add((Object) e3).add((Object) e4).add((Object) e5).add((Object) e6).add((Object) e7).add((Object[]) eArr).build();
    }

    public static <E> ImmutableMultiset<E> copyOf(E[] eArr) {
        return copyOf(Arrays.asList(eArr));
    }

    public static <E> ImmutableMultiset<E> copyOf(Iterable<? extends E> iterable) {
        if (iterable instanceof ImmutableMultiset) {
            ImmutableMultiset<E> immutableMultiset = (ImmutableMultiset) iterable;
            if (!immutableMultiset.isPartialView()) {
                return immutableMultiset;
            }
        }
        return copyOfInternal(iterable instanceof Multiset ? Multisets.cast(iterable) : LinkedHashMultiset.create(iterable));
    }

    private static <E> ImmutableMultiset<E> copyOfInternal(E... eArr) {
        return copyOf(Arrays.asList(eArr));
    }

    private static <E> ImmutableMultiset<E> copyOfInternal(Multiset<? extends E> multiset) {
        return copyFromEntries(multiset.entrySet());
    }

    static <E> ImmutableMultiset<E> copyFromEntries(Collection<? extends Multiset.Entry<? extends E>> collection) {
        long j;
        ImmutableMap.Builder builder = ImmutableMap.builder();
        long j2 = 0;
        for (Multiset.Entry<? extends E> entry : collection) {
            int count = entry.getCount();
            if (count > 0) {
                builder.put(entry.getElement(), Integer.valueOf(count));
                j = ((long) count) + j2;
            } else {
                j = j2;
            }
            j2 = j;
        }
        return j2 == 0 ? of() : new RegularImmutableMultiset(builder.build(), Ints.saturatedCast(j2));
    }

    public static <E> ImmutableMultiset<E> copyOf(Iterator<? extends E> it) {
        LinkedHashMultiset linkedHashMultisetCreate = LinkedHashMultiset.create();
        Iterators.addAll(linkedHashMultisetCreate, it);
        return copyOfInternal(linkedHashMultisetCreate);
    }

    ImmutableMultiset() {
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public UnmodifiableIterator<E> iterator() {
        final UnmodifiableIterator<Multiset.Entry<E>> it = entrySet().iterator();
        return new UnmodifiableIterator<E>() { // from class: com.google.common.collect.ImmutableMultiset.1
            E element;
            int remaining;

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.remaining > 0 || it.hasNext();
            }

            @Override // java.util.Iterator
            public E next() {
                if (this.remaining <= 0) {
                    Multiset.Entry entry = (Multiset.Entry) it.next();
                    this.element = (E) entry.getElement();
                    this.remaining = entry.getCount();
                }
                this.remaining--;
                return this.element;
            }
        };
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(@Nullable Object obj) {
        return count(obj) > 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, com.google.common.collect.Multiset
    public boolean containsAll(Collection<?> collection) {
        return elementSet().containsAll(collection);
    }

    @Override // com.google.common.collect.Multiset
    @Deprecated
    public final int add(E e2, int i) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.Multiset
    @Deprecated
    public final int remove(Object obj, int i) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.Multiset
    @Deprecated
    public final int setCount(E e2, int i) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.Multiset
    @Deprecated
    public final boolean setCount(E e2, int i, int i2) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.ImmutableCollection
    @GwtIncompatible("not present in emulated superclass")
    int copyIntoArray(Object[] objArr, int i) {
        Iterator it = entrySet().iterator();
        while (it.hasNext()) {
            Multiset.Entry entry = (Multiset.Entry) it.next();
            Arrays.fill(objArr, i, entry.getCount() + i, entry.getElement());
            i += entry.getCount();
        }
        return i;
    }

    @Override // java.util.Collection, com.google.common.collect.Multiset
    public boolean equals(@Nullable Object obj) {
        return Multisets.equalsImpl(this, obj);
    }

    @Override // java.util.Collection, com.google.common.collect.Multiset
    public int hashCode() {
        return Sets.hashCodeImpl(entrySet());
    }

    @Override // java.util.AbstractCollection, com.google.common.collect.Multiset
    public String toString() {
        return entrySet().toString();
    }

    @Override // com.google.common.collect.Multiset
    public ImmutableSet<Multiset.Entry<E>> entrySet() {
        ImmutableSet<Multiset.Entry<E>> immutableSet = this.entrySet;
        if (immutableSet != null) {
            return immutableSet;
        }
        ImmutableSet<Multiset.Entry<E>> immutableSetCreateEntrySet = createEntrySet();
        this.entrySet = immutableSetCreateEntrySet;
        return immutableSetCreateEntrySet;
    }

    private final ImmutableSet<Multiset.Entry<E>> createEntrySet() {
        return isEmpty() ? ImmutableSet.of() : new EntrySet();
    }

    /* JADX INFO: loaded from: classes3.dex */
    final class EntrySet extends ImmutableSet<Multiset.Entry<E>> {
        private static final long serialVersionUID = 0;

        private EntrySet() {
        }

        @Override // com.google.common.collect.ImmutableCollection
        boolean isPartialView() {
            return ImmutableMultiset.this.isPartialView();
        }

        @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public UnmodifiableIterator<Multiset.Entry<E>> iterator() {
            return asList().iterator();
        }

        @Override // com.google.common.collect.ImmutableCollection
        ImmutableList<Multiset.Entry<E>> createAsList() {
            return new ImmutableAsList<Multiset.Entry<E>>() { // from class: com.google.common.collect.ImmutableMultiset.EntrySet.1
                @Override // java.util.List
                public Multiset.Entry<E> get(int i) {
                    return ImmutableMultiset.this.getEntry(i);
                }

                @Override // com.google.common.collect.ImmutableAsList
                ImmutableCollection<Multiset.Entry<E>> delegateCollection() {
                    return EntrySet.this;
                }
            };
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return ImmutableMultiset.this.elementSet().size();
        }

        @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            if (!(obj instanceof Multiset.Entry)) {
                return false;
            }
            Multiset.Entry entry = (Multiset.Entry) obj;
            return entry.getCount() > 0 && ImmutableMultiset.this.count(entry.getElement()) == entry.getCount();
        }

        @Override // com.google.common.collect.ImmutableSet, java.util.Collection, java.util.Set
        public int hashCode() {
            return ImmutableMultiset.this.hashCode();
        }

        @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection
        Object writeReplace() {
            return new EntrySetSerializedForm(ImmutableMultiset.this);
        }
    }

    /* JADX INFO: loaded from: classes3.dex */
    class EntrySetSerializedForm<E> implements Serializable {
        final ImmutableMultiset<E> multiset;

        EntrySetSerializedForm(ImmutableMultiset<E> immutableMultiset) {
            this.multiset = immutableMultiset;
        }

        Object readResolve() {
            return this.multiset.entrySet();
        }
    }

    /* JADX INFO: loaded from: classes3.dex */
    class SerializedForm implements Serializable {
        private static final long serialVersionUID = 0;
        final int[] counts;
        final Object[] elements;

        SerializedForm(Multiset<?> multiset) {
            int size = multiset.entrySet().size();
            this.elements = new Object[size];
            this.counts = new int[size];
            int i = 0;
            Iterator<Multiset.Entry<?>> it = multiset.entrySet().iterator();
            while (true) {
                int i2 = i;
                if (it.hasNext()) {
                    Multiset.Entry<?> next = it.next();
                    this.elements[i2] = next.getElement();
                    this.counts[i2] = next.getCount();
                    i = i2 + 1;
                } else {
                    return;
                }
            }
        }

        Object readResolve() {
            LinkedHashMultiset linkedHashMultisetCreate = LinkedHashMultiset.create(this.elements.length);
            for (int i = 0; i < this.elements.length; i++) {
                linkedHashMultisetCreate.add(this.elements[i], this.counts[i]);
            }
            return ImmutableMultiset.copyOf(linkedHashMultisetCreate);
        }
    }

    @Override // com.google.common.collect.ImmutableCollection
    Object writeReplace() {
        return new SerializedForm(this);
    }

    public static <E> Builder<E> builder() {
        return new Builder<>();
    }

    /* JADX INFO: loaded from: classes3.dex */
    public class Builder<E> extends ImmutableCollection.Builder<E> {
        final Multiset<E> contents;

        public Builder() {
            this(LinkedHashMultiset.create());
        }

        Builder(Multiset<E> multiset) {
            this.contents = multiset;
        }

        @Override // com.google.common.collect.ImmutableCollection.Builder
        public Builder<E> add(E e2) {
            this.contents.add((E) Preconditions.checkNotNull(e2));
            return this;
        }

        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        public Builder<E> addCopies(E e2, int i) {
            this.contents.add((E) Preconditions.checkNotNull(e2), i);
            return this;
        }

        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        public Builder<E> setCount(E e2, int i) {
            this.contents.setCount((E) Preconditions.checkNotNull(e2), i);
            return this;
        }

        @Override // com.google.common.collect.ImmutableCollection.Builder
        public Builder<E> add(E... eArr) {
            super.add((Object[]) eArr);
            return this;
        }

        @Override // com.google.common.collect.ImmutableCollection.Builder
        public Builder<E> addAll(Iterable<? extends E> iterable) {
            if (iterable instanceof Multiset) {
                for (Multiset.Entry<E> entry : Multisets.cast(iterable).entrySet()) {
                    addCopies(entry.getElement(), entry.getCount());
                }
            } else {
                super.addAll((Iterable) iterable);
            }
            return this;
        }

        @Override // com.google.common.collect.ImmutableCollection.Builder
        public Builder<E> addAll(Iterator<? extends E> it) {
            super.addAll((Iterator) it);
            return this;
        }

        @Override // com.google.common.collect.ImmutableCollection.Builder
        public ImmutableMultiset<E> build() {
            return ImmutableMultiset.copyOf(this.contents);
        }
    }
}
