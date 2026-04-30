package com.google.gdata.util.common.base;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.VisibleForTesting;
import com.google.gdata.data.Category;
import com.google.gdata.data.analytics.Engagement;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
@GwtCompatible
public final class Objects {
    private Objects() {
    }

    public static boolean equal(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    public static int hashCode(Object... objArr) {
        return Arrays.hashCode(objArr);
    }

    public static ToStringHelper toStringHelper(Object obj) {
        return new ToStringHelper(obj);
    }

    public static <T> T nonNull(T t) {
        if (t == null) {
            throw new NullPointerException();
        }
        return t;
    }

    public static <T> T nonNull(T t, String str) {
        if (t == null) {
            throw new NullPointerException(str);
        }
        return t;
    }

    public static <T> T firstNonNull(T t, T t2) {
        return t != null ? t : (T) Preconditions.checkNotNull(t2);
    }

    public static boolean deepEquals(Object obj, Object obj2) {
        if (obj == obj2) {
            return true;
        }
        if (obj == null || obj2 == null) {
            return false;
        }
        Class<?> cls = obj.getClass();
        Class<?> cls2 = obj2.getClass();
        if (!cls.isArray() || !cls2.isArray()) {
            return obj.equals(obj2);
        }
        if ((obj instanceof Object[]) && (obj2 instanceof Object[])) {
            return Arrays.deepEquals((Object[]) obj, (Object[]) obj2);
        }
        if (cls != cls2) {
            return false;
        }
        if (obj instanceof boolean[]) {
            return Arrays.equals((boolean[]) obj, (boolean[]) obj2);
        }
        if (obj instanceof char[]) {
            return Arrays.equals((char[]) obj, (char[]) obj2);
        }
        if (obj instanceof byte[]) {
            return Arrays.equals((byte[]) obj, (byte[]) obj2);
        }
        if (obj instanceof short[]) {
            return Arrays.equals((short[]) obj, (short[]) obj2);
        }
        if (obj instanceof int[]) {
            return Arrays.equals((int[]) obj, (int[]) obj2);
        }
        if (obj instanceof long[]) {
            return Arrays.equals((long[]) obj, (long[]) obj2);
        }
        if (obj instanceof float[]) {
            return Arrays.equals((float[]) obj, (float[]) obj2);
        }
        if (obj instanceof double[]) {
            return Arrays.equals((double[]) obj, (double[]) obj2);
        }
        throw new AssertionError();
    }

    public static int deepHashCode(Object obj) {
        if (obj == null) {
            return 0;
        }
        if (!obj.getClass().isArray()) {
            return obj.hashCode();
        }
        if (obj instanceof Object[]) {
            return Arrays.deepHashCode((Object[]) obj);
        }
        if (obj instanceof boolean[]) {
            return Arrays.hashCode((boolean[]) obj);
        }
        if (obj instanceof char[]) {
            return Arrays.hashCode((char[]) obj);
        }
        if (obj instanceof byte[]) {
            return Arrays.hashCode((byte[]) obj);
        }
        if (obj instanceof short[]) {
            return Arrays.hashCode((short[]) obj);
        }
        if (obj instanceof int[]) {
            return Arrays.hashCode((int[]) obj);
        }
        if (obj instanceof long[]) {
            return Arrays.hashCode((long[]) obj);
        }
        if (obj instanceof float[]) {
            return Arrays.hashCode((float[]) obj);
        }
        if (obj instanceof double[]) {
            return Arrays.hashCode((double[]) obj);
        }
        throw new AssertionError();
    }

    public static String deepToString(Object obj) {
        if (obj == null) {
            return String.valueOf(obj);
        }
        if (!obj.getClass().isArray()) {
            return obj.toString();
        }
        if (obj instanceof Object[]) {
            return Arrays.deepToString((Object[]) obj);
        }
        if (obj instanceof boolean[]) {
            return Arrays.toString((boolean[]) obj);
        }
        if (obj instanceof char[]) {
            return Arrays.toString((char[]) obj);
        }
        if (obj instanceof byte[]) {
            return Arrays.toString((byte[]) obj);
        }
        if (obj instanceof short[]) {
            return Arrays.toString((short[]) obj);
        }
        if (obj instanceof int[]) {
            return Arrays.toString((int[]) obj);
        }
        if (obj instanceof long[]) {
            return Arrays.toString((long[]) obj);
        }
        if (obj instanceof float[]) {
            return Arrays.toString((float[]) obj);
        }
        if (obj instanceof double[]) {
            return Arrays.toString((double[]) obj);
        }
        throw new AssertionError();
    }

    public class ToStringHelper {
        private static final Joiner JOINER = Joiner.on(", ");
        private final List<String> fieldString;
        private final Object instance;

        private ToStringHelper(Object obj) {
            this.fieldString = new ArrayList();
            this.instance = Preconditions.checkNotNull(obj);
        }

        public ToStringHelper add(String str, Object obj) {
            return addValue(((String) Preconditions.checkNotNull(str)) + Engagement.Comparison.EQ + obj);
        }

        public ToStringHelper addValue(Object obj) {
            this.fieldString.add(String.valueOf(obj));
            return this;
        }

        public String toString() {
            return JOINER.appendTo(new StringBuilder(100).append(simpleName(this.instance.getClass())).append(Category.SCHEME_PREFIX), (Iterable<?>) this.fieldString).append(Category.SCHEME_SUFFIX).toString();
        }

        @VisibleForTesting
        static String simpleName(Class<?> cls) {
            String name = cls.getName();
            int iLastIndexOf = name.lastIndexOf(36);
            if (iLastIndexOf == -1) {
                iLastIndexOf = name.lastIndexOf(46);
            }
            return name.substring(iLastIndexOf + 1);
        }
    }
}
