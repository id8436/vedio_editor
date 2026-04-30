package com.google.gdata.data.docs;

import com.google.gdata.data.AbstractExtension;
import com.google.gdata.data.AttributeGenerator;
import com.google.gdata.data.AttributeHelper;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.util.ParseException;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = QuotaBytesUsedInTrash.XML_NAME, nsAlias = DocsNamespace.DOCS_ALIAS, nsUri = "http://schemas.google.com/docs/2007")
public class QuotaBytesUsedInTrash extends AbstractExtension {
    static final String XML_NAME = "quotaBytesUsedInTrash";
    private Long value = null;

    public QuotaBytesUsedInTrash() {
    }

    public QuotaBytesUsedInTrash(Long l) {
        setValue(l);
        setImmutable(true);
    }

    public Long getValue() {
        return this.value;
    }

    public void setValue(Long l) {
        throwExceptionIfImmutable();
        this.value = l;
    }

    public boolean hasValue() {
        return getValue() != null;
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void validate() {
        if (this.value != null && this.value.longValue() < 0) {
            throw new IllegalStateException("Text content must be non-negative: " + this.value);
        }
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(QuotaBytesUsedInTrash.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void putAttributes(AttributeGenerator attributeGenerator) {
        attributeGenerator.setContent(this.value.toString());
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void consumeAttributes(AttributeHelper attributeHelper) throws ParseException {
        this.value = Long.valueOf(attributeHelper.consumeLong(null, false));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!sameClassAs(obj)) {
            return false;
        }
        return eq(this.value, ((QuotaBytesUsedInTrash) obj).value);
    }

    public int hashCode() {
        int iHashCode = getClass().hashCode();
        if (this.value != null) {
            return (iHashCode * 37) + this.value.hashCode();
        }
        return iHashCode;
    }

    public String toString() {
        return "{QuotaBytesUsedInTrash value=" + this.value + "}";
    }
}
