package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableMultimap;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Map;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible(emulated = true, serializable = true)
public class ImmutableListMultimap<K, V> extends ImmutableMultimap<K, V> implements ListMultimap<K, V> {

    @GwtIncompatible("Not needed in emulated source")
    private static final long serialVersionUID = 0;
    private transient ImmutableListMultimap<V, K> inverse;

    public static <K, V> ImmutableListMultimap<K, V> of() {
        return EmptyImmutableListMultimap.INSTANCE;
    }

    public static <K, V> ImmutableListMultimap<K, V> of(K k, V v) {
        Builder builder = builder();
        builder.put((Object) k, (Object) v);
        return builder.build();
    }

    public static <K, V> ImmutableListMultimap<K, V> of(K k, V v, K k2, V v2) {
        Builder builder = builder();
        builder.put((Object) k, (Object) v);
        builder.put((Object) k2, (Object) v2);
        return builder.build();
    }

    public static <K, V> ImmutableListMultimap<K, V> of(K k, V v, K k2, V v2, K k3, V v3) {
        Builder builder = builder();
        builder.put((Object) k, (Object) v);
        builder.put((Object) k2, (Object) v2);
        builder.put((Object) k3, (Object) v3);
        return builder.build();
    }

    public static <K, V> ImmutableListMultimap<K, V> of(K k, V v, K k2, V v2, K k3, V v3, K k4, V v4) {
        Builder builder = builder();
        builder.put((Object) k, (Object) v);
        builder.put((Object) k2, (Object) v2);
        builder.put((Object) k3, (Object) v3);
        builder.put((Object) k4, (Object) v4);
        return builder.build();
    }

    public static <K, V> ImmutableListMultimap<K, V> of(K k, V v, K k2, V v2, K k3, V v3, K k4, V v4, K k5, V v5) {
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
    public final class Builder<K, V> extends ImmutableMultimap.Builder<K, V> {
        @Override // com.google.common.collect.ImmutableMultimap.Builder
        public Builder<K, V> put(K k, V v) {
            super.put((Object) k, (Object) v);
            return this;
        }

        @Override // com.google.common.collect.ImmutableMultimap.Builder
        public Builder<K, V> put(Map.Entry<? extends K, ? extends V> entry) {
            super.put((Map.Entry) entry);
            return this;
        }

        @Override // com.google.common.collect.ImmutableMultimap.Builder
        public Builder<K, V> putAll(K k, Iterable<? extends V> iterable) {
            super.putAll((Object) k, (Iterable) iterable);
            return this;
        }

        @Override // com.google.common.collect.ImmutableMultimap.Builder
        public Builder<K, V> putAll(K k, V... vArr) {
            super.putAll((Object) k, (Object[]) vArr);
            return this;
        }

        @Override // com.google.common.collect.ImmutableMultimap.Builder
        public Builder<K, V> putAll(Multimap<? extends K, ? extends V> multimap) {
            super.putAll((Multimap) multimap);
            return this;
        }

        @Override // com.google.common.collect.ImmutableMultimap.Builder
        public Builder<K, V> orderKeysBy(Comparator<? super K> comparator) {
            super.orderKeysBy((Comparator) comparator);
            return this;
        }

        @Override // com.google.common.collect.ImmutableMultimap.Builder
        public Builder<K, V> orderValuesBy(Comparator<? super V> comparator) {
            super.orderValuesBy((Comparator) comparator);
            return this;
        }

        @Override // com.google.common.collect.ImmutableMultimap.Builder
        public ImmutableListMultimap<K, V> build() {
            return (ImmutableListMultimap) super.build();
        }
    }

    public static <K, V> ImmutableListMultimap<K, V> copyOf(Multimap<? extends K, ? extends V> multimap) {
        if (multimap.isEmpty()) {
            return of();
        }
        if (multimap instanceof ImmutableListMultimap) {
            ImmutableListMultimap<K, V> immutableListMultimap = (ImmutableListMultimap) multimap;
            if (!immutableListMultimap.isPartialView()) {
                return immutableListMultimap;
            }
        }
        ImmutableMap.Builder builder = ImmutableMap.builder();
        int size = 0;
        Iterator<Map.Entry<? extends K, Collection<? extends V>>> it = multimap.asMap().entrySet().iterator();
        while (true) {
            int i = size;
            if (it.hasNext()) {
                Map.Entry<? extends K, Collection<? extends V>> next = it.next();
                ImmutableList immutableListCopyOf = ImmutableList.copyOf((Collection) next.getValue());
                if (immutableListCopyOf.isEmpty()) {
                    size = i;
                } else {
                    builder.put(next.getKey(), immutableListCopyOf);
                    size = immutableListCopyOf.size() + i;
                }
            } else {
                return new ImmutableListMultimap<>(builder.build(), i);
            }
        }
    }

    ImmutableListMultimap(ImmutableMap<K, ImmutableList<V>> immutableMap, int i) {
        super(immutableMap, i);
    }

    @Override // com.google.common.collect.ImmutableMultimap, com.google.common.collect.Multimap
    public ImmutableList<V> get(@Nullable K k) {
        ImmutableList<V> immutableList = (ImmutableList) this.map.get(k);
        return immutableList == null ? ImmutableList.of() : immutableList;
    }

    @Override // com.google.common.collect.ImmutableMultimap
    public ImmutableListMultimap<V, K> inverse() {
        ImmutableListMultimap<V, K> immutableListMultimap = this.inverse;
        if (immutableListMultimap != null) {
            return immutableListMultimap;
        }
        ImmutableListMultimap<V, K> immutableListMultimapInvert = invert();
        this.inverse = immutableListMultimapInvert;
        return immutableListMultimapInvert;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private ImmutableListMultimap<V, K> invert() {
        Builder builder = builder();
        for (Map.Entry entry : entries()) {
            builder.put(entry.getValue(), entry.getKey());
        }
        ImmutableListMultimap<V, K> immutableListMultimapBuild = builder.build();
        immutableListMultimapBuild.inverse = this;
        return immutableListMultimapBuild;
    }

    @Override // com.google.common.collect.ImmutableMultimap, com.google.common.collect.Multimap
    @Deprecated
    public ImmutableList<V> removeAll(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.ImmutableMultimap, com.google.common.collect.AbstractMultimap, com.google.common.collect.Multimap
    @Deprecated
    public ImmutableList<V> replaceValues(K k, Iterable<? extends V> iterable) {
        throw new UnsupportedOperationException();
    }

    @GwtIncompatible("java.io.ObjectOutputStream")
    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        Serialization.writeMultimap(this, objectOutputStream);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @GwtIncompatible("java.io.ObjectInputStream")
    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
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
            builder.put(object, ImmutableList.copyOf(objArr));
            i2 += i4;
        }
        try {
            ImmutableMultimap.FieldSettersHolder.MAP_FIELD_SETTER.set(this, builder.build());
            ImmutableMultimap.FieldSettersHolder.SIZE_FIELD_SETTER.set(this, i2);
        } catch (IllegalArgumentException e2) {
            throw ((InvalidObjectException) new InvalidObjectException(e2.getMessage()).initCause(e2));
        }
    }
}
