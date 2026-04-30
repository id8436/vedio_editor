package com.google.gdata.data.dublincore;

import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ValueConstruct;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = "title", nsAlias = DublincoreNamespace.DC_ALIAS, nsUri = DublincoreNamespace.DC)
public class Title extends ValueConstruct {
    static final String XML_NAME = "title";

    public Title() {
        this(null);
    }

    public Title(String str) {
        super(DublincoreNamespace.DC_NS, "title", null, str);
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(Title.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    public String toString() {
        return "{Title value=" + getValue() + "}";
    }
}
