package com.google.gdata.data.docs;

import com.google.gdata.data.AbstractExtension;
import com.google.gdata.data.AttributeGenerator;
import com.google.gdata.data.AttributeHelper;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.util.ParseException;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = MaxUploadSize.XML_NAME, nsAlias = DocsNamespace.DOCS_ALIAS, nsUri = "http://schemas.google.com/docs/2007")
public class MaxUploadSize extends AbstractExtension {
    private static final String KIND = "kind";
    static final String XML_NAME = "maxUploadSize";
    private String kind = null;
    private Long value = null;

    public MaxUploadSize() {
    }

    public MaxUploadSize(String str, Long l) {
        setKind(str);
        setValue(l);
        setImmutable(true);
    }

    public String getKind() {
        return this.kind;
    }

    public void setKind(String str) {
        throwExceptionIfImmutable();
        this.kind = str;
    }

    public boolean hasKind() {
        return getKind() != null;
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
        if (this.kind == null) {
            throwExceptionForMissingAttribute(KIND);
        }
        if (this.value == null) {
            throw new IllegalStateException("Missing text content");
        }
        if (this.value.longValue() < 0) {
            throw new IllegalStateException("Text content must be non-negative: " + this.value);
        }
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(MaxUploadSize.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void putAttributes(AttributeGenerator attributeGenerator) {
        attributeGenerator.put(KIND, this.kind);
        attributeGenerator.setContent(this.value.toString());
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void consumeAttributes(AttributeHelper attributeHelper) throws ParseException {
        this.kind = attributeHelper.consume(KIND, true);
        this.value = Long.valueOf(attributeHelper.consumeLong(null, true));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!sameClassAs(obj)) {
            return false;
        }
        MaxUploadSize maxUploadSize = (MaxUploadSize) obj;
        return eq(this.kind, maxUploadSize.kind) && eq(this.value, maxUploadSize.value);
    }

    public int hashCode() {
        int iHashCode = getClass().hashCode();
        if (this.kind != null) {
            iHashCode = (iHashCode * 37) + this.kind.hashCode();
        }
        if (this.value != null) {
            return (iHashCode * 37) + this.value.hashCode();
        }
        return iHashCode;
    }

    public String toString() {
        return "{MaxUploadSize kind=" + this.kind + " value=" + this.value + "}";
    }
}
