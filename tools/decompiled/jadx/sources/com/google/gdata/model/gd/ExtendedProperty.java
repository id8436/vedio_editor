package com.google.gdata.model.gd;

import com.google.gdata.client.authn.oauth.OAuthParameters;
import com.google.gdata.model.AttributeKey;
import com.google.gdata.model.Element;
import com.google.gdata.model.ElementCreator;
import com.google.gdata.model.ElementKey;
import com.google.gdata.model.MetadataRegistry;
import com.google.gdata.model.QName;

/* JADX INFO: loaded from: classes3.dex */
public class ExtendedProperty extends Element {
    public static final ElementKey<Void, ExtendedProperty> KEY = ElementKey.of(new QName(com.google.gdata.util.Namespaces.gNs, "extendedProperty"), Void.class, ExtendedProperty.class);
    public static final AttributeKey<String> NAME = AttributeKey.of(new QName(null, "name"), String.class);
    public static final AttributeKey<String> REALM = AttributeKey.of(new QName(null, OAuthParameters.REALM_KEY), String.class);
    public static final AttributeKey<String> VALUE = AttributeKey.of(new QName(null, "value"), String.class);

    public final class Realm {
        private static final String[] ALL_VALUES = {"http://schemas.google.com/g/2005#shared"};
        public static final String SHARED = "http://schemas.google.com/g/2005#shared";

        public static String[] values() {
            return ALL_VALUES;
        }

        private Realm() {
        }
    }

    public static void registerMetadata(MetadataRegistry metadataRegistry) {
        if (!metadataRegistry.isRegistered(KEY)) {
            ElementCreator elementCreatorBuild = metadataRegistry.build(KEY);
            elementCreatorBuild.addAttribute(NAME).setRequired(true);
            elementCreatorBuild.addAttribute(REALM);
            elementCreatorBuild.addAttribute(VALUE);
        }
    }

    public ExtendedProperty() {
        super(KEY);
    }

    protected ExtendedProperty(ElementKey<?, ? extends ExtendedProperty> elementKey) {
        super(elementKey);
    }

    protected ExtendedProperty(ElementKey<?, ? extends ExtendedProperty> elementKey, Element element) {
        super(elementKey, element);
    }

    @Override // com.google.gdata.model.Element
    public ExtendedProperty lock() {
        return (ExtendedProperty) super.lock();
    }

    public String getName() {
        return (String) super.getAttributeValue(NAME);
    }

    public ExtendedProperty setName(String str) {
        super.setAttributeValue(NAME, str);
        return this;
    }

    public boolean hasName() {
        return super.hasAttribute(NAME);
    }

    public String getRealm() {
        return (String) super.getAttributeValue(REALM);
    }

    public ExtendedProperty setRealm(String str) {
        super.setAttributeValue(REALM, str);
        return this;
    }

    public boolean hasRealm() {
        return super.hasAttribute(REALM);
    }

    public String getValue() {
        return (String) super.getAttributeValue(VALUE);
    }

    public ExtendedProperty setValue(String str) {
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
        ExtendedProperty extendedProperty = (ExtendedProperty) obj;
        return eq(getName(), extendedProperty.getName()) && eq(getRealm(), extendedProperty.getRealm()) && eq(getValue(), extendedProperty.getValue());
    }

    @Override // com.google.gdata.model.Element
    public int hashCode() {
        int iHashCode = getClass().hashCode();
        if (getName() != null) {
            iHashCode = (iHashCode * 37) + getName().hashCode();
        }
        if (getRealm() != null) {
            iHashCode = (iHashCode * 37) + getRealm().hashCode();
        }
        if (getValue() != null) {
            return (iHashCode * 37) + getValue().hashCode();
        }
        return iHashCode;
    }
}
