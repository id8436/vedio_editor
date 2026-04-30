package com.google.gdata.model;

import com.google.gdata.util.common.base.Preconditions;

/* JADX INFO: loaded from: classes3.dex */
public abstract class MetadataKey<D> implements Comparable<MetadataKey<?>> {
    final Class<? extends D> datatype;
    final QName id;

    public abstract boolean matches(MetadataKey<?> metadataKey);

    MetadataKey(QName qName, Class<? extends D> cls) {
        Preconditions.checkNotNull(cls, "datatype");
        this.id = qName;
        this.datatype = cls;
    }

    public QName getId() {
        return this.id;
    }

    public Class<? extends D> getDatatype() {
        return this.datatype;
    }

    boolean matchIdAndDatatype(MetadataKey<?> metadataKey) {
        if (this.id == null || this.id.matches(metadataKey.id)) {
            return this.datatype.isAssignableFrom(metadataKey.datatype) || metadataKey.datatype == String.class;
        }
        return false;
    }

    static int compareQName(QName qName, QName qName2) {
        if (qName == qName2) {
            return 0;
        }
        if (qName == null) {
            return -1;
        }
        if (qName2 == null) {
            return 1;
        }
        return qName.compareTo(qName2);
    }

    static int compareClass(Class<?> cls, Class<?> cls2) {
        if (cls == cls2) {
            return 0;
        }
        if (cls.isAssignableFrom(cls2)) {
            return -1;
        }
        if (cls2.isAssignableFrom(cls)) {
            return 1;
        }
        Class<?> firstNonAssignable = getFirstNonAssignable(cls, cls2);
        return firstNonAssignable.getName().compareTo(getFirstNonAssignable(cls2, firstNonAssignable).getName());
    }

    static Class<?> getFirstNonAssignable(Class<?> cls, Class<?> cls2) {
        for (Class<? super Object> superclass = cls.getSuperclass(); !superclass.isAssignableFrom(cls2); superclass = superclass.getSuperclass()) {
            cls = superclass;
        }
        return cls;
    }

    public String toString() {
        return "{MetadataKey " + this.id + ", D:" + this.datatype + "}";
    }
}
