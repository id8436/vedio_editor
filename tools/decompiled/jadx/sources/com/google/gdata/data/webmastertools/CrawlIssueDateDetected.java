package com.google.gdata.data.webmastertools;

import com.google.gdata.data.AbstractExtension;
import com.google.gdata.data.AttributeGenerator;
import com.google.gdata.data.AttributeHelper;
import com.google.gdata.data.DateTime;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.util.ParseException;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = CrawlIssueDateDetected.XML_NAME, nsAlias = Namespaces.WT_ALIAS, nsUri = Namespaces.WT)
public class CrawlIssueDateDetected extends AbstractExtension {
    static final String XML_NAME = "date-detected";
    private DateTime dateDetected = null;

    public CrawlIssueDateDetected() {
    }

    public CrawlIssueDateDetected(DateTime dateTime) {
        setDateDetected(dateTime);
        setImmutable(true);
    }

    public DateTime getDateDetected() {
        return this.dateDetected;
    }

    public void setDateDetected(DateTime dateTime) {
        throwExceptionIfImmutable();
        this.dateDetected = dateTime;
    }

    public boolean hasDateDetected() {
        return getDateDetected() != null;
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void validate() {
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(CrawlIssueDateDetected.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void putAttributes(AttributeGenerator attributeGenerator) {
        attributeGenerator.setContent(this.dateDetected.toString());
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void consumeAttributes(AttributeHelper attributeHelper) throws ParseException {
        this.dateDetected = attributeHelper.consumeDateTime(null, false);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!sameClassAs(obj)) {
            return false;
        }
        return eq(this.dateDetected, ((CrawlIssueDateDetected) obj).dateDetected);
    }

    public int hashCode() {
        int iHashCode = getClass().hashCode();
        if (this.dateDetected != null) {
            return (iHashCode * 37) + this.dateDetected.hashCode();
        }
        return iHashCode;
    }

    public String toString() {
        return "{CrawlIssueDateDetected dateDetected=" + this.dateDetected + "}";
    }
}
