package com.adobe.creativesdk.foundation.internal.storage.controllers.edit;

import android.annotation.SuppressLint;
import android.app.AlertDialog;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.content.ContextCompat;
import android.support.v7.app.ActionBar;
import android.support.v7.widget.Toolbar;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.adobe.creativesdk.foundation.assetux.R;
import com.adobe.creativesdk.foundation.internal.common.AdobeCommonLearnedSettings;
import com.adobe.creativesdk.foundation.internal.notification.AdobeInternalNotificationID;
import com.adobe.creativesdk.foundation.internal.notification.AdobeLocalNotificationCenter;
import com.adobe.creativesdk.foundation.internal.notification.AdobeNotification;
import com.adobe.creativesdk.foundation.internal.storage.AdobeStorageDataSource;
import com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeAssetBrowserCommandMgr;
import com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeUXAssetBrowserCommonTypes;
import com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment;
import com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesFragment;
import com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesGridView;
import com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesSectionListView;
import com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesWithUploadFragment;
import com.adobe.creativesdk.foundation.internal.storage.controllers.commands.AdobeAssetViewBrowserCommandName;
import com.adobe.creativesdk.foundation.internal.storage.controllers.common.ReusableImageBitmapCache;
import com.adobe.creativesdk.foundation.internal.storage.controllers.common.ReusableImageBitmapWorker;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKActionBarController;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFile;
import java.util.HashMap;
import java.util.Observable;
import java.util.Observer;

