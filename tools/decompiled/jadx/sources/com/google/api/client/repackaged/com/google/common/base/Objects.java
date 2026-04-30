package com.google.api.client.repackaged.com.google.common.base;

import com.google.api.client.repackaged.com.google.common.annotations.GwtCompatible;
import com.google.gdata.data.Category;
import java.util.Arrays;
import javax.annotation.CheckReturnValue;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible
public final class Objects {
    private Objects() {
    }

    @CheckReturnValue
    public static boolean equal(@Nullable Object obj, @Nullable Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    public static int hashCode(@Nullable Object... objArr) {
        return Arrays.hashCode(objArr);
    }

    public static ToStringHelper toStringHelper(Object obj) {
        return new ToStringHelper(simpleName(obj.getClass()));
    }

    public static ToStringHelper toStringHelper(Class<?> cls) {
        return new ToStringHelper(simpleName(cls));
    }

    public static ToStringHelper toStringHelper(String str) {
        return new ToStringHelper(str);
    }

    private static String simpleName(Class<?> cls) {
        String strReplaceAll = cls.getName().replaceAll("\\$[0-9]+", "\\$");
        int iLastIndexOf = strReplaceAll.lastIndexOf(36);
        if (iLastIndexOf == -1) {
            iLastIndexOf = strReplaceAll.lastIndexOf(46);
        }
        return strReplaceAll.substring(iLastIndexOf + 1);
    }

    public static <T> T firstNonNull(@Nullable T t, @Nullable T t2) {
        return t != null ? t : (T) Preconditions.checkNotNull(t2);
    }

    /* JADX INFO: loaded from: classes3.dex */
    public final class ToStringHelper {
        private final String className;
        private ValueHolder holderHead;
        private ValueHolder holderTail;
        private boolean omitNullValues;

        private ToStringHelper(String str) {
            this.holderHead = new ValueHolder();
            this.holderTail = this.holderHead;
            this.omitNullValues = false;
            this.className = (String) Preconditions.checkNotNull(str);
        }

        public ToStringHelper omitNullValues() {
            this.omitNullValues = true;
            return this;
        }

        public ToStringHelper add(String str, @Nullable Object obj) {
            return addHolder(str, obj);
        }

        public ToStringHelper add(String str, boolean z) {
            return addHolder(str, String.valueOf(z));
        }

        public ToStringHelper add(String str, char c2) {
            return addHolder(str, String.valueOf(c2));
        }

        public ToStringHelper add(String str, double d2) {
            return addHolder(str, String.valueOf(d2));
        }

        public ToStringHelper add(String str, float f2) {
            return addHolder(str, String.valueOf(f2));
        }

        public ToStringHelper add(String str, int i) {
            return addHolder(str, String.valueOf(i));
        }

        public ToStringHelper add(String str, long j) {
            return addHolder(str, String.valueOf(j));
        }

        public ToStringHelper addValue(@Nullable Object obj) {
            return addHolder(obj);
        }

        public ToStringHelper addValue(boolean z) {
            return addHolder(String.valueOf(z));
        }

        public ToStringHelper addValue(char c2) {
            return addHolder(String.valueOf(c2));
        }

        public ToStringHelper addValue(double d2) {
            return addHolder(String.valueOf(d2));
        }

        public ToStringHelper addValue(float f2) {
            return addHolder(String.valueOf(f2));
        }

        public ToStringHelper addValue(int i) {
            return addHolder(String.valueOf(i));
        }

        public ToStringHelper addValue(long j) {
            return addHolder(String.valueOf(j));
        }

        public String toString() {
            boolean z = this.omitNullValues;
            StringBuilder sbAppend = new StringBuilder(32).append(this.className).append(Category.SCHEME_PREFIX);
            String str = "";
            for (ValueHolder valueHolder = this.holderHead.next; valueHolder != null; valueHolder = valueHolder.next) {
                if (!z || valueHolder.value != null) {
                    sbAppend.append(str);
                    str = ", ";
                    if (valueHolder.name != null) {
                        sbAppend.append(valueHolder.name).append('=');
                    }
                    sbAppend.append(valueHolder.value);
                }
            }
            return sbAppend.append(Category.SCHEME_SUFFIX).toString();
        }

        private ValueHolder addHolder() {
            ValueHolder valueHolder = new ValueHolder();
            this.holderTail.next = valueHolder;
            this.holderTail = valueHolder;
            return valueHolder;
        }

        private ToStringHelper addHolder(@Nullable Object obj) {
            addHolder().value = obj;
            return this;
        }

        private ToStringHelper addHolder(String str, @Nullable Object obj) {
            ValueHolder valueHolderAddHolder = addHolder();
            valueHolderAddHolder.value = obj;
            valueHolderAddHolder.name = (String) Preconditions.checkNotNull(str);
            return this;
        }

        final class ValueHolder {
            String name;
            ValueHolder next;
            Object value;

            private ValueHolder() {
            }
        }
    }
}
