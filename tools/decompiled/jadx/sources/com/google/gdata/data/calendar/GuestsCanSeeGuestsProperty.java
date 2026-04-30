package com.google.gdata.data.calendar;

import com.google.gdata.data.AttributeGenerator;
import com.google.gdata.data.AttributeHelper;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionPoint;
import com.google.gdata.util.ParseException;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = GuestsCanSeeGuestsProperty.XML_NAME, nsAlias = Namespaces.gCalAlias, nsUri = Namespaces.gCal)
public class GuestsCanSeeGuestsProperty extends ExtensionPoint {
    private static final String VALUE = "value";
    static final String XML_NAME = "guestsCanSeeGuests";
    private Boolean value = null;
    public static final GuestsCanSeeGuestsProperty TRUE = new GuestsCanSeeGuestsProperty(true);
    public static final GuestsCanSeeGuestsProperty FALSE = new GuestsCanSeeGuestsProperty(false);

    public GuestsCanSeeGuestsProperty() {
    }

    public GuestsCanSeeGuestsProperty(Boolean bool) {
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
        if (this.value == null) {
            throwExceptionForMissingAttribute(VALUE);
        }
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(GuestsCanSeeGuestsProperty.class);
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
        this.value = Boolean.valueOf(attributeHelper.consumeBoolean(VALUE, true));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!sameClassAs(obj)) {
            return false;
        }
        return eq(this.value, ((GuestsCanSeeGuestsProperty) obj).value);
    }

    public int hashCode() {
        int iHashCode = getClass().hashCode();
        if (this.value != null) {
            return (iHashCode * 37) + this.value.hashCode();
        }
        return iHashCode;
    }

    public String toString() {
        return "{GuestsCanSeeGuestsProperty value=" + this.value + "}";
    }
}
