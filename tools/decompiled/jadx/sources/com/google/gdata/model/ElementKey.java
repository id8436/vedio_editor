package com.google.gdata.model;

import com.google.gdata.model.Element;
import com.google.gdata.util.common.base.Preconditions;

/* JADX INFO: loaded from: classes3.dex */
public final class ElementKey<D, E extends Element> extends MetadataKey<D> {
    final Class<? extends E> elementType;

    public static ElementKey<String, Element> of(QName qName) {
        return of(qName, String.class, Element.class);
    }

    public static <V extends Element> ElementKey<Void, V> of(QName qName, Class<? extends V> cls) {
        return of(qName, Void.class, cls);
    }

    public static <T, V extends Element> ElementKey<T, V> of(QName qName, Class<? extends T> cls, Class<? extends V> cls2) {
        return new ElementKey<>(qName, cls, cls2);
    }

    private ElementKey(QName qName, Class<? extends D> cls, Class<? extends E> cls2) {
        super(qName, cls);
        Preconditions.checkNotNull(cls2, "elementType");
        if (Element.class == cls2) {
            Preconditions.checkNotNull(qName, "id");
        }
        this.elementType = cls2;
    }

    public Class<? extends E> getElementType() {
        return this.elementType;
    }

    @Override // com.google.gdata.model.MetadataKey
    public boolean matches(MetadataKey<?> metadataKey) {
        if (metadataKey != null && (metadataKey instanceof ElementKey) && matchIdAndDatatype(metadataKey)) {
            return this.elementType.isAssignableFrom(((ElementKey) metadataKey).elementType);
        }
        return false;
    }

    @Override // java.lang.Comparable
    public int compareTo(MetadataKey<?> metadataKey) {
        if (metadataKey == this) {
            return 0;
        }
        if (!(metadataKey instanceof ElementKey)) {
            return 1;
        }
        int iCompareQName = compareQName(this.id, metadataKey.id);
        if (iCompareQName == 0) {
            int iCompareClass = compareClass(this.elementType, ((ElementKey) metadataKey).elementType);
            return iCompareClass == 0 ? compareClass(this.datatype, metadataKey.datatype) : iCompareClass;
        }
        return iCompareQName;
    }

    public int hashCode() {
        int iHashCode = this.datatype.hashCode() * 17;
        if (this.id != null) {
            iHashCode += this.id.hashCode();
        }
        return (iHashCode * 17) + this.elementType.hashCode();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || obj.getClass() != ElementKey.class) {
            return false;
        }
        ElementKey elementKey = (ElementKey) obj;
        if (this.id == null) {
            if (elementKey.id != null) {
                return false;
            }
        } else if (!this.id.equals(elementKey.id)) {
            return false;
        }
        return this.elementType == elementKey.elementType && this.datatype == elementKey.datatype;
    }

    @Override // com.google.gdata.model.MetadataKey
    public String toString() {
        return "{ElementKey " + this.id + ", D:" + this.datatype + ", E:" + this.elementType + "}";
    }
}
