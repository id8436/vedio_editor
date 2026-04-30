package com.google.api.client.util;

import com.google.gdata.data.Category;

/* JADX INFO: loaded from: classes3.dex */
public final class Objects {
    public static boolean equal(Object obj, Object obj2) {
        return com.google.api.client.repackaged.com.google.common.base.Objects.equal(obj, obj2);
    }

    public static ToStringHelper toStringHelper(Object obj) {
        return new ToStringHelper(obj.getClass().getSimpleName());
    }

    public final class ToStringHelper {
        private final String className;
        private ValueHolder holderHead = new ValueHolder();
        private ValueHolder holderTail = this.holderHead;
        private boolean omitNullValues;

        ToStringHelper(String str) {
            this.className = str;
        }

        public ToStringHelper omitNullValues() {
            this.omitNullValues = true;
            return this;
        }

        public ToStringHelper add(String str, Object obj) {
            return addHolder(str, obj);
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

        private ToStringHelper addHolder(String str, Object obj) {
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

    private Objects() {
    }
}
