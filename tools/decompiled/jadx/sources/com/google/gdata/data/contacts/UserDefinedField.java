package com.google.gdata.data.contacts;

import com.google.gdata.data.AttributeGenerator;
import com.google.gdata.data.AttributeHelper;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionPoint;
import com.google.gdata.util.ParseException;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = UserDefinedField.XML_NAME, nsAlias = ContactsNamespace.GCONTACT_ALIAS, nsUri = ContactsNamespace.GCONTACT)
public class UserDefinedField extends ExtensionPoint {
    private static final String KEY = "key";
    private static final String VALUE = "value";
    static final String XML_NAME = "userDefinedField";
    private String key = null;
    private String value = null;

    public UserDefinedField() {
    }

    public UserDefinedField(String str, String str2) {
        setKey(str);
        setValue(str2);
        setImmutable(true);
    }

    public String getKey() {
        return this.key;
    }

    public void setKey(String str) {
        throwExceptionIfImmutable();
        this.key = str;
    }

    public boolean hasKey() {
        return getKey() != null;
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
        if (this.key == null) {
            throwExceptionForMissingAttribute(KEY);
        }
        if (this.value == null) {
            throwExceptionForMissingAttribute(VALUE);
        }
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(UserDefinedField.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void putAttributes(AttributeGenerator attributeGenerator) {
        attributeGenerator.put(KEY, this.key);
        attributeGenerator.put(VALUE, this.value);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void consumeAttributes(AttributeHelper attributeHelper) throws ParseException {
        this.key = attributeHelper.consume(KEY, true);
        this.value = attributeHelper.consume(VALUE, true);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!sameClassAs(obj)) {
            return false;
        }
        UserDefinedField userDefinedField = (UserDefinedField) obj;
        return eq(this.key, userDefinedField.key) && eq(this.value, userDefinedField.value);
    }

    public int hashCode() {
        int iHashCode = getClass().hashCode();
        if (this.key != null) {
            iHashCode = (iHashCode * 37) + this.key.hashCode();
        }
        if (this.value != null) {
            return (iHashCode * 37) + this.value.hashCode();
        }
        return iHashCode;
    }

    public String toString() {
        return "{UserDefinedField key=" + this.key + " value=" + this.value + "}";
    }
}
