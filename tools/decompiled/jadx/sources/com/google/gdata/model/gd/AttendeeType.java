package com.google.gdata.model.gd;

import com.google.gdata.model.AttributeKey;
import com.google.gdata.model.Element;
import com.google.gdata.model.ElementKey;
import com.google.gdata.model.MetadataRegistry;
import com.google.gdata.model.QName;

/* JADX INFO: loaded from: classes3.dex */
public class AttendeeType extends Element {
    public static final ElementKey<Void, AttendeeType> KEY = ElementKey.of(new QName(com.google.gdata.util.Namespaces.gNs, "attendeeType"), Void.class, AttendeeType.class);
    public static final AttributeKey<String> VALUE = AttributeKey.of(new QName(null, "value"), String.class);

    public final class Value {
        private static final String[] ALL_VALUES = {"http://schemas.google.com/g/2005#event.optional", "http://schemas.google.com/g/2005#event.required"};
        public static final String OPTIONAL = "http://schemas.google.com/g/2005#event.optional";
        public static final String REQUIRED = "http://schemas.google.com/g/2005#event.required";

        public static String[] values() {
            return ALL_VALUES;
        }

        private Value() {
        }
    }

    public static void registerMetadata(MetadataRegistry metadataRegistry) {
        if (!metadataRegistry.isRegistered(KEY)) {
            metadataRegistry.build(KEY).addAttribute(VALUE).setRequired(true);
        }
    }

    public AttendeeType() {
        super(KEY);
    }

    protected AttendeeType(ElementKey<?, ? extends AttendeeType> elementKey) {
        super(elementKey);
    }

    protected AttendeeType(ElementKey<?, ? extends AttendeeType> elementKey, Element element) {
        super(elementKey, element);
    }

    @Override // com.google.gdata.model.Element
    public AttendeeType lock() {
        return (AttendeeType) super.lock();
    }

    public String getValue() {
        return (String) super.getAttributeValue(VALUE);
    }

    public AttendeeType setValue(String str) {
        super.setAttributeValue(VALUE, str);
        return this;
    }

    public boolean hasValue() {
        return super.hasAttribute(VALUE);
    }

    @Override // com.google.gdata.model.Element
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!sameClassAs(obj)) {
            return false;
        }
        return eq(getValue(), ((AttendeeType) obj).getValue());
    }

    @Override // com.google.gdata.model.Element
    public int hashCode() {
        int iHashCode = getClass().hashCode();
        if (getValue() != null) {
            return (iHashCode * 37) + getValue().hashCode();
        }
        return iHashCode;
    }
}
