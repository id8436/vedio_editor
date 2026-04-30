package com.google.gdata.data.extensions;

import com.google.gdata.data.AbstractExtension;
import com.google.gdata.data.AttributeGenerator;
import com.google.gdata.data.AttributeHelper;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.util.ParseException;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = CustomProperty.XML_NAME, nsAlias = "gd", nsUri = "http://schemas.google.com/g/2005")
public class CustomProperty extends AbstractExtension {
    private static final String NAME = "name";
    private static final String TYPE = "type";
    private static final String UNIT = "unit";
    static final String XML_NAME = "customProperty";
    private String name = null;
    private String type = null;
    private String unit = null;
    private String value = null;

    public CustomProperty() {
    }

    public CustomProperty(String str, String str2, String str3, String str4) {
        setName(str);
        setType(str2);
        setUnit(str3);
        setValue(str4);
        setImmutable(true);
    }

    public String getName() {
        return this.name;
    }

    public void setName(String str) {
        throwExceptionIfImmutable();
        this.name = str;
    }

    public boolean hasName() {
        return getName() != null;
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

    public String getUnit() {
        return this.unit;
    }

    public void setUnit(String str) {
        throwExceptionIfImmutable();
        this.unit = str;
    }

    public boolean hasUnit() {
        return getUnit() != null;
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
        if (this.name == null) {
            throwExceptionForMissingAttribute("name");
        }
        if (this.value == null) {
            throw new IllegalStateException("Missing text content");
        }
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(CustomProperty.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void putAttributes(AttributeGenerator attributeGenerator) {
        attributeGenerator.put("name", this.name);
        attributeGenerator.put("type", this.type);
        attributeGenerator.put(UNIT, this.unit);
        attributeGenerator.setContent(this.value);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void consumeAttributes(AttributeHelper attributeHelper) throws ParseException {
        this.name = attributeHelper.consume("name", true);
        this.type = attributeHelper.consume("type", false);
        this.unit = attributeHelper.consume(UNIT, false);
        this.value = attributeHelper.consume(null, true);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!sameClassAs(obj)) {
            return false;
        }
        CustomProperty customProperty = (CustomProperty) obj;
        return eq(this.name, customProperty.name) && eq(this.type, customProperty.type) && eq(this.unit, customProperty.unit) && eq(this.value, customProperty.value);
    }

    public int hashCode() {
        int iHashCode = getClass().hashCode();
        if (this.name != null) {
            iHashCode = (iHashCode * 37) + this.name.hashCode();
        }
        if (this.type != null) {
            iHashCode = (iHashCode * 37) + this.type.hashCode();
        }
        if (this.unit != null) {
            iHashCode = (iHashCode * 37) + this.unit.hashCode();
        }
        if (this.value != null) {
            return (iHashCode * 37) + this.value.hashCode();
        }
        return iHashCode;
    }

    public String toString() {
        return "{CustomProperty name=" + this.name + " type=" + this.type + " unit=" + this.unit + " value=" + this.value + "}";
    }
}
