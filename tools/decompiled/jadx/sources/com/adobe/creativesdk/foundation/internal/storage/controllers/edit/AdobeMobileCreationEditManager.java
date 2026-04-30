package com.adobe.creativesdk.foundation.internal.storage.controllers.edit;

import android.support.v4.app.FragmentManager;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloud;
import com.adobe.creativesdk.foundation.storage.AdobeAssetPackagePages;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeMobileCreationEditManager {
    private static AdobeMobileCreationEditSession _session;

    public static AdobeMobileCreationEditSession createSession(AdobeAssetPackagePages adobeAssetPackagePages, FragmentManager fragmentManager, AdobeMobileCreationEditOperation adobeMobileCreationEditOperation, IAdobeEditAssetCallback iAdobeEditAssetCallback, AdobeCloud adobeCloud) {
        _session = new AdobeMobileCreationEditSession(adobeAssetPackagePages, fragmentManager, adobeMobileCreationEditOperation, iAdobeEditAssetCallback, adobeCloud);
        return _session;
    }

    public static AdobeMobileCreationEditSession getLastSesstion() {
        return _session;
    }
}
