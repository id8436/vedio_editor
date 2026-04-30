package com.google.gdata.data.docs;

import com.google.gdata.data.AbstractExtension;
import com.google.gdata.data.AttributeGenerator;
import com.google.gdata.data.AttributeHelper;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.util.ParseException;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = ArchiveFailure.XML_NAME, nsAlias = DocsNamespace.DOCS_ALIAS, nsUri = "http://schemas.google.com/docs/2007")
public class ArchiveFailure extends AbstractExtension {
    private static final String REASON = "reason";
    static final String XML_NAME = "archiveFailure";
    private String reason = null;
    private String value = null;

    public ArchiveFailure() {
    }

    public ArchiveFailure(String str, String str2) {
        setReason(str);
        setValue(str2);
        setImmutable(true);
    }

    public String getReason() {
        return this.reason;
    }

    public void setReason(String str) {
        throwExceptionIfImmutable();
        this.reason = str;
    }

    public boolean hasReason() {
        return getReason() != null;
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
            throw new IllegalStateException("Missing text content");
        }
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(ArchiveFailure.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void putAttributes(AttributeGenerator attributeGenerator) {
        attributeGenerator.put(REASON, this.reason);
        attributeGenerator.setContent(this.value);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void consumeAttributes(AttributeHelper attributeHelper) throws ParseException {
        this.reason = attributeHelper.consume(REASON, false);
        this.value = attributeHelper.consume(null, true);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!sameClassAs(obj)) {
            return false;
        }
        ArchiveFailure archiveFailure = (ArchiveFailure) obj;
        return eq(this.reason, archiveFailure.reason) && eq(this.value, archiveFailure.value);
    }

    public int hashCode() {
        int iHashCode = getClass().hashCode();
        if (this.reason != null) {
            iHashCode = (iHashCode * 37) + this.reason.hashCode();
        }
        if (this.value != null) {
            return (iHashCode * 37) + this.value.hashCode();
        }
        return iHashCode;
    }

    public String toString() {
        return "{ArchiveFailure reason=" + this.reason + " value=" + this.value + "}";
    }
}
