package com.google.gdata.data.photos;

import com.google.gdata.data.AbstractExtension;
import com.google.gdata.data.AttributeGenerator;
import com.google.gdata.data.AttributeHelper;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.util.ParseException;
import java.util.Date;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = "timestamp", nsAlias = Namespaces.PHOTOS_ALIAS, nsUri = Namespaces.PHOTOS)
public class GphotoTimestamp extends AbstractExtension {
    static final String XML_NAME = "timestamp";
    private Long value;

    public GphotoTimestamp() {
        this.value = null;
    }

    public GphotoTimestamp(Long l) {
        this.value = null;
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
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(GphotoTimestamp.class);
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
        return eq(this.value, ((GphotoTimestamp) obj).value);
    }

    public int hashCode() {
        int iHashCode = getClass().hashCode();
        if (this.value != null) {
            return (iHashCode * 37) + this.value.hashCode();
        }
        return iHashCode;
    }

    public String toString() {
        return "{GphotoTimestamp value=" + this.value + "}";
    }

    public GphotoTimestamp(Date date) {
        this(date == null ? null : Long.valueOf(date.getTime()));
    }
}
