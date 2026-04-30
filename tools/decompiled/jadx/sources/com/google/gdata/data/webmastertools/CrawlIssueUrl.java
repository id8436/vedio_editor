package com.google.gdata.data.webmastertools;

import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ValueConstruct;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = "url", nsAlias = Namespaces.WT_ALIAS, nsUri = Namespaces.WT)
public class CrawlIssueUrl extends ValueConstruct {
    static final String XML_NAME = "url";

    public CrawlIssueUrl() {
        this(null);
    }

    public CrawlIssueUrl(String str) {
        super(Namespaces.WT_NS, "url", null, str);
        setRequired(false);
    }

    public String getUrl() {
        return getValue();
    }

    public void setUrl(String str) {
        setValue(str);
    }

    public boolean hasUrl() {
        return hasValue();
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(CrawlIssueUrl.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    public String toString() {
        return "{CrawlIssueUrl url=" + getValue() + "}";
    }
}
