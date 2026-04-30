package com.google.gdata.data.spreadsheet;

import com.google.gdata.data.AbstractExtension;
import com.google.gdata.data.AttributeGenerator;
import com.google.gdata.data.AttributeHelper;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.util.ParseException;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = "field", nsAlias = Namespaces.gSpreadAlias, nsUri = Namespaces.gSpread)
public class Field extends AbstractExtension {
    private static final String INDEX = "index";
    private static final String NAME = "name";
    static final String XML_NAME = "field";
    private String index = null;
    private String name = null;
    private String value = null;

    public Field() {
    }

    public Field(String str, String str2, String str3) {
        setIndex(str);
        setName(str2);
        setValue(str3);
        setImmutable(true);
    }

    public String getIndex() {
        return this.index;
    }

    public void setIndex(String str) {
        throwExceptionIfImmutable();
        this.index = str;
    }

    public boolean hasIndex() {
        return getIndex() != null;
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
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(Field.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void putAttributes(AttributeGenerator attributeGenerator) {
        attributeGenerator.put(INDEX, this.index);
        attributeGenerator.put("name", this.name);
        attributeGenerator.setContent(this.value);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void consumeAttributes(AttributeHelper attributeHelper) throws ParseException {
        this.index = attributeHelper.consume(INDEX, false);
        this.name = attributeHelper.consume("name", true);
        this.value = attributeHelper.consume(null, false);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!sameClassAs(obj)) {
            return false;
        }
        Field field = (Field) obj;
        return eq(this.index, field.index) && eq(this.name, field.name) && eq(this.value, field.value);
    }

    public int hashCode() {
        int iHashCode = getClass().hashCode();
        if (this.index != null) {
            iHashCode = (iHashCode * 37) + this.index.hashCode();
        }
        if (this.name != null) {
            iHashCode = (iHashCode * 37) + this.name.hashCode();
        }
        if (this.value != null) {
            return (iHashCode * 37) + this.value.hashCode();
        }
        return iHashCode;
    }

    public String toString() {
        return "{Field index=" + this.index + " name=" + this.name + " value=" + this.value + "}";
    }
}
