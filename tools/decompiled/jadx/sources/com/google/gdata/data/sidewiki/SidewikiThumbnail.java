package com.google.gdata.data.sidewiki;

import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ValueConstruct;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = SidewikiThumbnail.XML_NAME, nsAlias = SidewikiNamespace.SIDEWIKI_ALIAS, nsUri = SidewikiNamespace.SIDEWIKI)
public class SidewikiThumbnail extends ValueConstruct {
    static final String XML_NAME = "thumbnail";

    public SidewikiThumbnail() {
        this(null);
    }

    public SidewikiThumbnail(String str) {
        super(SidewikiNamespace.SIDEWIKI_NS, XML_NAME, null, str);
        setRequired(false);
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(SidewikiThumbnail.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    public String toString() {
        return "{SidewikiThumbnail value=" + getValue() + "}";
    }
}
