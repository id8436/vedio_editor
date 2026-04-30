package com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.util;

import com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryElement;

/* JADX INFO: loaded from: classes.dex */
public interface IACLibraryOpResultCallback {
    void handleLibraryOpFailure(Object obj);

    void handleLibraryOpSuccess(AdobeLibraryComposite adobeLibraryComposite, AdobeLibraryElement adobeLibraryElement);
}
