package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableMapEntry;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible(emulated = true, serializable = true)
public abstract class ImmutableBiMap<K, V> extends ImmutableMap<K, V> implements BiMap<K, V> {
    private static final Map.Entry<?, ?>[] EMPTY_ENTRY_ARRAY = new Map.Entry[0];

    @Override // com.google.common.collect.BiMap
    public abstract ImmutableBiMap<V, K> inverse();

    public static <K, V> ImmutableBiMap<K, V> of() {
        return EmptyImmutableBiMap.INSTANCE;
    }

    public static <K, V> ImmutableBiMap<K, V> of(K k, V v) {
        return new SingletonImmutableBiMap(k, v);
    }

    public static <K, V> ImmutableBiMap<K, V> of(K k, V v, K k2, V v2) {
        return new RegularImmutableBiMap((ImmutableMapEntry.TerminalEntry<?, ?>[]) new ImmutableMapEntry.TerminalEntry[]{entryOf(k, v), entryOf(k2, v2)});
    }

    public static <K, V> ImmutableBiMap<K, V> of(K k, V v, K k2, V v2, K k3, V v3) {
        return new RegularImmutableBiMap((ImmutableMapEntry.TerminalEntry<?, ?>[]) new ImmutableMapEntry.TerminalEntry[]{entryOf(k, v), entryOf(k2, v2), entryOf(k3, v3)});
    }

    public static <K, V> ImmutableBiMap<K, V> of(K k, V v, K k2, V v2, K k3, V v3, K k4, V v4) {
        return new RegularImmutableBiMap((ImmutableMapEntry.TerminalEntry<?, ?>[]) new ImmutableMapEntry.TerminalEntry[]{entryOf(k, v), entryOf(k2, v2), entryOf(k3, v3), entryOf(k4, v4)});
    }

    public static <K, V> ImmutableBiMap<K, V> of(K k, V v, K k2, V v2, K k3, V v3, K k4, V v4, K k5, V v5) {
        return new RegularImmutableBiMap((ImmutableMapEntry.TerminalEntry<?, ?>[]) new ImmutableMapEntry.TerminalEntry[]{entryOf(k, v), entryOf(k2, v2), entryOf(k3, v3), entryOf(k4, v4), entryOf(k5, v5)});
    }

    public static <K, V> Builder<K, V> builder() {
        return new Builder<>();
    }

    /* JADX INFO: loaded from: classes3.dex */
    public final class Builder<K, V> extends ImmutableMap.Builder<K, V> {
        @Override // com.google.common.collect.ImmutableMap.Builder
        public Builder<K, V> put(K k, V v) {
            super.put((Object) k, (Object) v);
            return this;
        }

        @Override // com.google.common.collect.ImmutableMap.Builder
        public Builder<K, V> putAll(Map<? extends K, ? extends V> map) {
            super.putAll((Map) map);
            return this;
        }

        @Override // com.google.common.collect.ImmutableMap.Builder
        public ImmutableBiMap<K, V> build() {
            switch (this.size) {
                case 0:
                    return ImmutableBiMap.of();
                case 1:
                    return ImmutableBiMap.of((Object) this.entries[0].getKey(), (Object) this.entries[0].getValue());
                default:
                    return new RegularImmutableBiMap(this.size, this.entries);
            }
        }
    }

    public static <K, V> ImmutableBiMap<K, V> copyOf(Map<? extends K, ? extends V> map) {
        if (map instanceof ImmutableBiMap) {
            ImmutableBiMap<K, V> immutableBiMap = (ImmutableBiMap) map;
            if (!immutableBiMap.isPartialView()) {
                return immutableBiMap;
            }
        }
        Map.Entry[] entryArr = (Map.Entry[]) map.entrySet().toArray(EMPTY_ENTRY_ARRAY);
        switch (entryArr.length) {
            case 0:
                return of();
            case 1:
                Map.Entry entry = entryArr[0];
                return of(entry.getKey(), entry.getValue());
            default:
                return new RegularImmutableBiMap((Map.Entry<?, ?>[]) entryArr);
        }
    }

    ImmutableBiMap() {
    }

    @Override // com.google.common.collect.ImmutableMap, java.util.Map, java.util.SortedMap
    public ImmutableSet<V> values() {
        return inverse().keySet();
    }

    @Override // com.google.common.collect.BiMap
    @Deprecated
    public V forcePut(K k, V v) {
        throw new UnsupportedOperationException();
    }

    /* JADX INFO: loaded from: classes3.dex */
    class SerializedForm extends ImmutableMap.SerializedForm {
        private static final long serialVersionUID = 0;

        SerializedForm(ImmutableBiMap<?, ?> immutableBiMap) {
            super(immutableBiMap);
        }

        @Override // com.google.common.collect.ImmutableMap.SerializedForm
        Object readResolve() {
            return createMap(new Builder());
        }
    }

    @Override // com.google.common.collect.ImmutableMap
    Object writeReplace() {
        return new SerializedForm(this);
    }
}
