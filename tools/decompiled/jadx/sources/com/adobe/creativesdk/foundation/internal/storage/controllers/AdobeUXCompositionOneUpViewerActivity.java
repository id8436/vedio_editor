package com.adobe.creativesdk.foundation.internal.storage.controllers;

import com.adobe.creativesdk.foundation.assetux.R;
import com.adobe.creativesdk.foundation.internal.storage.asset.AdobeAssetCompPage;
import com.adobe.creativesdk.foundation.internal.storage.asset.AdobeAssetPSMixPage;
import com.adobe.creativesdk.foundation.internal.utils.AdobeLocalizedMgr;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFile;

/* JADX INFO: loaded from: classes.dex */
public class AdobeUXCompositionOneUpViewerActivity extends AdobeUXMobilePackageItemOneUpViewerActivity {
    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeUXMobilePackageItemOneUpViewerActivity
    protected void updateTitleOfActivity() {
        this.mPhotoNumber.setVisibility(8);
        String name = this.mobilePackageItemsOneUpViewController.getPackage().getName();
        if (name == null) {
            AdobeAssetFile itemAtPos = this.mobilePackageItemsOneUpViewController.getItemAtPos(this.mPos);
            name = AdobeLocalizedMgr.getLocalizedString(R.string.adobe_csdk_lineordrawcollection_singular);
            if (itemAtPos instanceof AdobeAssetCompPage) {
                name = AdobeLocalizedMgr.getLocalizedString(R.string.adobe_csdk_composition_collection_singular);
            } else if (itemAtPos instanceof AdobeAssetPSMixPage) {
                name = AdobeLocalizedMgr.getLocalizedString(R.string.adobe_csdk_psmix_collection_singular);
            }
        }
        setActionBarTitle(name);
    }
}
