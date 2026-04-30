package com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.internal.providers.colortheme;

import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.internal.providers.ACLMDefaultAssetsListProvider;
import com.adobe.creativesdk.foundation.storage.AdobeDesignLibraryUtils;

/* JADX INFO: loaded from: classes.dex */
public class ACLMColorThemeAssetsListProvider extends ACLMDefaultAssetsListProvider {
    public ACLMColorThemeAssetsListProvider() {
        setContentTypes(new String[]{AdobeDesignLibraryUtils.AdobeColorThemeMimeType});
    }
}
