package com.google.common.cache;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.gdata.data.analytics.Engagement;
import java.util.Map;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@Beta
@GwtCompatible
public final class RemovalNotification<K, V> implements Map.Entry<K, V> {
    private static final long serialVersionUID = 0;
    private final RemovalCause cause;

    @Nullable
    private final K key;

    @Nullable
    private final V value;

    RemovalNotification(@Nullable K k, @Nullable V v, RemovalCause removalCause) {
        this.key = k;
        this.value = v;
        this.cause = (RemovalCause) Preconditions.checkNotNull(removalCause);
    }

    public RemovalCause getCause() {
        return this.cause;
    }

    public boolean wasEvicted() {
        return this.cause.wasEvicted();
    }

    @Override // java.util.Map.Entry
    @Nullable
    public K getKey() {
        return this.key;
    }

    @Override // java.util.Map.Entry
    @Nullable
    public V getValue() {
        return this.value;
    }

    @Override // java.util.Map.Entry
    public final V setValue(V v) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map.Entry
    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        return Objects.equal(getKey(), entry.getKey()) && Objects.equal(getValue(), entry.getValue());
    }

    @Override // java.util.Map.Entry
    public int hashCode() {
        K key = getKey();
        V value = getValue();
        return (value != null ? value.hashCode() : 0) ^ (key == null ? 0 : key.hashCode());
    }

    public String toString() {
        return getKey() + Engagement.Comparison.EQ + getValue();
    }
}
