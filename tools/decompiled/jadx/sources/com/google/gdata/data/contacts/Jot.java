package com.google.gdata.data.contacts;

import com.google.gdata.data.AbstractExtension;
import com.google.gdata.data.AttributeGenerator;
import com.google.gdata.data.AttributeHelper;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.util.ParseException;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = Jot.XML_NAME, nsAlias = ContactsNamespace.GCONTACT_ALIAS, nsUri = ContactsNamespace.GCONTACT)
public class Jot extends AbstractExtension {
    private static final String REL = "rel";
    private static final AttributeHelper.EnumToAttributeValue<Rel> REL_ENUM_TO_ATTRIBUTE_VALUE = new AttributeHelper.LowerCaseEnumToAttributeValue();
    static final String XML_NAME = "jot";
    private Rel rel = null;
    private String value = null;

    /* JADX INFO: loaded from: classes3.dex */
    public enum Rel {
        HOME,
        KEYWORDS,
        OTHER,
        USER,
        WORK
    }

    public Jot() {
    }

    public Jot(Rel rel, String str) {
        setRel(rel);
        setValue(str);
        setImmutable(true);
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
        if (this.rel == null) {
            throwExceptionForMissingAttribute(REL);
        }
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(Jot.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void putAttributes(AttributeGenerator attributeGenerator) {
        attributeGenerator.put(REL, this.rel, REL_ENUM_TO_ATTRIBUTE_VALUE);
        attributeGenerator.setContent(this.value);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void consumeAttributes(AttributeHelper attributeHelper) throws ParseException {
        this.rel = (Rel) attributeHelper.consumeEnum(REL, true, Rel.class, null, REL_ENUM_TO_ATTRIBUTE_VALUE);
        this.value = attributeHelper.consume(null, false);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!sameClassAs(obj)) {
            return false;
        }
        Jot jot = (Jot) obj;
        return eq(this.rel, jot.rel) && eq(this.value, jot.value);
    }

    public int hashCode() {
        int iHashCode = getClass().hashCode();
        if (this.rel != null) {
            iHashCode = (iHashCode * 37) + this.rel.hashCode();
        }
        if (this.value != null) {
            return (iHashCode * 37) + this.value.hashCode();
        }
        return iHashCode;
    }

    public String toString() {
        return "{Jot rel=" + this.rel + " value=" + this.value + "}";
    }
}
