package com.google.gdata.data.contacts;

import com.google.gdata.data.AttributeGenerator;
import com.google.gdata.data.AttributeHelper;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionPoint;
import com.google.gdata.util.ParseException;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = Language.XML_NAME, nsAlias = ContactsNamespace.GCONTACT_ALIAS, nsUri = ContactsNamespace.GCONTACT)
public class Language extends ExtensionPoint {
    private static final String CODE = "code";
    private static final String LABEL = "label";
    static final String XML_NAME = "language";
    private String code = null;
    private String label = null;

    public Language() {
    }

    public Language(String str, String str2) {
        setCode(str);
        setLabel(str2);
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

    @Override // com.google.gdata.data.AbstractExtension
    protected void validate() {
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(Language.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void putAttributes(AttributeGenerator attributeGenerator) {
        attributeGenerator.put("code", this.code);
        attributeGenerator.put("label", this.label);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void consumeAttributes(AttributeHelper attributeHelper) throws ParseException {
        this.code = attributeHelper.consume("code", false);
        this.label = attributeHelper.consume("label", false);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!sameClassAs(obj)) {
            return false;
        }
        Language language = (Language) obj;
        return eq(this.code, language.code) && eq(this.label, language.label);
    }

    public int hashCode() {
        int iHashCode = getClass().hashCode();
        if (this.code != null) {
            iHashCode = (iHashCode * 37) + this.code.hashCode();
        }
        if (this.label != null) {
            return (iHashCode * 37) + this.label.hashCode();
        }
        return iHashCode;
    }

    public String toString() {
        return "{Language code=" + this.code + " label=" + this.label + "}";
    }
}
