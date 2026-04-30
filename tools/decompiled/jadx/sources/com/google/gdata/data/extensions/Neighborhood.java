package com.google.gdata.data.extensions;

import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ValueConstruct;
import com.google.gdata.util.Namespaces;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = Neighborhood.XML_NAME, nsAlias = "gd", nsUri = "http://schemas.google.com/g/2005")
public class Neighborhood extends ValueConstruct {
    static final String XML_NAME = "neighborhood";

    public Neighborhood() {
        this(null);
    }

    public Neighborhood(String str) {
        super(Namespaces.gNs, XML_NAME, null, str);
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(Neighborhood.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    public String toString() {
        return "{Neighborhood value=" + getValue() + "}";
    }
}
