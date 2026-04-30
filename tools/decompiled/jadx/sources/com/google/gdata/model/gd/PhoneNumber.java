package com.google.gdata.model.gd;

import com.adobe.creativesdk.foundation.adobeinternal.entitlement.AdobeEntitlementSession;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryRepresentation;
import com.google.gdata.data.codesearch.Package;
import com.google.gdata.model.AttributeKey;
import com.google.gdata.model.Element;
import com.google.gdata.model.ElementCreator;
import com.google.gdata.model.ElementKey;
import com.google.gdata.model.MetadataRegistry;
import com.google.gdata.model.QName;

/* JADX INFO: loaded from: classes3.dex */
public class PhoneNumber extends Element {
    public static final ElementKey<String, PhoneNumber> KEY = ElementKey.of(new QName(com.google.gdata.util.Namespaces.gNs, AdobeEntitlementSession.AdobeEntitlementUserProfilePhoneNumber), String.class, PhoneNumber.class);
    public static final AttributeKey<String> LABEL = AttributeKey.of(new QName(null, "label"), String.class);
    public static final AttributeKey<Boolean> PRIMARY = AttributeKey.of(new QName(null, AdobeLibraryRepresentation.AdobeLibraryRepresentationRelationshipTypePrimary), Boolean.class);
    public static final AttributeKey<String> REL = AttributeKey.of(new QName(null, "rel"), String.class);
    public static final AttributeKey<String> URI = AttributeKey.of(new QName(null, Package.ATTRIBUTE_URI), String.class);

    public final class Rel {
        private static final String[] ALL_VALUES = {"http://schemas.google.com/g/2005#assistant", "http://schemas.google.com/g/2005#callback", "http://schemas.google.com/g/2005#car", "http://schemas.google.com/g/2005#company_main", "http://schemas.google.com/g/2005#fax", "http://schemas.google.com/g/2005#home", "http://schemas.google.com/g/2005#home_fax", "http://schemas.google.com/g/2005#isdn", "http://schemas.google.com/g/2005#main", "http://schemas.google.com/g/2005#mobile", "http://schemas.google.com/g/2005#other", "http://schemas.google.com/g/2005#other_fax", "http://schemas.google.com/g/2005#pager", "http://schemas.google.com/g/2005#radio", "http://schemas.google.com/g/2005#telex", "http://schemas.google.com/g/2005#tty_tdd", "http://schemas.google.com/g/2005#work", "http://schemas.google.com/g/2005#work_fax", "http://schemas.google.com/g/2005#work_mobile", "http://schemas.google.com/g/2005#work_pager"};
        public static final String ASSISTANT = "http://schemas.google.com/g/2005#assistant";
        public static final String CALLBACK = "http://schemas.google.com/g/2005#callback";
        public static final String CAR = "http://schemas.google.com/g/2005#car";
        public static final String COMPANY_MAIN = "http://schemas.google.com/g/2005#company_main";
        public static final String FAX = "http://schemas.google.com/g/2005#fax";
        public static final String HOME = "http://schemas.google.com/g/2005#home";
        public static final String HOME_FAX = "http://schemas.google.com/g/2005#home_fax";
        public static final String ISDN = "http://schemas.google.com/g/2005#isdn";
        public static final String MAIN = "http://schemas.google.com/g/2005#main";
        public static final String MOBILE = "http://schemas.google.com/g/2005#mobile";
        public static final String OTHER = "http://schemas.google.com/g/2005#other";
        public static final String OTHER_FAX = "http://schemas.google.com/g/2005#other_fax";
        public static final String PAGER = "http://schemas.google.com/g/2005#pager";
        public static final String RADIO = "http://schemas.google.com/g/2005#radio";
        public static final String TELEX = "http://schemas.google.com/g/2005#telex";
        public static final String TTY_TDD = "http://schemas.google.com/g/2005#tty_tdd";
        public static final String WORK = "http://schemas.google.com/g/2005#work";
        public static final String WORK_FAX = "http://schemas.google.com/g/2005#work_fax";
        public static final String WORK_MOBILE = "http://schemas.google.com/g/2005#work_mobile";
        public static final String WORK_PAGER = "http://schemas.google.com/g/2005#work_pager";

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
            elementCreatorBuild.addAttribute(URI);
        }
    }

    public PhoneNumber() {
        super(KEY);
    }

    protected PhoneNumber(ElementKey<String, ? extends PhoneNumber> elementKey) {
        super(elementKey);
    }

    protected PhoneNumber(ElementKey<String, ? extends PhoneNumber> elementKey, Element element) {
        super(elementKey, element);
    }

    public PhoneNumber(String str) {
        this();
        setValue(str);
    }

    @Override // com.google.gdata.model.Element
    public PhoneNumber lock() {
        return (PhoneNumber) super.lock();
    }

    public String getLabel() {
        return (String) super.getAttributeValue(LABEL);
    }

    public PhoneNumber setLabel(String str) {
        super.setAttributeValue(LABEL, str);
        return this;
    }

    public boolean hasLabel() {
        return super.hasAttribute(LABEL);
    }

    public Boolean getPrimary() {
        return (Boolean) super.getAttributeValue(PRIMARY);
    }

    public PhoneNumber setPrimary(Boolean bool) {
        super.setAttributeValue(PRIMARY, bool);
        return this;
    }

    public boolean hasPrimary() {
        return super.hasAttribute(PRIMARY);
    }

    public String getRel() {
        return (String) super.getAttributeValue(REL);
    }

    public PhoneNumber setRel(String str) {
        super.setAttributeValue(REL, str);
        return this;
    }

    public boolean hasRel() {
        return super.hasAttribute(REL);
    }

    public String getUri() {
        return (String) super.getAttributeValue(URI);
    }

    public PhoneNumber setUri(String str) {
        super.setAttributeValue(URI, str);
        return this;
    }

    public boolean hasUri() {
        return super.hasAttribute(URI);
    }

    public String getValue() {
        return (String) super.getTextValue(KEY);
    }

    public PhoneNumber setValue(String str) {
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
        PhoneNumber phoneNumber = (PhoneNumber) obj;
        return eq(getLabel(), phoneNumber.getLabel()) && eq(getPrimary(), phoneNumber.getPrimary()) && eq(getRel(), phoneNumber.getRel()) && eq(getUri(), phoneNumber.getUri()) && eq(getValue(), phoneNumber.getValue());
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
        if (getUri() != null) {
            iHashCode = (iHashCode * 37) + getUri().hashCode();
        }
        if (getValue() != null) {
            return (iHashCode * 37) + getValue().hashCode();
        }
        return iHashCode;
    }
}
