package com.google.gdata.data.extensions;

import com.google.gdata.data.AbstractExtension;
import com.google.gdata.data.AttributeGenerator;
import com.google.gdata.data.AttributeHelper;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.util.ParseException;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = "givenName", nsAlias = "gd", nsUri = "http://schemas.google.com/g/2005")
public class GivenName extends AbstractExtension {
    static final String XML_NAME = "givenName";
    private static final String YOMI = "yomi";
    private String value = null;
    private String yomi = null;

    public GivenName() {
    }

    public GivenName(String str, String str2) {
        setValue(str);
        setYomi(str2);
        setImmutable(true);
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

    public String getYomi() {
        return this.yomi;
    }

    public void setYomi(String str) {
        throwExceptionIfImmutable();
        this.yomi = str;
    }

    public boolean hasYomi() {
        return getYomi() != null;
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void validate() {
        if (this.value == null) {
            throw new IllegalStateException("Missing text content");
        }
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(GivenName.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void putAttributes(AttributeGenerator attributeGenerator) {
        attributeGenerator.setContent(this.value);
        attributeGenerator.put(YOMI, this.yomi);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void consumeAttributes(AttributeHelper attributeHelper) throws ParseException {
        this.value = attributeHelper.consume(null, true);
        this.yomi = attributeHelper.consume(YOMI, false);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!sameClassAs(obj)) {
            return false;
        }
        GivenName givenName = (GivenName) obj;
        return eq(this.value, givenName.value) && eq(this.yomi, givenName.yomi);
    }

    public int hashCode() {
        int iHashCode = getClass().hashCode();
        if (this.value != null) {
            iHashCode = (iHashCode * 37) + this.value.hashCode();
        }
        if (this.yomi != null) {
            return (iHashCode * 37) + this.yomi.hashCode();
        }
        return iHashCode;
    }

    public String toString() {
        return "{GivenName value=" + this.value + " yomi=" + this.yomi + "}";
    }
}
