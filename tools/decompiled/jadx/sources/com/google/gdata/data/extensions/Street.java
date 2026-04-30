package com.google.gdata.data.extensions;

import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ValueConstruct;
import com.google.gdata.util.Namespaces;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = Street.XML_NAME, nsAlias = "gd", nsUri = "http://schemas.google.com/g/2005")
public class Street extends ValueConstruct {
    static final String XML_NAME = "street";

    public Street() {
        this(null);
    }

    public Street(String str) {
        super(Namespaces.gNs, XML_NAME, null, str);
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(Street.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    public String toString() {
        return "{Street value=" + getValue() + "}";
    }
}
