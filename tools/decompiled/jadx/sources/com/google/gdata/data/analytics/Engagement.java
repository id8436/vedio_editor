package com.google.gdata.data.analytics;

import com.google.gdata.data.AttributeGenerator;
import com.google.gdata.data.AttributeHelper;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionPoint;
import com.google.gdata.util.ParseException;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = Engagement.XML_NAME, nsAlias = AnalyticsNamespace.GA_ALIAS, nsUri = AnalyticsNamespace.GA)
public class Engagement extends ExtensionPoint {
    private static final String COMPARISON = "comparison";
    private static final String THRESHOLDVALUE = "thresholdValue";
    private static final String TYPE = "type";
    static final String XML_NAME = "engagement";
    private String comparison = null;
    private Long thresholdValue = null;
    private String type = null;

    /* JADX INFO: loaded from: classes3.dex */
    public final class Comparison {
        public static final String EQ = "=";
        public static final String GT = ">";
        public static final String LT = "<";
    }

    /* JADX INFO: loaded from: classes3.dex */
    public final class Type {
        public static final String PAGES_VISITED = "pagesVisited";
        public static final String TIME_ON_SITE = "timeOnSite";
    }

    public Engagement() {
    }

    public Engagement(String str, Long l, String str2) {
        setComparison(str);
        setThresholdValue(l);
        setType(str2);
        setImmutable(true);
    }

    public String getComparison() {
        return this.comparison;
    }

    public void setComparison(String str) {
        throwExceptionIfImmutable();
        this.comparison = str;
    }

    public boolean hasComparison() {
        return getComparison() != null;
    }

    public Long getThresholdValue() {
        return this.thresholdValue;
    }

    public void setThresholdValue(Long l) {
        throwExceptionIfImmutable();
        this.thresholdValue = l;
    }

    public boolean hasThresholdValue() {
        return getThresholdValue() != null;
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

    @Override // com.google.gdata.data.AbstractExtension
    protected void validate() {
        if (this.comparison == null) {
            throwExceptionForMissingAttribute(COMPARISON);
        }
        if (this.thresholdValue == null) {
            throwExceptionForMissingAttribute(THRESHOLDVALUE);
        }
        if (this.type == null) {
            throwExceptionForMissingAttribute("type");
        }
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(Engagement.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void putAttributes(AttributeGenerator attributeGenerator) {
        attributeGenerator.put(COMPARISON, this.comparison);
        attributeGenerator.put(THRESHOLDVALUE, (Object) this.thresholdValue);
        attributeGenerator.put("type", this.type);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void consumeAttributes(AttributeHelper attributeHelper) throws ParseException {
        this.comparison = attributeHelper.consume(COMPARISON, true);
        this.thresholdValue = Long.valueOf(attributeHelper.consumeLong(THRESHOLDVALUE, true));
        this.type = attributeHelper.consume("type", true);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!sameClassAs(obj)) {
            return false;
        }
        Engagement engagement = (Engagement) obj;
        return eq(this.comparison, engagement.comparison) && eq(this.thresholdValue, engagement.thresholdValue) && eq(this.type, engagement.type);
    }

    public int hashCode() {
        int iHashCode = getClass().hashCode();
        if (this.comparison != null) {
            iHashCode = (iHashCode * 37) + this.comparison.hashCode();
        }
        if (this.thresholdValue != null) {
            iHashCode = (iHashCode * 37) + this.thresholdValue.hashCode();
        }
        if (this.type != null) {
            return (iHashCode * 37) + this.type.hashCode();
        }
        return iHashCode;
    }

    public String toString() {
        return "{Engagement comparison=" + this.comparison + " thresholdValue=" + this.thresholdValue + " type=" + this.type + "}";
    }
}
