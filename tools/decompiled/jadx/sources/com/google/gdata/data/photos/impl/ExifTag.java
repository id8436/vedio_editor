package com.google.gdata.data.photos.impl;

import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ValueConstruct;
import com.google.gdata.data.photos.Namespaces;

/* JADX INFO: loaded from: classes3.dex */
public class ExifTag extends ValueConstruct {
    private final String name;

    public ExifTag(String str) {
        this(str, null);
    }

    public ExifTag(String str, String str2) {
        super(Namespaces.EXIF_NAMESPACE, str, null, str2);
        this.name = str;
        setRequired(false);
    }

    public String getName() {
        return this.name;
    }

    public static ExtensionDescription getDefaultDescription() {
        ExtensionDescription extensionDescription = new ExtensionDescription();
        extensionDescription.setRepeatable(true);
        extensionDescription.setExtensionClass(ExifTag.class);
        extensionDescription.setNamespace(Namespaces.EXIF_NAMESPACE);
        extensionDescription.setLocalName("*");
        return extensionDescription;
    }
}
