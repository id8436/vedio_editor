package com.google.gdata.data.gtt;

import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ValueConstruct;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = SourceLanguage.XML_NAME, nsAlias = GttNamespace.GTT_ALIAS, nsUri = GttNamespace.GTT)
public class SourceLanguage extends ValueConstruct {
    static final String XML_NAME = "sourceLanguage";

    public SourceLanguage() {
        this(null);
    }

    public SourceLanguage(String str) {
        super(GttNamespace.GTT_NS, XML_NAME, null, str);
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(SourceLanguage.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    public String toString() {
        return "{SourceLanguage value=" + getValue() + "}";
    }
}
