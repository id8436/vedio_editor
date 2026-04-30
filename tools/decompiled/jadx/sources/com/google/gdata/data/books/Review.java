package com.google.gdata.data.books;

import com.google.gdata.data.AbstractExtension;
import com.google.gdata.data.AttributeGenerator;
import com.google.gdata.data.AttributeHelper;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.util.ParseException;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = Review.XML_NAME, nsAlias = BooksNamespace.GBS_ALIAS, nsUri = BooksNamespace.GBS)
public class Review extends AbstractExtension {
    private static final String LANG = "xml:lang";
    private static final String TYPE = "type";
    static final String XML_NAME = "review";
    private String lang = null;
    private String type = null;
    private String value = null;

    public Review() {
    }

    public Review(String str, String str2, String str3) {
        setLang(str);
        setType(str2);
        setValue(str3);
        setImmutable(true);
    }

    public String getLang() {
        return this.lang;
    }

    public void setLang(String str) {
        throwExceptionIfImmutable();
        this.lang = str;
    }

    public boolean hasLang() {
        return getLang() != null;
    }

    public String getType() {
        return this.type;
    }

    public void setType(String str) {
        throwExceptionIfImmutable();
        this.type = str;
    }

    public boolean hasType() {
        return getType() != null;
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
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(Review.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void putAttributes(AttributeGenerator attributeGenerator) {
        attributeGenerator.put("xml:lang", this.lang);
        attributeGenerator.put("type", this.type);
        attributeGenerator.setContent(this.value);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void consumeAttributes(AttributeHelper attributeHelper) throws ParseException {
        this.lang = attributeHelper.consume("lang", false);
        this.type = attributeHelper.consume("type", false);
        this.value = attributeHelper.consume(null, true);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!sameClassAs(obj)) {
            return false;
        }
        Review review = (Review) obj;
        return eq(this.lang, review.lang) && eq(this.type, review.type) && eq(this.value, review.value);
    }

    public int hashCode() {
        int iHashCode = getClass().hashCode();
        if (this.lang != null) {
            iHashCode = (iHashCode * 37) + this.lang.hashCode();
        }
        if (this.type != null) {
            iHashCode = (iHashCode * 37) + this.type.hashCode();
        }
        if (this.value != null) {
            return (iHashCode * 37) + this.value.hashCode();
        }
        return iHashCode;
    }

    public String toString() {
        return "{Review lang=" + this.lang + " type=" + this.type + " value=" + this.value + "}";
    }
}
