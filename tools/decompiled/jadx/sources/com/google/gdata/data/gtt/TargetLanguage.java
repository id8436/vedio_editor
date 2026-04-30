package com.google.gdata.data.gtt;

import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ValueConstruct;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = TargetLanguage.XML_NAME, nsAlias = GttNamespace.GTT_ALIAS, nsUri = GttNamespace.GTT)
public class TargetLanguage extends ValueConstruct {
    static final String XML_NAME = "targetLanguage";

    public TargetLanguage() {
        this(null);
    }

    public TargetLanguage(String str) {
        super(GttNamespace.GTT_NS, XML_NAME, null, str);
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(TargetLanguage.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    public String toString() {
        return "{TargetLanguage value=" + getValue() + "}";
    }
}
