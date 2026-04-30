package com.adobe.creativesdk.foundation.internal.storage.controllers;

import android.content.Context;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.support.v4.app.Fragment;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloud;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudManager;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeEntitlementServices;
import com.adobe.creativesdk.foundation.internal.storage.MobileCreationsDataSourceFactory;
import com.adobe.creativesdk.foundation.internal.storage.controllers.edit.AdobeCCFilesEditSession;
import com.adobe.creativesdk.foundation.internal.storage.controllers.edit.AdobeEditErrorSummaryFragment;
import com.adobe.creativesdk.foundation.internal.storage.controllers.upload.AdobeCreatePhotoCollectionDialogFragment;
import com.adobe.creativesdk.foundation.internal.storage.controllers.upload.AdobeUploadCreateNewFolderMgr;
import com.adobe.creativesdk.foundation.internal.storage.controllers.upload.AdobeUploadCreateNewLibraryDialogFragment;
import com.adobe.creativesdk.foundation.internal.storage.controllers.upload.AdobeUploadErrorSummaryFragment;
import com.adobe.creativesdk.foundation.internal.storage.controllers.upload.AdobeUploadSession;
import com.adobe.creativesdk.foundation.internal.storage.model.resources.AdobeStorageResourceCollection;
import com.adobe.creativesdk.foundation.storage.AdobeAssetDataSourceFilterType;
import com.adobe.creativesdk.foundation.storage.AdobeAssetDataSourceType;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFolder;
import com.adobe.creativesdk.foundation.storage.AdobeAssetMIMETypeFilterType;
import java.util.EnumSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class AdobeAssetViewBrowserControllerFactory {
    private static EnumSet<AdobeAssetDataSourceType> mobileCreationsDataSourceTypes = EnumSet.noneOf(AdobeAssetDataSourceType.class);

    public class AdobeAssetViewFragmentDetails {
        private Bundle argumentsBundle;
        private Class classTag;

        public Bundle getArgumentsBundle() {
            return this.argumentsBundle;
        }

        public void setArgumentsBundle(Bundle bundle) {
            this.argumentsBundle = bundle;
        }

        public Class getClassTag() {
            return this.classTag;
        }

        public void setClassTag(Class cls) {
            this.classTag = cls;
        }
    }

    private AdobeAssetViewBrowserControllerFactory() {
    }

    public static Bundle getAssetViewConfigurationBundle(AdobeAssetDataSourceType adobeAssetDataSourceType, Bundle bundle, AdobeStorageResourceCollection adobeStorageResourceCollection) {
        Bundle bundle2 = new Bundle();
        bundle2.putSerializable(AdobeAssetsViewContainerConfiguration.DATA_SOURCE_TYPE_KEY, adobeAssetDataSourceType);
        if (adobeAssetDataSourceType == AdobeAssetDataSourceType.AdobeAssetDataSourceMobileCreations) {
            bundle2.putSerializable(AdobeAssetsViewContainerConfiguration.MOBILECREATION_FILTERES_TYPES, mobileCreationsDataSourceTypes);
        }
        if (bundle != null) {
            EnumSet enumSet = (EnumSet) bundle.getSerializable(AdobeAssetMainBrowserConfiguration.MIME_TYPE_FILTER_ARRAY_KEY);
            if (enumSet != null) {
                bundle2.putSerializable(AdobeAssetsViewContainerConfiguration.MIME_FILTERS_KEY, enumSet);
            }
            bundle2.putBoolean(AdobeAssetsViewContainerConfiguration.MIME_FILTER_TYPE_KEY, ((AdobeAssetMIMETypeFilterType) bundle.getSerializable(AdobeAssetMainBrowserConfiguration.MIME_TYPE_FILTER_TYPE_KEY)) != AdobeAssetMIMETypeFilterType.ADOBE_ASSET_MIMETYPE_FILTERTYPE_EXCLUSION);
            bundle2.putSerializable("ADOBE_CLOUD", bundle.getSerializable("ADOBE_CLOUD"));
        }
        if (adobeStorageResourceCollection != null) {
            bundle2.putParcelable(AdobeAssetsViewContainerConfiguration.TARGET_COLLECTION, adobeStorageResourceCollection);
        }
        return bundle2;
    }

    private static Class getCCFilesContainerFragmentClass(Context context) {
        return AdobeAssetViewUtils.shouldEnableLokiSpecificFeatures(context) ? CCFilesWithUploadFragment.class : CCFilesFragment.class;
    }

    public static AdobeAssetViewFragmentDetails getAssetViewFragmentDetails(Context context, AdobeAssetDataSourceType adobeAssetDataSourceType, Bundle bundle, AdobeStorageResourceCollection adobeStorageResourceCollection) {
        AdobeAssetViewFragmentDetails adobeAssetViewFragmentDetails = new AdobeAssetViewFragmentDetails();
        boolean z = bundle != null ? bundle.getBoolean(AdobeProviderFragmentConfiguration.ADOBE_FILES_PROVIDER_KEY, false) : false;
        if (adobeAssetDataSourceType == AdobeAssetDataSourceType.AdobeAssetDataSourceFiles && z) {
            if (bundle.getBoolean(AdobeProviderFragmentConfiguration.ADOBE_PROVIDE_MULTIPLE_FILES, false)) {
                adobeAssetViewFragmentDetails.setClassTag(CCMultiFilesProviderFragment.class);
            } else {
                adobeAssetViewFragmentDetails.setClassTag(CCFilesProviderFragment.class);
            }
        } else if (adobeAssetDataSourceType == AdobeAssetDataSourceType.AdobeAssetDataSourceFiles) {
            adobeAssetViewFragmentDetails.setClassTag(getCCFilesContainerFragmentClass(context));
        } else if (adobeAssetDataSourceType == AdobeAssetDataSourceType.AdobeAssetDataSourcePhotos) {
            adobeAssetViewFragmentDetails.setClassTag(PhotosCollectionFragment.class);
        } else if (adobeAssetDataSourceType == AdobeAssetDataSourceType.AdobeAssetDataSourceLibrary) {
            adobeAssetViewFragmentDetails.setClassTag(DesignLibraryCollectionFragment.class);
        } else if (adobeAssetDataSourceType == AdobeAssetDataSourceType.AdobeAssetDataSourceMobileCreations) {
            adobeAssetViewFragmentDetails.classTag = MobileCreationPackageCollectionFragment.class;
        }
        adobeAssetViewFragmentDetails.setArgumentsBundle(getAssetViewConfigurationBundle(adobeAssetDataSourceType, bundle, adobeStorageResourceCollection));
        return adobeAssetViewFragmentDetails;
    }

    public static AssetViewBaseFragment getHostFragmentForDataSource(Context context, AdobeAssetDataSourceType adobeAssetDataSourceType) {
        return getHostFragmentForDataSource(context, adobeAssetDataSourceType, null, null);
    }

    public static AssetViewBaseFragment getHostFragmentForDataSource(Context context, AdobeAssetDataSourceType adobeAssetDataSourceType, Bundle bundle, AdobeStorageResourceCollection adobeStorageResourceCollection) {
        AdobeAssetViewFragmentDetails assetViewFragmentDetails = getAssetViewFragmentDetails(context, adobeAssetDataSourceType, bundle, adobeStorageResourceCollection);
        return (AssetViewBaseFragment) Fragment.instantiate(context, assetViewFragmentDetails.getClassTag().getName(), assetViewFragmentDetails.getArgumentsBundle());
    }

    private static AdobeAssetDataSourceType getFirstDataSource(EnumSet<AdobeAssetDataSourceType> enumSet) {
        Iterator it = enumSet.iterator();
        if (it.hasNext()) {
            return (AdobeAssetDataSourceType) it.next();
        }
        return null;
    }

    public static AssetViewBaseFragment getBaseHostFragmentFromClientBundle(Context context, Bundle bundle, AdobeAssetMainBrowserConfiguration adobeAssetMainBrowserConfiguration) {
        return getBaseHostFragmentFromClientBundle(context, bundle, adobeAssetMainBrowserConfiguration, null);
    }

    public static AssetViewBaseFragment getBaseHostFragmentFromClientBundle(Context context, Bundle bundle, AdobeAssetMainBrowserConfiguration adobeAssetMainBrowserConfiguration, AdobeStorageResourceCollection adobeStorageResourceCollection) {
        EnumSet<AdobeAssetDataSourceType> dataSourcesListToDisplayFromBundle = getDataSourcesListToDisplayFromBundle(bundle);
        if (dataSourcesListToDisplayFromBundle == null || dataSourcesListToDisplayFromBundle.size() > 1) {
            AssetTabsFragment assetTabsFragment = new AssetTabsFragment();
            assetTabsFragment.setArguments(bundle);
            return assetTabsFragment;
        }
        return getHostFragmentForDataSource(context, getFirstDataSource(dataSourcesListToDisplayFromBundle), bundle, adobeStorageResourceCollection);
    }

    private static EnumSet<AdobeAssetDataSourceType> getAllSupportedDataSourcesList() {
        return EnumSet.of(AdobeAssetDataSourceType.AdobeAssetDataSourceFiles, AdobeAssetDataSourceType.AdobeAssetDataSourceLibrary, AdobeAssetDataSourceType.AdobeAssetDataSourcePhotos, AdobeAssetDataSourceType.AdobeAssetDataSourceMobileCreations);
    }

    static EnumSet<AdobeAssetDataSourceType> getDataSourcesListToDisplayFromBundle(Bundle bundle) {
        boolean z;
        boolean z2 = false;
        if (bundle == null) {
            return getAllSupportedDataSourcesList();
        }
        EnumSet<AdobeAssetDataSourceType> enumSet = (EnumSet) bundle.getSerializable(AdobeAssetMainBrowserConfiguration.DATA_SOURCE_FILTER_ARRAY_KEY);
        boolean z3 = ((AdobeAssetDataSourceFilterType) bundle.getSerializable(AdobeAssetMainBrowserConfiguration.DATA_SOURCE_FILTER_TYPE_KEY)) == AdobeAssetDataSourceFilterType.ADOBE_ASSET_DATASOURCE_FILTER_INCLUSION;
        if (enumSet == null) {
            return getAllSupportedDataSourcesList();
        }
        for (AdobeAssetDataSourceType adobeAssetDataSourceType : enumSet) {
            if (MobileCreationsDataSourceFactory.getInstance().isMobileCreation(adobeAssetDataSourceType)) {
                mobileCreationsDataSourceTypes.add(adobeAssetDataSourceType);
                z = true;
            } else {
                z = z2;
            }
            z2 = z;
        }
        if (z2) {
            enumSet.add(AdobeAssetDataSourceType.AdobeAssetDataSourceMobileCreations);
            Iterator it = mobileCreationsDataSourceTypes.iterator();
            while (it.hasNext()) {
                enumSet.remove((AdobeAssetDataSourceType) it.next());
            }
        }
        if (!z3) {
            EnumSet<AdobeAssetDataSourceType> allSupportedDataSourcesList = getAllSupportedDataSourcesList();
            EnumSet<AdobeAssetDataSourceType> allSupportedDataSourcesList2 = getAllSupportedDataSourcesList();
            for (AdobeAssetDataSourceType adobeAssetDataSourceType2 : enumSet) {
                if (allSupportedDataSourcesList.contains(adobeAssetDataSourceType2)) {
                    allSupportedDataSourcesList2.remove(adobeAssetDataSourceType2);
                }
            }
            return allSupportedDataSourcesList2;
        }
        return enumSet;
    }

    public static boolean shouldShowComponent(AdobeAssetDataSourceType adobeAssetDataSourceType, AdobeCloud adobeCloud) {
        if (adobeAssetDataSourceType == AdobeAssetDataSourceType.AdobeAssetDataSourcePhotos) {
            return AdobeEntitlementServices.getSharedServices().isEntitledToService("lightroom", adobeCloud);
        }
        if (adobeAssetDataSourceType == AdobeAssetDataSourceType.AdobeAssetDataSourceLibrary) {
            return AdobeEntitlementServices.getSharedServices().isEntitledToService("libraries", adobeCloud);
        }
        if (adobeAssetDataSourceType == AdobeAssetDataSourceType.AdobeAssetDataSourceFiles) {
            return AdobeEntitlementServices.getSharedServices().isEntitledToService(AdobeEntitlementServices.AdobeEntitlementServiceStorage, adobeCloud);
        }
        if (adobeAssetDataSourceType != AdobeAssetDataSourceType.AdobeAssetDataSourceMobileCreations) {
            return false;
        }
        return true;
    }

    public static AdobeAssetMainBrowserConfiguration getConfigurationFromBundle(Bundle bundle) {
        if (bundle == null) {
            return new AdobeAssetMainBrowserConfiguration(null, true, null, true, AdobeCloudManager.getSharedCloudManager().getDefaultCloud());
        }
        return new AdobeAssetMainBrowserConfiguration((EnumSet) bundle.getSerializable(AdobeAssetMainBrowserConfiguration.DATA_SOURCE_FILTER_ARRAY_KEY), ((AdobeAssetDataSourceFilterType) bundle.getSerializable(AdobeAssetMainBrowserConfiguration.DATA_SOURCE_FILTER_TYPE_KEY)) == AdobeAssetDataSourceFilterType.ADOBE_ASSET_DATASOURCE_FILTER_INCLUSION, (EnumSet) bundle.getSerializable(AdobeAssetMainBrowserConfiguration.MIME_TYPE_FILTER_ARRAY_KEY), ((AdobeAssetMIMETypeFilterType) bundle.getSerializable(AdobeAssetMainBrowserConfiguration.MIME_TYPE_FILTER_TYPE_KEY)) != AdobeAssetMIMETypeFilterType.ADOBE_ASSET_MIMETYPE_FILTERTYPE_EXCLUSION, (AdobeCloud) bundle.getSerializable("ADOBE_CLOUD"));
    }

    public static AdobeAssetMainBrowserExtraConfiguration getExtraConfigurationFromBundle(Bundle bundle) {
        if (bundle == null) {
            return new AdobeAssetMainBrowserExtraConfiguration(null, false, false);
        }
        return new AdobeAssetMainBrowserExtraConfiguration(bundle.getString(AdobeAssetMainBrowserExtraConfiguration.START_WITH_COLLECTION_KEY), bundle.getBoolean(AdobeAssetMainBrowserExtraConfiguration.SHOULD_SHOW_ONLY_ASSETS_KEY, false), bundle.getBoolean(AdobeAssetMainBrowserExtraConfiguration.SHOW_LIBRARY_ITEM_KEY, false));
    }

    public static DialogFragment getHostFragmentForUploadErrorSummary(Object obj) {
        AdobeUploadErrorSummaryFragment adobeUploadErrorSummaryFragment = new AdobeUploadErrorSummaryFragment();
        adobeUploadErrorSummaryFragment.setUploadFailedList(((AdobeUploadSession.UploadSummary) obj)._errorAssets);
        return adobeUploadErrorSummaryFragment;
    }

    public static DialogFragment getHostFragmentForEditErrorSummary(Object obj) {
        AdobeEditErrorSummaryFragment adobeEditErrorSummaryFragment = new AdobeEditErrorSummaryFragment();
        adobeEditErrorSummaryFragment.setEditFailedList(((AdobeCCFilesEditSession.EditSummary) obj)._errorAssets);
        return adobeEditErrorSummaryFragment;
    }

    public static DialogFragment getCreateNewFolderDialogFragment(AdobeAssetFolder adobeAssetFolder) {
        return AdobeUploadCreateNewFolderMgr.getCreateNewFolderDialogFragment(adobeAssetFolder);
    }

    public static DialogFragment getCreateNewLibraryDialogFragment() {
        return new AdobeUploadCreateNewLibraryDialogFragment();
    }

    public static DialogFragment getCreateNewCollectionDialogFragment(AdobeCloud adobeCloud) {
        AdobeCreatePhotoCollectionDialogFragment adobeCreatePhotoCollectionDialogFragment = new AdobeCreatePhotoCollectionDialogFragment();
        adobeCreatePhotoCollectionDialogFragment.setCloud(adobeCloud);
        return adobeCreatePhotoCollectionDialogFragment;
    }
}
