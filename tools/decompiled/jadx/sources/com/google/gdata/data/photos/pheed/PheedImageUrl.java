package com.google.gdata.data.photos.pheed;

import com.google.gdata.data.ExtensionDescription;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class PheedImageUrl extends PheedConstruct {
    public PheedImageUrl() {
        this(null);
    }

    public PheedImageUrl(String str) {
        super("imgsrc", str);
    }

    public static ExtensionDescription getDefaultDescription() {
        return new ExtensionDescription(PheedImageUrl.class, Namespaces.PHEED_NAMESPACE, "imgsrc");
    }
}
