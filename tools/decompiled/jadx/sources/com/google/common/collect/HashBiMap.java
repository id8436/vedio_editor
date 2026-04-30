package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.collect.Maps;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.AbstractMap;
import java.util.Arrays;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible(emulated = true)
public final class HashBiMap<K, V> extends AbstractMap<K, V> implements BiMap<K, V>, Serializable {
    private static final double LOAD_FACTOR = 1.0d;

    @GwtIncompatible("Not needed in emulated source")
    private static final long serialVersionUID = 0;
    private transient BiEntry<K, V>[] hashTableKToV;
    private transient BiEntry<K, V>[] hashTableVToK;
    private transient BiMap<V, K> inverse;
    private transient int mask;
    private transient int modCount;
    private transient int size;

    public static <K, V> HashBiMap<K, V> create() {
        return create(16);
    }

    public static <K, V> HashBiMap<K, V> create(int i) {
        return new HashBiMap<>(i);
    }

    public static <K, V> HashBiMap<K, V> create(Map<? extends K, ? extends V> map) {
        HashBiMap<K, V> hashBiMapCreate = create(map.size());
        hashBiMapCreate.putAll(map);
        return hashBiMapCreate;
    }

    final class BiEntry<K, V> extends ImmutableEntry<K, V> {
        final int keyHash;

        @Nullable
        BiEntry<K, V> nextInKToVBucket;

        @Nullable
        BiEntry<K, V> nextInVToKBucket;
        final int valueHash;

        BiEntry(K k, int i, V v, int i2) {
            super(k, v);
            this.keyHash = i;
            this.valueHash = i2;
        }
    }

    private HashBiMap(int i) {
        init(i);
    }

