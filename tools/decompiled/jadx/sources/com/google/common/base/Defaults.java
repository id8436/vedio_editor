package com.google.common.base;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class Defaults {
    private static final Map<Class<?>, Object> DEFAULTS;

    private Defaults() {
    }

    static {
        HashMap map = new HashMap();
        put(map, Boolean.TYPE, false);
        put(map, Character.TYPE, (char) 0);
        put(map, Byte.TYPE, (byte) 0);
        put(map, Short.TYPE, (short) 0);
        put(map, Integer.TYPE, 0);
        put(map, Long.TYPE, 0L);
        put(map, Float.TYPE, Float.valueOf(0.0f));
        put(map, Double.TYPE, Double.valueOf(0.0d));
        DEFAULTS = Collections.unmodifiableMap(map);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static <T> void put(Map<Class<?>, Object> map, Class<T> cls, T t) {
        map.put(cls, t);
    }

    public static <T> T defaultValue(Class<T> cls) {
        return (T) DEFAULTS.get(Preconditions.checkNotNull(cls));
    }
}
