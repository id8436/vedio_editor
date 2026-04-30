package com.google.gdata.data.sites;

import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ValueConstruct;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = PageName.XML_NAME, nsAlias = SitesNamespace.SITES_ALIAS, nsUri = SitesNamespace.SITES)
public class PageName extends ValueConstruct {
    static final String XML_NAME = "pageName";

    public PageName() {
        this(null);
    }

    public PageName(String str) {
        super(SitesNamespace.SITES_NS, XML_NAME, null, str);
        setRequired(false);
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(PageName.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    public String toString() {
        return "{PageName value=" + getValue() + "}";
    }
}
