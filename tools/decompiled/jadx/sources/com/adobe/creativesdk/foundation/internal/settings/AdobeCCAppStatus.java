package com.adobe.creativesdk.foundation.internal.settings;

import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloud;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class AdobeCCAppStatus {
    private static List<AdobeCloud> cachedClouds = new ArrayList();

    public static void setCachedClouds(List<AdobeCloud> list) {
        cachedClouds = list;
    }

    public static List<AdobeCloud> getCachedClouds() {
        return cachedClouds;
    }
}
