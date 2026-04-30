package com.google.gdata.data.photos.pheed;

import com.google.gdata.data.ExtensionDescription;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class PheedVideoUrl extends PheedConstruct {
    public PheedVideoUrl() {
        this(null);
    }

    public PheedVideoUrl(String str) {
        super("videosrc", str);
    }

    public static ExtensionDescription getDefaultDescription() {
        return new ExtensionDescription(PheedVideoUrl.class, Namespaces.PHEED_NAMESPACE, "videosrc");
    }
}
