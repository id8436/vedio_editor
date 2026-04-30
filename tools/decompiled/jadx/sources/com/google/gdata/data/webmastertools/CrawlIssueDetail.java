package com.google.gdata.data.webmastertools;

import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ValueConstruct;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = CrawlIssueDetail.XML_NAME, nsAlias = Namespaces.WT_ALIAS, nsUri = Namespaces.WT)
public class CrawlIssueDetail extends ValueConstruct {
    static final String XML_NAME = "detail";

    public CrawlIssueDetail() {
        this(null);
    }

    public CrawlIssueDetail(String str) {
        super(Namespaces.WT_NS, XML_NAME, null, str);
        setRequired(false);
    }

    public String getDetail() {
        return getValue();
    }

    public void setDetail(String str) {
        setValue(str);
    }

    public boolean hasDetail() {
        return hasValue();
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(CrawlIssueDetail.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    public String toString() {
        return "{CrawlIssueDetail detail=" + getValue() + "}";
    }
}
