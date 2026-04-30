package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.collect.ImmutableMapEntry;
import java.io.Serializable;
import java.util.Map;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible(emulated = true, serializable = true)
class RegularImmutableBiMap<K, V> extends ImmutableBiMap<K, V> {
    static final double MAX_LOAD_FACTOR = 1.2d;
    private final transient ImmutableMapEntry<K, V>[] entries;
    private final transient int hashCode;
    private transient ImmutableBiMap<V, K> inverse;
    private final transient ImmutableMapEntry<K, V>[] keyTable;
    private final transient int mask;
    private final transient ImmutableMapEntry<K, V>[] valueTable;

    RegularImmutableBiMap(ImmutableMapEntry.TerminalEntry<?, ?>... terminalEntryArr) {
        this(terminalEntryArr.length, terminalEntryArr);
    }

    RegularImmutableBiMap(int i, ImmutableMapEntry.TerminalEntry<?, ?>[] terminalEntryArr) {
        int iClosedTableSize = Hashing.closedTableSize(i, MAX_LOAD_FACTOR);
        this.mask = iClosedTableSize - 1;
        ImmutableMapEntry<K, V>[] immutableMapEntryArrCreateEntryArray = createEntryArray(iClosedTableSize);
        ImmutableMapEntry<K, V>[] immutableMapEntryArrCreateEntryArray2 = createEntryArray(iClosedTableSize);
        ImmutableMapEntry<K, V>[] immutableMapEntryArrCreateEntryArray3 = createEntryArray(i);
        int i2 = 0;
        int i3 = 0;
        while (true) {
            int i4 = i3;
            int i5 = i2;
            if (i4 < i) {
                ImmutableMapEntry.TerminalEntry<?, ?> terminalEntry = terminalEntryArr[i4];
                Object key = terminalEntry.getKey();
                Object value = terminalEntry.getValue();
                int iHashCode = key.hashCode();
                int iHashCode2 = value.hashCode();
                int iSmear = Hashing.smear(iHashCode) & this.mask;
                int iSmear2 = Hashing.smear(iHashCode2) & this.mask;
                ImmutableMapEntry<K, V> immutableMapEntry = immutableMapEntryArrCreateEntryArray[iSmear];
                for (ImmutableMapEntry<K, V> nextInKeyBucket = immutableMapEntry; nextInKeyBucket != null; nextInKeyBucket = nextInKeyBucket.getNextInKeyBucket()) {
                    checkNoConflict(!key.equals(nextInKeyBucket.getKey()), "key", terminalEntry, nextInKeyBucket);
                }
                ImmutableMapEntry<K, V> immutableMapEntry2 = immutableMapEntryArrCreateEntryArray2[iSmear2];
                for (ImmutableMapEntry<K, V> nextInValueBucket = immutableMapEntry2; nextInValueBucket != null; nextInValueBucket = nextInValueBucket.getNextInValueBucket()) {
                    checkNoConflict(!value.equals(nextInValueBucket.getValue()), "value", terminalEntry, nextInValueBucket);
                }
                ImmutableMapEntry<K, V> nonTerminalBiMapEntry = (immutableMapEntry == null && immutableMapEntry2 == null) ? terminalEntry : new NonTerminalBiMapEntry<>(terminalEntry, immutableMapEntry, immutableMapEntry2);
                immutableMapEntryArrCreateEntryArray[iSmear] = nonTerminalBiMapEntry;
                immutableMapEntryArrCreateEntryArray2[iSmear2] = nonTerminalBiMapEntry;
                immutableMapEntryArrCreateEntryArray3[i4] = nonTerminalBiMapEntry;
                i2 = i5 + (iHashCode ^ iHashCode2);
                i3 = i4 + 1;
            } else {
                this.keyTable = immutableMapEntryArrCreateEntryArray;
                this.valueTable = immutableMapEntryArrCreateEntryArray2;
                this.entries = immutableMapEntryArrCreateEntryArray3;
                this.hashCode = i5;
                return;
            }
        }
    }

