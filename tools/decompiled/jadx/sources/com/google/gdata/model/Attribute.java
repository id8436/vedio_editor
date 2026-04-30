package com.google.gdata.model;

import com.google.gdata.util.common.base.Objects;
import com.google.gdata.util.common.base.Preconditions;

/* JADX INFO: loaded from: classes3.dex */
public final class Attribute {
    private final AttributeKey<?> key;
    private volatile boolean locked;
    private Object value;

    Attribute(AttributeKey<?> attributeKey, Object obj) {
        this.key = (AttributeKey) Preconditions.checkNotNull(attributeKey, "key");
        setValue(obj);
    }

    public boolean isLocked() {
        return this.locked;
    }

    public Attribute lock() {
        this.locked = true;
        return this;
    }

    public AttributeKey<?> getAttributeKey() {
        return this.key;
    }

    public Object getValue() {
        return this.value;
    }

    public Attribute setValue(Object obj) {
        Preconditions.checkState(!this.locked, this.key.getId() + " attribute is read only");
        Preconditions.checkNotNull(obj, "Attribute value cannot be null.");
        Preconditions.checkArgument(this.key.getDatatype().isAssignableFrom(obj.getClass()), "Cannot assign a value of type %s", obj.getClass());
        this.value = obj;
        return this;
    }

    public String toString() {
        return Objects.toStringHelper(this).add(this.key.getId() + "@" + Integer.toHexString(hashCode()), this.value).toString();
    }
}
