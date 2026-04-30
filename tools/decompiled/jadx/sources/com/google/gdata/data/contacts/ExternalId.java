package com.google.gdata.data.contacts;

import com.google.gdata.data.AttributeGenerator;
import com.google.gdata.data.AttributeHelper;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionPoint;
import com.google.gdata.util.ParseException;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = ExternalId.XML_NAME, nsAlias = ContactsNamespace.GCONTACT_ALIAS, nsUri = ContactsNamespace.GCONTACT)
public class ExternalId extends ExtensionPoint {
    private static final String LABEL = "label";
    private static final String REL = "rel";
    private static final String VALUE = "value";
    static final String XML_NAME = "externalId";
    private String label = null;
    private String rel = null;
    private String value = null;

    /* JADX INFO: loaded from: classes3.dex */
    public final class Rel {
        public static final String ACCOUNT = "account";
        public static final String CUSTOMER = "customer";
        public static final String NETWORK = "network";
        public static final String ORGANIZATION = "organization";
    }

    public ExternalId() {
    }

    public ExternalId(String str, String str2, String str3) {
        setLabel(str);
        setRel(str2);
        setValue(str3);
        setImmutable(true);
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

    public String getValue() {
        return this.value;
    }

    public void setValue(String str) {
        throwExceptionIfImmutable();
        this.value = str;
    }

    public boolean hasValue() {
        return getValue() != null;
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void validate() {
        if (this.value == null) {
            throwExceptionForMissingAttribute(VALUE);
        }
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(ExternalId.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void putAttributes(AttributeGenerator attributeGenerator) {
        attributeGenerator.put("label", this.label);
        attributeGenerator.put(REL, this.rel);
        attributeGenerator.put(VALUE, this.value);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void consumeAttributes(AttributeHelper attributeHelper) throws ParseException {
        this.label = attributeHelper.consume("label", false);
        this.rel = attributeHelper.consume(REL, false);
        this.value = attributeHelper.consume(VALUE, true);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!sameClassAs(obj)) {
            return false;
        }
        ExternalId externalId = (ExternalId) obj;
        return eq(this.label, externalId.label) && eq(this.rel, externalId.rel) && eq(this.value, externalId.value);
    }

    public int hashCode() {
        int iHashCode = getClass().hashCode();
        if (this.label != null) {
            iHashCode = (iHashCode * 37) + this.label.hashCode();
        }
        if (this.rel != null) {
            iHashCode = (iHashCode * 37) + this.rel.hashCode();
        }
        if (this.value != null) {
            return (iHashCode * 37) + this.value.hashCode();
        }
        return iHashCode;
    }

    public String toString() {
        return "{ExternalId label=" + this.label + " rel=" + this.rel + " value=" + this.value + "}";
    }
}
