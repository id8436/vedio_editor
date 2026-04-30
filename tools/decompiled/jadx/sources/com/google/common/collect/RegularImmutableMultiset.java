package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.collect.Multiset;
import java.util.Map;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes3.dex */
@GwtCompatible(serializable = true)
class RegularImmutableMultiset<E> extends ImmutableMultiset<E> {
    private final transient ImmutableMap<E, Integer> map;
    private final transient int size;

    RegularImmutableMultiset(ImmutableMap<E, Integer> immutableMap, int i) {
        this.map = immutableMap;
        this.size = i;
    }

    @Override // com.google.common.collect.ImmutableCollection
    boolean isPartialView() {
        return this.map.isPartialView();
    }

    @Override // com.google.common.collect.Multiset
    public int count(@Nullable Object obj) {
        Integer num = this.map.get(obj);
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public int size() {
        return this.size;
    }

    @Override // com.google.common.collect.ImmutableMultiset, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(@Nullable Object obj) {
        return this.map.containsKey(obj);
    }

    @Override // com.google.common.collect.Multiset
    public ImmutableSet<E> elementSet() {
        return this.map.keySet();
    }

    @Override // com.google.common.collect.ImmutableMultiset
    Multiset.Entry<E> getEntry(int i) {
        Map.Entry<E, Integer> entry = this.map.entrySet().asList().get(i);
        return Multisets.immutableEntry(entry.getKey(), entry.getValue().intValue());
    }

    @Override // com.google.common.collect.ImmutableMultiset, java.util.Collection, com.google.common.collect.Multiset
    public int hashCode() {
        return this.map.hashCode();
    }
}
