package com.google.gdata.data.contacts;

import com.google.gdata.data.AttributeGenerator;
import com.google.gdata.data.AttributeHelper;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionPoint;
import com.google.gdata.util.ParseException;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = Sensitivity.XML_NAME, nsAlias = ContactsNamespace.GCONTACT_ALIAS, nsUri = ContactsNamespace.GCONTACT)
public class Sensitivity extends ExtensionPoint {
    private static final String REL = "rel";
    private static final AttributeHelper.EnumToAttributeValue<Rel> REL_ENUM_TO_ATTRIBUTE_VALUE = new AttributeHelper.LowerCaseEnumToAttributeValue();
    static final String XML_NAME = "sensitivity";
    private Rel rel = null;

    /* JADX INFO: loaded from: classes3.dex */
    public enum Rel {
        CONFIDENTIAL,
        NORMAL,
        PERSONAL,
        PRIVATE
    }

    public Sensitivity() {
    }

    public Sensitivity(Rel rel) {
        setRel(rel);
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

    @Override // com.google.gdata.data.AbstractExtension
    protected void validate() {
        if (this.rel == null) {
            throwExceptionForMissingAttribute(REL);
        }
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(Sensitivity.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void putAttributes(AttributeGenerator attributeGenerator) {
        attributeGenerator.put(REL, this.rel, REL_ENUM_TO_ATTRIBUTE_VALUE);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void consumeAttributes(AttributeHelper attributeHelper) throws ParseException {
        this.rel = (Rel) attributeHelper.consumeEnum(REL, true, Rel.class, null, REL_ENUM_TO_ATTRIBUTE_VALUE);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!sameClassAs(obj)) {
            return false;
        }
        return eq(this.rel, ((Sensitivity) obj).rel);
    }

    public int hashCode() {
        int iHashCode = getClass().hashCode();
        if (this.rel != null) {
            return (iHashCode * 37) + this.rel.hashCode();
        }
        return iHashCode;
    }

    public String toString() {
        return "{Sensitivity rel=" + this.rel + "}";
    }
}
