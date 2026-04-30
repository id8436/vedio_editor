package com.google.gdata.data.analytics;

import com.google.gdata.data.AttributeGenerator;
import com.google.gdata.data.AttributeHelper;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionPoint;
import com.google.gdata.util.ParseException;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = Dimension.XML_NAME, nsAlias = AnalyticsNamespace.DXP_ALIAS, nsUri = AnalyticsNamespace.DXP)
public class Dimension extends ExtensionPoint {
    private static final String NAME = "name";
    private static final String VALUE = "value";
    static final String XML_NAME = "dimension";
    private String name = null;
    private String value = null;

    public Dimension() {
    }

    public Dimension(String str, String str2) {
        setName(str);
        setValue(str2);
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
            throwExceptionForMissingAttribute(VALUE);
        }
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(Dimension.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void putAttributes(AttributeGenerator attributeGenerator) {
        attributeGenerator.put("name", this.name);
        attributeGenerator.put(VALUE, this.value);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void consumeAttributes(AttributeHelper attributeHelper) throws ParseException {
        this.name = attributeHelper.consume("name", true);
        this.value = attributeHelper.consume(VALUE, true);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!sameClassAs(obj)) {
            return false;
        }
        Dimension dimension = (Dimension) obj;
        return eq(this.name, dimension.name) && eq(this.value, dimension.value);
    }

    public int hashCode() {
        int iHashCode = getClass().hashCode();
        if (this.name != null) {
            iHashCode = (iHashCode * 37) + this.name.hashCode();
        }
        if (this.value != null) {
            return (iHashCode * 37) + this.value.hashCode();
        }
        return iHashCode;
    }

    public String toString() {
        return "{Dimension name=" + this.name + " value=" + this.value + "}";
    }
}
