package com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.internal.providers.light;

import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.internal.providers.ACLMDefaultAssetsListProvider;
import com.adobe.creativesdk.foundation.storage.AdobeDesignLibraryUtils;

/* JADX INFO: loaded from: classes.dex */
public class ACLM3DLightAssetsListProvider extends ACLMDefaultAssetsListProvider {
    public ACLM3DLightAssetsListProvider() {
        setElementMediaTypes(new String[]{AdobeDesignLibraryUtils.AdobeDesignLibrary3DLightElementType});
    }
}
