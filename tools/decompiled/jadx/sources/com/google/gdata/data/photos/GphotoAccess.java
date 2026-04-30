package com.google.gdata.data.photos;

import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ValueConstruct;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = GphotoAccess.XML_NAME, nsAlias = Namespaces.PHOTOS_ALIAS, nsUri = Namespaces.PHOTOS)
public class GphotoAccess extends ValueConstruct {
    static final String XML_NAME = "access";

    /* JADX INFO: loaded from: classes3.dex */
    public final class Value {
        public static final String PRIVATE = "private";
        public static final String PROTECTED = "protected";
        public static final String PUBLIC = "public";
    }

    public GphotoAccess() {
        this(null);
    }

    public GphotoAccess(String str) {
        super(Namespaces.PHOTOS_NAMESPACE, XML_NAME, null, str);
        setRequired(false);
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(GphotoAccess.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    public String toString() {
        return "{GphotoAccess value=" + getValue() + "}";
    }
}
