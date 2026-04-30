package com.google.gdata.data.calendar;

import com.google.gdata.data.AttributeGenerator;
import com.google.gdata.data.AttributeHelper;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionPoint;
import com.google.gdata.util.ParseException;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = TimesCleanedProperty.XML_NAME, nsAlias = Namespaces.gCalAlias, nsUri = Namespaces.gCal)
public class TimesCleanedProperty extends ExtensionPoint {
    private static final String VALUE = "value";
    static final String XML_NAME = "timesCleaned";
    private Integer value = null;

    public TimesCleanedProperty() {
    }

    public TimesCleanedProperty(Integer num) {
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
            throwExceptionForMissingAttribute(VALUE);
        } else if (this.value.intValue() < 0) {
            throw new IllegalStateException("value attribute must be non-negative: " + this.value);
        }
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(TimesCleanedProperty.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void putAttributes(AttributeGenerator attributeGenerator) {
        attributeGenerator.put(VALUE, (Object) this.value);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void consumeAttributes(AttributeHelper attributeHelper) throws ParseException {
        this.value = Integer.valueOf(attributeHelper.consumeInteger(VALUE, true));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!sameClassAs(obj)) {
            return false;
        }
        return eq(this.value, ((TimesCleanedProperty) obj).value);
    }

    public int hashCode() {
        int iHashCode = getClass().hashCode();
        if (this.value != null) {
            return (iHashCode * 37) + this.value.hashCode();
        }
        return iHashCode;
    }

    public String toString() {
        return "{TimesCleanedProperty value=" + this.value + "}";
    }
}
