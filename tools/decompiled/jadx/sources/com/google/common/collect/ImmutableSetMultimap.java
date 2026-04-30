package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableMultimap;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible(emulated = true, serializable = true)
public class ImmutableSetMultimap<K, V> extends ImmutableMultimap<K, V> implements SetMultimap<K, V> {

    @GwtIncompatible("not needed in emulated source.")
    private static final long serialVersionUID = 0;
    private final transient ImmutableSet<V> emptySet;
    private transient ImmutableSet<Map.Entry<K, V>> entries;
    private transient ImmutableSetMultimap<V, K> inverse;

    public static <K, V> ImmutableSetMultimap<K, V> of() {
        return EmptyImmutableSetMultimap.INSTANCE;
    }

    public static <K, V> ImmutableSetMultimap<K, V> of(K k, V v) {
        Builder builder = builder();
        builder.put((Object) k, (Object) v);
        return builder.build();
    }

    public static <K, V> ImmutableSetMultimap<K, V> of(K k, V v, K k2, V v2) {
        Builder builder = builder();
        builder.put((Object) k, (Object) v);
        builder.put((Object) k2, (Object) v2);
        return builder.build();
    }

    public static <K, V> ImmutableSetMultimap<K, V> of(K k, V v, K k2, V v2, K k3, V v3) {
        Builder builder = builder();
        builder.put((Object) k, (Object) v);
        builder.put((Object) k2, (Object) v2);
        builder.put((Object) k3, (Object) v3);
        return builder.build();
    }

    public static <K, V> ImmutableSetMultimap<K, V> of(K k, V v, K k2, V v2, K k3, V v3, K k4, V v4) {
        Builder builder = builder();
        builder.put((Object) k, (Object) v);
        builder.put((Object) k2, (Object) v2);
        builder.put((Object) k3, (Object) v3);
        builder.put((Object) k4, (Object) v4);
        return builder.build();
    }

    public static <K, V> ImmutableSetMultimap<K, V> of(K k, V v, K k2, V v2, K k3, V v3, K k4, V v4, K k5, V v5) {
        Builder builder = builder();
        builder.put((Object) k, (Object) v);
        builder.put((Object) k2, (Object) v2);
        builder.put((Object) k3, (Object) v3);
        builder.put((Object) k4, (Object) v4);
        builder.put((Object) k5, (Object) v5);
        return builder.build();
    }

    public static <K, V> Builder<K, V> builder() {
        return new Builder<>();
    }

    /* JADX INFO: loaded from: classes3.dex */
    class BuilderMultimap<K, V> extends AbstractMapBasedMultimap<K, V> {
        private static final long serialVersionUID = 0;

        BuilderMultimap() {
            super(new LinkedHashMap());
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap
        Collection<V> createCollection() {
            return Sets.newLinkedHashSet();
        }
    }

    /* JADX INFO: loaded from: classes3.dex */
    public final class Builder<K, V> extends ImmutableMultimap.Builder<K, V> {
        public Builder() {
            this.builderMultimap = new BuilderMultimap();
        }

        @Override // com.google.common.collect.ImmutableMultimap.Builder
        public Builder<K, V> put(K k, V v) {
            this.builderMultimap.put((K) Preconditions.checkNotNull(k), (V) Preconditions.checkNotNull(v));
            return this;
        }

        @Override // com.google.common.collect.ImmutableMultimap.Builder
        public Builder<K, V> put(Map.Entry<? extends K, ? extends V> entry) {
            this.builderMultimap.put((K) Preconditions.checkNotNull(entry.getKey()), (V) Preconditions.checkNotNull(entry.getValue()));
            return this;
        }

        @Override // com.google.common.collect.ImmutableMultimap.Builder
        public Builder<K, V> putAll(K k, Iterable<? extends V> iterable) {
            Collection<V> collection = this.builderMultimap.get((K) Preconditions.checkNotNull(k));
            Iterator<? extends V> it = iterable.iterator();
            while (it.hasNext()) {
                collection.add(Preconditions.checkNotNull(it.next()));
            }
            return this;
        }

        @Override // com.google.common.collect.ImmutableMultimap.Builder
        public Builder<K, V> putAll(K k, V... vArr) {
            return putAll((Object) k, (Iterable) Arrays.asList(vArr));
        }

