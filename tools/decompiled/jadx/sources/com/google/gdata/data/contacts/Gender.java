package com.google.gdata.data.contacts;

import com.google.gdata.data.AttributeGenerator;
import com.google.gdata.data.AttributeHelper;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionPoint;
import com.google.gdata.util.ParseException;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = Gender.XML_NAME, nsAlias = ContactsNamespace.GCONTACT_ALIAS, nsUri = ContactsNamespace.GCONTACT)
public class Gender extends ExtensionPoint {
    private static final String VALUE = "value";
    private static final AttributeHelper.EnumToAttributeValue<Value> VALUE_ENUM_TO_ATTRIBUTE_VALUE = new AttributeHelper.LowerCaseEnumToAttributeValue();
    static final String XML_NAME = "gender";
    private Value value = null;

    /* JADX INFO: loaded from: classes3.dex */
    public enum Value {
        FEMALE,
        MALE
    }

    public Gender() {
    }

    public Gender(Value value) {
        setValue(value);
        setImmutable(true);
    }

    public Value getValue() {
        return this.value;
    }

    public void setValue(Value value) {
        throwExceptionIfImmutable();
        this.value = value;
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
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(Gender.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void putAttributes(AttributeGenerator attributeGenerator) {
        attributeGenerator.put(VALUE, this.value, VALUE_ENUM_TO_ATTRIBUTE_VALUE);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void consumeAttributes(AttributeHelper attributeHelper) throws ParseException {
        this.value = (Value) attributeHelper.consumeEnum(VALUE, true, Value.class, null, VALUE_ENUM_TO_ATTRIBUTE_VALUE);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!sameClassAs(obj)) {
            return false;
        }
        return eq(this.value, ((Gender) obj).value);
    }

    public int hashCode() {
        int iHashCode = getClass().hashCode();
        if (this.value != null) {
            return (iHashCode * 37) + this.value.hashCode();
        }
        return iHashCode;
    }

    public String toString() {
        return "{Gender value=" + this.value + "}";
    }
}
