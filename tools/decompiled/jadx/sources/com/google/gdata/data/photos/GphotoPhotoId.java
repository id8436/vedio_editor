package com.google.gdata.data.photos;

import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ValueConstruct;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = GphotoPhotoId.XML_NAME, nsAlias = Namespaces.PHOTOS_ALIAS, nsUri = Namespaces.PHOTOS)
public class GphotoPhotoId extends ValueConstruct {
    static final String XML_NAME = "photoid";

    public GphotoPhotoId() {
        this(null);
    }

    public GphotoPhotoId(String str) {
        super(Namespaces.PHOTOS_NAMESPACE, XML_NAME, null, str);
        setRequired(false);
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(GphotoPhotoId.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    public String toString() {
        return "{GphotoPhotoId value=" + getValue() + "}";
    }

    public static GphotoPhotoId from(Long l) {
        return new GphotoPhotoId(l == null ? null : Long.toString(l.longValue()));
    }
}
