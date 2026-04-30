package com.google.gdata.data.photos;

import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ValueConstruct;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = GphotoVideoStatus.XML_NAME, nsAlias = Namespaces.PHOTOS_ALIAS, nsUri = Namespaces.PHOTOS)
public class GphotoVideoStatus extends ValueConstruct {
    static final String XML_NAME = "videostatus";

    public GphotoVideoStatus() {
        this(null);
    }

    public GphotoVideoStatus(String str) {
        super(Namespaces.PHOTOS_NAMESPACE, XML_NAME, null, str);
        setRequired(false);
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(GphotoVideoStatus.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    public String toString() {
        return "{GphotoVideoStatus value=" + getValue() + "}";
    }
}
