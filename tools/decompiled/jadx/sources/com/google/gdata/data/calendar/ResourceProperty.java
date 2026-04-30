package com.google.gdata.data.calendar;

import com.google.gdata.data.AbstractExtension;
import com.google.gdata.data.AttributeGenerator;
import com.google.gdata.data.AttributeHelper;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.util.ParseException;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = ResourceProperty.EXTENSION_LOCAL_NAME, nsAlias = Namespaces.gCalAlias, nsUri = Namespaces.gCal)
public class ResourceProperty extends AbstractExtension {
    private static final String ATTRIBUTE_ID = "id";
    private static final String ATTRIBUTE_VALUE = "value";
    static final String EXTENSION_LOCAL_NAME = "resource";
    protected String id;
    protected String value;
    public static final ResourceProperty TRUE = new ResourceProperty("true");
    public static final ResourceProperty FALSE = new ResourceProperty("false");

    public static ExtensionDescription getDefaultDescription() {
        return ExtensionDescription.getDefaultDescription(ResourceProperty.class);
    }

    public ResourceProperty() {
        this(null);
    }

    public ResourceProperty(String str) {
        this.value = str;
    }

    public String getId() {
        return this.id;
    }

    public void setId(String str) {
        this.id = str;
    }

    public String getValue() {
        return this.value;
    }

    public void setValue(String str) {
        this.value = str;
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void putAttributes(AttributeGenerator attributeGenerator) {
        attributeGenerator.put("id", this.id);
        attributeGenerator.put(ATTRIBUTE_VALUE, this.value);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void consumeAttributes(AttributeHelper attributeHelper) throws ParseException {
        this.id = attributeHelper.consume("id", false);
        this.value = attributeHelper.consume(ATTRIBUTE_VALUE, false);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void validate() {
        if (this.id == null && this.value == null) {
            throw new IllegalStateException("No attributes defined");
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!sameClassAs(obj)) {
            return false;
        }
        ResourceProperty resourceProperty = (ResourceProperty) obj;
        return eq(this.value, resourceProperty.value) && eq(this.id, resourceProperty.id);
    }

    public int hashCode() {
        int iHashCode = getClass().hashCode();
        if (this.value != null) {
            iHashCode = (iHashCode * 37) + this.value.hashCode();
        }
        if (this.id != null) {
            return (iHashCode * 37) + this.id.hashCode();
        }
        return iHashCode;
    }
}