    private void init(int i) {
        CollectPreconditions.checkNonnegative(i, "expectedSize");
        int iClosedTableSize = Hashing.closedTableSize(i, LOAD_FACTOR);
        this.hashTableKToV = createTable(iClosedTableSize);
        this.hashTableVToK = createTable(iClosedTableSize);
        this.mask = iClosedTableSize - 1;
        this.modCount = 0;
        this.size = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void delete(BiEntry<K, V> biEntry) {
        BiEntry<K, V> biEntry2 = null;
        int i = biEntry.keyHash & this.mask;
        BiEntry<K, V> biEntry3 = null;
        for (BiEntry<K, V> biEntry4 = this.hashTableKToV[i]; biEntry4 != biEntry; biEntry4 = biEntry4.nextInKToVBucket) {
            biEntry3 = biEntry4;
        }
        if (biEntry3 == null) {
            this.hashTableKToV[i] = biEntry.nextInKToVBucket;
        } else {
            biEntry3.nextInKToVBucket = biEntry.nextInKToVBucket;
        }
        int i2 = this.mask & biEntry.valueHash;
        for (BiEntry<K, V> biEntry5 = this.hashTableVToK[i2]; biEntry5 != biEntry; biEntry5 = biEntry5.nextInVToKBucket) {
            biEntry2 = biEntry5;
        }
        if (biEntry2 == null) {
            this.hashTableVToK[i2] = biEntry.nextInVToKBucket;
        } else {
            biEntry2.nextInVToKBucket = biEntry.nextInVToKBucket;
        }
        this.size--;
        this.modCount++;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void insert(BiEntry<K, V> biEntry) {
        int i = biEntry.keyHash & this.mask;
        biEntry.nextInKToVBucket = this.hashTableKToV[i];
        this.hashTableKToV[i] = biEntry;
        int i2 = biEntry.valueHash & this.mask;
        biEntry.nextInVToKBucket = this.hashTableVToK[i2];
        this.hashTableVToK[i2] = biEntry;
        this.size++;
        this.modCount++;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int hash(@Nullable Object obj) {
        return Hashing.smear(obj == null ? 0 : obj.hashCode());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public BiEntry<K, V> seekByKey(@Nullable Object obj, int i) {
        for (BiEntry<K, V> biEntry = this.hashTableKToV[this.mask & i]; biEntry != null; biEntry = biEntry.nextInKToVBucket) {
            if (i == biEntry.keyHash && Objects.equal(obj, biEntry.key)) {
                return biEntry;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public BiEntry<K, V> seekByValue(@Nullable Object obj, int i) {
        for (BiEntry<K, V> biEntry = this.hashTableVToK[this.mask & i]; biEntry != null; biEntry = biEntry.nextInVToKBucket) {
            if (i == biEntry.valueHash && Objects.equal(obj, biEntry.value)) {
                return biEntry;
            }
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(@Nullable Object obj) {
        return seekByKey(obj, hash(obj)) != null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsValue(@Nullable Object obj) {
        return seekByValue(obj, hash(obj)) != null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    @Nullable
    public V get(@Nullable Object obj) {
        BiEntry<K, V> biEntrySeekByKey = seekByKey(obj, hash(obj));
        if (biEntrySeekByKey == null) {
            return null;
        }
        return biEntrySeekByKey.value;
    }

    @Override // java.util.AbstractMap, java.util.Map, com.google.common.collect.BiMap
    public V put(@Nullable K k, @Nullable V v) {
        return put(k, v, false);
    }

    @Override // com.google.common.collect.BiMap
    public V forcePut(@Nullable K k, @Nullable V v) {
        return put(k, v, true);
    }

    private V put(@Nullable K k, @Nullable V v, boolean z) {
        int iHash = hash(k);
        int iHash2 = hash(v);
        BiEntry<K, V> biEntrySeekByKey = seekByKey(k, iHash);
        if (biEntrySeekByKey == null || iHash2 != biEntrySeekByKey.valueHash || !Objects.equal(v, biEntrySeekByKey.value)) {
            BiEntry<K, V> biEntrySeekByValue = seekByValue(v, iHash2);
            if (biEntrySeekByValue != null) {
                if (z) {
                    delete(biEntrySeekByValue);
                } else {
                    throw new IllegalArgumentException("value already present: " + v);
                }
            }
            if (biEntrySeekByKey != null) {
                delete(biEntrySeekByKey);
            }
            insert(new BiEntry<>(k, iHash, v, iHash2));
            rehashIfNecessary();
            return biEntrySeekByKey == null ? null : biEntrySeekByKey.value;
        }
        return v;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Nullable
    public K putInverse(@Nullable V v, @Nullable K k, boolean z) {
        int iHash = hash(v);
        int iHash2 = hash(k);
        BiEntry<K, V> biEntrySeekByValue = seekByValue(v, iHash);
        if (biEntrySeekByValue == null || iHash2 != biEntrySeekByValue.keyHash || !Objects.equal(k, biEntrySeekByValue.key)) {
            BiEntry<K, V> biEntrySeekByKey = seekByKey(k, iHash2);
            if (biEntrySeekByKey != null) {
                if (z) {
                    delete(biEntrySeekByKey);
                } else {
                    throw new IllegalArgumentException("value already present: " + k);
                }
            }
            if (biEntrySeekByValue != null) {
                delete(biEntrySeekByValue);
            }
            insert(new BiEntry<>(k, iHash2, v, iHash));
            rehashIfNecessary();
            return biEntrySeekByValue == null ? null : biEntrySeekByValue.key;
        }
        return k;
    }

    private void rehashIfNecessary() {
        BiEntry<K, V>[] biEntryArr = this.hashTableKToV;
        if (Hashing.needsResizing(this.size, biEntryArr.length, LOAD_FACTOR)) {
            int length = biEntryArr.length * 2;
            this.hashTableKToV = createTable(length);
            this.hashTableVToK = createTable(length);
            this.mask = length - 1;
            this.size = 0;
            for (BiEntry<K, V> biEntry : biEntryArr) {
                while (biEntry != null) {
                    BiEntry<K, V> biEntry2 = biEntry.nextInKToVBucket;
                    insert(biEntry);
                    biEntry = biEntry2;
                }
            }
            this.modCount++;
        }
    }

    private BiEntry<K, V>[] createTable(int i) {
        return new BiEntry[i];
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V remove(@Nullable Object obj) {
        BiEntry<K, V> biEntrySeekByKey = seekByKey(obj, hash(obj));
        if (biEntrySeekByKey == null) {
            return null;
        }
        delete(biEntrySeekByKey);
        return biEntrySeekByKey.value;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        this.size = 0;
        Arrays.fill(this.hashTableKToV, (Object) null);
        Arrays.fill(this.hashTableVToK, (Object) null);
        this.modCount++;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.size;
    }

    /* JADX INFO: loaded from: classes3.dex */
    abstract class Itr<T> implements Iterator<T> {
        int expectedModCount;
        int nextBucket = 0;
        BiEntry<K, V> next = null;
        BiEntry<K, V> toRemove = null;

        abstract T output(BiEntry<K, V> biEntry);

        Itr() {
            this.expectedModCount = HashBiMap.this.modCount;
        }

        private void checkForConcurrentModification() {
            if (HashBiMap.this.modCount != this.expectedModCount) {
                throw new ConcurrentModificationException();
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            checkForConcurrentModification();
            if (this.next != null) {
                return true;
            }
            while (this.nextBucket < HashBiMap.this.hashTableKToV.length) {
                if (HashBiMap.this.hashTableKToV[this.nextBucket] != null) {
                    BiEntry<K, V>[] biEntryArr = HashBiMap.this.hashTableKToV;
                    int i = this.nextBucket;
                    this.nextBucket = i + 1;
                    this.next = biEntryArr[i];
                    return true;
                }
                this.nextBucket++;
            }
            return false;
        }

        @Override // java.util.Iterator
        public T next() {
            checkForConcurrentModification();
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            BiEntry<K, V> biEntry = this.next;
            this.next = biEntry.nextInKToVBucket;
            this.toRemove = biEntry;
            return output(biEntry);
        }

        @Override // java.util.Iterator
        public void remove() {
            checkForConcurrentModification();
            CollectPreconditions.checkRemove(this.toRemove != null);
            HashBiMap.this.delete(this.toRemove);
            this.expectedModCount = HashBiMap.this.modCount;
            this.toRemove = null;
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<K> keySet() {
        return new KeySet();
    }

    /* JADX INFO: loaded from: classes3.dex */
    final class KeySet extends Maps.KeySet<K, V> {
        KeySet() {
            super(HashBiMap.this);
        }

        @Override // com.google.common.collect.Maps.KeySet, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<K> iterator() {
            return new HashBiMap<K, V>.Itr<K>() { // from class: com.google.common.collect.HashBiMap.KeySet.1
                {
                    HashBiMap hashBiMap = HashBiMap.this;
                }

                @Override // com.google.common.collect.HashBiMap.Itr
                K output(BiEntry<K, V> biEntry) {
                    return biEntry.key;
                }
            };
        }

        @Override // com.google.common.collect.Maps.KeySet, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(@Nullable Object obj) {
            BiEntry biEntrySeekByKey = HashBiMap.this.seekByKey(obj, HashBiMap.hash(obj));
            if (biEntrySeekByKey != null) {
                HashBiMap.this.delete(biEntrySeekByKey);
                return true;
            }
            return false;
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<V> values() {
        return inverse().keySet();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        return new EntrySet();
    }

    /* JADX INFO: loaded from: classes3.dex */
    final class EntrySet extends Maps.EntrySet<K, V> {
        private EntrySet() {
        }

        @Override // com.google.common.collect.Maps.EntrySet
        Map<K, V> map() {
            return HashBiMap.this;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            return new HashBiMap<K, V>.Itr<Map.Entry<K, V>>() { // from class: com.google.common.collect.HashBiMap.EntrySet.1
                {
                    HashBiMap hashBiMap = HashBiMap.this;
                }

                /* JADX INFO: Access modifiers changed from: package-private */
                @Override // com.google.common.collect.HashBiMap.Itr
                public Map.Entry<K, V> output(BiEntry<K, V> biEntry) {
                    return new MapEntry(biEntry);
                }

                /* JADX INFO: renamed from: com.google.common.collect.HashBiMap$EntrySet$1$MapEntry */
                class MapEntry extends AbstractMapEntry<K, V> {
                    BiEntry<K, V> delegate;

                    MapEntry(BiEntry<K, V> biEntry) {
                        this.delegate = biEntry;
                    }

                    @Override // com.google.common.collect.AbstractMapEntry, java.util.Map.Entry
                    public K getKey() {
                        return this.delegate.key;
                    }

                    @Override // com.google.common.collect.AbstractMapEntry, java.util.Map.Entry
                    public V getValue() {
                        return this.delegate.value;
                    }

                    @Override // com.google.common.collect.AbstractMapEntry, java.util.Map.Entry
                    public V setValue(V v) {
                        V v2 = this.delegate.value;
                        int iHash = HashBiMap.hash(v);
                        if (iHash != this.delegate.valueHash || !Objects.equal(v, v2)) {
                            Preconditions.checkArgument(HashBiMap.this.seekByValue(v, iHash) == null, "value already present: %s", v);
                            HashBiMap.this.delete(this.delegate);
                            BiEntry<K, V> biEntry = new BiEntry<>(this.delegate.key, this.delegate.keyHash, v, iHash);
                            HashBiMap.this.insert(biEntry);
                            AnonymousClass1.this.expectedModCount = HashBiMap.this.modCount;
                            if (AnonymousClass1.this.toRemove == this.delegate) {
                                AnonymousClass1.this.toRemove = biEntry;
                            }
                            this.delegate = biEntry;
                            return v2;
                        }
                        return v;
                    }
                }
            };
        }
    }

    @Override // com.google.common.collect.BiMap
    public BiMap<V, K> inverse() {
        if (this.inverse != null) {
            return this.inverse;
        }
        Inverse inverse = new Inverse();
        this.inverse = inverse;
        return inverse;
    }

    /* JADX INFO: loaded from: classes3.dex */
    final class Inverse extends AbstractMap<V, K> implements BiMap<V, K>, Serializable {
        private Inverse() {
        }

        BiMap<K, V> forward() {
            return HashBiMap.this;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public int size() {
            return HashBiMap.this.size;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public void clear() {
            forward().clear();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(@Nullable Object obj) {
            return forward().containsValue(obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public K get(@Nullable Object obj) {
            BiEntry biEntrySeekByValue = HashBiMap.this.seekByValue(obj, HashBiMap.hash(obj));
            if (biEntrySeekByValue == null) {
                return null;
            }
            return biEntrySeekByValue.key;
        }

        @Override // java.util.AbstractMap, java.util.Map, com.google.common.collect.BiMap
        public K put(@Nullable V v, @Nullable K k) {
            return (K) HashBiMap.this.putInverse(v, k, false);
        }

        @Override // com.google.common.collect.BiMap
        public K forcePut(@Nullable V v, @Nullable K k) {
            return (K) HashBiMap.this.putInverse(v, k, true);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public K remove(@Nullable Object obj) {
            BiEntry biEntrySeekByValue = HashBiMap.this.seekByValue(obj, HashBiMap.hash(obj));
            if (biEntrySeekByValue != null) {
                HashBiMap.this.delete(biEntrySeekByValue);
                return biEntrySeekByValue.key;
            }
            return null;
        }

        @Override // com.google.common.collect.BiMap
        public BiMap<K, V> inverse() {
            return forward();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Set<V> keySet() {
            return new InverseKeySet();
        }

        final class InverseKeySet extends Maps.KeySet<V, K> {
            InverseKeySet() {
                super(Inverse.this);
            }

            @Override // com.google.common.collect.Maps.KeySet, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean remove(@Nullable Object obj) {
                BiEntry biEntrySeekByValue = HashBiMap.this.seekByValue(obj, HashBiMap.hash(obj));
                if (biEntrySeekByValue != null) {
                    HashBiMap.this.delete(biEntrySeekByValue);
                    return true;
                }
                return false;
            }

            @Override // com.google.common.collect.Maps.KeySet, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public Iterator<V> iterator() {
                return new HashBiMap<K, V>.Itr<V>() { // from class: com.google.common.collect.HashBiMap.Inverse.InverseKeySet.1
                    {
                        HashBiMap hashBiMap = HashBiMap.this;
                    }

                    @Override // com.google.common.collect.HashBiMap.Itr
                    V output(BiEntry<K, V> biEntry) {
                        return biEntry.value;
                    }
                };
            }
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Set<K> values() {
            return forward().keySet();
        }

        /* JADX INFO: renamed from: com.google.common.collect.HashBiMap$Inverse$1, reason: invalid class name */
        class AnonymousClass1 extends Maps.EntrySet<V, K> {
            AnonymousClass1() {
            }

            @Override // com.google.common.collect.Maps.EntrySet
            Map<V, K> map() {
                return Inverse.this;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public Iterator<Map.Entry<V, K>> iterator() {
                return new HashBiMap<K, V>.Itr<Map.Entry<V, K>>() { // from class: com.google.common.collect.HashBiMap.Inverse.1.1
                    {
                        HashBiMap hashBiMap = HashBiMap.this;
                    }

                    /* JADX INFO: Access modifiers changed from: package-private */
                    @Override // com.google.common.collect.HashBiMap.Itr
                    public Map.Entry<V, K> output(BiEntry<K, V> biEntry) {
                        return new InverseEntry(biEntry);
                    }

                    /* JADX INFO: renamed from: com.google.common.collect.HashBiMap$Inverse$1$1$InverseEntry */
                    class InverseEntry extends AbstractMapEntry<V, K> {
                        BiEntry<K, V> delegate;

                        InverseEntry(BiEntry<K, V> biEntry) {
                            this.delegate = biEntry;
                        }

                        @Override // com.google.common.collect.AbstractMapEntry, java.util.Map.Entry
                        public V getKey() {
                            return this.delegate.value;
                        }

                        @Override // com.google.common.collect.AbstractMapEntry, java.util.Map.Entry
                        public K getValue() {
                            return this.delegate.key;
                        }

                        @Override // com.google.common.collect.AbstractMapEntry, java.util.Map.Entry
                        public K setValue(K k) {
                            K k2 = this.delegate.key;
                            int iHash = HashBiMap.hash(k);
                            if (iHash != this.delegate.keyHash || !Objects.equal(k, k2)) {
                                Preconditions.checkArgument(HashBiMap.this.seekByKey(k, iHash) == null, "value already present: %s", k);
                                HashBiMap.this.delete(this.delegate);
                                HashBiMap.this.insert(new BiEntry(k, iHash, this.delegate.value, this.delegate.valueHash));
                                C01101.this.expectedModCount = HashBiMap.this.modCount;
                                return k2;
                            }
                            return k;
                        }
                    }
                };
            }
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Set<Map.Entry<V, K>> entrySet() {
            return new AnonymousClass1();
        }

        Object writeReplace() {
            return new InverseSerializedForm(HashBiMap.this);
        }
    }

    /* JADX INFO: loaded from: classes3.dex */
    final class InverseSerializedForm<K, V> implements Serializable {
        private final HashBiMap<K, V> bimap;

        InverseSerializedForm(HashBiMap<K, V> hashBiMap) {
            this.bimap = hashBiMap;
        }

        Object readResolve() {
            return this.bimap.inverse();
        }
    }

    @GwtIncompatible("java.io.ObjectOutputStream")
    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        Serialization.writeMap(this, objectOutputStream);
    }

    @GwtIncompatible("java.io.ObjectInputStream")
    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        int count = Serialization.readCount(objectInputStream);
        init(count);
        Serialization.populateMap(this, objectInputStream, count);
    }
}
