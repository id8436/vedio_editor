package com.facebook.d.d;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: ImmutableMap.java */
/* JADX INFO: loaded from: classes2.dex */
public class e<K, V> extends HashMap<K, V> {
    private e(Map<? extends K, ? extends V> map) {
        super(map);
    }

    public static <K, V> Map<K, V> a(K k, V v) {
        HashMap map = new HashMap();
        map.put(k, v);
        return Collections.unmodifiableMap(map);
    }

    public static <K, V> Map<K, V> a(K k, V v, K k2, V v2) {
        HashMap map = new HashMap();
        map.put(k, v);
        map.put(k2, v2);
        return Collections.unmodifiableMap(map);
    }

    public static <K, V> e<K, V> a(Map<? extends K, ? extends V> map) {
        return new e<>(map);
    }
}
