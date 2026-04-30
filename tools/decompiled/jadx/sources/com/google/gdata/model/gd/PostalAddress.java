package com.google.gdata.model.gd;

import com.adobe.creativesdk.foundation.storage.AdobeLibraryRepresentation;
import com.google.gdata.model.AttributeKey;
import com.google.gdata.model.Element;
import com.google.gdata.model.ElementCreator;
import com.google.gdata.model.ElementKey;
import com.google.gdata.model.MetadataRegistry;
import com.google.gdata.model.QName;

/* JADX INFO: loaded from: classes3.dex */
public class PostalAddress extends Element {
    public static final ElementKey<String, PostalAddress> KEY = ElementKey.of(new QName(com.google.gdata.util.Namespaces.gNs, "postalAddress"), String.class, PostalAddress.class);
    public static final AttributeKey<String> LABEL = AttributeKey.of(new QName(null, "label"), String.class);
    public static final AttributeKey<Boolean> PRIMARY = AttributeKey.of(new QName(null, AdobeLibraryRepresentation.AdobeLibraryRepresentationRelationshipTypePrimary), Boolean.class);
    public static final AttributeKey<String> REL = AttributeKey.of(new QName(null, "rel"), String.class);

    public final class Rel {
        private static final String[] ALL_VALUES = {"http://schemas.google.com/g/2005#home", "http://schemas.google.com/g/2005#other", "http://schemas.google.com/g/2005#work"};
        public static final String HOME = "http://schemas.google.com/g/2005#home";
        public static final String OTHER = "http://schemas.google.com/g/2005#other";
        public static final String WORK = "http://schemas.google.com/g/2005#work";

        public static String[] values() {
            return ALL_VALUES;
        }

        private Rel() {
        }
    }

    public static void registerMetadata(MetadataRegistry metadataRegistry) {
        if (!metadataRegistry.isRegistered(KEY)) {
            ElementCreator elementCreatorBuild = metadataRegistry.build(KEY);
            elementCreatorBuild.addAttribute(LABEL);
            elementCreatorBuild.addAttribute(PRIMARY);
            elementCreatorBuild.addAttribute(REL);
        }
    }

    public PostalAddress() {
        super(KEY);
    }

    protected PostalAddress(ElementKey<String, ? extends PostalAddress> elementKey) {
        super(elementKey);
    }

    protected PostalAddress(ElementKey<String, ? extends PostalAddress> elementKey, Element element) {
        super(elementKey, element);
    }

    public PostalAddress(String str) {
        this();
        setValue(str);
    }

    @Override // com.google.gdata.model.Element
    public PostalAddress lock() {
        return (PostalAddress) super.lock();
    }

    public String getLabel() {
        return (String) super.getAttributeValue(LABEL);
    }

    public PostalAddress setLabel(String str) {
        super.setAttributeValue(LABEL, str);
        return this;
    }

    public boolean hasLabel() {
        return super.hasAttribute(LABEL);
    }

    public Boolean getPrimary() {
        return (Boolean) super.getAttributeValue(PRIMARY);
    }

    public PostalAddress setPrimary(Boolean bool) {
        super.setAttributeValue(PRIMARY, bool);
        return this;
    }

    public boolean hasPrimary() {
        return super.hasAttribute(PRIMARY);
    }

    public String getRel() {
        return (String) super.getAttributeValue(REL);
    }

    public PostalAddress setRel(String str) {
        super.setAttributeValue(REL, str);
        return this;
    }

    public boolean hasRel() {
        return super.hasAttribute(REL);
    }

    public String getValue() {
        return (String) super.getTextValue(KEY);
    }

    public PostalAddress setValue(String str) {
        super.setTextValue(str);
        return this;
    }

    public boolean hasValue() {
        return super.hasTextValue();
    }

    @Override // com.google.gdata.model.Element
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!sameClassAs(obj)) {
            return false;
        }
        PostalAddress postalAddress = (PostalAddress) obj;
        return eq(getLabel(), postalAddress.getLabel()) && eq(getPrimary(), postalAddress.getPrimary()) && eq(getRel(), postalAddress.getRel()) && eq(getValue(), postalAddress.getValue());
    }

    @Override // com.google.gdata.model.Element
    public int hashCode() {
        int iHashCode = getClass().hashCode();
        if (getLabel() != null) {
            iHashCode = (iHashCode * 37) + getLabel().hashCode();
        }
        if (getPrimary() != null) {
            iHashCode = (iHashCode * 37) + getPrimary().hashCode();
        }
        if (getRel() != null) {
            iHashCode = (iHashCode * 37) + getRel().hashCode();
        }
        if (getValue() != null) {
            return (iHashCode * 37) + getValue().hashCode();
        }
        return iHashCode;
    }
}
