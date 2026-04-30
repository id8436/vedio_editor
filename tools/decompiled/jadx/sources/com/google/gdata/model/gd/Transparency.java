package com.google.gdata.model.gd;

import com.google.gdata.model.AttributeKey;
import com.google.gdata.model.Element;
import com.google.gdata.model.ElementKey;
import com.google.gdata.model.MetadataRegistry;
import com.google.gdata.model.QName;

/* JADX INFO: loaded from: classes3.dex */
public class Transparency extends Element {
    public static final ElementKey<Void, Transparency> KEY = ElementKey.of(new QName(com.google.gdata.util.Namespaces.gNs, "transparency"), Void.class, Transparency.class);
    public static final AttributeKey<String> VALUE = AttributeKey.of(new QName(null, "value"), String.class);

    public final class Value {
        private static final String[] ALL_VALUES = {"http://schemas.google.com/g/2005#event.opaque", "http://schemas.google.com/g/2005#event.transparent"};
        public static final String OPAQUE = "http://schemas.google.com/g/2005#event.opaque";
        public static final String TRANSPARENT = "http://schemas.google.com/g/2005#event.transparent";

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

    public Transparency() {
        super(KEY);
    }

    protected Transparency(ElementKey<?, ? extends Transparency> elementKey) {
        super(elementKey);
    }

    protected Transparency(ElementKey<?, ? extends Transparency> elementKey, Element element) {
        super(elementKey, element);
    }

    @Override // com.google.gdata.model.Element
    public Transparency lock() {
        return (Transparency) super.lock();
    }

    public String getValue() {
        return (String) super.getAttributeValue(VALUE);
    }

    public Transparency setValue(String str) {
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
        return eq(getValue(), ((Transparency) obj).getValue());
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
