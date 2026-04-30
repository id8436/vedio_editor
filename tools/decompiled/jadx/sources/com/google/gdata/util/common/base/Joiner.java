package com.google.gdata.util.common.base;

import java.io.IOException;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class Joiner {
    private final String separator;

    public static Joiner on(String str) {
        return new Joiner(str);
    }

    private Joiner(String str) {
        this.separator = (String) Preconditions.checkNotNull(str);
    }

    private Joiner(Joiner joiner) {
        this.separator = joiner.separator;
    }

    public <A extends Appendable> A appendTo(A a2, Iterable<?> iterable) throws IOException {
        Preconditions.checkNotNull(a2);
        Iterator<?> it = iterable.iterator();
        if (it.hasNext()) {
            a2.append(toString(it.next()));
            while (it.hasNext()) {
                a2.append(this.separator);
                a2.append(toString(it.next()));
            }
        }
        return a2;
    }

    public final <A extends Appendable> A appendTo(A a2, Object[] objArr) throws IOException {
        return (A) appendTo(a2, Arrays.asList(objArr));
    }

    public final <A extends Appendable> A appendTo(A a2, Object obj, Object obj2, Object... objArr) throws IOException {
        return (A) appendTo(a2, iterable(obj, obj2, objArr));
    }

    public final StringBuilder appendTo(StringBuilder sb, Iterable<?> iterable) {
        try {
            appendTo(sb, iterable);
            return sb;
        } catch (IOException e2) {
            throw new AssertionError(e2);
        }
    }

    public final StringBuilder appendTo(StringBuilder sb, Object[] objArr) {
        return appendTo(sb, (Iterable<?>) Arrays.asList(objArr));
    }

    public final StringBuilder appendTo(StringBuilder sb, Object obj, Object obj2, Object... objArr) {
        return appendTo(sb, iterable(obj, obj2, objArr));
    }

    public final String join(Iterable<?> iterable) {
        return appendTo(new StringBuilder(), iterable).toString();
    }

    public final String join(Object[] objArr) {
        return join(Arrays.asList(objArr));
    }

    public final String join(Object obj, Object obj2, Object... objArr) {
        return join(iterable(obj, obj2, objArr));
    }

    public Joiner useForNull(final String str) {
        Preconditions.checkNotNull(str);
        return new Joiner(this) { // from class: com.google.gdata.util.common.base.Joiner.1
            @Override // com.google.gdata.util.common.base.Joiner
            CharSequence toString(Object obj) {
                return obj == null ? str : obj.toString();
            }

            @Override // com.google.gdata.util.common.base.Joiner
            public Joiner useForNull(String str2) {
                Preconditions.checkNotNull(str2);
                throw new UnsupportedOperationException("already specified useForNull");
            }

            @Override // com.google.gdata.util.common.base.Joiner
            public Joiner skipNulls() {
                throw new UnsupportedOperationException("already specified useForNull");
            }
        };
    }

    public Joiner skipNulls() {
        return new Joiner(this) { // from class: com.google.gdata.util.common.base.Joiner.2
            @Override // com.google.gdata.util.common.base.Joiner
            public <A extends Appendable> A appendTo(A a2, Iterable<?> iterable) throws IOException {
                Preconditions.checkNotNull(a2, "appendable");
                Preconditions.checkNotNull(iterable, "parts");
                Iterator<?> it = iterable.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    Object next = it.next();
                    if (next != null) {
                        a2.append(Joiner.this.toString(next));
                        break;
                    }
                }
                while (it.hasNext()) {
                    Object next2 = it.next();
                    if (next2 != null) {
                        a2.append(Joiner.this.separator);
                        a2.append(Joiner.this.toString(next2));
                    }
                }
                return a2;
            }

            @Override // com.google.gdata.util.common.base.Joiner
            public Joiner useForNull(String str) {
                Preconditions.checkNotNull(str);
                throw new UnsupportedOperationException("already specified skipNulls");
            }

            @Override // com.google.gdata.util.common.base.Joiner
            public MapJoiner withKeyValueSeparator(String str) {
                Preconditions.checkNotNull(str);
                throw new UnsupportedOperationException("can't use .skipNulls() with maps");
            }
        };
    }

    public MapJoiner withKeyValueSeparator(String str) {
        return new MapJoiner((String) Preconditions.checkNotNull(str));
    }

    public class MapJoiner {
        private Joiner joiner;
        private String keyValueSeparator;

        private MapJoiner(Joiner joiner, String str) {
            this.joiner = joiner;
            this.keyValueSeparator = str;
        }

        public <A extends Appendable> A appendTo(A a2, Map<?, ?> map) throws IOException {
            Preconditions.checkNotNull(a2);
            Iterator<Map.Entry<?, ?>> it = map.entrySet().iterator();
            if (it.hasNext()) {
                Map.Entry<?, ?> next = it.next();
                a2.append(this.joiner.toString(next.getKey()));
                a2.append(this.keyValueSeparator);
                a2.append(this.joiner.toString(next.getValue()));
                while (it.hasNext()) {
                    a2.append(this.joiner.separator);
                    Map.Entry<?, ?> next2 = it.next();
                    a2.append(this.joiner.toString(next2.getKey()));
                    a2.append(this.keyValueSeparator);
                    a2.append(this.joiner.toString(next2.getValue()));
                }
            }
            return a2;
        }

        public StringBuilder appendTo(StringBuilder sb, Map<?, ?> map) {
            try {
                appendTo(sb, map);
                return sb;
            } catch (IOException e2) {
                throw new AssertionError(e2);
            }
        }

        public String join(Map<?, ?> map) {
            return appendTo(new StringBuilder(), map).toString();
        }

        public MapJoiner useForNull(String str) {
            return new MapJoiner(this.joiner.useForNull(str), this.keyValueSeparator);
        }
    }

    CharSequence toString(Object obj) {
        return obj.toString();
    }

    private static Iterable<Object> iterable(final Object obj, final Object obj2, final Object[] objArr) {
        Preconditions.checkNotNull(objArr);
        return new AbstractList<Object>() { // from class: com.google.gdata.util.common.base.Joiner.3
            @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
            public int size() {
                return objArr.length + 2;
            }

            @Override // java.util.AbstractList, java.util.List
            public Object get(int i) {
                switch (i) {
                    case 0:
                        return obj;
                    case 1:
                        return obj2;
                    default:
                        return objArr[i - 2];
                }
            }
        };
    }
}
