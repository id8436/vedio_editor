package com.adobe.creativesdk.foundation.internal.storage.controllers;

import android.os.Bundle;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFile;
import com.adobe.creativesdk.foundation.storage.AdobeAssetPackagePages;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class MobilePackageItemsOneUpViewController {
    private static final String MOBILE_PACKAGE_COLLECTION_HREF = "collectionhref";
    private static final String MOBILE_PACKAGE_COLLECTION_PARENT_HREF = "collectionparenthref";
    private static final String START_ITEM_INDEX = "startindex";
    private AdobeAssetPackagePages _assetPackagePages;
    private ArrayList<AdobeAssetFile> _itemsList;
    private int _startIndex;

    public static MobilePackageItemsOneUpViewController createInstanceFromConfigurationBundle(Bundle bundle) {
        MobilePackageItemsOneUpViewController mobilePackageItemsOneUpViewController = new MobilePackageItemsOneUpViewController();
        AdobeAssetPackagePages packagePagesFromHref = MobileCreationPackageItemsFragment.getPackagePagesFromHref(bundle.getString("collectionhref"), bundle.getString(MOBILE_PACKAGE_COLLECTION_PARENT_HREF));
        mobilePackageItemsOneUpViewController.setStartIndex(bundle.getInt(START_ITEM_INDEX));
        mobilePackageItemsOneUpViewController.setPackage(packagePagesFromHref);
        return mobilePackageItemsOneUpViewController;
    }

    private void setPackage(AdobeAssetPackagePages adobeAssetPackagePages) {
        this._assetPackagePages = adobeAssetPackagePages;
        buildPackageItemsList();
    }

    public AdobeAssetPackagePages getPackage() {
        return this._assetPackagePages;
    }

    private void buildPackageItemsList() {
        this._itemsList.addAll(this._assetPackagePages.getPages());
    }

    public void saveInstanceState(Bundle bundle) {
        bundle.putInt(START_ITEM_INDEX, this._startIndex);
        bundle.putString("collectionhref", this._assetPackagePages.getHref().toString());
        bundle.putString(MOBILE_PACKAGE_COLLECTION_PARENT_HREF, this._assetPackagePages.getParentHref().toString());
    }

    public static MobilePackageItemsOneUpViewController createInstanceFromPackage(AdobeAssetPackagePages adobeAssetPackagePages, ArrayList<AdobeAssetFile> arrayList, int i) {
        MobilePackageItemsOneUpViewController mobilePackageItemsOneUpViewController = new MobilePackageItemsOneUpViewController();
        mobilePackageItemsOneUpViewController.setPackageAndItems(adobeAssetPackagePages, arrayList);
        mobilePackageItemsOneUpViewController.setStartIndex(i);
        return mobilePackageItemsOneUpViewController;
    }

    private void setPackageAndItems(AdobeAssetPackagePages adobeAssetPackagePages, ArrayList<AdobeAssetFile> arrayList) {
        this._assetPackagePages = adobeAssetPackagePages;
        this._itemsList = arrayList;
    }

    public int getCount() {
        if (this._itemsList != null) {
            return this._itemsList.size();
        }
        return 0;
    }

    public AdobeAssetFile getItemAtPos(int i) {
        if (this._itemsList == null || i < 0 || i >= this._itemsList.size()) {
            return null;
        }
        return this._itemsList.get(i);
    }

    public int getStartIndex() {
        return this._startIndex;
    }

    public void setStartIndex(int i) {
        this._startIndex = i;
    }
}
