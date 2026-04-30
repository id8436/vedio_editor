package com.adobe.creativesdk.foundation.storage;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.support.v4.app.Fragment;
import com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback;
import com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback;
import com.adobe.creativesdk.foundation.adobeinternal.auth.AdobeUXAuthManagerRestricted;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloud;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudManager;
import com.adobe.creativesdk.foundation.internal.common.AdobeCommonApplicationContextHolder;
import com.adobe.creativesdk.foundation.internal.common.AdobeCommonLearnedSettings;
import com.adobe.creativesdk.foundation.internal.storage.AdobeStorageAssetSelectionState;
import com.adobe.creativesdk.foundation.internal.storage.AdobeStorageLibrarySelectionState;
import com.adobe.creativesdk.foundation.internal.storage.AdobeStoragePhotoAssetSelectionState;
import com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeAssetMainBrowserConfiguration;
import com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeUXAssetBrowserCommonTypes;
import com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeUxAssetBrowserV2Activity;
import com.adobe.creativesdk.foundation.internal.storage.controllers.AssetTabsFragment;
import com.adobe.creativesdk.foundation.internal.storage.controllers.utils.AdobeCSDKInternalClientsPreferences;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import com.adobe.creativesdk.foundation.network.AdobeNetworkException;
import java.util.ArrayList;
import java.util.EnumSet;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeUXAssetBrowser {
    protected static EnumSet<AdobeAssetMimeTypes> adobeUXAssetBrowserFilterWithBasicImages = EnumSet.of(AdobeAssetMimeTypes.MIMETYPE_TIFF, AdobeAssetMimeTypes.MIMETYPE_JPEG, AdobeAssetMimeTypes.MIMETYPE_GIF, AdobeAssetMimeTypes.MIMETYPE_PNG, AdobeAssetMimeTypes.MIMETYPE_BMP);
    protected static EnumSet<AdobeAssetMimeTypes> adobeUXAssetBrowserFilterWithAdobeContent = EnumSet.of(AdobeAssetMimeTypes.MIMETYPE_ILLUSTRATOR);
    private static volatile AdobeUXAssetBrowser sharedBrowser = null;

    public static AdobeUXAssetBrowser getSharedInstance() {
        if (sharedBrowser == null) {
            synchronized (AdobeUXAssetBrowser.class) {
                if (sharedBrowser == null) {
                    sharedBrowser = new AdobeUXAssetBrowser();
                }
            }
        }
        return sharedBrowser;
    }

    private AdobeUXAssetBrowser() {
    }

    public void popupFileBrowser(Activity activity, int i) throws AdobeCSDKException {
        popupFileBrowser(activity, i, (AdobeUXAssetBrowserConfiguration) null);
    }

    private void setBrowserConfiguration(Context context, AdobeUXAssetBrowserConfiguration adobeUXAssetBrowserConfiguration) {
        EnumSet<AdobeUXAssetBrowserOption> enumSet = adobeUXAssetBrowserConfiguration != null ? adobeUXAssetBrowserConfiguration.options : null;
        AdobeCommonApplicationContextHolder.getSharedApplicationContextHolder().setApplicationContext(context);
        if (!AdobeCommonLearnedSettings.lastSortTypeSetByUser()) {
            AdobeUXAssetBrowserCommonTypes.AdobeUXAssetBrowserSortType adobeUXAssetBrowserSortType = AdobeUXAssetBrowserCommonTypes.AdobeUXAssetBrowserSortType.SORT_TYPE_TIME;
            if (enumSet != null && enumSet.contains(AdobeUXAssetBrowserOption.SORT_ALPHABETICALLY_ON_POPUP)) {
                adobeUXAssetBrowserSortType = AdobeUXAssetBrowserCommonTypes.AdobeUXAssetBrowserSortType.SORT_TYPE_ALPHA;
            }
            AdobeCommonLearnedSettings.setLastSortType(adobeUXAssetBrowserSortType);
        }
        if (!AdobeCommonLearnedSettings.lastVisualSetByUser()) {
            AdobeUXAssetBrowserCommonTypes.AdobeUXAssetBrowserVisualLayout adobeUXAssetBrowserVisualLayout = AdobeUXAssetBrowserCommonTypes.AdobeUXAssetBrowserVisualLayout.ADOBE_STORAGE_VISUAL_LAYOUT_WATERFALL;
            if (enumSet != null && enumSet.contains(AdobeUXAssetBrowserOption.SHOW_LIST_VIEW_ON_POPUP)) {
                adobeUXAssetBrowserVisualLayout = AdobeUXAssetBrowserCommonTypes.AdobeUXAssetBrowserVisualLayout.ADOBE_STORAGE_VISUAL_LAYOUT_LISTVIEW;
            }
            AdobeCommonLearnedSettings.setLastVisualLayout(adobeUXAssetBrowserVisualLayout);
        }
        AdobeCSDKInternalClientsPreferences.setClientPreferenceEnableMyAccount(enumSet != null && enumSet.contains(AdobeUXAssetBrowserOption.ENABLE_MYACCOUNT_OPTION));
        boolean z = enumSet != null && enumSet.contains(AdobeUXAssetBrowserOption.ENABLE_MULTI_SELECT);
        boolean z2 = enumSet != null && enumSet.contains(AdobeUXAssetBrowserOption.SHOW_MULTI_SELECT_ON_POPUP);
        AdobeStorageAssetSelectionState.setIsMultiSelectModeSupported(z);
        if (AdobeStorageAssetSelectionState.isMultiSelectModeSupported()) {
            AdobeStorageAssetSelectionState.setIsMultiSelectModeActive(z2);
        } else {
            AdobeStorageAssetSelectionState.setIsMultiSelectModeActive(false);
        }
        if (enumSet != null && enumSet.contains(AdobeUXAssetBrowserOption.ENABLE_MULTI_SELECT)) {
            AdobeStoragePhotoAssetSelectionState.setIsMultiSelectModeActive(true);
        } else {
            AdobeStoragePhotoAssetSelectionState.setIsMultiSelectModeActive(false);
        }
        AdobeStorageLibrarySelectionState.resetSelection();
        AdobeStorageLibrarySelectionState.setSelectModeActive(true);
    }

    public void popupFileBrowser(final Activity activity, final int i, final AdobeUXAssetBrowserConfiguration adobeUXAssetBrowserConfiguration) throws AdobeCSDKException {
        Handler handler;
        setBrowserConfiguration(activity.getApplicationContext(), adobeUXAssetBrowserConfiguration);
        try {
            handler = new Handler();
        } catch (RuntimeException e2) {
            e2.printStackTrace();
            handler = null;
        }
        if (adobeUXAssetBrowserConfiguration == null || (adobeUXAssetBrowserConfiguration.cloud == null && AdobeUXAuthManagerRestricted.getSharedAuthManagerRestricted().hasPrivateCloudScope())) {
            final C1Output c1Output = new C1Output();
            AdobeCloudManager.getSharedCloudManager().refreshClouds(new IAdobeGenericCompletionCallback<ArrayList<AdobeCloud>>() { // from class: com.adobe.creativesdk.foundation.storage.AdobeUXAssetBrowser.1
                @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                public void onCompletion(ArrayList<AdobeCloud> arrayList) {
                    Intent intent = new Intent(activity, (Class<?>) AdobeUxAssetBrowserV2Activity.class);
                    try {
                        AdobeUXAssetBrowser.this.setBrowserConfigurationDetails(intent, adobeUXAssetBrowserConfiguration != null ? adobeUXAssetBrowserConfiguration : new AdobeUXAssetBrowserConfiguration());
                    } catch (AdobeNetworkException e3) {
                        c1Output._error = e3;
                    }
                    AssetTabsFragment.resetTabState();
                    activity.startActivityForResult(intent, i);
                }
            }, new IAdobeGenericErrorCallback<AdobeCSDKException>() { // from class: com.adobe.creativesdk.foundation.storage.AdobeUXAssetBrowser.2
                @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                public void onError(AdobeCSDKException adobeCSDKException) {
                    c1Output._error = adobeCSDKException;
                }
            }, handler);
            if (c1Output._error != null) {
                throw c1Output._error;
            }
            return;
        }
        Intent intent = new Intent(activity, (Class<?>) AdobeUxAssetBrowserV2Activity.class);
        setBrowserConfigurationDetails(intent, adobeUXAssetBrowserConfiguration);
        activity.startActivityForResult(intent, i);
    }

    /* JADX INFO: renamed from: com.adobe.creativesdk.foundation.storage.AdobeUXAssetBrowser$1Output, reason: invalid class name */
    class C1Output {
        AdobeCSDKException _error = null;

        C1Output() {
        }
    }

    public void popupFileBrowser(final Fragment fragment, final int i, final AdobeUXAssetBrowserConfiguration adobeUXAssetBrowserConfiguration) throws AdobeCSDKException {
        Handler handler;
        setBrowserConfiguration(fragment.getActivity().getApplicationContext(), adobeUXAssetBrowserConfiguration);
        AdobeCommonApplicationContextHolder.getSharedApplicationContextHolder().setApplicationContext(fragment.getActivity().getApplicationContext());
        try {
            handler = new Handler();
        } catch (RuntimeException e2) {
            e2.printStackTrace();
            handler = null;
        }
        if (adobeUXAssetBrowserConfiguration == null || (adobeUXAssetBrowserConfiguration.cloud == null && AdobeUXAuthManagerRestricted.getSharedAuthManagerRestricted().hasPrivateCloudScope())) {
            final C2Output c2Output = new C2Output();
            AdobeCloudManager.getSharedCloudManager().refreshClouds(new IAdobeGenericCompletionCallback<ArrayList<AdobeCloud>>() { // from class: com.adobe.creativesdk.foundation.storage.AdobeUXAssetBrowser.3
                @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                public void onCompletion(ArrayList<AdobeCloud> arrayList) {
                    Intent intent = new Intent(fragment.getContext(), (Class<?>) AdobeUxAssetBrowserV2Activity.class);
                    try {
                        AdobeUXAssetBrowser.this.setBrowserConfigurationDetails(intent, adobeUXAssetBrowserConfiguration != null ? adobeUXAssetBrowserConfiguration : new AdobeUXAssetBrowserConfiguration());
                    } catch (AdobeNetworkException e3) {
                        c2Output._error = e3;
                    }
                    fragment.startActivityForResult(intent, i);
                }
            }, new IAdobeGenericErrorCallback<AdobeCSDKException>() { // from class: com.adobe.creativesdk.foundation.storage.AdobeUXAssetBrowser.4
                @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                public void onError(AdobeCSDKException adobeCSDKException) {
                    c2Output._error = adobeCSDKException;
                }
            }, handler);
            if (c2Output._error != null) {
                throw c2Output._error;
            }
            return;
        }
        Intent intent = new Intent(fragment.getContext(), (Class<?>) AdobeUxAssetBrowserV2Activity.class);
        setBrowserConfigurationDetails(intent, adobeUXAssetBrowserConfiguration);
        fragment.startActivityForResult(intent, i);
    }

    /* JADX INFO: renamed from: com.adobe.creativesdk.foundation.storage.AdobeUXAssetBrowser$2Output, reason: invalid class name */
    class C2Output {
        AdobeCSDKException _error = null;

        C2Output() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setBrowserConfigurationDetails(Intent intent, AdobeUXAssetBrowserConfiguration adobeUXAssetBrowserConfiguration) throws AdobeNetworkException {
        if (adobeUXAssetBrowserConfiguration != null) {
            if (adobeUXAssetBrowserConfiguration.mimeTypeFilter != null) {
                intent.putExtra(AdobeAssetMainBrowserConfiguration.MIME_TYPE_FILTER_ARRAY_KEY, adobeUXAssetBrowserConfiguration.mimeTypeFilter.getMimeTypes());
                intent.putExtra(AdobeAssetMainBrowserConfiguration.MIME_TYPE_FILTER_TYPE_KEY, adobeUXAssetBrowserConfiguration.mimeTypeFilter.getFilterType());
            }
            if (adobeUXAssetBrowserConfiguration.dataSourceFilter != null) {
                intent.putExtra(AdobeAssetMainBrowserConfiguration.DATA_SOURCE_FILTER_ARRAY_KEY, adobeUXAssetBrowserConfiguration.dataSourceFilter.getInclusiveDataSources());
                intent.putExtra(AdobeAssetMainBrowserConfiguration.DATA_SOURCE_FILTER_TYPE_KEY, AdobeAssetDataSourceFilterType.ADOBE_ASSET_DATASOURCE_FILTER_INCLUSION);
            } else {
                intent.putExtra(AdobeAssetMainBrowserConfiguration.DATA_SOURCE_FILTER_ARRAY_KEY, AdobeAssetDataSourceFilter.allSupportedDataSources());
                intent.putExtra(AdobeAssetMainBrowserConfiguration.DATA_SOURCE_FILTER_TYPE_KEY, AdobeAssetDataSourceFilterType.ADOBE_ASSET_DATASOURCE_FILTER_INCLUSION);
            }
            if (adobeUXAssetBrowserConfiguration.designLibraryItemFilter != null) {
                intent.putExtra(AdobeAssetMainBrowserConfiguration.DESIGNLIBRARYITEMS_FILTER_ARRAY_KEY, adobeUXAssetBrowserConfiguration.designLibraryItemFilter.getInclusiveDesignLibraryItems());
                intent.putExtra(AdobeAssetMainBrowserConfiguration.DESIGNLIBRARYITEMS_FILTER_TYPE_KEY, AdobeAssetDesignLibraryItemFilterType.ADOBE_ASSET_DESIGNLIBRARYITEM_FILTER_INCLUSION);
            }
            if (adobeUXAssetBrowserConfiguration.cloud == null) {
                AdobeCloud defaultCloud = AdobeCloudManager.getSharedCloudManager().getDefaultCloud();
                if (defaultCloud != null) {
                    intent.putExtra("ADOBE_CLOUD", defaultCloud);
                    return;
                }
                throw new AdobeNetworkException(AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorNoCloudSpecified);
            }
            intent.putExtra("ADOBE_CLOUD", adobeUXAssetBrowserConfiguration.cloud);
        }
    }

    public class ResultProvider {
        private final Intent _intent;

        public ResultProvider(Intent intent) {
            this._intent = intent;
        }

        /* JADX WARN: Removed duplicated region for block: B:27:0x005e A[Catch: ClassCastException -> 0x00d6, TRY_LEAVE, TryCatch #0 {ClassCastException -> 0x00d6, blocks: (B:22:0x004b, B:24:0x0056, B:27:0x005e), top: B:60:0x004b }] */
        /* JADX WARN: Removed duplicated region for block: B:32:0x006e A[Catch: ClassCastException -> 0x0081, LOOP:1: B:30:0x0068->B:32:0x006e, LOOP_END, TryCatch #3 {ClassCastException -> 0x0081, blocks: (B:29:0x0064, B:30:0x0068, B:32:0x006e, B:35:0x0086, B:37:0x0090, B:39:0x0096, B:41:0x009c, B:42:0x00a2), top: B:66:0x0064 }] */
        /* JADX WARN: Removed duplicated region for block: B:58:0x00dc  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.util.ArrayList<com.adobe.creativesdk.foundation.storage.AdobeSelection> getSelectionAssetArray() {
            /*
                Method dump skipped, instruction units count: 225
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.adobe.creativesdk.foundation.storage.AdobeUXAssetBrowser.ResultProvider.getSelectionAssetArray():java.util.ArrayList");
        }
    }
}
