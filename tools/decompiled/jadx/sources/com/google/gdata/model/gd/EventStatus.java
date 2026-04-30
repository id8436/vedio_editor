package com.google.gdata.model.gd;

import com.google.gdata.model.AttributeKey;
import com.google.gdata.model.Element;
import com.google.gdata.model.ElementKey;
import com.google.gdata.model.MetadataRegistry;
import com.google.gdata.model.QName;

/* JADX INFO: loaded from: classes3.dex */
public class EventStatus extends Element {
    public static final ElementKey<Void, EventStatus> KEY = ElementKey.of(new QName(com.google.gdata.util.Namespaces.gNs, "eventStatus"), Void.class, EventStatus.class);
    public static final AttributeKey<String> VALUE = AttributeKey.of(new QName(null, "value"), String.class);

    public final class Value {
        private static final String[] ALL_VALUES = {"http://schemas.google.com/g/2005#event.canceled", "http://schemas.google.com/g/2005#event.confirmed", "http://schemas.google.com/g/2005#event.tentative"};
        public static final String CANCELED = "http://schemas.google.com/g/2005#event.canceled";
        public static final String CONFIRMED = "http://schemas.google.com/g/2005#event.confirmed";
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

    public EventStatus() {
        super(KEY);
    }

    protected EventStatus(ElementKey<?, ? extends EventStatus> elementKey) {
        super(elementKey);
    }

    protected EventStatus(ElementKey<?, ? extends EventStatus> elementKey, Element element) {
        super(elementKey, element);
    }

    @Override // com.google.gdata.model.Element
    public EventStatus lock() {
        return (EventStatus) super.lock();
    }

    public String getValue() {
        return (String) super.getAttributeValue(VALUE);
    }

    public EventStatus setValue(String str) {
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
        return eq(getValue(), ((EventStatus) obj).getValue());
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
