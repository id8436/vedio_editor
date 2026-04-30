package com.adobe.creativesdk.foundation.internal.storage.controllers.utils;

import android.view.View;
import com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeAssetsViewContainerConfiguration;

/* JADX INFO: loaded from: classes2.dex */
public interface IAdobeLongClickHandler {
    void handleLongClick(Object obj, AdobeAssetType adobeAssetType, AdobeAssetsViewContainerConfiguration adobeAssetsViewContainerConfiguration);

    void handlePopupClick(Object obj, AdobeAssetsViewContainerConfiguration adobeAssetsViewContainerConfiguration, View view, AdobeAssetType adobeAssetType);
}
