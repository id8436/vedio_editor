package com.google.gdata.data.photos;

import com.google.gdata.data.AbstractExtension;
import com.google.gdata.data.AttributeGenerator;
import com.google.gdata.data.AttributeHelper;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.util.ParseException;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = GphotoShowLink.XML_NAME, nsAlias = Namespaces.PHOTOS_ALIAS, nsUri = Namespaces.PHOTOS)
public class GphotoShowLink extends AbstractExtension {
    static final String XML_NAME = "showLink";
    private Boolean value = null;

    public GphotoShowLink() {
    }

    public GphotoShowLink(Boolean bool) {
        setValue(bool);
        setImmutable(true);
    }

    public Boolean getValue() {
        return this.value;
    }

    public void setValue(Boolean bool) {
        throwExceptionIfImmutable();
        this.value = bool;
    }

    public boolean hasValue() {
        return getValue() != null;
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void validate() {
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(GphotoShowLink.class);
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
        this.value = Boolean.valueOf(attributeHelper.consumeBoolean(null, false));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!sameClassAs(obj)) {
            return false;
        }
        return eq(this.value, ((GphotoShowLink) obj).value);
    }

    public int hashCode() {
        int iHashCode = getClass().hashCode();
        if (this.value != null) {
            return (iHashCode * 37) + this.value.hashCode();
        }
        return iHashCode;
    }

    public String toString() {
        return "{GphotoShowLink value=" + this.value + "}";
    }
}
