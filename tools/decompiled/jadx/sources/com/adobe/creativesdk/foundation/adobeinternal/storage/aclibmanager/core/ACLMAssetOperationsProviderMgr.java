package com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.core;

import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.internal.utils.ACLMDefaultProviderHelper;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class ACLMAssetOperationsProviderMgr {
    private static ACLMAssetOperationsProviderMgr _sInstance;
    ArrayList<ProviderDetails> _providersList = new ArrayList<>();

    class ProviderDetails {
        ACUserAssetType assetType;
        IACLMAssetOperationsProvider provider;

        private ProviderDetails() {
        }
    }

    public static ACLMAssetOperationsProviderMgr getInstance() {
        if (_sInstance == null) {
            _sInstance = new ACLMAssetOperationsProviderMgr();
        }
        return _sInstance;
    }

    ACLMAssetOperationsProviderMgr() {
    }

    public void registerProvider(ACUserAssetType aCUserAssetType, IACLMAssetOperationsProvider iACLMAssetOperationsProvider) {
        ProviderDetails providerDetails = new ProviderDetails();
        providerDetails.assetType = aCUserAssetType;
        providerDetails.provider = iACLMAssetOperationsProvider;
        this._providersList.add(providerDetails);
    }

    public IACLMAssetOperationsProvider getProviderForUserAssetType(ACUserAssetType aCUserAssetType) {
        for (ProviderDetails providerDetails : this._providersList) {
            if (providerDetails.assetType == aCUserAssetType) {
                return providerDetails.provider;
            }
        }
        return ACLMDefaultProviderHelper.getDefaultAssetOperationProvider(aCUserAssetType);
    }
}
