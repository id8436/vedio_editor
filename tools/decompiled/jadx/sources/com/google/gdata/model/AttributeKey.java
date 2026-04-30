package com.google.gdata.model;

import com.google.gdata.util.common.base.Preconditions;

/* JADX INFO: loaded from: classes3.dex */
public final class AttributeKey<D> extends MetadataKey<D> {
    public static AttributeKey<String> of(QName qName) {
        return of(qName, String.class);
    }

    public static <T> AttributeKey<T> of(QName qName, Class<? extends T> cls) {
        return new AttributeKey<>(qName, cls);
    }

    private AttributeKey(QName qName, Class<? extends D> cls) {
        super((QName) Preconditions.checkNotNull(qName, "id"), cls);
    }

    @Override // com.google.gdata.model.MetadataKey
    public boolean matches(MetadataKey<?> metadataKey) {
        if (metadataKey != null && (metadataKey instanceof AttributeKey)) {
            return matchIdAndDatatype(metadataKey);
        }
        return false;
    }

    @Override // java.lang.Comparable
    public int compareTo(MetadataKey<?> metadataKey) {
        if (metadataKey == this) {
            return 0;
        }
        if (!(metadataKey instanceof AttributeKey)) {
            return -1;
        }
        int iCompareQName = compareQName(this.id, metadataKey.id);
        return iCompareQName == 0 ? compareClass(this.datatype, metadataKey.datatype) : iCompareQName;
    }

    public int hashCode() {
        int iHashCode = this.datatype.hashCode() * 17;
        if (this.id != null) {
            return iHashCode + this.id.hashCode();
        }
        return iHashCode;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || obj.getClass() != AttributeKey.class) {
            return false;
        }
        AttributeKey attributeKey = (AttributeKey) obj;
        return this.id.equals(attributeKey.id) && this.datatype == attributeKey.datatype;
    }

    @Override // com.google.gdata.model.MetadataKey
    public String toString() {
        return "{AttributeKey " + this.id + ", D:" + this.datatype + "}";
    }
}
