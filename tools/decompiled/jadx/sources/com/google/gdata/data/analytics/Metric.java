package com.google.gdata.data.analytics;

import com.google.gdata.data.AttributeGenerator;
import com.google.gdata.data.AttributeHelper;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionPoint;
import com.google.gdata.util.ParseException;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = Metric.XML_NAME, nsAlias = AnalyticsNamespace.DXP_ALIAS, nsUri = AnalyticsNamespace.DXP)
public class Metric extends ExtensionPoint {
    private static final String CONFIDENCEINTERVAL = "confidenceInterval";
    private static final String NAME = "name";
    private static final String TYPE = "type";
    private static final String VALUE = "value";
    static final String XML_NAME = "metric";
    private Double confidenceInterval = null;
    private String name = null;
    private String type = null;
    private String value = null;

    /* JADX INFO: loaded from: classes3.dex */
    public final class Type {
        public static final String CURRENCY = "currency";
        public static final String FLOAT = "float";
        public static final String INTEGER = "integer";
        public static final String PERCENT = "percent";
        public static final String TIME = "time";
        public static final String US_CURRENCY = "us_currency";
    }

    public Metric() {
    }

    public Metric(Double d2, String str, String str2, String str3) {
        setConfidenceInterval(d2);
        setName(str);
        setType(str2);
        setValue(str3);
        setImmutable(true);
    }

    public Double getConfidenceInterval() {
        return this.confidenceInterval;
    }

    public void setConfidenceInterval(Double d2) {
        throwExceptionIfImmutable();
        this.confidenceInterval = d2;
    }

    public boolean hasConfidenceInterval() {
        return getConfidenceInterval() != null;
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
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(Metric.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void putAttributes(AttributeGenerator attributeGenerator) {
        attributeGenerator.put(CONFIDENCEINTERVAL, (Object) this.confidenceInterval);
        attributeGenerator.put("name", this.name);
        attributeGenerator.put("type", this.type);
        attributeGenerator.put(VALUE, this.value);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void consumeAttributes(AttributeHelper attributeHelper) throws ParseException {
        this.confidenceInterval = Double.valueOf(attributeHelper.consumeDouble(CONFIDENCEINTERVAL, false));
        this.name = attributeHelper.consume("name", true);
        this.type = attributeHelper.consume("type", false);
        this.value = attributeHelper.consume(VALUE, true);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!sameClassAs(obj)) {
            return false;
        }
        Metric metric = (Metric) obj;
        return eq(this.confidenceInterval, metric.confidenceInterval) && eq(this.name, metric.name) && eq(this.type, metric.type) && eq(this.value, metric.value);
    }

    public int hashCode() {
        int iHashCode = getClass().hashCode();
        if (this.confidenceInterval != null) {
            iHashCode = (iHashCode * 37) + this.confidenceInterval.hashCode();
        }
        if (this.name != null) {
            iHashCode = (iHashCode * 37) + this.name.hashCode();
        }
        if (this.type != null) {
            iHashCode = (iHashCode * 37) + this.type.hashCode();
        }
        if (this.value != null) {
            return (iHashCode * 37) + this.value.hashCode();
        }
        return iHashCode;
    }

    public String toString() {
        return "{Metric confidenceInterval=" + this.confidenceInterval + " name=" + this.name + " type=" + this.type + " value=" + this.value + "}";
    }

    public Number numericValue() {
        return Type.INTEGER.equals(getType()) ? Long.valueOf(Long.parseLong(getValue())) : Double.valueOf(Double.parseDouble(getValue()));
    }

    public long longValue() {
        return numericValue().longValue();
    }

    public double doubleValue() {
        return numericValue().doubleValue();
    }
}
