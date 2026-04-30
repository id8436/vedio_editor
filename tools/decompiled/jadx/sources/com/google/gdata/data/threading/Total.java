package com.google.gdata.data.threading;

import com.google.gdata.data.AbstractExtension;
import com.google.gdata.data.AttributeGenerator;
import com.google.gdata.data.AttributeHelper;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.util.ParseException;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = Total.XML_NAME, nsAlias = ThreadingNamespace.THR_ALIAS, nsUri = ThreadingNamespace.THR)
public class Total extends AbstractExtension {
    static final String XML_NAME = "total";
    private Integer value = null;

    public Total() {
    }

    public Total(Integer num) {
        setValue(num);
        setImmutable(true);
    }

    public Integer getValue() {
        return this.value;
    }

    public void setValue(Integer num) {
        throwExceptionIfImmutable();
        this.value = num;
    }

    public boolean hasValue() {
        return getValue() != null;
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void validate() {
        if (this.value == null) {
            throw new IllegalStateException("Missing text content");
        }
        if (this.value.intValue() < 0) {
            throw new IllegalStateException("Text content must be non-negative: " + this.value);
        }
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(Total.class);
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
        this.value = Integer.valueOf(attributeHelper.consumeInteger(null, true));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!sameClassAs(obj)) {
            return false;
        }
        return eq(this.value, ((Total) obj).value);
    }

    public int hashCode() {
        int iHashCode = getClass().hashCode();
        if (this.value != null) {
            return (iHashCode * 37) + this.value.hashCode();
        }
        return iHashCode;
    }

    public String toString() {
        return "{Total value=" + this.value + "}";
    }
}
