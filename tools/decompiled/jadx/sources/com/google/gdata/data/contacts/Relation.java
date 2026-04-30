package com.google.gdata.data.contacts;

import com.adobe.creativesdk.foundation.internal.storage.controllers.upload.AdobeUploadCreateNewFolderMgr;
import com.google.gdata.data.AbstractExtension;
import com.google.gdata.data.AttributeGenerator;
import com.google.gdata.data.AttributeHelper;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.util.ParseException;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = Relation.XML_NAME, nsAlias = ContactsNamespace.GCONTACT_ALIAS, nsUri = ContactsNamespace.GCONTACT)
public class Relation extends AbstractExtension {
    private static final String LABEL = "label";
    private static final String REL = "rel";
    private static final AttributeHelper.EnumToAttributeValue<Rel> REL_ENUM_TO_ATTRIBUTE_VALUE = new AttributeHelper.EnumToAttributeValue<Rel>() { // from class: com.google.gdata.data.contacts.Relation.1
        @Override // com.google.gdata.data.AttributeHelper.EnumToAttributeValue
        public String getAttributeValue(Rel rel) {
            return rel.toValue();
        }
    };
    static final String XML_NAME = "relation";
    private String label = null;
    private Rel rel = null;
    private String value = null;

    /* JADX INFO: loaded from: classes3.dex */
    public enum Rel {
        ASSISTANT("assistant"),
        BROTHER("brother"),
        CHILD("child"),
        DOMESTIC_PARTNER("domestic-partner"),
        FATHER("father"),
        FRIEND("friend"),
        MANAGER("manager"),
        MOTHER("mother"),
        PARENT(AdobeUploadCreateNewFolderMgr.PARENT_COLLECTION_KEY),
        PARTNER("partner"),
        REFERRED_BY("referred-by"),
        RELATIVE("relative"),
        SISTER("sister"),
        SPOUSE("spouse");

        private final String value;

        Rel(String str) {
            this.value = str;
        }

        public String toValue() {
            return this.value;
        }
    }

    public Relation() {
    }

    public Relation(String str, Rel rel, String str2) {
        setLabel(str);
        setRel(rel);
        setValue(str2);
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
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(Relation.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void putAttributes(AttributeGenerator attributeGenerator) {
        attributeGenerator.put("label", this.label);
        attributeGenerator.put(REL, this.rel, REL_ENUM_TO_ATTRIBUTE_VALUE);
        attributeGenerator.setContent(this.value);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void consumeAttributes(AttributeHelper attributeHelper) throws ParseException {
        this.label = attributeHelper.consume("label", false);
        this.rel = (Rel) attributeHelper.consumeEnum(REL, false, Rel.class, null, REL_ENUM_TO_ATTRIBUTE_VALUE);
        this.value = attributeHelper.consume(null, false);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!sameClassAs(obj)) {
            return false;
        }
        Relation relation = (Relation) obj;
        return eq(this.label, relation.label) && eq(this.rel, relation.rel) && eq(this.value, relation.value);
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
        return "{Relation label=" + this.label + " rel=" + this.rel + " value=" + this.value + "}";
    }
}
