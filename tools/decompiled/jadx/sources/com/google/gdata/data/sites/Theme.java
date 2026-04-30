package com.google.gdata.data.sites;

import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ValueConstruct;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = Theme.XML_NAME, nsAlias = SitesNamespace.SITES_ALIAS, nsUri = SitesNamespace.SITES)
public class Theme extends ValueConstruct {
    static final String XML_NAME = "theme";

    public Theme() {
        this(null);
    }

    public Theme(String str) {
        super(SitesNamespace.SITES_NS, XML_NAME, null, str);
        setRequired(false);
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(Theme.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    public String toString() {
        return "{Theme value=" + getValue() + "}";
    }
}
