package com.google.gdata.data.docs;

import com.adobe.premiereclip.dcx.DCXProjectKeys;
import com.google.gdata.client.DocumentQuery;
import com.google.gdata.client.GDataProtocol;
import com.google.gdata.data.AttributeGenerator;
import com.google.gdata.data.AttributeHelper;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionPoint;
import com.google.gdata.util.ParseException;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = "query", nsAlias = DocsNamespace.DOCS_ALIAS, nsUri = "http://schemas.google.com/docs/2007")
public class QueryParameter extends ExtensionPoint {
    private static final String TYPE = "type";
    private static final AttributeHelper.EnumToAttributeValue<Type> TYPE_ENUM_TO_ATTRIBUTE_VALUE = new AttributeHelper.EnumToAttributeValue<Type>() { // from class: com.google.gdata.data.docs.QueryParameter.1
        @Override // com.google.gdata.data.AttributeHelper.EnumToAttributeValue
        public String getAttributeValue(Type type) {
            return type.toValue();
        }
    };
    private static final String VALUE = "value";
    static final String XML_NAME = "query";
    private Type type = null;
    private String value = null;

    /* JADX INFO: loaded from: classes3.dex */
    public enum Type {
        AUTHOR(GDataProtocol.Query.AUTHOR),
        CATEGORY("category"),
        OPENED_MAX("opened-max"),
        OPENED_MIN("opened-min"),
        OWNER(DCXProjectKeys.kDCXKey_Project_owner),
        Q("q"),
        READER("reader"),
        TITLE("title"),
        TITLE_EXACT(DocumentQuery.TITLE_EXACT),
        UPDATED_MAX(GDataProtocol.Query.UPDATED_MAX),
        UPDATED_MIN(GDataProtocol.Query.UPDATED_MIN),
        WRITER("writer");

        private final String value;

        Type(String str) {
            this.value = str;
        }

        public String toValue() {
            return this.value;
        }
    }

    public QueryParameter() {
    }

    public QueryParameter(Type type, String str) {
        setType(type);
        setValue(str);
        setImmutable(true);
    }

    public Type getType() {
        return this.type;
    }

    public void setType(Type type) {
        throwExceptionIfImmutable();
        this.type = type;
    }

    public boolean hasType() {
        return getType() != null;
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
        if (this.type == null) {
            throwExceptionForMissingAttribute("type");
        }
        if (this.value == null) {
            throwExceptionForMissingAttribute(VALUE);
        }
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(QueryParameter.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void putAttributes(AttributeGenerator attributeGenerator) {
        attributeGenerator.put("type", this.type, TYPE_ENUM_TO_ATTRIBUTE_VALUE);
        attributeGenerator.put(VALUE, this.value);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void consumeAttributes(AttributeHelper attributeHelper) throws ParseException {
        this.type = (Type) attributeHelper.consumeEnum("type", true, Type.class, null, TYPE_ENUM_TO_ATTRIBUTE_VALUE);
        this.value = attributeHelper.consume(VALUE, true);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!sameClassAs(obj)) {
            return false;
        }
        QueryParameter queryParameter = (QueryParameter) obj;
        return eq(this.type, queryParameter.type) && eq(this.value, queryParameter.value);
    }

    public int hashCode() {
        int iHashCode = getClass().hashCode();
        if (this.type != null) {
            iHashCode = (iHashCode * 37) + this.type.hashCode();
        }
        if (this.value != null) {
            return (iHashCode * 37) + this.value.hashCode();
        }
        return iHashCode;
    }

    public String toString() {
        return "{QueryParameter type=" + this.type + " value=" + this.value + "}";
    }
}
