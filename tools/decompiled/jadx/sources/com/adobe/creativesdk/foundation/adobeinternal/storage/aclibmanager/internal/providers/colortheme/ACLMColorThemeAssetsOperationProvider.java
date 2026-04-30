package com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.internal.providers.colortheme;

import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.core.IACLMAssetOperationsProvider;
import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.util.IACLibraryOpResultCallback;
import com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeDesignLibraryUtilsInternal;
import com.adobe.creativesdk.foundation.storage.AdobeDesignLibraryUtils;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryElement;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryException;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryRepresentation;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class ACLMColorThemeAssetsOperationProvider implements IACLMAssetOperationsProvider {
    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.core.IACLMAssetOperationsProvider
    public void cloneAsset(AdobeLibraryComposite adobeLibraryComposite, AdobeLibraryElement adobeLibraryElement, AdobeLibraryComposite adobeLibraryComposite2, IACLibraryOpResultCallback iACLibraryOpResultCallback) {
        AdobeLibraryElement adobeLibraryElementAddColorTheme;
        AdobeLibraryRepresentation firstRepresentationOfType = adobeLibraryComposite.getFirstRepresentationOfType(AdobeDesignLibraryUtils.AdobeColorThemeMimeType, adobeLibraryElement);
        if (firstRepresentationOfType == null) {
            iACLibraryOpResultCallback.handleLibraryOpFailure(null);
        }
        try {
            adobeLibraryElementAddColorTheme = AdobeDesignLibraryUtilsInternal.addColorTheme((JSONObject) firstRepresentationOfType.getValueForKey("data", "colortheme"), adobeLibraryElement.getName(), adobeLibraryComposite2);
        } catch (AdobeLibraryException e2) {
            adobeLibraryElementAddColorTheme = null;
        }
        if (adobeLibraryElementAddColorTheme != null) {
            iACLibraryOpResultCallback.handleLibraryOpSuccess(adobeLibraryComposite2, adobeLibraryElementAddColorTheme);
        } else {
            iACLibraryOpResultCallback.handleLibraryOpFailure(null);
        }
    }
}
