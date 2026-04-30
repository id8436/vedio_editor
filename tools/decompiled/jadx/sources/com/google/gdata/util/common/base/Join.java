package com.google.gdata.util.common.base;

import com.google.common.annotations.GwtCompatible;
import java.io.IOException;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
@GwtCompatible
public final class Join {
    private Join() {
    }

    public static String join(String str, Iterable<?> iterable) {
        return Joiner.on(str).useForNull("null").join(iterable);
    }

    public static String join(String str, Object[] objArr) {
        return Joiner.on(str).useForNull("null").join(objArr);
    }

    public static String join(String str, Object obj, Object... objArr) {
        return Joiner.on(str).useForNull("null").join(iterable(obj, objArr));
    }

    public static String join(String str, Iterator<?> it) {
        StringBuilder sb = new StringBuilder();
        join(sb, str, it);
        return sb.toString();
    }

    public static String join(String str, String str2, Map<?, ?> map) {
        return Joiner.on(str2).useForNull("null").withKeyValueSeparator(str).join(map);
    }

    public static <T extends Appendable> T join(T t, String str, Iterable<?> iterable) {
        try {
            return (T) Joiner.on(str).useForNull("null").appendTo(t, iterable);
        } catch (IOException e2) {
            throw new JoinException(e2);
        }
    }

    public static <T extends Appendable> T join(T t, String str, Object[] objArr) {
        return (T) join(t, str, Arrays.asList(objArr));
    }

    public static <T extends Appendable> T join(T t, String str, Object obj, Object... objArr) {
        return (T) join(t, str, (Iterable<?>) iterable(obj, objArr));
    }

    public static <T extends Appendable> T join(T t, String str, Iterator<?> it) {
        Preconditions.checkNotNull(t);
        Preconditions.checkNotNull(str);
        if (it.hasNext()) {
            try {
                appendOneToken(t, it.next());
                while (it.hasNext()) {
                    t.append(str);
                    appendOneToken(t, it.next());
                }
            } catch (IOException e2) {
                throw new JoinException(e2);
            }
        }
        return t;
    }

    public static <T extends Appendable> T join(T t, String str, String str2, Map<?, ?> map) {
        try {
            return (T) Joiner.on(str2).useForNull("null").withKeyValueSeparator(str).appendTo(t, map);
        } catch (IOException e2) {
            throw new JoinException(e2);
        }
    }

    private static void appendOneToken(Appendable appendable, Object obj) throws IOException {
        appendable.append(toCharSequence(obj));
    }

    private static CharSequence toCharSequence(Object obj) {
        return obj instanceof CharSequence ? (CharSequence) obj : String.valueOf(obj);
    }

    public class JoinException extends RuntimeException {
        private static final long serialVersionUID = 1;

        private JoinException(IOException iOException) {
            super(iOException);
        }
    }

    private static Iterable<Object> iterable(final Object obj, final Object[] objArr) {
        Preconditions.checkNotNull(objArr);
        return new AbstractList<Object>() { // from class: com.google.gdata.util.common.base.Join.1
            @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
            public int size() {
                return objArr.length + 1;
            }

            @Override // java.util.AbstractList, java.util.List
            public Object get(int i) {
                return i == 0 ? obj : objArr[i - 1];
            }
        };
    }
}