    RegularImmutableBiMap(Map.Entry<?, ?>[] entryArr) {
        int length = entryArr.length;
        int iClosedTableSize = Hashing.closedTableSize(length, MAX_LOAD_FACTOR);
        this.mask = iClosedTableSize - 1;
        ImmutableMapEntry<K, V>[] immutableMapEntryArrCreateEntryArray = createEntryArray(iClosedTableSize);
        ImmutableMapEntry<K, V>[] immutableMapEntryArrCreateEntryArray2 = createEntryArray(iClosedTableSize);
        ImmutableMapEntry<K, V>[] immutableMapEntryArrCreateEntryArray3 = createEntryArray(length);
        int i = 0;
        int i2 = 0;
        while (i < length) {
            Map.Entry<?, ?> entry = entryArr[i];
            Object key = entry.getKey();
            Object value = entry.getValue();
            CollectPreconditions.checkEntryNotNull(key, value);
            int iHashCode = key.hashCode();
            int iHashCode2 = value.hashCode();
            int iSmear = Hashing.smear(iHashCode) & this.mask;
            int iSmear2 = Hashing.smear(iHashCode2) & this.mask;
            ImmutableMapEntry<K, V> immutableMapEntry = immutableMapEntryArrCreateEntryArray[iSmear];
            for (ImmutableMapEntry<K, V> nextInKeyBucket = immutableMapEntry; nextInKeyBucket != null; nextInKeyBucket = nextInKeyBucket.getNextInKeyBucket()) {
                checkNoConflict(!key.equals(nextInKeyBucket.getKey()), "key", entry, nextInKeyBucket);
            }
            ImmutableMapEntry<K, V> immutableMapEntry2 = immutableMapEntryArrCreateEntryArray2[iSmear2];
            for (ImmutableMapEntry<K, V> nextInValueBucket = immutableMapEntry2; nextInValueBucket != null; nextInValueBucket = nextInValueBucket.getNextInValueBucket()) {
                checkNoConflict(!value.equals(nextInValueBucket.getValue()), "value", entry, nextInValueBucket);
            }
            ImmutableMapEntry<K, V> terminalEntry = (immutableMapEntry == null && immutableMapEntry2 == null) ? new ImmutableMapEntry.TerminalEntry<>(key, value) : new NonTerminalBiMapEntry<>(key, value, immutableMapEntry, immutableMapEntry2);
            immutableMapEntryArrCreateEntryArray[iSmear] = terminalEntry;
            immutableMapEntryArrCreateEntryArray2[iSmear2] = terminalEntry;
            immutableMapEntryArrCreateEntryArray3[i] = terminalEntry;
            i++;
            i2 += iHashCode ^ iHashCode2;
        }
        this.keyTable = immutableMapEntryArrCreateEntryArray;
        this.valueTable = immutableMapEntryArrCreateEntryArray2;
        this.entries = immutableMapEntryArrCreateEntryArray3;
        this.hashCode = i2;
    }

    final class NonTerminalBiMapEntry<K, V> extends ImmutableMapEntry<K, V> {

        @Nullable
        private final ImmutableMapEntry<K, V> nextInKeyBucket;

        @Nullable
        private final ImmutableMapEntry<K, V> nextInValueBucket;

        NonTerminalBiMapEntry(K k, V v, @Nullable ImmutableMapEntry<K, V> immutableMapEntry, @Nullable ImmutableMapEntry<K, V> immutableMapEntry2) {
            super(k, v);
            this.nextInKeyBucket = immutableMapEntry;
            this.nextInValueBucket = immutableMapEntry2;
        }

        NonTerminalBiMapEntry(ImmutableMapEntry<K, V> immutableMapEntry, @Nullable ImmutableMapEntry<K, V> immutableMapEntry2, @Nullable ImmutableMapEntry<K, V> immutableMapEntry3) {
            super(immutableMapEntry);
            this.nextInKeyBucket = immutableMapEntry2;
            this.nextInValueBucket = immutableMapEntry3;
        }

        @Override // com.google.common.collect.ImmutableMapEntry
        @Nullable
        ImmutableMapEntry<K, V> getNextInKeyBucket() {
            return this.nextInKeyBucket;
        }

        @Override // com.google.common.collect.ImmutableMapEntry
        @Nullable
        ImmutableMapEntry<K, V> getNextInValueBucket() {
            return this.nextInValueBucket;
        }
    }

    private static <K, V> ImmutableMapEntry<K, V>[] createEntryArray(int i) {
        return new ImmutableMapEntry[i];
    }

    @Override // com.google.common.collect.ImmutableMap, java.util.Map
    @Nullable
    public V get(@Nullable Object obj) {
        if (obj == null) {
            return null;
        }
        for (ImmutableMapEntry<K, V> nextInKeyBucket = this.keyTable[Hashing.smear(obj.hashCode()) & this.mask]; nextInKeyBucket != null; nextInKeyBucket = nextInKeyBucket.getNextInKeyBucket()) {
            if (obj.equals(nextInKeyBucket.getKey())) {
                return nextInKeyBucket.getValue();
            }
        }
        return null;
    }

