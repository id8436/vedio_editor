package com.google.gdata.model.gd;

import com.adobe.creativesdk.foundation.auth.AdobeClientScope;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryRepresentation;
import com.google.gdata.model.AttributeKey;
import com.google.gdata.model.Element;
import com.google.gdata.model.ElementCreator;
import com.google.gdata.model.ElementKey;
import com.google.gdata.model.MetadataRegistry;
import com.google.gdata.model.QName;

/* JADX INFO: loaded from: classes3.dex */
public class Email extends Element {
    public static final ElementKey<Void, Email> KEY = ElementKey.of(new QName(com.google.gdata.util.Namespaces.gNs, "email"), Void.class, Email.class);
    public static final AttributeKey<String> ADDRESS = AttributeKey.of(new QName(null, AdobeClientScope.ADDRESS), String.class);
    public static final AttributeKey<String> DISPLAY_NAME = AttributeKey.of(new QName(null, "displayName"), String.class);
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
            elementCreatorBuild.addAttribute(ADDRESS).setRequired(true);
            elementCreatorBuild.addAttribute(DISPLAY_NAME);
            elementCreatorBuild.addAttribute(LABEL);
            elementCreatorBuild.addAttribute(PRIMARY);
            elementCreatorBuild.addAttribute(REL);
        }
    }

    public Email() {
        super(KEY);
    }

    protected Email(ElementKey<?, ? extends Email> elementKey) {
        super(elementKey);
    }

    protected Email(ElementKey<?, ? extends Email> elementKey, Element element) {
        super(elementKey, element);
    }

    @Override // com.google.gdata.model.Element
    public Email lock() {
        return (Email) super.lock();
    }

    public String getAddress() {
        return (String) super.getAttributeValue(ADDRESS);
    }

    public Email setAddress(String str) {
        super.setAttributeValue(ADDRESS, str);
        return this;
    }

    public boolean hasAddress() {
        return super.hasAttribute(ADDRESS);
    }

    public String getDisplayName() {
        return (String) super.getAttributeValue(DISPLAY_NAME);
    }

    public Email setDisplayName(String str) {
        super.setAttributeValue(DISPLAY_NAME, str);
        return this;
    }

    public boolean hasDisplayName() {
        return super.hasAttribute(DISPLAY_NAME);
    }

    public String getLabel() {
        return (String) super.getAttributeValue(LABEL);
    }

    public Email setLabel(String str) {
        super.setAttributeValue(LABEL, str);
        return this;
    }

    public boolean hasLabel() {
        return super.hasAttribute(LABEL);
    }

    public Boolean getPrimary() {
        return (Boolean) super.getAttributeValue(PRIMARY);
    }

    public Email setPrimary(Boolean bool) {
        super.setAttributeValue(PRIMARY, bool);
        return this;
    }

    public boolean hasPrimary() {
        return super.hasAttribute(PRIMARY);
    }

    public String getRel() {
        return (String) super.getAttributeValue(REL);
    }

    public Email setRel(String str) {
        super.setAttributeValue(REL, str);
        return this;
    }

    public boolean hasRel() {
        return super.hasAttribute(REL);
    }

    @Override // com.google.gdata.model.Element
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!sameClassAs(obj)) {
            return false;
        }
        Email email = (Email) obj;
        return eq(getAddress(), email.getAddress()) && eq(getDisplayName(), email.getDisplayName()) && eq(getLabel(), email.getLabel()) && eq(getPrimary(), email.getPrimary()) && eq(getRel(), email.getRel());
    }

    @Override // com.google.gdata.model.Element
    public int hashCode() {
        int iHashCode = getClass().hashCode();
        if (getAddress() != null) {
            iHashCode = (iHashCode * 37) + getAddress().hashCode();
        }
        if (getDisplayName() != null) {
            iHashCode = (iHashCode * 37) + getDisplayName().hashCode();
        }
        if (getLabel() != null) {
            iHashCode = (iHashCode * 37) + getLabel().hashCode();
        }
        if (getPrimary() != null) {
            iHashCode = (iHashCode * 37) + getPrimary().hashCode();
        }
        if (getRel() != null) {
            return (iHashCode * 37) + getRel().hashCode();
        }
        return iHashCode;
    }
}
