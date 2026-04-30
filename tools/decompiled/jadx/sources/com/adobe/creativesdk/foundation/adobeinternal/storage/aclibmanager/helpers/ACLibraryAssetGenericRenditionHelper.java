package com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.helpers;

import android.os.Handler;
import android.os.Looper;
import com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback;
import com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback;
import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.util.ACLibraryAssetRenditionUtils;
import com.adobe.creativesdk.foundation.storage.AdobeAssetImageDimensions;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryElement;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryException;
import com.adobe.creativesdk.foundation.storage.IAdobeGenericRequestCallback;

/* JADX INFO: loaded from: classes.dex */
public class ACLibraryAssetGenericRenditionHelper {
    public static void getFullSizeGenericRenditionPath(AdobeLibraryComposite adobeLibraryComposite, AdobeLibraryElement adobeLibraryElement, IAdobeGenericRequestCallback<String, AdobeLibraryException> iAdobeGenericRequestCallback, Handler handler) {
        ACLibraryAssetRenditionUtils.fetchAnyImageRepresentation(0, adobeLibraryComposite, adobeLibraryElement, iAdobeGenericRequestCallback, handler);
    }

    public static void getGenericRenditionPath(final AdobeLibraryComposite adobeLibraryComposite, final AdobeLibraryElement adobeLibraryElement, AdobeAssetImageDimensions adobeAssetImageDimensions, final boolean z, final IAdobeGenericRequestCallback<String, AdobeLibraryException> iAdobeGenericRequestCallback, final Handler handler) {
        int i = (int) adobeAssetImageDimensions.width;
        try {
            String renditionPathFromCache = adobeLibraryComposite.getRenditionPathFromCache(adobeLibraryElement.getElementId(), i, false);
            if (renditionPathFromCache != null) {
                iAdobeGenericRequestCallback.onCompletion(renditionPathFromCache);
                return;
            }
        } catch (Exception e2) {
        }
        adobeLibraryComposite.getRenditionPath(adobeLibraryElement.getElementId(), i, false, new IAdobeGenericCompletionCallback<String>() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.helpers.ACLibraryAssetGenericRenditionHelper.1
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
            public void onCompletion(String str) {
                iAdobeGenericRequestCallback.onCompletion(str);
            }
        }, new IAdobeGenericErrorCallback<AdobeLibraryException>() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.helpers.ACLibraryAssetGenericRenditionHelper.2
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(AdobeLibraryException adobeLibraryException) {
                if (z) {
                    ACLibraryAssetGenericRenditionHelper.getFullSizeGenericRenditionPath(adobeLibraryComposite, adobeLibraryElement, iAdobeGenericRequestCallback, handler);
                } else {
                    iAdobeGenericRequestCallback.onError(adobeLibraryException);
                }
            }
        }, new Handler(Looper.getMainLooper()));
    }
}
