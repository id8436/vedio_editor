package com.adobe.creativesdk.foundation.adobeinternal.storage.library;

import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryElement;

/* JADX INFO: loaded from: classes.dex */
public class AdobeLibraryAnalyticsError extends AdobeLibraryAnalyticsOperation {
    public AdobeLibraryAnalyticsError(String str, AdobeLibraryComposite adobeLibraryComposite, AdobeLibraryElement adobeLibraryElement, String str2) {
        super(str, adobeLibraryComposite, adobeLibraryElement, str2);
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryAnalyticsOperation
    public void trackAction(AdobeCSDKException adobeCSDKException) {
        if (adobeCSDKException == null) {
            this._doTrackAction = false;
        }
        super.trackAction(adobeCSDKException);
    }
}
