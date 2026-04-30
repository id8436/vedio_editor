package com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.internal.providers.animation;

import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.internal.providers.ACLMDefaultAssetsListProvider;
import com.adobe.creativesdk.foundation.storage.AdobeDesignLibraryUtils;

/* JADX INFO: loaded from: classes.dex */
public class ACLMAnimationAssetsListProvider extends ACLMDefaultAssetsListProvider {
    public ACLMAnimationAssetsListProvider() {
        setElementMediaTypes(new String[]{AdobeDesignLibraryUtils.AdobeDesignLibraryAnimationElementType});
    }
}