/* JADX INFO: loaded from: classes2.dex */
public class CCFilesEditFragment extends CCFilesWithUploadFragment implements IAdobeAssetViewEditFragmentControllerCallback {
    private Toolbar _actionBarToolbar;
    private int _assetCount;
    private Drawable _backButton;
    private View _content;
    private Drawable _crossButton;
    public Menu _editMenu;
    public MenuItem _renameButton;
    private ReusableImageBitmapWorker _reusableBitmapCacheWorker;
    protected AlertDialog alertDialog;
    protected View alertNegativeButton;
    protected View alertPositiveButton;
    protected TextView alertText;
    protected AlertDialog.Builder builder;
    public View dialogView;
    String targetCollectionHref;
    private boolean _isGridView = false;
    private boolean isRootViewEnabled = true;

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesWithUploadFragment, com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesFragment, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        Bundle arguments = getArguments();
        setRetainInstance(true);
        this.targetCollectionHref = arguments.getString(AdobeAssetViewEditFragmentExtraConfiguration.EDIT_MULTI_SELECT_TARGET_HREF_KEY);
        ReusableImageBitmapCache.ImageCacheParams imageCacheParams = new ReusableImageBitmapCache.ImageCacheParams();
        imageCacheParams.setMemCacheSizePercent(0.1f);
        this._reusableBitmapCacheWorker = new ReusableImageBitmapWorker(getHostActivity());
        this._reusableBitmapCacheWorker.addImageCache(getFragmentManager(), imageCacheParams);
        super.onCreate(bundle);
        this._crossButton = ContextCompat.getDrawable(getActivity(), R.drawable.asset_edit_home_as_up_cross);
        this._backButton = ContextCompat.getDrawable(getActivity(), R.drawable.asset_edit_home_as_up_back);
        setupActionBarCustomFont();
        this._isGridView = AdobeUXAssetBrowserCommonTypes.AdobeUXAssetBrowserVisualLayout.ADOBE_STORAGE_VISUAL_LAYOUT_LISTVIEW != AdobeCommonLearnedSettings.lastVisualLayout();
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
    }

    @Override // android.support.v4.app.Fragment
    public void onViewStateRestored(@Nullable Bundle bundle) {
        super.onViewStateRestored(bundle);
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        setHasOptionsMenu(true);
        return super.onCreateView(layoutInflater, viewGroup, bundle);
    }

    @Override // android.support.v4.app.Fragment
    public void onDestroyOptionsMenu() {
        super.onDestroyOptionsMenu();
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesWithUploadFragment, com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesFragment, android.support.v4.app.Fragment
    public void onDestroy() {
        if (this._reusableBitmapCacheWorker != null) {
            this._reusableBitmapCacheWorker.clearCache();
        }
        this._reusableBitmapCacheWorker = null;
        super.onDestroy();
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
            ((EditGridView) this._gridAssetsViewController).clearSelection();
        } else {
            ((EditSectionalListView) this._listAssetsViewController).clearSelection();
        }
        this._assetCount = 0;
        handleNoAssetSelection();
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesWithUploadFragment, com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesFragment
    protected AdobeStorageDataSource.DataSourceInternalFilters getInternalFilters() {
        return null;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesFragment
    protected CCFilesGridView setupGridViewController() {
        EditGridView editGridView = new EditGridView(getActivity());
        editGridView.setReusableImageWorker(this._reusableBitmapCacheWorker);
        editGridView.setControllerCallback(this);
        return editGridView;
    }

    private boolean isGridView() {
        return this._isGridView;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesFragment
    protected void initializeCCFilesContainerFromCollectionHref(String str) {
        super.initializeCCFilesContainerFromCollectionHref(this.targetCollectionHref);
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesFragment
    protected CCFilesSectionListView setupSectionalListViewController() {
        EditSectionalListView editSectionalListView = new EditSectionalListView(getActivity());
        editSectionalListView.setControllerCallback(this);
        return editSectionalListView;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment, android.support.v4.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment, android.support.v4.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesWithUploadFragment
    protected void handleExtraConfigurations(AdobeAssetViewEditFragmentExtraConfiguration adobeAssetViewEditFragmentExtraConfiguration) {
    }

    protected void setActionBarToolbarAndContent(Toolbar toolbar, View view) {
        this._actionBarToolbar = toolbar;
        this._content = view;
    }

    private void setupActionBarCustomFont() {
        if (this._actionBarToolbar != null) {
            this._actionBarToolbar.setBackgroundColor(getResources().getColor(R.color.adobe_loki_app_bar));
            ((AdobeAssetEditActivity) getHostActivity()).setSupportActionBar(this._actionBarToolbar);
            ActionBar supportActionBar = ((AdobeAssetEditActivity) getHostActivity()).getSupportActionBar();
            if (supportActionBar != null) {
                supportActionBar.setDisplayHomeAsUpEnabled(true);
                supportActionBar.setHomeButtonEnabled(true);
            }
            if (this._assetCount == 0) {
                AdobeCSDKActionBarController.setTitleWithColor(this._content, getResourceString(R.string.adobe_csdk_asset_view_edit_fragment_title), -1);
            } else {
                AdobeCSDKActionBarController.setTitleWithColor(this._content, "" + this._assetCount, -1);
            }
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesWithUploadFragment, com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesFragment, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    protected String getContainerNameForRoot() {
        return getResourceString(R.string.adobe_csdk_asset_view_edit_fragment_title);
    }

    protected boolean handleBackPress() {
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

    protected void handleActionMenuButtonClick(boolean z) {
        if (z) {
            disableRootView();
        } else {
            enableRootView();
        }
        AdobeCSDKActionBarController.setVisible(getActivity().findViewById(android.R.id.content), !z);
        setVisibilityTab(z ? false : true);
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesWithUploadFragment, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment, android.support.v4.app.Fragment
    public void onStart() {
        super.onStart();
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesWithUploadFragment, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment, android.support.v4.app.Fragment
    public void onResume() {
        super.onResume();
        if (this._editMenu != null && !((AdobeAssetEditActivity) getHostActivity()).isMoveFragmentPresent()) {
            this._editMenu.clear();
            getActivity().getMenuInflater().inflate(R.menu.adobe_asset_edit_multi_select_menu, this._editMenu);
            this._renameButton = this._editMenu.findItem(R.id.adobe_cc_edit_view_action_rename);
            onPrepareOptionsMenu(this._editMenu);
        }
        setupActionBarCustomFont();
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesWithUploadFragment, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment
    public void handlePostOnCreateView(Bundle bundle) {
        super.handlePostOnCreateView(bundle);
        setupActionBarCustomFont();
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesWithUploadFragment, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment, android.support.v4.app.Fragment
    public void onStop() {
        super.onStop();
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.edit.IAdobeAssetViewEditFragmentControllerCallback
    public void handleMultipleAssetSelection(int i) {
        this._assetCount = i;
        refreshEditMenuItems();
        AdobeCSDKActionBarController.setTitleWithColor(this._content, "" + i, -1);
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.edit.IAdobeAssetViewEditFragmentControllerCallback
    public void handleNoAssetSelection() {
        enableRootView();
        if (this._actionBarToolbar != null) {
            this._actionBarToolbar.setNavigationIcon(this._backButton);
        }
        this._assetCount = 0;
        refreshEditMenuItems();
        if (this._content != null) {
            AdobeCSDKActionBarController.setTitleWithColor(this._content, getResourceString(R.string.adobe_csdk_asset_view_edit_fragment_title), -1);
        }
    }

    private String getResourceString(int i) {
        return getResources().getString(i);
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.edit.IAdobeAssetViewEditFragmentControllerCallback
    public void handleSingleAssetSelection() {
        this._actionBarToolbar.setNavigationIcon(this._crossButton);
        this._assetCount = 1;
        refreshEditMenuItems();
        AdobeCSDKActionBarController.setTitleWithColor(this._content, "" + this._assetCount, -1);
    }

    private void getSelectedAssets() {
        AdobeAssetViewEditSelectedAssetsController adobeAssetViewEditSelectedAssetsControllerSharedController = AdobeAssetViewEditSelectedAssetsController.sharedController();
        if (isGridView()) {
            adobeAssetViewEditSelectedAssetsControllerSharedController.setTargetAssets(((EditGridView) this._gridAssetsViewController).getSelectedAssets());
        } else {
            adobeAssetViewEditSelectedAssetsControllerSharedController.setTargetAssets(((EditSectionalListView) this._listAssetsViewController).getSelectedAssets());
        }
    }

    private int getCount() {
        return isGridView() ? ((EditGridView) this._gridAssetsViewController).getSelectedAssets().size() : ((EditSectionalListView) this._listAssetsViewController).getSelectedAssets().size();
    }

    private boolean isSingleAssetFile() {
        return isGridView() ? ((EditGridView) this._gridAssetsViewController).getSelectedAssets().get(0) instanceof AdobeAssetFile : ((EditSectionalListView) this._listAssetsViewController).getSelectedAssets().get(0) instanceof AdobeAssetFile;
    }

    @SuppressLint({"InflateParams"})
    protected void showDialogView(final AdobeCCFilesEditOperation adobeCCFilesEditOperation) {
        if (this.dialogView == null) {
            this.dialogView = getLayoutInflater(null).inflate(R.layout.adobe_alert_dialog_view, (ViewGroup) null);
            this.builder = new AlertDialog.Builder(getActivity());
            this.builder.setView(this.dialogView);
            this.alertText = (TextView) this.dialogView.findViewById(R.id.adobe_csdk_alert_dialog_box_title_text);
            this.alertPositiveButton = this.dialogView.findViewById(R.id.adobe_csdk_alert_dialog_box_positive_button);
            this.alertNegativeButton = this.dialogView.findViewById(R.id.adobe_csdk_alert_dialog_box_negative_button);
            this.alertDialog = this.builder.create();
        }
        ((TextView) this.alertNegativeButton).setText(getResources().getString(R.string.adobe_csdk_asset_view_edit_delete_dialog_negative_button));
        if (adobeCCFilesEditOperation == AdobeCCFilesEditOperation.ADOBE_CC_FILE_EDIT_OPERATION_ARCHIVE) {
            setDialogActionArchive();
        } else {
            setDialogActionDelete();
        }
        this.alertPositiveButton.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.edit.CCFilesEditFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                CCFilesEditFragment.this.handleEditConfirm(adobeCCFilesEditOperation);
                CCFilesEditFragment.this.getHostActivity().finish();
                CCFilesEditFragment.this.alertDialog.dismiss();
            }
        });
        this.alertNegativeButton.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.edit.CCFilesEditFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                CCFilesEditFragment.this.alertDialog.dismiss();
            }
        });
        this.alertDialog.show();
    }

    private void setDialogActionArchive() {
        String resourceString;
        int count = getCount();
        ((TextView) this.alertPositiveButton).setText(getResources().getString(R.string.adobe_csdk_asset_view_edit_archive_dialog_positive_button));
        if (count > 1) {
            resourceString = String.format(getResourceString(R.string.adobe_csdk_asset_view_edit_archive_dialog_message_multi_select), Integer.valueOf(getCount()));
        } else if (isSingleAssetFile()) {
            resourceString = getResourceString(R.string.adobe_csdk_asset_view_edit_archive_dialog_message_file);
        } else {
            resourceString = getResourceString(R.string.adobe_csdk_asset_view_edit_archive_dialog_message_folder);
        }
        this.alertText.setText(resourceString);
    }

    private void setDialogActionDelete() {
        String resourceString;
        int count = getCount();
        ((TextView) this.alertPositiveButton).setText(getResources().getString(R.string.adobe_csdk_asset_view_edit_delete_dialog_positive_button));
        if (count > 1) {
            resourceString = String.format(getResourceString(R.string.adobe_csdk_asset_view_edit_delete_dialog_message_multi_select), Integer.valueOf(getCount()));
        } else if (isSingleAssetFile()) {
            resourceString = getResourceString(R.string.adobe_csdk_asset_view_edit_delete_dialog_message_file);
        } else {
            resourceString = getResourceString(R.string.adobe_csdk_asset_view_edit_delete_dialog_message_folder);
        }
        this.alertText.setText(resourceString);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public IAdobeEditAssetCallback getEditAssetCallbackHandler() {
        return new IAdobeEditAssetCallback() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.edit.CCFilesEditFragment.3
            @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.edit.IAdobeEditAssetCallback
            public void onComplete() {
                AdobeAssetBrowserCommandMgr adobeAssetBrowserCommandMgr = AdobeAssetBrowserCommandMgr.getInstance();
                AdobeCCFilesEditManager.setEditCompletionHandled(false);
                adobeAssetBrowserCommandMgr.postCommand(AdobeAssetViewBrowserCommandName.ACTION_ASSETVIEW_EDIT_COMPLETED);
            }

            @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.edit.IAdobeEditAssetCallback
            public void onProgress(double d2) {
                AdobeLocalNotificationCenter defaultNotificationCenter = AdobeLocalNotificationCenter.getDefaultNotificationCenter();
                HashMap map = new HashMap();
                map.put(AdobeAssetViewEditActivityConfiguration.EDIT_PROGRESS_KEY, Double.valueOf(d2));
                AdobeCCFilesEditManager.setProgressValue(d2);
                defaultNotificationCenter.postNotification(new AdobeNotification(AdobeInternalNotificationID.AdobeAssetEditProgressChanged, map));
            }

            @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.edit.IAdobeEditAssetCallback
            public void onAbort() {
            }
        };
    }

    private IAdobeCCFilesRenameDialogDismissController getRenameDialogDismissController() {
        return new IAdobeCCFilesRenameDialogDismissController() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.edit.CCFilesEditFragment.4
            @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.edit.IAdobeCCFilesRenameDialogDismissController
            public void dialogClosed() {
                if (AdobeCCFilesEditManager.isEditInProgress() && CCFilesEditFragment.this.getHostActivity() != null) {
                    CCFilesEditFragment.this.getHostActivity().finish();
                }
            }
        };
    }

    public boolean handleEdit(int i) {
        getSelectedAssets();
        if (i == R.id.adobe_cc_edit_view_action_archive) {
            showDialogView(AdobeCCFilesEditOperation.ADOBE_CC_FILE_EDIT_OPERATION_ARCHIVE);
        } else if (i == R.id.adobe_cc_edit_view_action_move) {
            AdobeAssetBrowserCommandMgr.getInstance().postCommand(AdobeAssetViewBrowserCommandName.ACTION_ASSET_EDIT_OPEN_MOVE_CCFILES_BROWSER);
        } else if (i == R.id.adobe_cc_edit_view_action_copy) {
            AdobeAssetBrowserCommandMgr.getInstance().postCommand(AdobeAssetViewBrowserCommandName.ACTION_ASSET_EDIT_OPEN_COPY_CCFILES_BROWSER);
        } else if (i == R.id.adobe_cc_edit_view_action_delete) {
            showDialogView(AdobeCCFilesEditOperation.ADOBE_CC_FILE_EDIT_OPERATION_DELETE);
        } else {
            if (i != R.id.adobe_cc_edit_view_action_rename) {
                return false;
            }
            final AdobeAssetViewEditRenameDialogFragment renameDialogFragment = getRenameDialogFragment();
            renameDialogFragment.setParameters(AdobeAssetViewEditSelectedAssetsController.sharedController().getTargetAssets().get(0), new Observer() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.edit.CCFilesEditFragment.5
                @Override // java.util.Observer
                public void update(Observable observable, Object obj) {
                    if (((AdobeCCFilesEditRenameOperationStatus) obj) == AdobeCCFilesEditRenameOperationStatus.ADOBE_CC_FILES_EDIT_RENAME_OPERATION_STATUS_STARTED) {
                        AdobeCCFilesEditManager.createSession(CCFilesEditFragment.this.getHostActivity().getSupportFragmentManager(), AdobeCCFilesEditOperation.ADOBE_CC_FILE_EDIT_OPERATION_RENAME, CCFilesEditFragment.this.getEditAssetCallbackHandler(), CCFilesEditFragment.this._assetViewConfiguration.getCloud()).startEditSession(renameDialogFragment);
                    }
                }
            });
            renameDialogFragment.show(getHostActivity().getSupportFragmentManager(), "AssetRename");
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleEditConfirm(AdobeCCFilesEditOperation adobeCCFilesEditOperation) {
        AdobeCCFilesEditManager.createSession(getHostActivity().getSupportFragmentManager(), adobeCCFilesEditOperation, getEditAssetCallbackHandler(), this._assetViewConfiguration.getCloud()).startEditSession();
    }

    private AdobeAssetViewEditRenameDialogFragment getRenameDialogFragment() {
        AdobeAssetViewEditRenameDialogFragment adobeAssetViewEditRenameDialogFragment = new AdobeAssetViewEditRenameDialogFragment();
        adobeAssetViewEditRenameDialogFragment.setDismissController(getRenameDialogDismissController());
        return adobeAssetViewEditRenameDialogFragment;
    }

    private void enableRootView() {
        if (isGridView()) {
            ((EditGridView) this._gridAssetsViewController).enableController();
        } else {
            ((EditSectionalListView) this._listAssetsViewController).enableController();
        }
        this.isRootViewEnabled = true;
    }

    private void disableRootView() {
        if (isGridView()) {
            ((EditGridView) this._gridAssetsViewController).disableController();
        } else {
            ((EditSectionalListView) this._listAssetsViewController).disableController();
        }
        this.isRootViewEnabled = false;
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
            return handleOptionItemSelect(menuItem.getItemId());
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesFragment.CCFilesActionBarController, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment.AssetsViewBaseActionBarController
        public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
            if (!((AdobeAssetEditActivity) CCFilesEditFragment.this.getHostActivity()).isMoveFragmentPresent()) {
                menu.clear();
                menuInflater.inflate(R.menu.adobe_asset_edit_multi_select_menu, menu);
                CCFilesEditFragment.this._editMenu = menu;
            }
            CCFilesEditFragment.this._renameButton = menu.findItem(R.id.adobe_cc_edit_view_action_rename);
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesFragment.CCFilesActionBarController, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment.AssetsViewBaseActionBarController
        public void onPrepareOptionsMenu(Menu menu) {
            if (CCFilesEditFragment.this._editMenu != null && CCFilesEditFragment.this._renameButton != null) {
                refreshEditMenuItems();
            }
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesFragment.CCFilesActionBarController, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment.AssetsViewBaseActionBarController
        public boolean handleOptionItemSelect(int i) {
            if (i == R.id.adobe_cc_edit_view_action_move || i == R.id.adobe_cc_edit_view_action_copy) {
                hideEditMenuItems();
            }
            return CCFilesEditFragment.this.handleEdit(i);
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetViewFragment.AssetsViewBaseActionBarController
        public void refreshEditMenuItems() {
            if (CCFilesEditFragment.this._assetCount != 0) {
                if (CCFilesEditFragment.this._assetCount == 1) {
                    CCFilesEditFragment.this._editMenu.setGroupVisible(R.id.group_edit_view_action_icons, true);
                    CCFilesEditFragment.this._renameButton.setVisible(true);
                    return;
                } else {
                    CCFilesEditFragment.this._editMenu.setGroupVisible(R.id.group_edit_view_action_icons, true);
                    CCFilesEditFragment.this._renameButton.setVisible(false);
                    return;
                }
            }
            hideEditMenuItems();
        }

        public void hideEditMenuItems() {
            CCFilesEditFragment.this._editMenu.setGroupVisible(R.id.group_edit_view_action_icons, false);
            CCFilesEditFragment.this._renameButton.setVisible(false);
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
}
