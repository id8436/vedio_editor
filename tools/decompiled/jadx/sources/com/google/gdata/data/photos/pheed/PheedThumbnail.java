package com.google.gdata.data.photos.pheed;

import com.google.gdata.data.ExtensionDescription;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class PheedThumbnail extends PheedConstruct {
    public PheedThumbnail() {
        this(null);
    }

    public PheedThumbnail(String str) {
        super("thumbnail", str);
    }

    public static ExtensionDescription getDefaultDescription() {
        return new ExtensionDescription(PheedThumbnail.class, Namespaces.PHEED_NAMESPACE, "thumbnail");
    }
}
