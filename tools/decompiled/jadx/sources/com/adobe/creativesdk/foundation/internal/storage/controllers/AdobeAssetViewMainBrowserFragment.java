package com.adobe.creativesdk.foundation.internal.storage.controllers;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.adobe.creativesdk.foundation.adobeinternal.net.AdobeNetworkReachabilityUtil;
import com.adobe.creativesdk.foundation.internal.notification.AdobeInternalNotificationID;
import com.adobe.creativesdk.foundation.internal.notification.AdobeLocalNotificationCenter;
import com.adobe.creativesdk.foundation.internal.notification.AdobeNotification;
import com.adobe.creativesdk.foundation.internal.storage.MobileCreationsDataSourceFactory;
import com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeAssetViewBrowserControllerFactory;
import com.adobe.creativesdk.foundation.internal.storage.controllers.commands.AdobeAssetViewBrowserCommandName;
import com.adobe.creativesdk.foundation.internal.storage.controllers.commands.AdobeAssetViewCommandsHandler;
import com.adobe.creativesdk.foundation.internal.storage.controllers.commands.AdobeAssetViewNavigateCommands;
import com.adobe.creativesdk.foundation.internal.storage.controllers.commands.AdobeAssetViewNavigateToCollectionCommand;
import com.adobe.creativesdk.foundation.internal.storage.controllers.commands.AdobeAssetViewNavigateToDesignLibraryCollectionCommand;
import com.adobe.creativesdk.foundation.internal.storage.controllers.commands.AdobeAssetViewNavigateToPhotoCollectionCommand;
import com.adobe.creativesdk.foundation.internal.storage.model.resources.AdobeStorageResourceCollection;
import com.adobe.creativesdk.foundation.storage.AdobeAssetDataSourceType;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFolder;
import com.adobe.creativesdk.foundation.storage.AdobePhotoCollection;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.EnumSet;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class AdobeAssetViewMainBrowserFragment extends Fragment implements IAdobeAssetMainBrowserMgr {
    public static final int COLLABORATION_INTENT_REQUEST_CODE = 10;
    public static final int NOTIFICATION_INTENT_REQUEST_CODE = 11;
    private static final int ROOT_VIEW_ID_CONST = 4660;
    public static final String T = "MainBrowserFragment";
    private IAdobeAssetViewBrowserFragmentHostActivity assetViewFragmentHostActivity;
    private AdobeAssetMainBrowserConfiguration browserConfiguration;
    private BrowserCommandsHandler commandsHandler;
    private AdobeAssetMainBrowserExtraConfiguration extraConfiguration;
    private int rootViewId = 0;
    private boolean popToRootOnResume = false;

    @Override // android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.commandsHandler = new BrowserCommandsHandler();
        setRetainInstance(true);
        Bundle arguments = getArguments();
        this.browserConfiguration = AdobeAssetViewBrowserControllerFactory.getConfigurationFromBundle(arguments);
        this.extraConfiguration = AdobeAssetViewBrowserControllerFactory.getExtraConfigurationFromBundle(arguments);
        if (this.browserConfiguration.getDataSourcesFilter() == null || this.browserConfiguration.getDataSourcesFilter().isEmpty()) {
            MobileCreationsDataSourceFactory.getInstance().setCloud(this.browserConfiguration.getCloud());
            MobileCreationsDataSourceFactory.getInstance().loadDataSources(true);
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.IAdobeAssetMainBrowserMgr
    public AdobeAssetMainBrowserConfiguration getBrowserConfiguration() {
        return this.browserConfiguration;
    }

    public void navigateToCollection(AdobeAssetDataSourceType adobeAssetDataSourceType, AdobeStorageResourceCollection adobeStorageResourceCollection, boolean z) {
        Log.e(T, "navigateToCollection");
        if (this.assetViewFragmentHostActivity != null) {
            this.assetViewFragmentHostActivity.hideCollaborationFrameOnBackPressed();
        }
        AdobeAssetViewBrowserControllerFactory.AdobeAssetViewFragmentDetails assetViewFragmentDetails = AdobeAssetViewBrowserControllerFactory.getAssetViewFragmentDetails(getActivity(), adobeAssetDataSourceType, getArguments(), adobeStorageResourceCollection);
        assetViewFragmentDetails.getArgumentsBundle().putBoolean(AdobeAssetsViewContainerConfiguration.TARGET_COLLECTION_IS_READ_ONLY, z);
        AssetViewBaseFragment assetViewBaseFragment = (AssetViewBaseFragment) Fragment.instantiate(getActivity(), assetViewFragmentDetails.getClassTag().getName(), assetViewFragmentDetails.getArgumentsBundle());
        if (!(assetViewBaseFragment instanceof CCMultiFilesProviderFragment)) {
            pushHostFragment(assetViewBaseFragment);
        }
    }

    public void navigateToCollectionInDocProvider(AdobeAssetDataSourceType adobeAssetDataSourceType, AdobeStorageResourceCollection adobeStorageResourceCollection, boolean z) {
        if (this.assetViewFragmentHostActivity != null) {
            this.assetViewFragmentHostActivity.hideCollaborationFrameOnBackPressed();
        }
        AdobeAssetViewBrowserControllerFactory.AdobeAssetViewFragmentDetails assetViewFragmentDetails = AdobeAssetViewBrowserControllerFactory.getAssetViewFragmentDetails(getActivity(), adobeAssetDataSourceType, getArguments(), adobeStorageResourceCollection);
        assetViewFragmentDetails.getArgumentsBundle().putBoolean(AdobeAssetsViewContainerConfiguration.TARGET_COLLECTION_IS_READ_ONLY, z);
        AssetViewBaseFragment assetViewBaseFragment = (AssetViewBaseFragment) Fragment.instantiate(getActivity(), assetViewFragmentDetails.getClassTag().getName(), assetViewFragmentDetails.getArgumentsBundle());
        if (assetViewBaseFragment instanceof CCMultiFilesProviderFragment) {
            pushHostFragment(assetViewBaseFragment);
        }
    }

    public void navigateToPhotoCollection(AdobeAssetDataSourceType adobeAssetDataSourceType, AdobeAssetViewNavigateToPhotoCollectionCommand adobeAssetViewNavigateToPhotoCollectionCommand) {
        PhotosAssetsFragment photosAssetsFragment = new PhotosAssetsFragment();
        Bundle assetViewConfigurationBundle = AdobeAssetViewBrowserControllerFactory.getAssetViewConfigurationBundle(adobeAssetDataSourceType, getArguments(), null);
        assetViewConfigurationBundle.putString(AdobePhotosViewContainerConfiguration.TARGET_COLLECTION_GUID, adobeAssetViewNavigateToPhotoCollectionCommand.getCollectionGUID());
        assetViewConfigurationBundle.putString(AdobePhotosViewContainerConfiguration.TARGET_COLLECTION_NAME, adobeAssetViewNavigateToPhotoCollectionCommand.getCollectionName());
        assetViewConfigurationBundle.putString(AdobePhotosViewContainerConfiguration.TARGET_COLLECTION_CATALOG_GUID, adobeAssetViewNavigateToPhotoCollectionCommand.getCatalogGUID());
        assetViewConfigurationBundle.putString(AdobePhotosViewContainerConfiguration.TARGET_COLLECTION_CATALOG_NAME, adobeAssetViewNavigateToPhotoCollectionCommand.getCatalogName());
        photosAssetsFragment.setArguments(assetViewConfigurationBundle);
        pushHostFragment(photosAssetsFragment);
    }

    void pushHostFragment(Fragment fragment) {
        FragmentTransaction fragmentTransactionBeginTransaction = getChildFragmentManager().beginTransaction();
        fragmentTransactionBeginTransaction.replace(this.rootViewId, fragment);
        fragmentTransactionBeginTransaction.addToBackStack(null);
        fragmentTransactionBeginTransaction.commit();
    }

    @Override // android.support.v4.app.Fragment
    public void onAttachFragment(Fragment fragment) {
        super.onAttachFragment(fragment);
    }

    void showFragmentAsRoot(Fragment fragment) {
        FragmentTransaction fragmentTransactionBeginTransaction = getChildFragmentManager().beginTransaction();
        fragmentTransactionBeginTransaction.replace(this.rootViewId, fragment, "CURRENT_FRAGMENT");
        fragmentTransactionBeginTransaction.commit();
    }

    public Boolean closeIfFabOpen() {
        FragmentManager childFragmentManager = getChildFragmentManager();
        if (!(childFragmentManager.findFragmentById(this.rootViewId) instanceof AssetViewBaseFragment)) {
            return false;
        }
        AssetViewBaseFragment assetViewBaseFragment = (AssetViewBaseFragment) childFragmentManager.findFragmentById(this.rootViewId);
        Boolean boolIsFloatingMenuExpanded = false;
        if (assetViewBaseFragment instanceof AssetViewFragment) {
            boolIsFloatingMenuExpanded = ((AssetViewFragment) assetViewBaseFragment).isFloatingMenuExpanded();
            if (boolIsFloatingMenuExpanded.booleanValue()) {
                ((AssetViewFragment) assetViewBaseFragment).collapseFloatingActionMenu();
                return boolIsFloatingMenuExpanded;
            }
        } else if (assetViewBaseFragment instanceof AssetTabsFragment) {
            AssetViewFragment assetViewFragment = (AssetViewFragment) ((AssetTabsFragment) assetViewBaseFragment).getCurrentFragment();
            if (assetViewFragment == null) {
                return false;
            }
            boolIsFloatingMenuExpanded = assetViewFragment.isFloatingMenuExpanded();
            if (boolIsFloatingMenuExpanded.booleanValue()) {
                assetViewFragment.collapseFloatingActionMenu();
            }
        }
        return boolIsFloatingMenuExpanded;
    }

    private void startWithClientArguments() {
        String strStartWithCollection = this.extraConfiguration.startWithCollection();
        AdobeStorageResourceCollection adobeStorageResourceCollectionCollectionFromHref = null;
        if (strStartWithCollection != null) {
            try {
                adobeStorageResourceCollectionCollectionFromHref = AdobeStorageResourceCollection.collectionFromHref(new URI(strStartWithCollection));
            } catch (URISyntaxException e2) {
                e2.printStackTrace();
            }
        }
        boolean zShouldShowOnlyAssets = this.extraConfiguration.shouldShowOnlyAssets();
        boolean zShowLibraryItem = this.extraConfiguration.showLibraryItem();
        if (adobeStorageResourceCollectionCollectionFromHref == null) {
            if (zShouldShowOnlyAssets) {
                showCCSectionMyAssets();
                return;
            } else if (zShowLibraryItem) {
                showCCSectionMyLibraries();
                return;
            } else {
                showCCSectionMyAssets();
                return;
            }
        }
        if (!zShowLibraryItem) {
            showCCSectionMyAssetsCollection(adobeStorageResourceCollectionCollectionFromHref);
        } else {
            showCCSectionMyLibrary(strStartWithCollection);
        }
    }

    private void showCCSectionMyAssetsCollection(AdobeStorageResourceCollection adobeStorageResourceCollection) {
        fixDataSourceArgumentsForAssets();
        showFragmentAsRoot(AdobeAssetViewBrowserControllerFactory.getBaseHostFragmentFromClientBundle(getActivity(), getArguments(), this.browserConfiguration, adobeStorageResourceCollection));
    }

    private void showCCSectionMyLibrary(String str) {
        DesignLibraryItemsFragment designLibraryItemsFragment = new DesignLibraryItemsFragment();
        Bundle bundle = new Bundle();
        bundle.putString(AdobeDesignLibraryCollectionConfiguration.TARGET_LIBRARY_COMPOSITE_ID, str);
        designLibraryItemsFragment.setArguments(bundle);
        showFragmentAsRoot(designLibraryItemsFragment);
    }

    public void startWithClientData() {
        Bundle extras = getActivity().getIntent().getExtras();
        if (extras == null || !extras.getBoolean("NON_MAIN_BROWSER_FRAGMENT")) {
            startWithClientArguments();
        }
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        FrameLayout frameLayout = new FrameLayout(getActivity());
        frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        this.rootViewId = ROOT_VIEW_ID_CONST;
        frameLayout.setId(this.rootViewId);
        AdobeNetworkReachabilityUtil.getSharedInstance();
        return frameLayout;
    }

    @Override // android.support.v4.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
        if (bundle == null) {
            startWithClientData();
        } else if (getChildFragmentManager().getBackStackEntryCount() == 0) {
            startWithClientData();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.support.v4.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        if (activity instanceof IAdobeAssetViewBrowserFragmentHostActivity) {
            this.assetViewFragmentHostActivity = (IAdobeAssetViewBrowserFragmentHostActivity) activity;
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onStart() {
        this.commandsHandler.onStart();
        super.onStart();
    }

    @Override // android.support.v4.app.Fragment
    public void onResume() {
        super.onResume();
        if (this.popToRootOnResume) {
            this.popToRootOnResume = false;
            performPopToRoot();
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onStop() {
        this.commandsHandler.onStop();
        super.onStop();
    }

    @Override // android.support.v4.app.Fragment
    public void onDestroyView() {
        AdobeNetworkReachabilityUtil.destorySharedInstance();
        super.onDestroyView();
    }

    public boolean handleOnBackPressed() {
        Log.e(T, "handleOnBackPressed");
        if (!closeIfFabOpen().booleanValue()) {
            getChildFragmentManager().popBackStackImmediate();
        }
        return true;
    }

    private void performPopToRoot() {
        while (true) {
            FragmentManager childFragmentManager = getChildFragmentManager();
            if (childFragmentManager.getBackStackEntryCount() != 1) {
                childFragmentManager.popBackStackImmediate();
            } else {
                AdobeLocalNotificationCenter.getDefaultNotificationCenter().postNotification(new AdobeNotification(AdobeInternalNotificationID.AdobeCCFilesForceRefreshAssetsList, null));
                return;
            }
        }
    }

    public boolean isAtRootFragment() {
        return getChildFragmentManager().getBackStackEntryCount() == 0;
    }

    public void handleOnActivityResult(int i, int i2, Intent intent) {
        if (i2 == -1 && isAOneUpActivityRequest(i)) {
            if (i == 2135) {
                returnCurrentSelectedPhotosToClient();
            } else {
                returnCurrentSelectedFilesToClient();
            }
        }
        if (i2 == -1 && i == 10 && isNotSelfDelete(intent)) {
            FragmentManager childFragmentManager = getChildFragmentManager();
            DesignLibraryCollectionListView.setShouldInvalidateCollection(true);
            childFragmentManager.popBackStackImmediate();
        }
    }

    public boolean isNotSelfDelete(Intent intent) {
        return intent != null && intent.getBooleanExtra("SELF_DELTE", false);
    }

    private boolean isAOneUpActivityRequest(int i) {
        return i == 2134 || i == 2135 || i == 2137 || i == 2136;
    }

    class BrowserCommandsHandler extends AdobeAssetViewCommandsHandler {
        private BrowserCommandsHandler() {
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.commands.AdobeAssetViewCommandsHandler
        protected EnumSet<AdobeAssetViewBrowserCommandName> getCommandsListToRegister() {
            return EnumSet.of(AdobeAssetViewBrowserCommandName.NAVIGATE_TO_COLLECTION, AdobeAssetViewBrowserCommandName.NAVIGATE_TO_COLLECTION_DOC_PROVIDER, AdobeAssetViewBrowserCommandName.NAVIGATE_TO_DESIGNLIBRARY_COLLECTION, AdobeAssetViewBrowserCommandName.NAVIGATE_TO_MOBILECREATION_COLLECTION, AdobeAssetViewBrowserCommandName.NAVIGATE_BACK, AdobeAssetViewBrowserCommandName.ACTION_MENU_SHOW_MY_ACCOUNT, AdobeAssetViewBrowserCommandName.ACTION_ASSETVIEW_OPEN_SELECTED_FILES, AdobeAssetViewBrowserCommandName.ACTION_ASSETVIEW_OPEN_SELECTED_PHOTOS, AdobeAssetViewBrowserCommandName.NAVIGATE_TO_PHOTO_COLLECTION, AdobeAssetViewBrowserCommandName.ASSET_BROWSER_USER_SIGNOUT, AdobeAssetViewBrowserCommandName.ACTION_MENU_CREATE_NEWFOLDER, AdobeAssetViewBrowserCommandName.ACTION_ASSETVIEW_NEWFOLDER_CREATED, AdobeAssetViewBrowserCommandName.ACTION_ASSETVIEW_LIBRARY_CREATED, AdobeAssetViewBrowserCommandName.ACTION_MENU_CREATE_NEWLIBRARY, AdobeAssetViewBrowserCommandName.ACTION_MENU_CREATE_NEW_PHOTOCOLLECTION, AdobeAssetViewBrowserCommandName.ACTION_ASSETVIEW_PHOTOCOLLECTION_CREATED, AdobeAssetViewBrowserCommandName.ACTION_ASSETVIEW_UPLOAD_SHOW_ERROR_DETAILS, AdobeAssetViewBrowserCommandName.ACTION_ASSETVIEW_EDIT_SHOW_ERROR_DETAILS, AdobeAssetViewBrowserCommandName.ACTION_SHOW_CC_DATASOURCE_MYASSETS, AdobeAssetViewBrowserCommandName.ACTION_SHOW_CC_DATASOURCE_MYLIBRARIES, AdobeAssetViewBrowserCommandName.ACTION_ASSET_VIEW_COLLABORATOR_SELF_DELETE);
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.commands.AdobeAssetViewCommandsHandler
        protected void handleCommand(AdobeAssetViewBrowserCommandName adobeAssetViewBrowserCommandName, Object obj) {
            switch (adobeAssetViewBrowserCommandName) {
                case NAVIGATE_TO_COLLECTION:
                    AdobeAssetViewNavigateToCollectionCommand adobeAssetViewNavigateToCollectionCommand = (AdobeAssetViewNavigateToCollectionCommand) obj;
                    AdobeAssetViewMainBrowserFragment.this.navigateToCollection(adobeAssetViewNavigateToCollectionCommand.getDataSourceType(), adobeAssetViewNavigateToCollectionCommand.getCollection(), adobeAssetViewNavigateToCollectionCommand.isReadOnly());
                    break;
                case NAVIGATE_TO_COLLECTION_DOC_PROVIDER:
                    AdobeAssetViewNavigateToCollectionCommand adobeAssetViewNavigateToCollectionCommand2 = (AdobeAssetViewNavigateToCollectionCommand) obj;
                    AdobeAssetViewMainBrowserFragment.this.navigateToCollectionInDocProvider(adobeAssetViewNavigateToCollectionCommand2.getDataSourceType(), adobeAssetViewNavigateToCollectionCommand2.getCollection(), adobeAssetViewNavigateToCollectionCommand2.isReadOnly());
                    break;
                case NAVIGATE_TO_DESIGNLIBRARY_COLLECTION:
                    AdobeAssetViewMainBrowserFragment.this.navigateToLibraryDesignCollection((AdobeAssetViewNavigateToDesignLibraryCollectionCommand) obj);
                    break;
                case NAVIGATE_TO_MOBILECREATION_COLLECTION:
                    AdobeAssetViewMainBrowserFragment.this.navigateToMobileCreationCollection((AdobeAssetViewNavigateCommands.NavToMobileCreationPackageCollectionData) obj);
                    break;
                case ACTION_MENU_SHOW_MY_ACCOUNT:
                    AdobeAssetViewMainBrowserFragment.this.showMyAccountView();
                    break;
                case ACTION_ASSETVIEW_OPEN_SELECTED_FILES:
                    AdobeAssetViewMainBrowserFragment.this.returnCurrentSelectedFilesToClient();
                    break;
                case ACTION_ASSETVIEW_OPEN_SELECTED_PHOTOS:
                    AdobeAssetViewMainBrowserFragment.this.returnCurrentSelectedPhotosToClient();
                    break;
                case NAVIGATE_TO_PHOTO_COLLECTION:
                    AdobeAssetViewMainBrowserFragment.this.navigateToPhotoCollection(AdobeAssetDataSourceType.AdobeAssetDataSourcePhotos, (AdobeAssetViewNavigateToPhotoCollectionCommand) obj);
                    break;
                case ASSET_BROWSER_USER_SIGNOUT:
                    AdobeAssetViewMainBrowserFragment.this.signOutCurrentUser();
                    break;
                case ACTION_ASSETVIEW_UPLOAD_SHOW_ERROR_DETAILS:
                    AdobeAssetViewMainBrowserFragment.this.handleShowUploadErrorDetails(obj);
                    break;
                case ACTION_ASSETVIEW_EDIT_SHOW_ERROR_DETAILS:
                    AdobeAssetViewMainBrowserFragment.this.handleShowEditErrorDetails(obj);
                    break;
                case ACTION_MENU_CREATE_NEWFOLDER:
                    AdobeAssetViewMainBrowserFragment.this.handleCreateNewFolder((AdobeAssetFolder) obj);
                    break;
                case ACTION_ASSETVIEW_NEWFOLDER_CREATED:
                    AdobeAssetViewMainBrowserFragment.this.handleNewFolderCreated((AdobeAssetFolder) obj);
                    break;
                case ACTION_MENU_CREATE_NEWLIBRARY:
                    AdobeAssetViewMainBrowserFragment.this.handleCreateNewLibrary();
                    break;
                case ACTION_ASSETVIEW_LIBRARY_CREATED:
                    AdobeAssetViewMainBrowserFragment.this.handleNewLibraryCreated((String) obj);
                    break;
                case ACTION_MENU_CREATE_NEW_PHOTOCOLLECTION:
                    AdobeAssetViewMainBrowserFragment.this.handleCreateNewPhotoCollection();
                    break;
                case ACTION_ASSETVIEW_PHOTOCOLLECTION_CREATED:
                    AdobeAssetViewMainBrowserFragment.this.handleNeCollectionCreated((AdobePhotoCollection) obj);
                    break;
                case ACTION_SHOW_CC_DATASOURCE_MYASSETS:
                    Log.e(AdobeAssetViewMainBrowserFragment.T, "B-Action ACTION_SHOW_CC_DATASOURCE_MYASSETS");
                    AdobeAssetViewMainBrowserFragment.this.showCCSectionMyAssets();
                    break;
                case ACTION_SHOW_CC_DATASOURCE_MYLIBRARIES:
                    AdobeAssetViewMainBrowserFragment.this.showCCSectionMyLibraries();
                    break;
                case ACTION_ASSET_VIEW_COLLABORATOR_SELF_DELETE:
                    AdobeAssetViewMainBrowserFragment.this.moveToRootCollection();
                    break;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void moveToRootCollection() {
        handleOnBackPressed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showCCSectionMyLibraries() {
        showFragmentAsRoot(AdobeAssetViewBrowserControllerFactory.getHostFragmentForDataSource(getActivity(), AdobeAssetDataSourceType.AdobeAssetDataSourceLibrary));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showCCSectionMyAssets() {
        showFragmentAsRoot(AdobeAssetViewBrowserControllerFactory.getBaseHostFragmentFromClientBundle(getActivity(), getArguments(), this.browserConfiguration));
    }

    private void fixDataSourceArgumentsForAssets() {
        EnumSet enumSet;
        Bundle arguments = getArguments();
        if (arguments != null && (enumSet = (EnumSet) arguments.getSerializable(AdobeAssetMainBrowserConfiguration.DATA_SOURCE_FILTER_ARRAY_KEY)) != null && !enumSet.isEmpty()) {
            enumSet.remove(AdobeAssetDataSourceType.AdobeAssetDataSourceLibrary);
            arguments.putSerializable(AdobeAssetMainBrowserConfiguration.DATA_SOURCE_FILTER_ARRAY_KEY, enumSet);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void navigateToLibraryDesignCollection(AdobeAssetViewNavigateToDesignLibraryCollectionCommand adobeAssetViewNavigateToDesignLibraryCollectionCommand) {
        DesignLibraryItemsFragment designLibraryItemsFragment = new DesignLibraryItemsFragment();
        Bundle bundle = new Bundle();
        bundle.putString(AdobeDesignLibraryCollectionConfiguration.TARGET_LIBRARY_COMPOSITE_ID, adobeAssetViewNavigateToDesignLibraryCollectionCommand.getCollectionGUID());
        bundle.putSerializable("ADOBE_CLOUD", getBrowserConfiguration().getCloud());
        Bundle arguments = getArguments();
        if (arguments != null && arguments.containsKey(AdobeAssetMainBrowserConfiguration.DESIGNLIBRARYITEMS_FILTER_ARRAY_KEY)) {
            bundle.putSerializable(AdobeDesignLibraryCollectionConfiguration.DESIGNLIBRARYITEMS_FILTER_KEY, arguments.getSerializable(AdobeAssetMainBrowserConfiguration.DESIGNLIBRARYITEMS_FILTER_ARRAY_KEY));
            bundle.putSerializable(AdobeDesignLibraryCollectionConfiguration.DESIGNLIBRARYITEMS_FILTER_TYPE_KEY, arguments.getSerializable(AdobeAssetMainBrowserConfiguration.DESIGNLIBRARYITEMS_FILTER_TYPE_KEY));
        }
        designLibraryItemsFragment.setArguments(bundle);
        pushHostFragment(designLibraryItemsFragment);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void navigateToMobileCreationCollection(AdobeAssetViewNavigateCommands.NavToMobileCreationPackageCollectionData navToMobileCreationPackageCollectionData) {
        MobileCreationPackageItemsFragment mobileCreationPackageItemsFragment = new MobileCreationPackageItemsFragment();
        Bundle bundle = new Bundle();
        bundle.putString(AdobeMobilePackageCollectionConfiguration.TARGET_COLLECTION_HREF_KEY, navToMobileCreationPackageCollectionData.getCollectionHref());
        bundle.putString(AdobeMobilePackageCollectionConfiguration.TARGET_COLLECTION_PARENT_HREF_KEY, navToMobileCreationPackageCollectionData.getParentHref());
        bundle.putString(AdobeMobilePackageCollectionConfiguration.TARGET_COLLECTION_MODIFIED_DATE, navToMobileCreationPackageCollectionData.getModified());
        mobileCreationPackageItemsFragment.setArguments(bundle);
        pushHostFragment(mobileCreationPackageItemsFragment);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleNewFolderCreated(AdobeAssetFolder adobeAssetFolder) {
        navigateToCollection(AdobeAssetDataSourceType.AdobeAssetDataSourceFiles, AdobeStorageResourceCollection.collectionFromHref(adobeAssetFolder.getHref()), adobeAssetFolder.isReadOnly());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleCreateNewLibrary() {
        AdobeAssetViewBrowserControllerFactory.getCreateNewLibraryDialogFragment().show(getChildFragmentManager(), "upload_create_new_library");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleCreateNewPhotoCollection() {
        AdobeAssetViewBrowserControllerFactory.getCreateNewCollectionDialogFragment(getBrowserConfiguration().getCloud()).show(getChildFragmentManager(), "upload_create_new_collection");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleNewLibraryCreated(String str) {
        AdobeAssetViewNavigateToDesignLibraryCollectionCommand adobeAssetViewNavigateToDesignLibraryCollectionCommand = new AdobeAssetViewNavigateToDesignLibraryCollectionCommand();
        adobeAssetViewNavigateToDesignLibraryCollectionCommand.setCollectionGUID(str);
        navigateToLibraryDesignCollection(adobeAssetViewNavigateToDesignLibraryCollectionCommand);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleNeCollectionCreated(AdobePhotoCollection adobePhotoCollection) {
        AdobeAssetViewNavigateToPhotoCollectionCommand adobeAssetViewNavigateToPhotoCollectionCommand = new AdobeAssetViewNavigateToPhotoCollectionCommand();
        adobeAssetViewNavigateToPhotoCollectionCommand.setCollectionGUID(adobePhotoCollection.getGUID());
        adobeAssetViewNavigateToPhotoCollectionCommand.setCollectionName(adobePhotoCollection.getName());
        adobeAssetViewNavigateToPhotoCollectionCommand.setCatalogGUID(adobePhotoCollection.getCatalog().getGUID());
        adobeAssetViewNavigateToPhotoCollectionCommand.setCatalogName(adobePhotoCollection.getCatalog().getName());
        navigateToPhotoCollection(AdobeAssetDataSourceType.AdobeAssetDataSourcePhotos, adobeAssetViewNavigateToPhotoCollectionCommand);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleCreateNewFolder(AdobeAssetFolder adobeAssetFolder) {
        AdobeAssetViewBrowserControllerFactory.getCreateNewFolderDialogFragment(adobeAssetFolder).show(getChildFragmentManager(), "upload_create_new_folder");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleShowUploadErrorDetails(Object obj) {
        AdobeAssetViewBrowserControllerFactory.getHostFragmentForUploadErrorSummary(obj).show(getChildFragmentManager(), "upload_error_details");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleShowEditErrorDetails(Object obj) {
        AdobeAssetViewBrowserControllerFactory.getHostFragmentForEditErrorSummary(obj).show(getChildFragmentManager(), "edit_error_details");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void signOutCurrentUser() {
        ((IAdobeAssetViewBrowserFragmentHostActivity) getActivity()).handleUserSignOutAction();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void returnCurrentSelectedFilesToClient() {
        ((IAdobeAssetViewBrowserFragmentHostActivity) getActivity()).handleOpenSelectedFilesAction(AdobeAssetViewBrowserSelectFilesHelper.getCurrentSelectedFilesAsIntentResultData());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void returnCurrentSelectedPhotosToClient() {
        ((IAdobeAssetViewBrowserFragmentHostActivity) getActivity()).handleOpenSelectedFilesAction(AdobeAssetViewBrowserSelectFilesHelper.getCurrentSelectedPhotosAsIntentResultData());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showMyAccountView() {
        AdobeStorageSettingsFragment adobeStorageSettingsFragment = new AdobeStorageSettingsFragment();
        Bundle bundle = new Bundle();
        bundle.putSerializable("ADOBE_CLOUD", getBrowserConfiguration().getCloud());
        adobeStorageSettingsFragment.setArguments(bundle);
        pushHostFragment(adobeStorageSettingsFragment);
    }

    @Override // android.support.v4.app.Fragment
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        super.onRequestPermissionsResult(i, strArr, iArr);
        List<Fragment> fragments = getChildFragmentManager().getFragments();
        if (fragments != null) {
            for (Fragment fragment : fragments) {
                if (fragment != null) {
                    fragment.onRequestPermissionsResult(i, strArr, iArr);
                }
            }
        }
    }
}
