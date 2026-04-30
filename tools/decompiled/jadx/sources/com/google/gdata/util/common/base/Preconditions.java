package com.google.gdata.util.common.base;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.VisibleForTesting;
import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: loaded from: classes3.dex */
@GwtCompatible
public final class Preconditions {
    private Preconditions() {
    }

    public static void checkArgument(boolean z) {
        if (!z) {
            throw new IllegalArgumentException();
        }
    }

    public static void checkArgument(boolean z, Object obj) {
        if (!z) {
            throw new IllegalArgumentException(String.valueOf(obj));
        }
    }

    public static void checkArgument(boolean z, String str, Object... objArr) {
        if (!z) {
            throw new IllegalArgumentException(format(str, objArr));
        }
    }

    public static void checkState(boolean z) {
        if (!z) {
            throw new IllegalStateException();
        }
    }

    public static void checkState(boolean z, Object obj) {
        if (!z) {
            throw new IllegalStateException(String.valueOf(obj));
        }
    }

    public static void checkState(boolean z, String str, Object... objArr) {
        if (!z) {
            throw new IllegalStateException(format(str, objArr));
        }
    }

    public static <T> T checkNotNull(T t) {
        if (t == null) {
            throw new NullPointerException();
        }
        return t;
    }

    public static <T> T checkNotNull(T t, Object obj) {
        if (t == null) {
            throw new NullPointerException(String.valueOf(obj));
        }
        return t;
    }

    public static <T> T checkNotNull(T t, String str, Object... objArr) {
        if (t == null) {
            throw new NullPointerException(format(str, objArr));
        }
        return t;
    }

    public static <T extends Iterable<?>> T checkContentsNotNull(T t) {
        if (containsOrIsNull(t)) {
            throw new NullPointerException();
        }
        return t;
    }

    public static <T extends Iterable<?>> T checkContentsNotNull(T t, Object obj) {
        if (containsOrIsNull(t)) {
            throw new NullPointerException(String.valueOf(obj));
        }
        return t;
    }

    public static <T extends Iterable<?>> T checkContentsNotNull(T t, String str, Object... objArr) {
        if (containsOrIsNull(t)) {
            throw new NullPointerException(format(str, objArr));
        }
        return t;
    }

    private static boolean containsOrIsNull(Iterable<?> iterable) {
        if (iterable == null) {
            return true;
        }
        if (iterable instanceof Collection) {
            try {
                return ((Collection) iterable).contains(null);
            } catch (NullPointerException e2) {
                return false;
            }
        }
        Iterator<?> it = iterable.iterator();
        while (it.hasNext()) {
            if (it.next() == null) {
                return true;
            }
        }
        return false;
    }

    public static void checkElementIndex(int i, int i2) {
        checkElementIndex(i, i2, "index");
    }

    public static void checkElementIndex(int i, int i2, String str) {
        if (i2 < 0) {
            throw new IllegalArgumentException("negative size: " + i2);
        }
        if (i < 0) {
            throw new IndexOutOfBoundsException(format("%s (%s) must not be negative", str, Integer.valueOf(i)));
        }
        if (i >= i2) {
            throw new IndexOutOfBoundsException(format("%s (%s) must be less than size (%s)", str, Integer.valueOf(i), Integer.valueOf(i2)));
        }
    }

    public static void checkPositionIndex(int i, int i2) {
        checkPositionIndex(i, i2, "index");
    }

    public static void checkPositionIndex(int i, int i2, String str) {
        if (i2 < 0) {
            throw new IllegalArgumentException("negative size: " + i2);
        }
        if (i < 0) {
            throw new IndexOutOfBoundsException(format("%s (%s) must not be negative", str, Integer.valueOf(i)));
        }
        if (i > i2) {
            throw new IndexOutOfBoundsException(format("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i), Integer.valueOf(i2)));
        }
    }

    public static void checkPositionIndexes(int i, int i2, int i3) {
        checkPositionIndex(i, i3, "start index");
        checkPositionIndex(i2, i3, "end index");
        if (i2 < i) {
            throw new IndexOutOfBoundsException(format("end index (%s) must not be less than start index (%s)", Integer.valueOf(i2), Integer.valueOf(i)));
        }
    }

    @VisibleForTesting
    static String format(String str, Object... objArr) {
        int iIndexOf;
        int i = 0;
        StringBuilder sb = new StringBuilder(str.length() + (objArr.length * 16));
        int i2 = 0;
        while (i < objArr.length && (iIndexOf = str.indexOf("%s", i2)) != -1) {
            sb.append(str.substring(i2, iIndexOf));
            sb.append(objArr[i]);
            i2 = iIndexOf + 2;
            i++;
        }
        sb.append(str.substring(i2));
        if (i < objArr.length) {
            sb.append(" [");
            int i3 = i + 1;
            sb.append(objArr[i]);
            while (true) {
                int i4 = i3;
                if (i4 >= objArr.length) {
                    break;
                }
                sb.append(", ");
                i3 = i4 + 1;
                sb.append(objArr[i4]);
            }
            sb.append("]");
        }
        return sb.toString();
    }
}
