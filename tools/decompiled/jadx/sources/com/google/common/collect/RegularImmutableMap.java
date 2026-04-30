package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.collect.ImmutableMapEntry;
import java.util.Map;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes3.dex */
@GwtCompatible(emulated = true, serializable = true)
final class RegularImmutableMap<K, V> extends ImmutableMap<K, V> {
    private static final double MAX_LOAD_FACTOR = 1.2d;
    private static final long serialVersionUID = 0;
    private final transient ImmutableMapEntry<K, V>[] entries;
    private final transient int mask;
    private final transient ImmutableMapEntry<K, V>[] table;

    RegularImmutableMap(ImmutableMapEntry.TerminalEntry<?, ?>... terminalEntryArr) {
        this(terminalEntryArr.length, terminalEntryArr);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [com.google.common.collect.ImmutableMapEntry, com.google.common.collect.ImmutableMapEntry$TerminalEntry] */
    /* JADX WARN: Type inference failed for: r0v6, types: [com.google.common.collect.ImmutableMapEntry] */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r1v4, types: [com.google.common.collect.ImmutableMapEntry<K, V>[]] */
    /* JADX WARN: Type inference failed for: r1v5, types: [com.google.common.collect.ImmutableMapEntry<K, V>[]] */
    /* JADX WARN: Type inference failed for: r6v0, types: [com.google.common.collect.RegularImmutableMap, com.google.common.collect.RegularImmutableMap<K, V>] */
    RegularImmutableMap(int i, ImmutableMapEntry.TerminalEntry<?, ?>[] terminalEntryArr) {
        this.entries = createEntryArray(i);
        int iClosedTableSize = Hashing.closedTableSize(i, MAX_LOAD_FACTOR);
        this.table = createEntryArray(iClosedTableSize);
        this.mask = iClosedTableSize - 1;
        for (int i2 = 0; i2 < i; i2++) {
            ?? nonTerminalMapEntry = terminalEntryArr[i2];
            Object key = nonTerminalMapEntry.getKey();
            int iSmear = this.mask & Hashing.smear(key.hashCode());
            ImmutableMapEntry<K, V> immutableMapEntry = this.table[iSmear];
            if (immutableMapEntry != null) {
                nonTerminalMapEntry = new NonTerminalMapEntry(nonTerminalMapEntry, immutableMapEntry);
            }
            this.table[iSmear] = nonTerminalMapEntry;
            this.entries[i2] = nonTerminalMapEntry;
            checkNoConflictInBucket(key, nonTerminalMapEntry, immutableMapEntry);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    RegularImmutableMap(Map.Entry<?, ?>[] entryArr) {
        int length = entryArr.length;
        this.entries = createEntryArray(length);
        int iClosedTableSize = Hashing.closedTableSize(length, MAX_LOAD_FACTOR);
        this.table = createEntryArray(iClosedTableSize);
        this.mask = iClosedTableSize - 1;
        for (int i = 0; i < length; i++) {
            Map.Entry<?, ?> entry = entryArr[i];
            Object key = entry.getKey();
            Object value = entry.getValue();
            CollectPreconditions.checkEntryNotNull(key, value);
            int iSmear = this.mask & Hashing.smear(key.hashCode());
            ImmutableMapEntry<K, V> immutableMapEntry = this.table[iSmear];
            ImmutableMapEntry<K, V> terminalEntry = immutableMapEntry == null ? new ImmutableMapEntry.TerminalEntry<>(key, value) : new NonTerminalMapEntry<>(key, value, immutableMapEntry);
            this.table[iSmear] = terminalEntry;
            this.entries[i] = terminalEntry;
            checkNoConflictInBucket(key, terminalEntry, immutableMapEntry);
        }
    }

    private void checkNoConflictInBucket(K k, ImmutableMapEntry<K, V> immutableMapEntry, ImmutableMapEntry<K, V> immutableMapEntry2) {
        while (immutableMapEntry2 != null) {
            checkNoConflict(!k.equals(immutableMapEntry2.getKey()), "key", immutableMapEntry, immutableMapEntry2);
            immutableMapEntry2 = immutableMapEntry2.getNextInKeyBucket();
        }
    }

    /* JADX INFO: loaded from: classes.dex */
    final class NonTerminalMapEntry<K, V> extends ImmutableMapEntry<K, V> {
        private final ImmutableMapEntry<K, V> nextInKeyBucket;

        NonTerminalMapEntry(K k, V v, ImmutableMapEntry<K, V> immutableMapEntry) {
            super(k, v);
            this.nextInKeyBucket = immutableMapEntry;
        }

        NonTerminalMapEntry(ImmutableMapEntry<K, V> immutableMapEntry, ImmutableMapEntry<K, V> immutableMapEntry2) {
            super(immutableMapEntry);
            this.nextInKeyBucket = immutableMapEntry2;
        }

        @Override // com.google.common.collect.ImmutableMapEntry
        ImmutableMapEntry<K, V> getNextInKeyBucket() {
            return this.nextInKeyBucket;
        }

        @Override // com.google.common.collect.ImmutableMapEntry
        @Nullable
        ImmutableMapEntry<K, V> getNextInValueBucket() {
            return null;
        }
    }

    private ImmutableMapEntry<K, V>[] createEntryArray(int i) {
        return new ImmutableMapEntry[i];
    }

    @Override // com.google.common.collect.ImmutableMap, java.util.Map
    public V get(@Nullable Object obj) {
        if (obj == null) {
            return null;
        }
        for (ImmutableMapEntry<K, V> nextInKeyBucket = this.table[Hashing.smear(obj.hashCode()) & this.mask]; nextInKeyBucket != null; nextInKeyBucket = nextInKeyBucket.getNextInKeyBucket()) {
            if (obj.equals(nextInKeyBucket.getKey())) {
                return nextInKeyBucket.getValue();
            }
        }
        return null;
    }

    @Override // java.util.Map
    public int size() {
        return this.entries.length;
    }

    @Override // com.google.common.collect.ImmutableMap
    boolean isPartialView() {
        return false;
    }

    @Override // com.google.common.collect.ImmutableMap
    ImmutableSet<Map.Entry<K, V>> createEntrySet() {
        return new EntrySet();
    }

    class EntrySet extends ImmutableMapEntrySet<K, V> {
        private EntrySet() {
        }

        @Override // com.google.common.collect.ImmutableMapEntrySet
        ImmutableMap<K, V> map() {
            return RegularImmutableMap.this;
        }

        @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public UnmodifiableIterator<Map.Entry<K, V>> iterator() {
            return asList().iterator();
        }

        @Override // com.google.common.collect.ImmutableCollection
        ImmutableList<Map.Entry<K, V>> createAsList() {
            return new RegularImmutableAsList(this, RegularImmutableMap.this.entries);
        }
    }
}
