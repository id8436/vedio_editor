package com.google.gdata.data.docs;

import com.google.gdata.data.AbstractExtension;
import com.google.gdata.data.AttributeGenerator;
import com.google.gdata.data.AttributeHelper;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.util.ParseException;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = ArchiveStatus.XML_NAME, nsAlias = DocsNamespace.DOCS_ALIAS, nsUri = "http://schemas.google.com/docs/2007")
public class ArchiveStatus extends AbstractExtension {
    private static final AttributeHelper.EnumToAttributeValue<Value> VALUE_ENUM_TO_ATTRIBUTE_VALUE = new AttributeHelper.LowerCaseEnumToAttributeValue();
    static final String XML_NAME = "archiveStatus";
    private Value value = null;

    /* JADX INFO: loaded from: classes3.dex */
    public enum Value {
        ABORTED,
        ARCHIVING,
        EXPIRED,
        FINISHED,
        FLATTENING,
        QUEUED
    }

    public ArchiveStatus() {
    }

    public ArchiveStatus(Value value) {
        setValue(value);
        setImmutable(true);
    }

    public Value getValue() {
        return this.value;
    }

    public void setValue(Value value) {
        throwExceptionIfImmutable();
        this.value = value;
    }

    public boolean hasValue() {
        return getValue() != null;
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void validate() {
        if (this.value == null) {
            throw new IllegalStateException("Missing text content");
        }
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(ArchiveStatus.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void putAttributes(AttributeGenerator attributeGenerator) {
        attributeGenerator.setContent(VALUE_ENUM_TO_ATTRIBUTE_VALUE.getAttributeValue(this.value));
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void consumeAttributes(AttributeHelper attributeHelper) throws ParseException {
        this.value = (Value) attributeHelper.consumeEnum(null, true, Value.class, null, VALUE_ENUM_TO_ATTRIBUTE_VALUE);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!sameClassAs(obj)) {
            return false;
        }
        return eq(this.value, ((ArchiveStatus) obj).value);
    }

    public int hashCode() {
        int iHashCode = getClass().hashCode();
        if (this.value != null) {
            return (iHashCode * 37) + this.value.hashCode();
        }
        return iHashCode;
    }

    public String toString() {
        return "{ArchiveStatus value=" + this.value + "}";
    }
}