    @Override // com.google.common.collect.ImmutableMap
    ImmutableSet<Map.Entry<K, V>> createEntrySet() {
        return new ImmutableMapEntrySet<K, V>() { // from class: com.google.common.collect.RegularImmutableBiMap.1
            @Override // com.google.common.collect.ImmutableMapEntrySet
            ImmutableMap<K, V> map() {
                return RegularImmutableBiMap.this;
            }

            @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public UnmodifiableIterator<Map.Entry<K, V>> iterator() {
                return asList().iterator();
            }

            @Override // com.google.common.collect.ImmutableCollection
            ImmutableList<Map.Entry<K, V>> createAsList() {
                return new RegularImmutableAsList(this, RegularImmutableBiMap.this.entries);
            }

            @Override // com.google.common.collect.ImmutableSet
            boolean isHashCodeFast() {
                return true;
            }

            @Override // com.google.common.collect.ImmutableSet, java.util.Collection, java.util.Set
            public int hashCode() {
                return RegularImmutableBiMap.this.hashCode;
            }
        };
    }

    @Override // com.google.common.collect.ImmutableMap
    boolean isPartialView() {
        return false;
    }

    @Override // java.util.Map
    public int size() {
        return this.entries.length;
    }

    @Override // com.google.common.collect.ImmutableBiMap, com.google.common.collect.BiMap
    public ImmutableBiMap<V, K> inverse() {
        ImmutableBiMap<V, K> immutableBiMap = this.inverse;
        if (immutableBiMap != null) {
            return immutableBiMap;
        }
        Inverse inverse = new Inverse();
        this.inverse = inverse;
        return inverse;
    }

    /* JADX INFO: loaded from: classes3.dex */
    final class Inverse extends ImmutableBiMap<V, K> {
        private Inverse() {
        }

        @Override // java.util.Map
        public int size() {
            return inverse().size();
        }

        @Override // com.google.common.collect.ImmutableBiMap, com.google.common.collect.BiMap
        public ImmutableBiMap<K, V> inverse() {
            return RegularImmutableBiMap.this;
        }

        @Override // com.google.common.collect.ImmutableMap, java.util.Map
        public K get(@Nullable Object obj) {
            if (obj == null) {
                return null;
            }
            for (ImmutableMapEntry nextInValueBucket = RegularImmutableBiMap.this.valueTable[Hashing.smear(obj.hashCode()) & RegularImmutableBiMap.this.mask]; nextInValueBucket != null; nextInValueBucket = nextInValueBucket.getNextInValueBucket()) {
                if (obj.equals(nextInValueBucket.getValue())) {
                    return nextInValueBucket.getKey();
                }
            }
            return null;
        }

        @Override // com.google.common.collect.ImmutableMap
        ImmutableSet<Map.Entry<V, K>> createEntrySet() {
            return new InverseEntrySet();
        }

        final class InverseEntrySet extends ImmutableMapEntrySet<V, K> {
            InverseEntrySet() {
            }

            @Override // com.google.common.collect.ImmutableMapEntrySet
            ImmutableMap<V, K> map() {
                return Inverse.this;
            }

            @Override // com.google.common.collect.ImmutableSet
            boolean isHashCodeFast() {
                return true;
            }

            @Override // com.google.common.collect.ImmutableSet, java.util.Collection, java.util.Set
            public int hashCode() {
                return RegularImmutableBiMap.this.hashCode;
            }

            @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public UnmodifiableIterator<Map.Entry<V, K>> iterator() {
                return asList().iterator();
            }

            @Override // com.google.common.collect.ImmutableCollection
            ImmutableList<Map.Entry<V, K>> createAsList() {
                return new ImmutableAsList<Map.Entry<V, K>>() { // from class: com.google.common.collect.RegularImmutableBiMap.Inverse.InverseEntrySet.1
                    @Override // java.util.List
                    public Map.Entry<V, K> get(int i) {
                        ImmutableMapEntry immutableMapEntry = RegularImmutableBiMap.this.entries[i];
                        return Maps.immutableEntry(immutableMapEntry.getValue(), immutableMapEntry.getKey());
                    }

                    @Override // com.google.common.collect.ImmutableAsList
                    ImmutableCollection<Map.Entry<V, K>> delegateCollection() {
                        return InverseEntrySet.this;
                    }
                };
            }
        }

        @Override // com.google.common.collect.ImmutableMap
        boolean isPartialView() {
            return false;
        }

        @Override // com.google.common.collect.ImmutableBiMap, com.google.common.collect.ImmutableMap
        Object writeReplace() {
            return new InverseSerializedForm(RegularImmutableBiMap.this);
        }
    }

    /* JADX INFO: loaded from: classes3.dex */
    class InverseSerializedForm<K, V> implements Serializable {
        private static final long serialVersionUID = 1;
        private final ImmutableBiMap<K, V> forward;

        InverseSerializedForm(ImmutableBiMap<K, V> immutableBiMap) {
            this.forward = immutableBiMap;
        }

        Object readResolve() {
            return this.forward.inverse();
        }
    }
}
