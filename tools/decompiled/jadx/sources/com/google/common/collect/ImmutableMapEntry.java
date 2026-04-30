package com.google.common.collect;

import com.google.common.annotations.GwtIncompatible;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@GwtIncompatible("unnecessary")
abstract class ImmutableMapEntry<K, V> extends ImmutableEntry<K, V> {
    @Nullable
    abstract ImmutableMapEntry<K, V> getNextInKeyBucket();

    @Nullable
    abstract ImmutableMapEntry<K, V> getNextInValueBucket();

    ImmutableMapEntry(K k, V v) {
        super(k, v);
        CollectPreconditions.checkEntryNotNull(k, v);
    }

    ImmutableMapEntry(ImmutableMapEntry<K, V> immutableMapEntry) {
        super(immutableMapEntry.getKey(), immutableMapEntry.getValue());
    }

    final class TerminalEntry<K, V> extends ImmutableMapEntry<K, V> {
        TerminalEntry(ImmutableMapEntry<K, V> immutableMapEntry) {
            super(immutableMapEntry);
        }

        TerminalEntry(K k, V v) {
            super(k, v);
        }

        @Override // com.google.common.collect.ImmutableMapEntry
        @Nullable
        ImmutableMapEntry<K, V> getNextInKeyBucket() {
            return null;
        }

        @Override // com.google.common.collect.ImmutableMapEntry
        @Nullable
        ImmutableMapEntry<K, V> getNextInValueBucket() {
            return null;
        }
    }
}
