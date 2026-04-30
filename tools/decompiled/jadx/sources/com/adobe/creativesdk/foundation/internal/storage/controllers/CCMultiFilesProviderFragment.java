package com.adobe.creativesdk.foundation.internal.storage.controllers;

import android.app.AlertDialog;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.v4.content.ContextCompat;
import android.support.v7.widget.Toolbar;
import android.util.Log;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.TextView;
import com.adobe.creativesdk.foundation.assetux.R;
import com.adobe.creativesdk.foundation.internal.common.AdobeCommonLearnedSettings;
import com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeUXAssetBrowserCommonTypes;
import com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment;
import com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesFragment;
import com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesWithUploadFragment;
import com.adobe.creativesdk.foundation.internal.storage.controllers.commands.AdobeAssetViewBrowserCommandName;
import com.adobe.creativesdk.foundation.internal.storage.controllers.commands.AdobeAssetViewNavigateCommands;
import com.adobe.creativesdk.foundation.internal.storage.controllers.commands.AdobeAssetViewNavigateToCollectionCommand;
import com.adobe.creativesdk.foundation.internal.storage.controllers.common.ReusableImageBitmapCache;
import com.adobe.creativesdk.foundation.internal.storage.controllers.common.ReusableImageBitmapWorker;
import com.adobe.creativesdk.foundation.internal.storage.controllers.edit.AdobeCCFilesEditManager;
import com.adobe.creativesdk.foundation.internal.storage.controllers.edit.EditGridView;
import com.adobe.creativesdk.foundation.internal.storage.controllers.edit.EditSectionalListView;
import com.adobe.creativesdk.foundation.internal.storage.controllers.edit.IAdobeAssetViewEditFragmentControllerCallback;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKActionBarController;
import com.adobe.creativesdk.foundation.storage.AdobeAsset;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class CCMultiFilesProviderFragment extends CCFilesWithUploadFragment implements IAdobeAssetViewEditFragmentControllerCallback {
    private static final String T = CCMultiFilesProviderFragment.class.getSimpleName();
    private Toolbar _actionBarToolbar;
    private int _assetCount;
    private Drawable _backButton;
    private View _content;
    private Drawable _crossButton;
    private ReusableImageBitmapWorker _reusableBitmapCacheWorker;
    protected AlertDialog alertDialog;
    protected View alertNegativeButton;
    protected View alertPositiveButton;
    protected TextView alertText;
    protected AlertDialog.Builder builder;
    public View dialogView;
    private IDocumentPickerCallback mCallback;
    private TextView mDoneTextView;
    WeakReference<IDocumentPickerCallback> weakActivity;
    private boolean _isGridView = false;
    private boolean isRootViewEnabled = true;

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesWithUploadFragment, com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesFragment, com.adobe.creativesdk.foundation.internal.storage.controllers.IAdobeAssetContainerListViewDelegate
    public void handlePopupMenuClick(Object obj, View view) {
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesWithUploadFragment, com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesFragment, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        Log.e(T, "onCreate");
        setRetainInstance(true);
        ReusableImageBitmapCache.ImageCacheParams imageCacheParams = new ReusableImageBitmapCache.ImageCacheParams();
        imageCacheParams.setMemCacheSizePercent(0.1f);
        this._reusableBitmapCacheWorker = new ReusableImageBitmapWorker(getHostActivity());
        this._reusableBitmapCacheWorker.addImageCache(getFragmentManager(), imageCacheParams);
        super.onCreate(bundle);
        this.mDoneTextView = (TextView) getActivity().findViewById(R.id.adobe_doc_actionbar_done);
        this._crossButton = ContextCompat.getDrawable(getActivity(), R.drawable.asset_edit_home_as_up_cross);
        this._backButton = ContextCompat.getDrawable(getActivity(), R.drawable.asset_edit_home_as_up_back);
        this._isGridView = AdobeUXAssetBrowserCommonTypes.AdobeUXAssetBrowserVisualLayout.ADOBE_STORAGE_VISUAL_LAYOUT_LISTVIEW != AdobeCommonLearnedSettings.lastVisualLayout();
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesWithUploadFragment, com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesFragment, android.support.v4.app.Fragment
    public void onDestroy() {
        Log.e(T, "onDestroy");
        if (this._reusableBitmapCacheWorker != null) {
            this._reusableBitmapCacheWorker.clearCache();
        }
        this._reusableBitmapCacheWorker = null;
        super.onDestroy();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.support.v4.app.Fragment
    public void onAttach(Context context) {
        if (context instanceof IDocumentPickerCallback) {
            super.onAttach(context);
            this.mCallback = (IDocumentPickerCallback) context;
            if (this._actionBarToolbar == null) {
                this._actionBarToolbar = this.mCallback.getActionBarToolbar();
            }
            if (this._content == null) {
                this._content = this.mCallback.getContentView();
                return;
            }
            return;
        }
        Log.e(T, "context should be instance of IDocumentPickerCallback");
    }

    @Override // android.support.v4.app.Fragment
    public void onDetach() {
        Log.e(T, "onDetach");
        super.onDetach();
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesFragment, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment, com.adobe.creativesdk.foundation.internal.storage.controllers.IAdobeAssetContainerListViewDelegate
    public void navigateToCollection(AdobeAssetViewNavigateCommands.NavBaseCommandData navBaseCommandData) {
        AdobeAssetViewNavigateCommands.NavToAssetFolderData navToAssetFolderData = (AdobeAssetViewNavigateCommands.NavToAssetFolderData) navBaseCommandData;
        AdobeAssetViewNavigateToCollectionCommand adobeAssetViewNavigateToCollectionCommand = new AdobeAssetViewNavigateToCollectionCommand();
        adobeAssetViewNavigateToCollectionCommand.setCollection(navToAssetFolderData.getCollection());
        adobeAssetViewNavigateToCollectionCommand.setDataSourceType(navToAssetFolderData.getDataSourceType());
        adobeAssetViewNavigateToCollectionCommand.setReadOnly(navToAssetFolderData.isReadOnly() || this._assetViewConfiguration.isReadOnly());
        postActionCommand(AdobeAssetViewBrowserCommandName.NAVIGATE_TO_COLLECTION_DOC_PROVIDER, adobeAssetViewNavigateToCollectionCommand);
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesWithUploadFragment, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected void addFabToRootView() {
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesWithUploadFragment, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected void handleNetworkStatusChange(boolean z) {
        if (!z) {
            this.isRootViewEnabled = true;
            disableRootView();
            clearAndDisableButtons();
        } else if (this.isRootViewEnabled) {
            enableRootView();
        } else {
            disableRootView();
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onHiddenChanged(boolean z) {
        super.onHiddenChanged(z);
    }

    private void clearAndDisableButtons() {
        if (isGridView()) {
            ((CCFilesProviderGridView) this._gridAssetsViewController).clearSelection();
        } else {
            ((CCFilesProviderListView) this._listAssetsViewController).clearSelection();
        }
        this._assetCount = 0;
        handleNoAssetSelection();
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesFragment
    protected CCFilesGridView setupGridViewController() {
        CCFilesProviderGridView cCFilesProviderGridView = new CCFilesProviderGridView(getActivity());
        cCFilesProviderGridView.setReusableImageWorker(this._reusableBitmapCacheWorker);
        cCFilesProviderGridView.setControllerCallback(this);
        return cCFilesProviderGridView;
    }

    private boolean isGridView() {
        return this._isGridView;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesFragment
    protected CCFilesSectionListView setupSectionalListViewController() {
        CCFilesProviderListView cCFilesProviderListView = new CCFilesProviderListView(getActivity());
        cCFilesProviderListView.setControllerCallback(this);
        return cCFilesProviderListView;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment, android.support.v4.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
    }

    private void setupActionBarCustomFont() {
        if (this._actionBarToolbar != null) {
            this._actionBarToolbar.setBackgroundColor(getResources().getColor(R.color.adobe_loki_app_bar));
            AdobeCSDKActionBarController.setTitleWithColor(this._content, getResourceString(R.string.adobe_csdk_asset_view_edit_fragment_title), -1);
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesFragment
    protected void showAssetsAsGridAnimate(boolean z) {
        showAssetsAsListAnimate(z);
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesWithUploadFragment, com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesFragment, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected String getContainerNameForRoot() {
        return getResourceString(R.string.adobe_csdk_asset_view_edit_fragment_title);
    }

    protected boolean handleBackPress() {
        Log.e(T, "handleBackPress");
        if (this._assetCount <= 0) {
            return false;
        }
        this._assetCount = 0;
        enableRootView();
        handleNoAssetSelection();
        if (isGridView()) {
            ((EditGridView) this._gridAssetsViewController).clearSelection();
        } else {
            ((EditSectionalListView) this._listAssetsViewController).clearSelection();
        }
        return true;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesWithUploadFragment, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment, android.support.v4.app.Fragment
    public void onStart() {
        Log.e(T, "onStart");
        super.onStart();
        if (!AdobeCCFilesEditManager.isEditInProgress()) {
            reloadAssetItemsFromDataSourceDueToSwipeRefresh();
        }
        if (this.mDoneTextView != null) {
            this.mDoneTextView.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.CCMultiFilesProviderFragment.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (CCMultiFilesProviderFragment.this.mCallback != null) {
                        CCMultiFilesProviderFragment.this.mCallback.startProvidingDocuments(CCMultiFilesProviderFragment.this.getSelectedAssets());
                    } else {
                        Log.e(CCMultiFilesProviderFragment.T, "mCallback is null cannot provide documents");
                    }
                }
            });
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesWithUploadFragment, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    public void handlePostOnCreateView(Bundle bundle) {
        super.handlePostOnCreateView(bundle);
        setupActionBarCustomFont();
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesWithUploadFragment, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment, android.support.v4.app.Fragment
    public void onStop() {
        Log.e(T, "onStop");
        super.onStop();
        if (this.mDoneTextView != null) {
            this.mDoneTextView.setOnClickListener(null);
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.edit.IAdobeAssetViewEditFragmentControllerCallback
    public void handleMultipleAssetSelection(int i) {
        this._assetCount = i;
        AdobeCSDKActionBarController.setTitleWithColor(this._content, "" + i + " " + getString(R.string.select_title), -1);
        this.mDoneTextView.setVisibility(0);
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.edit.IAdobeAssetViewEditFragmentControllerCallback
    public void handleNoAssetSelection() {
        enableRootView();
        this._assetCount = 0;
        if (this._content != null) {
            AdobeCSDKActionBarController.setTitleWithColor(this._content, getResourceString(R.string.adobe_csdk_asset_view_edit_fragment_title), -1);
        }
        this.mDoneTextView.setVisibility(4);
    }

    private String getResourceString(int i) {
        return getResources().getString(i);
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.edit.IAdobeAssetViewEditFragmentControllerCallback
    public void handleSingleAssetSelection() {
        this._assetCount = 1;
        AdobeCSDKActionBarController.setTitleWithColor(this._content, "" + this._assetCount + " " + getString(R.string.select_title), -1);
        this.mDoneTextView.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ArrayList<AdobeAsset> getSelectedAssets() {
        if (this._listAssetsViewController != null) {
            return ((CCFilesProviderListView) this._listAssetsViewController).getSelectedAssets();
        }
        Log.e(T, "getSelectedAssets listController null");
        return null;
    }

    private void enableRootView() {
        if (isGridView()) {
            ((CCFilesProviderGridView) this._gridAssetsViewController).enableController();
        } else {
            ((CCFilesProviderListView) this._listAssetsViewController).enableController();
        }
        this.isRootViewEnabled = true;
    }

    private void disableRootView() {
        if (isGridView()) {
            ((CCFilesProviderGridView) this._gridAssetsViewController).disableController();
        } else {
            ((CCFilesProviderListView) this._listAssetsViewController).disableController();
        }
        this.isRootViewEnabled = false;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesFragment, com.adobe.creativesdk.foundation.internal.storage.controllers.IAdobeAssetContainerListViewDelegate
    public void handleAssetClickAction(Object obj) {
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesWithUploadFragment, com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesFragment, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected AssetViewFragment.AssetsViewBaseActionBarController createActionBarController() {
        return new CCFilesActionBarControllerWithEditControls();
    }

    public class CCFilesActionBarControllerWithEditControls extends CCFilesFragment.CCFilesActionBarController {
        protected CCFilesActionBarControllerWithEditControls() {
            super();
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment.AssetsViewBaseActionBarController
        public boolean onOptionsItemSelected(MenuItem menuItem) {
            return true;
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesFragment.CCFilesActionBarController, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment.AssetsViewBaseActionBarController
        public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesFragment.CCFilesActionBarController, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment.AssetsViewBaseActionBarController
        public void onPrepareOptionsMenu(Menu menu) {
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesFragment.CCFilesActionBarController, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment.AssetsViewBaseActionBarController
        public boolean handleOptionItemSelect(int i) {
            return true;
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesFragment.CCFilesActionBarController, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment.AssetsViewBaseActionBarController
        public void handleCurrentNetworkStatus(boolean z) {
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesFragment.CCFilesActionBarController, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment.AssetsViewBaseActionBarController
        public void handleOnStart() {
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesFragment.CCFilesActionBarController, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment.AssetsViewBaseActionBarController
        public void handlePostOnCreate(Bundle bundle) {
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment.AssetsViewBaseActionBarController
        public void saveActionBarInstanceState() {
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment.AssetsViewBaseActionBarController
        protected void restoreFragmentActionBarFromSavedData() {
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesFragment.CCFilesActionBarController, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment.AssetsViewBaseActionBarController
        public void refreshOptionItems() {
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesFragment.CCFilesActionBarController
        public void resetButtonState() {
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesWithUploadFragment
    protected CCFilesWithUploadFragment.CCFilesEditCommandsHandler getEditCommandsHandler() {
        return new CustomEditCommandsHandler();
    }

    public class CustomEditCommandsHandler extends CCFilesWithUploadFragment.CCFilesEditCommandsHandler {
        protected CustomEditCommandsHandler() {
            super();
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesWithUploadFragment.CCFilesEditCommandsHandler, com.adobe.creativesdk.foundation.internal.storage.controllers.commands.AdobeAssetViewCommandsHandler
        protected void handleCommand(AdobeAssetViewBrowserCommandName adobeAssetViewBrowserCommandName, Object obj) {
            if (adobeAssetViewBrowserCommandName == AdobeAssetViewBrowserCommandName.ASSETVIEW_BROWSER_CCFILES_FORCE_REFRESH_LIST) {
                CCMultiFilesProviderFragment.this.reloadDataFromDataSource();
            } else if (adobeAssetViewBrowserCommandName != AdobeAssetViewBrowserCommandName.ACTION_ASSETVIEW_EDIT_STARTED) {
                if (adobeAssetViewBrowserCommandName == AdobeAssetViewBrowserCommandName.ACTION_ASSETVIEW_EDIT_COMPLETED) {
                    CCMultiFilesProviderFragment.this.reloadAssetItemsFromDataSourceDueToSwipeRefresh();
                } else {
                    if (adobeAssetViewBrowserCommandName == AdobeAssetViewBrowserCommandName.ACTION_ASSETVIEW_LEAVE_FOLDER) {
                    }
                }
            }
        }
    }
}
