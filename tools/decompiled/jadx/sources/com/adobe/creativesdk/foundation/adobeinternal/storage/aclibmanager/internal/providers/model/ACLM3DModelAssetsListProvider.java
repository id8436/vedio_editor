package com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.internal.providers.model;

import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.internal.providers.ACLMDefaultAssetsListProvider;
import com.adobe.creativesdk.foundation.storage.AdobeDesignLibraryUtils;

/* JADX INFO: loaded from: classes.dex */
public class ACLM3DModelAssetsListProvider extends ACLMDefaultAssetsListProvider {
    public ACLM3DModelAssetsListProvider() {
        setElementMediaTypes(new String[]{AdobeDesignLibraryUtils.AdobeDesignLibrary3DModelElementType});
    }
}
