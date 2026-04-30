package com.google.gdata.data.webmastertools;

import com.google.gdata.data.AbstractExtension;
import com.google.gdata.data.AttributeGenerator;
import com.google.gdata.data.AttributeHelper;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.util.ParseException;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = CrawlIssueIssueType.XML_NAME, nsAlias = Namespaces.WT_ALIAS, nsUri = Namespaces.WT)
public class CrawlIssueIssueType extends AbstractExtension {
    private static final AttributeHelper.EnumToAttributeValue<IssueType> ISSUETYPE_ENUM_TO_ATTRIBUTE_VALUE = new AttributeHelper.EnumToAttributeValue<IssueType>() { // from class: com.google.gdata.data.webmastertools.CrawlIssueIssueType.1
        @Override // com.google.gdata.data.AttributeHelper.EnumToAttributeValue
        public String getAttributeValue(IssueType issueType) {
            return issueType.toValue();
        }
    };
    static final String XML_NAME = "issue-type";
    private IssueType issueType = null;

    /* JADX INFO: loaded from: classes3.dex */
    public enum IssueType {
        HTTP_ERROR("http-error"),
        IN_SITEMAP("in-sitemap"),
        NEWS_ERROR("news-error"),
        NOT_FOLLOWED("not-followed"),
        NOT_FOUND("not-found"),
        RESTRICTED_ROBOTS_TXT("restricted-robots-txt"),
        TIMED_OUT("timed-out"),
        UNREACHABLE("unreachable");

        private final String value;

        IssueType(String str) {
            this.value = str;
        }

        public String toValue() {
            return this.value;
        }
    }

    public CrawlIssueIssueType() {
    }

    public CrawlIssueIssueType(IssueType issueType) {
        setIssueType(issueType);
        setImmutable(true);
    }

    public IssueType getIssueType() {
        return this.issueType;
    }

    public void setIssueType(IssueType issueType) {
        throwExceptionIfImmutable();
        this.issueType = issueType;
    }

    public boolean hasIssueType() {
        return getIssueType() != null;
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void validate() {
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(CrawlIssueIssueType.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void putAttributes(AttributeGenerator attributeGenerator) {
        attributeGenerator.setContent(ISSUETYPE_ENUM_TO_ATTRIBUTE_VALUE.getAttributeValue(this.issueType));
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void consumeAttributes(AttributeHelper attributeHelper) throws ParseException {
        this.issueType = (IssueType) attributeHelper.consumeEnum(null, false, IssueType.class, null, ISSUETYPE_ENUM_TO_ATTRIBUTE_VALUE);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!sameClassAs(obj)) {
            return false;
        }
        return eq(this.issueType, ((CrawlIssueIssueType) obj).issueType);
    }

    public int hashCode() {
        int iHashCode = getClass().hashCode();
        if (this.issueType != null) {
            return (iHashCode * 37) + this.issueType.hashCode();
        }
        return iHashCode;
    }

    public String toString() {
        return "{CrawlIssueIssueType issueType=" + this.issueType + "}";
    }
}
