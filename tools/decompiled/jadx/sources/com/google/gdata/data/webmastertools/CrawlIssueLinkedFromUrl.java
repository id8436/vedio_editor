package com.google.gdata.data.webmastertools;

import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ValueConstruct;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = CrawlIssueLinkedFromUrl.XML_NAME, nsAlias = Namespaces.WT_ALIAS, nsUri = Namespaces.WT)
public class CrawlIssueLinkedFromUrl extends ValueConstruct {
    static final String XML_NAME = "linked-from";

    public CrawlIssueLinkedFromUrl() {
        this(null);
    }

    public CrawlIssueLinkedFromUrl(String str) {
        super(Namespaces.WT_NS, XML_NAME, null, str);
        setRequired(false);
    }

    public String getLinkedFromUrl() {
        return getValue();
    }

    public void setLinkedFromUrl(String str) {
        setValue(str);
    }

    public boolean hasLinkedFromUrl() {
        return hasValue();
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(CrawlIssueLinkedFromUrl.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    public String toString() {
        return "{CrawlIssueLinkedFromUrl linkedFromUrl=" + getValue() + "}";
    }
}
