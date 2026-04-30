package com.google.gdata.data.photos;

import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ValueConstruct;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = "id", nsAlias = Namespaces.PHOTOS_ALIAS, nsUri = Namespaces.PHOTOS)
public class GphotoId extends ValueConstruct {
    static final String XML_NAME = "id";

    public GphotoId() {
        this(null);
    }

    public GphotoId(String str) {
        super(Namespaces.PHOTOS_NAMESPACE, "id", null, str);
        setRequired(false);
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(GphotoId.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    public String toString() {
        return "{GphotoId value=" + getValue() + "}";
    }

    public static GphotoId from(Long l) {
        return new GphotoId(l == null ? null : Long.toString(l.longValue()));
    }
}
