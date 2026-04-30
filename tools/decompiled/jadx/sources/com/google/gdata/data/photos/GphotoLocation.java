package com.google.gdata.data.photos;

import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ValueConstruct;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = "location", nsAlias = Namespaces.PHOTOS_ALIAS, nsUri = Namespaces.PHOTOS)
public class GphotoLocation extends ValueConstruct {
    static final String XML_NAME = "location";

    public GphotoLocation() {
        this(null);
    }

    public GphotoLocation(String str) {
        super(Namespaces.PHOTOS_NAMESPACE, "location", null, str);
        setRequired(false);
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(GphotoLocation.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    public String toString() {
        return "{GphotoLocation value=" + getValue() + "}";
    }
}
