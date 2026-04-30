package com.adobe.creativesdk.foundation.internal.storage.controllers.edit;

import android.os.Bundle;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloud;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudManager;
import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeAssetViewEditActivityConfiguration {
    public static final String ADOBE_CLOUD_KEY = "ADOBE_CLOUD";
    public static final String EDIT_ACTIVITY_CONFIGURATION_KEY = "EDIT_ACTIVITY_CONFIGURATION";
    public static final String EDIT_ACTIVITY_OPERATION_MODE_KEY = "EDIT_ACTIVITY_OPERATION_MODE";
    public static final String EDIT_PROGRESS_KEY = "EDIT_PROGRESS_KEY";
    public static final String MULTI_SELECT_EDIT_TARGET_HREF_KEY = "MULTI_SELECT_EDIT_TARGET_HREF";
    private AdobeCloud _cloud;
    private HashMap<String, Object> _configuration = new HashMap<>();

    private AdobeAssetViewEditActivityConfiguration(AdobeAssetViewEditActivityOperationMode adobeAssetViewEditActivityOperationMode) {
        this._configuration.put(EDIT_ACTIVITY_OPERATION_MODE_KEY, adobeAssetViewEditActivityOperationMode);
    }

    public void setMultiSelectEditTargetHref(String str) {
        this._configuration.put(MULTI_SELECT_EDIT_TARGET_HREF_KEY, str);
    }

    public AdobeAssetViewEditActivityOperationMode getEditActivityOperationMode() {
        return (AdobeAssetViewEditActivityOperationMode) this._configuration.get(EDIT_ACTIVITY_OPERATION_MODE_KEY);
    }

    public String getSourceHref() {
        return (String) this._configuration.get(MULTI_SELECT_EDIT_TARGET_HREF_KEY);
    }

    public static AdobeAssetViewEditActivityConfiguration getConfigurationFromBundle(Bundle bundle) {
        AdobeAssetViewEditActivityConfiguration adobeAssetViewEditActivityConfiguration = new AdobeAssetViewEditActivityConfiguration((AdobeAssetViewEditActivityOperationMode) bundle.getSerializable(EDIT_ACTIVITY_OPERATION_MODE_KEY));
        if (adobeAssetViewEditActivityConfiguration.getEditActivityOperationMode() == AdobeAssetViewEditActivityOperationMode.ADOBE_ASSET_VIEW_EDIT_ACTIVITY_OPERATION_MODE_MULTI_SELECT_EDIT) {
            adobeAssetViewEditActivityConfiguration.setMultiSelectEditTargetHref(bundle.getString(MULTI_SELECT_EDIT_TARGET_HREF_KEY));
        }
        AdobeCloud adobeCloud = (AdobeCloud) bundle.getSerializable("ADOBE_CLOUD");
        if (adobeCloud != null) {
            adobeAssetViewEditActivityConfiguration.setCloud(AdobeCloudManager.getSharedCloudManager().getMatchingCloud(adobeCloud));
        }
        return adobeAssetViewEditActivityConfiguration;
    }

    public AdobeCloud getCloud() {
        return this._cloud;
    }

    public void setCloud(AdobeCloud adobeCloud) {
        this._cloud = adobeCloud;
    }
}