        @Override // com.google.common.collect.ImmutableMultimap.Builder
        public Builder<K, V> putAll(Multimap<? extends K, ? extends V> multimap) {
            for (Map.Entry<? extends K, Collection<? extends V>> entry : multimap.asMap().entrySet()) {
                putAll((Object) entry.getKey(), (Iterable) entry.getValue());
            }
            return this;
        }

        @Override // com.google.common.collect.ImmutableMultimap.Builder
        public Builder<K, V> orderKeysBy(Comparator<? super K> comparator) {
            this.keyComparator = (Comparator) Preconditions.checkNotNull(comparator);
            return this;
        }

        @Override // com.google.common.collect.ImmutableMultimap.Builder
        public Builder<K, V> orderValuesBy(Comparator<? super V> comparator) {
            super.orderValuesBy((Comparator) comparator);
            return this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.ImmutableMultimap.Builder
        public ImmutableSetMultimap<K, V> build() {
            if (this.keyComparator != null) {
                BuilderMultimap builderMultimap = new BuilderMultimap();
                ArrayList<Map.Entry> arrayListNewArrayList = Lists.newArrayList(this.builderMultimap.asMap().entrySet());
                Collections.sort(arrayListNewArrayList, Ordering.from(this.keyComparator).onKeys());
                for (Map.Entry entry : arrayListNewArrayList) {
                    builderMultimap.putAll(entry.getKey(), (Iterable) entry.getValue());
                }
                this.builderMultimap = builderMultimap;
            }
            return ImmutableSetMultimap.copyOf(this.builderMultimap, this.valueComparator);
        }
    }

