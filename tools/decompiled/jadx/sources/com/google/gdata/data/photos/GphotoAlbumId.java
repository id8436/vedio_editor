package com.google.gdata.data.photos;

import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ValueConstruct;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = GphotoAlbumId.XML_NAME, nsAlias = Namespaces.PHOTOS_ALIAS, nsUri = Namespaces.PHOTOS)
public class GphotoAlbumId extends ValueConstruct {
    static final String XML_NAME = "albumid";

    public GphotoAlbumId() {
        this(null);
    }

    public GphotoAlbumId(String str) {
        super(Namespaces.PHOTOS_NAMESPACE, XML_NAME, null, str);
        setRequired(false);
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(GphotoAlbumId.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    public String toString() {
        return "{GphotoAlbumId value=" + getValue() + "}";
    }

    public static GphotoAlbumId from(Long l) {
        return new GphotoAlbumId(l == null ? null : Long.toString(l.longValue()));
    }
}
