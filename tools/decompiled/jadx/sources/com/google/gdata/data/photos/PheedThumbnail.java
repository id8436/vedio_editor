package com.google.gdata.data.photos;

import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ValueConstruct;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = PheedThumbnail.XML_NAME, nsAlias = Namespaces.PHEED_ALIAS, nsUri = Namespaces.PHEED)
public class PheedThumbnail extends ValueConstruct {
    static final String XML_NAME = "thumbnail";

    public PheedThumbnail() {
        this(null);
    }

    public PheedThumbnail(String str) {
        super(Namespaces.PHEED_NS, XML_NAME, null, str);
        setRequired(false);
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(PheedThumbnail.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    public String toString() {
        return "{PheedThumbnail value=" + getValue() + "}";
    }
}
