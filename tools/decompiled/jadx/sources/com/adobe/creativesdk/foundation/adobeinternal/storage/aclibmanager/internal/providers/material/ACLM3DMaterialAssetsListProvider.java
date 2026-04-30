package com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.internal.providers.material;

import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.internal.providers.ACLMDefaultAssetsListProvider;
import com.adobe.creativesdk.foundation.storage.AdobeDesignLibraryUtils;

/* JADX INFO: loaded from: classes.dex */
public class ACLM3DMaterialAssetsListProvider extends ACLMDefaultAssetsListProvider {
    public ACLM3DMaterialAssetsListProvider() {
        setElementMediaTypes(new String[]{AdobeDesignLibraryUtils.AdobeDesignLibrary3DMaterialElementType});
    }
}
