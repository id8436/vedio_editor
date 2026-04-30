package com.google.gdata.data.analytics;

import com.google.gdata.data.AbstractExtension;
import com.google.gdata.data.AttributeGenerator;
import com.google.gdata.data.AttributeHelper;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.util.ParseException;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = GwoAutoPruneMode.XML_NAME, nsAlias = AnalyticsNamespace.GWO_ALIAS, nsUri = AnalyticsNamespace.GWO)
public class GwoAutoPruneMode extends AbstractExtension {
    private static final AttributeHelper.EnumToAttributeValue<Value> VALUE_ENUM_TO_ATTRIBUTE_VALUE = new AttributeHelper.EnumToAttributeValue<Value>() { // from class: com.google.gdata.data.analytics.GwoAutoPruneMode.1
        @Override // com.google.gdata.data.AttributeHelper.EnumToAttributeValue
        public String getAttributeValue(Value value) {
            return value.toValue();
        }
    };
    static final String XML_NAME = "autoPruneMode";
    private Value value = null;

    /* JADX INFO: loaded from: classes3.dex */
    public enum Value {
        AGGRESSIVE("Aggressive"),
        CONSERVATIVE("Conservative"),
        NONE("None"),
        NORMAL("Normal");

        private final String value;

        Value(String str) {
            this.value = str;
        }

        public String toValue() {
            return this.value;
        }
    }

    public GwoAutoPruneMode() {
    }

    public GwoAutoPruneMode(Value value) {
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
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(GwoAutoPruneMode.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void putAttributes(AttributeGenerator attributeGenerator) {
        attributeGenerator.setContent(VALUE_ENUM_TO_ATTRIBUTE_VALUE.getAttributeValue(this.value));
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void consumeAttributes(AttributeHelper attributeHelper) throws ParseException {
        this.value = (Value) attributeHelper.consumeEnum(null, false, Value.class, null, VALUE_ENUM_TO_ATTRIBUTE_VALUE);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!sameClassAs(obj)) {
            return false;
        }
        return eq(this.value, ((GwoAutoPruneMode) obj).value);
    }

    public int hashCode() {
        int iHashCode = getClass().hashCode();
        if (this.value != null) {
            return (iHashCode * 37) + this.value.hashCode();
        }
        return iHashCode;
    }

    public String toString() {
        return "{GwoAutoPruneMode value=" + this.value + "}";
    }
}
