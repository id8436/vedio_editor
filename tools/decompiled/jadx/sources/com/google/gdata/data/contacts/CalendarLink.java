package com.google.gdata.data.contacts;

import com.dropbox.core.DbxWebAuth;
import com.google.gdata.data.AttributeGenerator;
import com.google.gdata.data.AttributeHelper;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionPoint;
import com.google.gdata.util.ParseException;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = CalendarLink.XML_NAME, nsAlias = ContactsNamespace.GCONTACT_ALIAS, nsUri = ContactsNamespace.GCONTACT)
public class CalendarLink extends ExtensionPoint {
    private static final String HREF = "href";
    private static final String LABEL = "label";
    private static final String PRIMARY = "primary";
    private static final String REL = "rel";
    private static final AttributeHelper.EnumToAttributeValue<Rel> REL_ENUM_TO_ATTRIBUTE_VALUE = new AttributeHelper.EnumToAttributeValue<Rel>() { // from class: com.google.gdata.data.contacts.CalendarLink.1
        @Override // com.google.gdata.data.AttributeHelper.EnumToAttributeValue
        public String getAttributeValue(Rel rel) {
            return rel.toValue();
        }
    };
    static final String XML_NAME = "calendarLink";
    private String href = null;
    private String label = null;
    private Boolean primary = null;
    private Rel rel = null;

    /* JADX INFO: loaded from: classes3.dex */
    public enum Rel {
        FREE_BUSY("free-busy"),
        HOME("home"),
        WORK(DbxWebAuth.ROLE_WORK);

        private final String value;

        Rel(String str) {
            this.value = str;
        }

        public String toValue() {
            return this.value;
        }
    }

    public CalendarLink() {
    }

    public CalendarLink(String str, String str2, Boolean bool, Rel rel) {
        setHref(str);
        setLabel(str2);
        setPrimary(bool);
        setRel(rel);
        setImmutable(true);
    }

    public String getHref() {
        return this.href;
    }

    public void setHref(String str) {
        throwExceptionIfImmutable();
        this.href = str;
    }

    public boolean hasHref() {
        return getHref() != null;
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

    public Rel getRel() {
        return this.rel;
    }

    public void setRel(Rel rel) {
        throwExceptionIfImmutable();
        this.rel = rel;
    }

    public boolean hasRel() {
        return getRel() != null;
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void validate() {
        if (this.href == null) {
            throwExceptionForMissingAttribute("href");
        }
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(CalendarLink.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void putAttributes(AttributeGenerator attributeGenerator) {
        attributeGenerator.put("href", this.href);
        attributeGenerator.put("label", this.label);
        attributeGenerator.put("primary", (Object) this.primary);
        attributeGenerator.put(REL, this.rel, REL_ENUM_TO_ATTRIBUTE_VALUE);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void consumeAttributes(AttributeHelper attributeHelper) throws ParseException {
        this.href = attributeHelper.consume("href", true);
        this.label = attributeHelper.consume("label", false);
        this.primary = Boolean.valueOf(attributeHelper.consumeBoolean("primary", false));
        this.rel = (Rel) attributeHelper.consumeEnum(REL, false, Rel.class, null, REL_ENUM_TO_ATTRIBUTE_VALUE);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!sameClassAs(obj)) {
            return false;
        }
        CalendarLink calendarLink = (CalendarLink) obj;
        return eq(this.href, calendarLink.href) && eq(this.label, calendarLink.label) && eq(this.primary, calendarLink.primary) && eq(this.rel, calendarLink.rel);
    }

    public int hashCode() {
        int iHashCode = getClass().hashCode();
        if (this.href != null) {
            iHashCode = (iHashCode * 37) + this.href.hashCode();
        }
        if (this.label != null) {
            iHashCode = (iHashCode * 37) + this.label.hashCode();
        }
        if (this.primary != null) {
            iHashCode = (iHashCode * 37) + this.primary.hashCode();
        }
        if (this.rel != null) {
            return (iHashCode * 37) + this.rel.hashCode();
        }
        return iHashCode;
    }

    public String toString() {
        return "{CalendarLink href=" + this.href + " label=" + this.label + " primary=" + this.primary + " rel=" + this.rel + "}";
    }
}
