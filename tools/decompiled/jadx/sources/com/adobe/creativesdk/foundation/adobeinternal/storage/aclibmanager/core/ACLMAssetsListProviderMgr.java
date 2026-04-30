package com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.core;

import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.internal.utils.ACLMDefaultProviderHelper;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class ACLMAssetsListProviderMgr {
    private static ACLMAssetsListProviderMgr _sInstance;
    ArrayList<ProviderDetails> _providersList = new ArrayList<>();

    class ProviderDetails {
        ACUserAssetType assetType;
        IACLMAssetsListProvider provider;

        private ProviderDetails() {
        }
    }

    public static ACLMAssetsListProviderMgr getInstance() {
        if (_sInstance == null) {
            _sInstance = new ACLMAssetsListProviderMgr();
        }
        return _sInstance;
    }

    ACLMAssetsListProviderMgr() {
    }

    public void registerListProvider(ACUserAssetType aCUserAssetType, IACLMAssetsListProvider iACLMAssetsListProvider) {
        ProviderDetails providerDetails = new ProviderDetails();
        providerDetails.assetType = aCUserAssetType;
        providerDetails.provider = iACLMAssetsListProvider;
        this._providersList.add(providerDetails);
    }

    public IACLMAssetsListProvider getProviderForUserAssetType(ACUserAssetType aCUserAssetType) {
        for (ProviderDetails providerDetails : this._providersList) {
            if (providerDetails.assetType == aCUserAssetType) {
                return providerDetails.provider;
            }
        }
        return ACLMDefaultProviderHelper.getDefaultListProvider(aCUserAssetType);
    }
}
