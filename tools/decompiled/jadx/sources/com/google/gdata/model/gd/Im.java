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
public class Im extends Element {
    public static final ElementKey<Void, Im> KEY = ElementKey.of(new QName(com.google.gdata.util.Namespaces.gNs, "im"), Void.class, Im.class);
    public static final AttributeKey<String> ADDRESS = AttributeKey.of(new QName(null, AdobeClientScope.ADDRESS), String.class);
    public static final AttributeKey<String> LABEL = AttributeKey.of(new QName(null, "label"), String.class);
    public static final AttributeKey<Boolean> PRIMARY = AttributeKey.of(new QName(null, AdobeLibraryRepresentation.AdobeLibraryRepresentationRelationshipTypePrimary), Boolean.class);
    public static final AttributeKey<String> PROTOCOL = AttributeKey.of(new QName(null, "protocol"), String.class);
    public static final AttributeKey<String> REL = AttributeKey.of(new QName(null, "rel"), String.class);

    public final class Protocol {
        public static final String AIM = "http://schemas.google.com/g/2005#AIM";
        private static final String[] ALL_VALUES = {"http://schemas.google.com/g/2005#AIM", "http://schemas.google.com/g/2005#GOOGLE_TALK", "http://schemas.google.com/g/2005#ICQ", "http://schemas.google.com/g/2005#JABBER", "http://schemas.google.com/g/2005#MSN", "http://schemas.google.com/g/2005#NETMEETING", "http://schemas.google.com/g/2005#QQ", "http://schemas.google.com/g/2005#SKYPE", "http://schemas.google.com/g/2005#YAHOO"};
        public static final String GOOGLE_TALK = "http://schemas.google.com/g/2005#GOOGLE_TALK";
        public static final String ICQ = "http://schemas.google.com/g/2005#ICQ";
        public static final String JABBER = "http://schemas.google.com/g/2005#JABBER";
        public static final String MSN = "http://schemas.google.com/g/2005#MSN";
        public static final String NETMEETING = "http://schemas.google.com/g/2005#NETMEETING";
        public static final String QQ = "http://schemas.google.com/g/2005#QQ";
        public static final String SKYPE = "http://schemas.google.com/g/2005#SKYPE";
        public static final String YAHOO = "http://schemas.google.com/g/2005#YAHOO";

        public static String[] values() {
            return ALL_VALUES;
        }

        private Protocol() {
        }
    }

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
            elementCreatorBuild.addAttribute(LABEL);
            elementCreatorBuild.addAttribute(PRIMARY);
            elementCreatorBuild.addAttribute(PROTOCOL);
            elementCreatorBuild.addAttribute(REL);
        }
    }

    public Im() {
        super(KEY);
    }

    protected Im(ElementKey<?, ? extends Im> elementKey) {
        super(elementKey);
    }

    protected Im(ElementKey<?, ? extends Im> elementKey, Element element) {
        super(elementKey, element);
    }

    @Override // com.google.gdata.model.Element
    public Im lock() {
        return (Im) super.lock();
    }

    public String getAddress() {
        return (String) super.getAttributeValue(ADDRESS);
    }

    public Im setAddress(String str) {
        super.setAttributeValue(ADDRESS, str);
        return this;
    }

    public boolean hasAddress() {
        return super.hasAttribute(ADDRESS);
    }

    public String getLabel() {
        return (String) super.getAttributeValue(LABEL);
    }

    public Im setLabel(String str) {
        super.setAttributeValue(LABEL, str);
        return this;
    }

    public boolean hasLabel() {
        return super.hasAttribute(LABEL);
    }

    public Boolean getPrimary() {
        return (Boolean) super.getAttributeValue(PRIMARY);
    }

    public Im setPrimary(Boolean bool) {
        super.setAttributeValue(PRIMARY, bool);
        return this;
    }

    public boolean hasPrimary() {
        return super.hasAttribute(PRIMARY);
    }

    public String getProtocol() {
        return (String) super.getAttributeValue(PROTOCOL);
    }

    public Im setProtocol(String str) {
        super.setAttributeValue(PROTOCOL, str);
        return this;
    }

    public boolean hasProtocol() {
        return super.hasAttribute(PROTOCOL);
    }

    public String getRel() {
        return (String) super.getAttributeValue(REL);
    }

    public Im setRel(String str) {
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
        Im im = (Im) obj;
        return eq(getAddress(), im.getAddress()) && eq(getLabel(), im.getLabel()) && eq(getPrimary(), im.getPrimary()) && eq(getProtocol(), im.getProtocol()) && eq(getRel(), im.getRel());
    }

    @Override // com.google.gdata.model.Element
    public int hashCode() {
        int iHashCode = getClass().hashCode();
        if (getAddress() != null) {
            iHashCode = (iHashCode * 37) + getAddress().hashCode();
        }
        if (getLabel() != null) {
            iHashCode = (iHashCode * 37) + getLabel().hashCode();
        }
        if (getPrimary() != null) {
            iHashCode = (iHashCode * 37) + getPrimary().hashCode();
        }
        if (getProtocol() != null) {
            iHashCode = (iHashCode * 37) + getProtocol().hashCode();
        }
        if (getRel() != null) {
            return (iHashCode * 37) + getRel().hashCode();
        }
        return iHashCode;
    }
}
