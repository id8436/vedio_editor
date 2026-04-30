package com.google.gdata.data.extensions;

import com.google.gdata.data.AbstractExtension;
import com.google.gdata.data.AttributeGenerator;
import com.google.gdata.data.AttributeHelper;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.util.ParseException;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = "country", nsAlias = "gd", nsUri = "http://schemas.google.com/g/2005")
public class Country extends AbstractExtension {
    private static final String CODE = "code";
    static final String XML_NAME = "country";
    private String code = null;
    private String value = null;

    public Country() {
    }

    public Country(String str, String str2) {
        setCode(str);
        setValue(str2);
        setImmutable(true);
    }

    public String getCode() {
        return this.code;
    }

    public void setCode(String str) {
        throwExceptionIfImmutable();
        this.code = str;
    }

    public boolean hasCode() {
        return getCode() != null;
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
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(Country.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void putAttributes(AttributeGenerator attributeGenerator) {
        attributeGenerator.put("code", this.code);
        attributeGenerator.setContent(this.value);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void consumeAttributes(AttributeHelper attributeHelper) throws ParseException {
        this.code = attributeHelper.consume("code", false);
        this.value = attributeHelper.consume(null, false);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!sameClassAs(obj)) {
            return false;
        }
        Country country = (Country) obj;
        return eq(this.code, country.code) && eq(this.value, country.value);
    }

    public int hashCode() {
        int iHashCode = getClass().hashCode();
        if (this.code != null) {
            iHashCode = (iHashCode * 37) + this.code.hashCode();
        }
        if (this.value != null) {
            return (iHashCode * 37) + this.value.hashCode();
        }
        return iHashCode;
    }

    public String toString() {
        return "{Country code=" + this.code + " value=" + this.value + "}";
    }
}
