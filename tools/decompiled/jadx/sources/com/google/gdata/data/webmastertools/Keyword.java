package com.google.gdata.data.webmastertools;

import com.google.gdata.data.AbstractExtension;
import com.google.gdata.data.AttributeGenerator;
import com.google.gdata.data.AttributeHelper;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.util.ParseException;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = Keyword.XML_NAME, nsAlias = Namespaces.WT_ALIAS, nsUri = Namespaces.WT)
public class Keyword extends AbstractExtension {
    private static final String SOURCE = "source";
    static final String XML_NAME = "keyword";
    private String source = null;
    private String value = null;

    /* JADX INFO: loaded from: classes3.dex */
    public final class Source {
        public static final String EXTERNAL = "external";
        public static final String INTERNAL = "internal";
    }

    public Keyword() {
    }

    public Keyword(String str, String str2) {
        setSource(str);
        setValue(str2);
        setImmutable(true);
    }

    public String getSource() {
        return this.source;
    }

    public void setSource(String str) {
        throwExceptionIfImmutable();
        this.source = str;
    }

    public boolean hasSource() {
        return getSource() != null;
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
        if (this.source == null) {
            throwExceptionForMissingAttribute("source");
        }
        if (this.value == null) {
            throw new IllegalStateException("Missing text content");
        }
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(Keyword.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void putAttributes(AttributeGenerator attributeGenerator) {
        attributeGenerator.put("source", this.source);
        attributeGenerator.setContent(this.value);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void consumeAttributes(AttributeHelper attributeHelper) throws ParseException {
        this.source = attributeHelper.consume("source", true);
        this.value = attributeHelper.consume(null, true);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!sameClassAs(obj)) {
            return false;
        }
        Keyword keyword = (Keyword) obj;
        return eq(this.source, keyword.source) && eq(this.value, keyword.value);
    }

    public int hashCode() {
        int iHashCode = getClass().hashCode();
        if (this.source != null) {
            iHashCode = (iHashCode * 37) + this.source.hashCode();
        }
        if (this.value != null) {
            return (iHashCode * 37) + this.value.hashCode();
        }
        return iHashCode;
    }

    public String toString() {
        return "{Keyword source=" + this.source + " value=" + this.value + "}";
    }
}
