package com.google.gdata.data.extensions;

import com.google.gdata.data.AttributeGenerator;
import com.google.gdata.data.AttributeHelper;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionPoint;
import com.google.gdata.util.ParseException;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = Im.XML_NAME, nsAlias = "gd", nsUri = "http://schemas.google.com/g/2005")
public class Im extends ExtensionPoint {
    private static final String ADDRESS = "address";
    private static final String LABEL = "label";
    private static final String PRIMARY = "primary";
    private static final String PROTOCOL = "protocol";
    private static final String REL = "rel";
    static final String XML_NAME = "im";
    private String address = null;
    private String label = null;
    private Boolean primary = null;
    private String protocol = null;
    private String rel = null;

    /* JADX INFO: loaded from: classes3.dex */
    public final class Protocol {
        public static final String AIM = "http://schemas.google.com/g/2005#AIM";
        public static final String GOOGLE_TALK = "http://schemas.google.com/g/2005#GOOGLE_TALK";
        public static final String ICQ = "http://schemas.google.com/g/2005#ICQ";
        public static final String JABBER = "http://schemas.google.com/g/2005#JABBER";
        public static final String MSN = "http://schemas.google.com/g/2005#MSN";
        public static final String NETMEETING = "http://schemas.google.com/g/2005#NETMEETING";
        public static final String QQ = "http://schemas.google.com/g/2005#QQ";
        public static final String SKYPE = "http://schemas.google.com/g/2005#SKYPE";
        public static final String YAHOO = "http://schemas.google.com/g/2005#YAHOO";
    }

    /* JADX INFO: loaded from: classes3.dex */
    public final class Rel {
        public static final String HOME = "http://schemas.google.com/g/2005#home";
        public static final String OTHER = "http://schemas.google.com/g/2005#other";
        public static final String WORK = "http://schemas.google.com/g/2005#work";
    }

    public Im() {
    }

    public Im(String str, String str2, Boolean bool, String str3, String str4) {
        setAddress(str);
        setLabel(str2);
        setPrimary(bool);
        setProtocol(str3);
        setRel(str4);
        setImmutable(true);
    }

    public String getAddress() {
        return this.address;
    }

    public void setAddress(String str) {
        throwExceptionIfImmutable();
        this.address = str;
    }

    public boolean hasAddress() {
        return getAddress() != null;
    }

    public String getLabel() {
        return this.label;
    }

    public void setLabel(String str) {
        throwExceptionIfImmutable();
        this.label = str;
    }

    public boolean hasLabel() {
        return getLabel() != null;
    }

    public Boolean getPrimary() {
        return this.primary;
    }

    public void setPrimary(Boolean bool) {
        throwExceptionIfImmutable();
        this.primary = bool;
    }

    public boolean hasPrimary() {
        return getPrimary() != null;
    }

    public String getProtocol() {
        return this.protocol;
    }

    public void setProtocol(String str) {
        throwExceptionIfImmutable();
        this.protocol = str;
    }

    public boolean hasProtocol() {
        return getProtocol() != null;
    }

    public String getRel() {
        return this.rel;
    }

    public void setRel(String str) {
        throwExceptionIfImmutable();
        this.rel = str;
    }

    public boolean hasRel() {
        return getRel() != null;
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void validate() {
        if (this.address == null) {
            throwExceptionForMissingAttribute("address");
        }
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(Im.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void putAttributes(AttributeGenerator attributeGenerator) {
        attributeGenerator.put("address", this.address);
        attributeGenerator.put("label", this.label);
        attributeGenerator.put("primary", (Object) this.primary);
        attributeGenerator.put(PROTOCOL, this.protocol);
        attributeGenerator.put(REL, this.rel);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void consumeAttributes(AttributeHelper attributeHelper) throws ParseException {
        this.address = attributeHelper.consume("address", true);
        this.label = attributeHelper.consume("label", false);
        this.primary = Boolean.valueOf(attributeHelper.consumeBoolean("primary", false));
        this.protocol = attributeHelper.consume(PROTOCOL, false);
        this.rel = attributeHelper.consume(REL, false);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!sameClassAs(obj)) {
            return false;
        }
        Im im = (Im) obj;
        return eq(this.address, im.address) && eq(this.label, im.label) && eq(this.primary, im.primary) && eq(this.protocol, im.protocol) && eq(this.rel, im.rel);
    }

    public int hashCode() {
        int iHashCode = getClass().hashCode();
        if (this.address != null) {
            iHashCode = (iHashCode * 37) + this.address.hashCode();
        }
        if (this.label != null) {
            iHashCode = (iHashCode * 37) + this.label.hashCode();
        }
        if (this.primary != null) {
            iHashCode = (iHashCode * 37) + this.primary.hashCode();
        }
        if (this.protocol != null) {
            iHashCode = (iHashCode * 37) + this.protocol.hashCode();
        }
        if (this.rel != null) {
            return (iHashCode * 37) + this.rel.hashCode();
        }
        return iHashCode;
    }

    public String toString() {
        return "{Im address=" + this.address + " label=" + this.label + " primary=" + this.primary + " protocol=" + this.protocol + " rel=" + this.rel + "}";
    }
}
