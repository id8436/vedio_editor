package org.apache.commons.lang3;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class EnumUtils {
    public static <E extends Enum<E>> Map<String, E> getEnumMap(Class<E> cls) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (E e2 : cls.getEnumConstants()) {
            linkedHashMap.put(e2.name(), e2);
        }
        return linkedHashMap;
    }

    public static <E extends Enum<E>> List<E> getEnumList(Class<E> cls) {
        return new ArrayList(Arrays.asList(cls.getEnumConstants()));
    }

    public static <E extends Enum<E>> boolean isValidEnum(Class<E> cls, String str) {
        if (str == null) {
            return false;
        }
        try {
            Enum.valueOf(cls, str);
            return true;
        } catch (IllegalArgumentException e2) {
            return false;
        }
    }

    public static <E extends Enum<E>> E getEnum(Class<E> cls, String str) {
        if (str == null) {
            return null;
        }
        try {
            return (E) Enum.valueOf(cls, str);
        } catch (IllegalArgumentException e2) {
            return null;
        }
    }

    public static <E extends Enum<E>> long generateBitVector(Class<E> cls, Iterable<E> iterable) {
        checkBitVectorable(cls);
        Validate.notNull(iterable);
        long jOrdinal = 0;
        Iterator<E> it = iterable.iterator();
        while (true) {
            long j = jOrdinal;
            if (it.hasNext()) {
                jOrdinal = ((long) (1 << it.next().ordinal())) | j;
            } else {
                return j;
            }
        }
    }

    public static <E extends Enum<E>> long generateBitVector(Class<E> cls, E... eArr) {
        Validate.noNullElements(eArr);
        return generateBitVector(cls, Arrays.asList(eArr));
    }

    public static <E extends Enum<E>> EnumSet<E> processBitVector(Class<E> cls, long j) {
        Enum[] enumArr = (Enum[]) checkBitVectorable(cls).getEnumConstants();
        EnumSet<E> enumSetNoneOf = EnumSet.noneOf(cls);
        for (Enum r4 : enumArr) {
            if ((((long) (1 << r4.ordinal())) & j) != 0) {
                enumSetNoneOf.add(r4);
            }
        }
        return enumSetNoneOf;
    }

    private static <E extends Enum<E>> Class<E> checkBitVectorable(Class<E> cls) {
        Validate.notNull(cls, "EnumClass must be defined.", new Object[0]);
        E[] enumConstants = cls.getEnumConstants();
        Validate.isTrue(enumConstants != null, "%s does not seem to be an Enum type", cls);
        Validate.isTrue(enumConstants.length <= 64, "Cannot store %s %s values in %s bits", Integer.valueOf(enumConstants.length), cls.getSimpleName(), 64);
        return cls;
    }
}