    public static <K, V> ImmutableSetMultimap<K, V> copyOf(Multimap<? extends K, ? extends V> multimap) {
        return copyOf(multimap, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <K, V> ImmutableSetMultimap<K, V> copyOf(Multimap<? extends K, ? extends V> multimap, Comparator<? super V> comparator) {
        Preconditions.checkNotNull(multimap);
        if (multimap.isEmpty() && comparator == null) {
            return of();
        }
        if (multimap instanceof ImmutableSetMultimap) {
            ImmutableSetMultimap<K, V> immutableSetMultimap = (ImmutableSetMultimap) multimap;
            if (!immutableSetMultimap.isPartialView()) {
                return immutableSetMultimap;
            }
        }
        ImmutableMap.Builder builder = ImmutableMap.builder();
        int size = 0;
        Iterator<Map.Entry<? extends K, Collection<? extends V>>> it = multimap.asMap().entrySet().iterator();
        while (true) {
            int i = size;
            if (it.hasNext()) {
                Map.Entry<? extends K, Collection<? extends V>> next = it.next();
                K key = next.getKey();
                ImmutableSet immutableSetValueSet = valueSet(comparator, next.getValue());
                if (immutableSetValueSet.isEmpty()) {
                    size = i;
                } else {
                    builder.put(key, immutableSetValueSet);
                    size = immutableSetValueSet.size() + i;
                }
            } else {
                return new ImmutableSetMultimap<>(builder.build(), i, comparator);
            }
        }
    }

    ImmutableSetMultimap(ImmutableMap<K, ImmutableSet<V>> immutableMap, int i, @Nullable Comparator<? super V> comparator) {
        super(immutableMap, i);
        this.emptySet = emptySet(comparator);
    }

    @Override // com.google.common.collect.ImmutableMultimap, com.google.common.collect.Multimap
    public ImmutableSet<V> get(@Nullable K k) {
        return (ImmutableSet) Objects.firstNonNull((ImmutableSet) this.map.get(k), this.emptySet);
    }

    @Override // com.google.common.collect.ImmutableMultimap
    public ImmutableSetMultimap<V, K> inverse() {
        ImmutableSetMultimap<V, K> immutableSetMultimap = this.inverse;
        if (immutableSetMultimap != null) {
            return immutableSetMultimap;
        }
        ImmutableSetMultimap<V, K> immutableSetMultimapInvert = invert();
        this.inverse = immutableSetMultimapInvert;
        return immutableSetMultimapInvert;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private ImmutableSetMultimap<V, K> invert() {
        Builder builder = builder();
        for (Map.Entry entry : entries()) {
            builder.put(entry.getValue(), entry.getKey());
        }
        ImmutableSetMultimap<V, K> immutableSetMultimapBuild = builder.build();
        immutableSetMultimapBuild.inverse = this;
        return immutableSetMultimapBuild;
    }

    @Override // com.google.common.collect.ImmutableMultimap, com.google.common.collect.Multimap
    @Deprecated
    public ImmutableSet<V> removeAll(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.ImmutableMultimap, com.google.common.collect.AbstractMultimap, com.google.common.collect.Multimap
    @Deprecated
    public ImmutableSet<V> replaceValues(K k, Iterable<? extends V> iterable) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.ImmutableMultimap, com.google.common.collect.AbstractMultimap, com.google.common.collect.Multimap
    public ImmutableSet<Map.Entry<K, V>> entries() {
        ImmutableSet<Map.Entry<K, V>> immutableSet = this.entries;
        if (immutableSet != null) {
            return immutableSet;
        }
        EntrySet entrySet = new EntrySet(this);
        this.entries = entrySet;
        return entrySet;
    }

    /* JADX INFO: loaded from: classes3.dex */
    final class EntrySet<K, V> extends ImmutableSet<Map.Entry<K, V>> {
        private final transient ImmutableSetMultimap<K, V> multimap;

        EntrySet(ImmutableSetMultimap<K, V> immutableSetMultimap) {
            this.multimap = immutableSetMultimap;
        }

        @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(@Nullable Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            return this.multimap.containsEntry(entry.getKey(), entry.getValue());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return this.multimap.size();
        }

        @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public UnmodifiableIterator<Map.Entry<K, V>> iterator() {
            return this.multimap.entryIterator();
        }

        @Override // com.google.common.collect.ImmutableCollection
        boolean isPartialView() {
            return false;
        }
    }

    private static <V> ImmutableSet<V> valueSet(@Nullable Comparator<? super V> comparator, Collection<? extends V> collection) {
        return comparator == null ? ImmutableSet.copyOf((Collection) collection) : ImmutableSortedSet.copyOf((Comparator) comparator, (Collection) collection);
    }

    private static <V> ImmutableSet<V> emptySet(@Nullable Comparator<? super V> comparator) {
        return comparator == null ? ImmutableSet.of() : ImmutableSortedSet.emptySet(comparator);
    }

    @GwtIncompatible("java.io.ObjectOutputStream")
    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(valueComparator());
        Serialization.writeMultimap(this, objectOutputStream);
    }

    @Nullable
    Comparator<? super V> valueComparator() {
        if (this.emptySet instanceof ImmutableSortedSet) {
            return ((ImmutableSortedSet) this.emptySet).comparator();
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @GwtIncompatible("java.io.ObjectInputStream")
    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        Comparator comparator = (Comparator) objectInputStream.readObject();
        int i = objectInputStream.readInt();
        if (i < 0) {
            throw new InvalidObjectException("Invalid key count " + i);
        }
        ImmutableMap.Builder builder = ImmutableMap.builder();
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            Object object = objectInputStream.readObject();
            int i4 = objectInputStream.readInt();
            if (i4 <= 0) {
                throw new InvalidObjectException("Invalid value count " + i4);
            }
            Object[] objArr = new Object[i4];
            for (int i5 = 0; i5 < i4; i5++) {
                objArr[i5] = objectInputStream.readObject();
            }
            ImmutableSet immutableSetValueSet = valueSet(comparator, Arrays.asList(objArr));
            if (immutableSetValueSet.size() != objArr.length) {
                throw new InvalidObjectException("Duplicate key-value pairs exist for key " + object);
            }
            builder.put(object, immutableSetValueSet);
            i2 += i4;
        }
        try {
            ImmutableMultimap.FieldSettersHolder.MAP_FIELD_SETTER.set(this, builder.build());
            ImmutableMultimap.FieldSettersHolder.SIZE_FIELD_SETTER.set(this, i2);
            ImmutableMultimap.FieldSettersHolder.EMPTY_SET_FIELD_SETTER.set(this, emptySet(comparator));
        } catch (IllegalArgumentException e2) {
            throw ((InvalidObjectException) new InvalidObjectException(e2.getMessage()).initCause(e2));
        }
    }
}
