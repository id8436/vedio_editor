package com.google.gdata.data.photos;

import com.google.gdata.data.AbstractExtension;
import com.google.gdata.data.AttributeGenerator;
import com.google.gdata.data.AttributeHelper;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.util.ParseException;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = GphotoCommentsEnabled.XML_NAME, nsAlias = Namespaces.PHOTOS_ALIAS, nsUri = Namespaces.PHOTOS)
public class GphotoCommentsEnabled extends AbstractExtension {
    static final String XML_NAME = "commentingEnabled";
    private Boolean value = null;

    public GphotoCommentsEnabled() {
    }

    public GphotoCommentsEnabled(Boolean bool) {
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
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(GphotoCommentsEnabled.class);
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
        String strConsume = attributeHelper.consume(null, false);
        if (strConsume == null) {
            this.value = false;
            return;
        }
        if ("true".equals(strConsume) || "1".equals(strConsume) || "ture".equals(strConsume)) {
            this.value = true;
        } else {
            if ("false".equals(strConsume) || "0".equals(strConsume)) {
                this.value = false;
                return;
            }
            throw new ParseException("Invalid boolean value for attribute: '" + strConsume + "'");
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!sameClassAs(obj)) {
            return false;
        }
        return eq(this.value, ((GphotoCommentsEnabled) obj).value);
    }

    public int hashCode() {
        int iHashCode = getClass().hashCode();
        if (this.value != null) {
            return (iHashCode * 37) + this.value.hashCode();
        }
        return iHashCode;
    }

    public String toString() {
        return "{GphotoCommentsEnabled value=" + this.value + "}";
    }
}
