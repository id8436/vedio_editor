package com.google.gdata.model.gd;

import com.google.gdata.model.AttributeKey;
import com.google.gdata.model.Element;
import com.google.gdata.model.ElementKey;
import com.google.gdata.model.MetadataRegistry;
import com.google.gdata.model.QName;

/* JADX INFO: loaded from: classes3.dex */
public class Visibility extends Element {
    public static final ElementKey<Void, Visibility> KEY = ElementKey.of(new QName(com.google.gdata.util.Namespaces.gNs, "visibility"), Void.class, Visibility.class);
    public static final AttributeKey<String> VALUE = AttributeKey.of(new QName(null, "value"), String.class);

    public final class Value {
        private static final String[] ALL_VALUES = {"http://schemas.google.com/g/2005#event.confidential", "http://schemas.google.com/g/2005#event.default", "http://schemas.google.com/g/2005#event.private", "http://schemas.google.com/g/2005#event.public"};
        public static final String CONFIDENTIAL = "http://schemas.google.com/g/2005#event.confidential";
        public static final String DEFAULT = "http://schemas.google.com/g/2005#event.default";
        public static final String PRIVATE = "http://schemas.google.com/g/2005#event.private";
        public static final String PUBLIC = "http://schemas.google.com/g/2005#event.public";

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

    public Visibility() {
        super(KEY);
    }

    protected Visibility(ElementKey<?, ? extends Visibility> elementKey) {
        super(elementKey);
    }

    protected Visibility(ElementKey<?, ? extends Visibility> elementKey, Element element) {
        super(elementKey, element);
    }

    @Override // com.google.gdata.model.Element
    public Visibility lock() {
        return (Visibility) super.lock();
    }

    public String getValue() {
        return (String) super.getAttributeValue(VALUE);
    }

    public Visibility setValue(String str) {
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
        return eq(getValue(), ((Visibility) obj).getValue());
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
