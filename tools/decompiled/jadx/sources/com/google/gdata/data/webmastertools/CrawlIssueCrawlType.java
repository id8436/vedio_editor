package com.google.gdata.data.webmastertools;

import com.google.gdata.data.AbstractExtension;
import com.google.gdata.data.AttributeGenerator;
import com.google.gdata.data.AttributeHelper;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.util.ParseException;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = CrawlIssueCrawlType.XML_NAME, nsAlias = Namespaces.WT_ALIAS, nsUri = Namespaces.WT)
public class CrawlIssueCrawlType extends AbstractExtension {
    private static final AttributeHelper.EnumToAttributeValue<CrawlType> CRAWLTYPE_ENUM_TO_ATTRIBUTE_VALUE = new AttributeHelper.EnumToAttributeValue<CrawlType>() { // from class: com.google.gdata.data.webmastertools.CrawlIssueCrawlType.1
        @Override // com.google.gdata.data.AttributeHelper.EnumToAttributeValue
        public String getAttributeValue(CrawlType crawlType) {
            return crawlType.toValue();
        }
    };
    static final String XML_NAME = "crawl-type";
    private CrawlType crawlType = null;

    /* JADX INFO: loaded from: classes3.dex */
    public enum CrawlType {
        MOBILE_CHTML_CRAWL("mobile-cHTML-crawl"),
        MOBILE_OPERATOR_CRAWL("mobile-operator-crawl"),
        MOBILE_XHTML_WML_CRAWL("mobile-XHTML-WML-crawl"),
        NEWS_CRAWL("news-crawl"),
        WEB_CRAWL("web-crawl");

        private final String value;

        CrawlType(String str) {
            this.value = str;
        }

        public String toValue() {
            return this.value;
        }
    }

    public CrawlIssueCrawlType() {
    }

    public CrawlIssueCrawlType(CrawlType crawlType) {
        setCrawlType(crawlType);
        setImmutable(true);
    }

    public CrawlType getCrawlType() {
        return this.crawlType;
    }

    public void setCrawlType(CrawlType crawlType) {
        throwExceptionIfImmutable();
        this.crawlType = crawlType;
    }

    public boolean hasCrawlType() {
        return getCrawlType() != null;
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void validate() {
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(CrawlIssueCrawlType.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void putAttributes(AttributeGenerator attributeGenerator) {
        attributeGenerator.setContent(CRAWLTYPE_ENUM_TO_ATTRIBUTE_VALUE.getAttributeValue(this.crawlType));
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void consumeAttributes(AttributeHelper attributeHelper) throws ParseException {
        this.crawlType = (CrawlType) attributeHelper.consumeEnum(null, false, CrawlType.class, null, CRAWLTYPE_ENUM_TO_ATTRIBUTE_VALUE);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!sameClassAs(obj)) {
            return false;
        }
        return eq(this.crawlType, ((CrawlIssueCrawlType) obj).crawlType);
    }

    public int hashCode() {
        int iHashCode = getClass().hashCode();
        if (this.crawlType != null) {
            return (iHashCode * 37) + this.crawlType.hashCode();
        }
        return iHashCode;
    }

    public String toString() {
        return "{CrawlIssueCrawlType crawlType=" + this.crawlType + "}";
    }
}
