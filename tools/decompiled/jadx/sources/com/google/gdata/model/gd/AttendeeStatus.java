package com.google.gdata.model.gd;

import com.google.gdata.model.AttributeKey;
import com.google.gdata.model.Element;
import com.google.gdata.model.ElementKey;
import com.google.gdata.model.MetadataRegistry;
import com.google.gdata.model.QName;

/* JADX INFO: loaded from: classes3.dex */
public class AttendeeStatus extends Element {
    public static final ElementKey<Void, AttendeeStatus> KEY = ElementKey.of(new QName(com.google.gdata.util.Namespaces.gNs, "attendeeStatus"), Void.class, AttendeeStatus.class);
    public static final AttributeKey<String> VALUE = AttributeKey.of(new QName(null, "value"), String.class);

    public final class Value {
        public static final String ACCEPTED = "http://schemas.google.com/g/2005#event.accepted";
        private static final String[] ALL_VALUES = {"http://schemas.google.com/g/2005#event.accepted", "http://schemas.google.com/g/2005#event.declined", "http://schemas.google.com/g/2005#event.invited", "http://schemas.google.com/g/2005#event.tentative"};
        public static final String DECLINED = "http://schemas.google.com/g/2005#event.declined";
        public static final String INVITED = "http://schemas.google.com/g/2005#event.invited";
        public static final String TENTATIVE = "http://schemas.google.com/g/2005#event.tentative";

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

    public AttendeeStatus() {
        super(KEY);
    }

    protected AttendeeStatus(ElementKey<?, ? extends AttendeeStatus> elementKey) {
        super(elementKey);
    }

    protected AttendeeStatus(ElementKey<?, ? extends AttendeeStatus> elementKey, Element element) {
        super(elementKey, element);
    }

    @Override // com.google.gdata.model.Element
    public AttendeeStatus lock() {
        return (AttendeeStatus) super.lock();
    }

    public String getValue() {
        return (String) super.getAttributeValue(VALUE);
    }

    public AttendeeStatus setValue(String str) {
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
        return eq(getValue(), ((AttendeeStatus) obj).getValue());
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
