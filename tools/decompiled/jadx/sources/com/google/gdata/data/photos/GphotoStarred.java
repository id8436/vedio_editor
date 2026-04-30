package com.google.gdata.data.photos;

import com.google.gdata.data.AbstractExtension;
import com.google.gdata.data.AttributeGenerator;
import com.google.gdata.data.AttributeHelper;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.util.ParseException;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = "starred", nsAlias = Namespaces.PHOTOS_ALIAS, nsUri = Namespaces.PHOTOS)
public class GphotoStarred extends AbstractExtension {
    private static final String TOTAL = "total";
    static final String XML_NAME = "starred";
    private Integer total = null;
    private Boolean value = null;

    public GphotoStarred() {
    }

    public GphotoStarred(Integer num, Boolean bool) {
        setTotal(num);
        setValue(bool);
        setImmutable(true);
    }

    public Integer getTotal() {
        return this.total;
    }

    public void setTotal(Integer num) {
        throwExceptionIfImmutable();
        this.total = num;
    }

    public boolean hasTotal() {
        return getTotal() != null;
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
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(GphotoStarred.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void putAttributes(AttributeGenerator attributeGenerator) {
        attributeGenerator.put(TOTAL, (Object) this.total);
        attributeGenerator.setContent(this.value.toString());
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void consumeAttributes(AttributeHelper attributeHelper) throws ParseException {
        this.total = Integer.valueOf(attributeHelper.consumeInteger(TOTAL, false));
        this.value = Boolean.valueOf(attributeHelper.consumeBoolean(null, false));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!sameClassAs(obj)) {
            return false;
        }
        GphotoStarred gphotoStarred = (GphotoStarred) obj;
        return eq(this.total, gphotoStarred.total) && eq(this.value, gphotoStarred.value);
    }

    public int hashCode() {
        int iHashCode = getClass().hashCode();
        if (this.total != null) {
            iHashCode = (iHashCode * 37) + this.total.hashCode();
        }
        if (this.value != null) {
            return (iHashCode * 37) + this.value.hashCode();
        }
        return iHashCode;
    }

    public String toString() {
        return "{GphotoStarred total=" + this.total + " value=" + this.value + "}";
    }
}
