package com.adobe.creativesdk.foundation.internal.storage.controllers.edit;

import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.content.ContextCompat;
import android.support.v7.widget.Toolbar;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudManager;
import com.adobe.creativesdk.foundation.assetux.R;
import com.adobe.creativesdk.foundation.internal.base.AdobeTOUHandlerActivity;
import com.adobe.creativesdk.foundation.internal.notification.AdobeInternalNotificationID;
import com.adobe.creativesdk.foundation.internal.notification.AdobeLocalNotificationCenter;
import com.adobe.creativesdk.foundation.internal.notification.AdobeNotification;
import com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeAssetBrowserCommandMgr;
import com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeAssetMainBrowserConfiguration;
import com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeAssetMainBrowserExtraConfiguration;
import com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeAssetViewMainBrowserFragment;
import com.adobe.creativesdk.foundation.internal.storage.controllers.commands.AdobeAssetViewBrowserCommandName;
import com.adobe.creativesdk.foundation.internal.storage.controllers.commands.AdobeAssetViewCommandsHandler;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKActionBarController;
import com.adobe.creativesdk.foundation.storage.AdobeAssetDataSourceFilterType;
import com.adobe.creativesdk.foundation.storage.AdobeAssetDataSourceType;
import java.util.EnumSet;
import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeAssetEditActivity extends AdobeTOUHandlerActivity implements IAdobeAssetViewBrowserFragmentExtraControlsHostActivity {
    private static String DATA_SOURCE_FILTER_ARRAY_KEY = AdobeAssetMainBrowserConfiguration.DATA_SOURCE_FILTER_ARRAY_KEY;
    private Toolbar _actionBarToolbar;
    private View _assetEditView;
    private View _assetMoveView;
    private View _contentView;
    private int _currentOrientation;
    private AdobeAssetViewEditActivityConfiguration _editConfiguration;
    private Menu _menu;
    private AdobeAssetViewEditFragmentExtraConfiguration configuration;
    private String multiSelectSourceHref;
    protected Fragment _moveFragment = null;
    protected Fragment _multiSelectFragment = null;
    private boolean _multiSelectStarted = false;
    private AssetEditContainerCommandsHandler _assetContainerCommandsHandler = new AssetEditContainerCommandsHandler();

    @Override // com.adobe.creativesdk.foundation.internal.base.AdobeTOUHandlerActivity, android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_edit_asset);
        if (Build.VERSION.SDK_INT >= 21) {
            getWindow().setStatusBarColor(ContextCompat.getColor(this, R.color.adobe_loki_status_bar));
        }
        this._currentOrientation = getResources().getConfiguration().orientation;
        this._editConfiguration = AdobeAssetViewEditActivityConfiguration.getConfigurationFromBundle(getIntent().getExtras().getBundle(AdobeAssetViewEditActivityConfiguration.EDIT_ACTIVITY_CONFIGURATION_KEY));
        this._assetEditView = findViewById(R.id.adobe_csdk_edit_frame);
        this._assetMoveView = findViewById(R.id.adobe_csdk_move_frame);
        setupActionBarCustomFont();
        loadViewFromBundle();
    }

    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (configuration.orientation != this._currentOrientation) {
            this._currentOrientation = configuration.orientation;
            AdobeLocalNotificationCenter.getDefaultNotificationCenter().postNotification(new AdobeNotification(AdobeInternalNotificationID.AdobeAppOrientationConfigurationChanged, null));
        }
    }

    public boolean isMoveFragmentPresent() {
        return this._moveFragment != null;
    }

    private void setupActionBarCustomFont() {
        this._actionBarToolbar = (Toolbar) findViewById(R.id.adobe_csdk_actionbar_toolbar_loki);
        this._actionBarToolbar.setBackgroundColor(getResources().getColor(R.color.adobe_loki_app_bar));
        this._contentView = findViewById(android.R.id.content);
        AdobeCSDKActionBarController.changeTextColor(this._contentView, -1);
        setSupportActionBar(this._actionBarToolbar);
        if (getSupportActionBar() != null) {
            getSupportActionBar().setDisplayHomeAsUpEnabled(true);
            getSupportActionBar().setTitle("");
        }
    }

    private void setActionBarForMoveExplorer() {
        this._actionBarToolbar.setNavigationIcon(R.drawable.asset_edit_home_as_up_back);
    }

    private void setActionBarForMultiSelect() {
        int size = AdobeAssetViewEditSelectedAssetsController.sharedController().getTargetAssets().size();
        this._actionBarToolbar.setNavigationIcon(R.drawable.asset_edit_home_as_up_cross);
        AdobeCSDKActionBarController.setTitle(this._contentView, "" + size);
        Menu menu = ((CCFilesEditFragment) this._multiSelectFragment)._editMenu;
        menu.clear();
        getMenuInflater().inflate(R.menu.adobe_asset_edit_multi_select_menu, menu);
        ((CCFilesEditFragment) this._multiSelectFragment)._renameButton = menu.findItem(R.id.adobe_cc_edit_view_action_rename);
        ((CCFilesEditFragment) this._multiSelectFragment).onPrepareOptionsMenu(menu);
    }

    private void loadViewFromBundle() {
        if (this._editConfiguration.getEditActivityOperationMode() == AdobeAssetViewEditActivityOperationMode.ADOBE_ASSET_VIEW_EDIT_ACTIVITY_OPERATION_MODE_MOVE || this._editConfiguration.getEditActivityOperationMode() == AdobeAssetViewEditActivityOperationMode.ADOBE_ASSET_VIEW_EDIT_ACTIVITY_OPERATION_MODE_COPY) {
            startFileBrowser();
        } else {
            startEditMutiSelect();
        }
    }

    @Override // android.app.Activity
    public boolean onPrepareOptionsMenu(Menu menu) {
        this._menu = menu;
        return super.onPrepareOptionsMenu(menu);
    }

    private void clearMenu() {
        if (this._menu != null) {
            for (int i = 0; i < this._menu.size(); i++) {
                this._menu.removeItem(this._menu.getItem(i).getItemId());
            }
        }
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != 16908332) {
            return super.onOptionsItemSelected(menuItem);
        }
        handleBackPress();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void OpenMoveFileBrowser(AdobeAssetViewBrowserCommandName adobeAssetViewBrowserCommandName) {
        this.configuration.setIsCopy(adobeAssetViewBrowserCommandName == AdobeAssetViewBrowserCommandName.ACTION_ASSET_EDIT_OPEN_COPY_CCFILES_BROWSER);
        startFileBrowser();
    }

    private void startFileBrowser() {
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        int i = R.id.adobe_csdk_move_frame;
        if (this._moveFragment == null) {
            this._moveFragment = createCCFilesMoveBrowserFragment();
            this._assetEditView.setVisibility(8);
            this._assetMoveView.setVisibility(0);
            setActionBarForMoveExplorer();
            FragmentTransaction fragmentTransactionBeginTransaction = supportFragmentManager.beginTransaction();
            fragmentTransactionBeginTransaction.replace(i, this._moveFragment, "MoveBrowserFragment");
            if (this._multiSelectStarted) {
                fragmentTransactionBeginTransaction.addToBackStack("startFileBrowserFromEdit");
            }
            fragmentTransactionBeginTransaction.commit();
        }
    }

    private void startEditMutiSelect() {
        this.multiSelectSourceHref = this._editConfiguration.getSourceHref();
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        int i = R.id.adobe_csdk_edit_frame;
        if (this._multiSelectFragment == null) {
            this._multiSelectFragment = createEditMultiSelectFragment();
            this._assetMoveView.setVisibility(8);
            this._assetEditView.setVisibility(0);
            ((CCFilesEditFragment) this._multiSelectFragment).setActionBarToolbarAndContent(this._actionBarToolbar, this._contentView);
            FragmentTransaction fragmentTransactionBeginTransaction = supportFragmentManager.beginTransaction();
            fragmentTransactionBeginTransaction.replace(i, this._multiSelectFragment, "EditFragment");
            this._multiSelectStarted = true;
            fragmentTransactionBeginTransaction.addToBackStack("startEdit");
            fragmentTransactionBeginTransaction.commit();
        }
    }

    private Fragment createEditMultiSelectFragment() {
        CCFilesEditFragment cCFilesEditFragment = new CCFilesEditFragment();
        Bundle bundle = new Bundle();
        bundle.putSerializable("ADOBE_CLOUD", AdobeCloudManager.getSharedCloudManager().getDefaultCloud());
        bundle.putString(AdobeAssetViewEditFragmentExtraConfiguration.EDIT_MULTI_SELECT_TARGET_HREF_KEY, this.multiSelectSourceHref);
        cCFilesEditFragment.setArguments(bundle);
        return cCFilesEditFragment;
    }

    private Fragment createCCFilesMoveBrowserFragment() {
        AdobeAssetViewMainBrowserFragment adobeAssetViewMainBrowserFragment = new AdobeAssetViewMainBrowserFragment();
        Bundle bundle = new Bundle();
        bundle.putSerializable("ADOBE_CLOUD", AdobeCloudManager.getSharedCloudManager().getDefaultCloud());
        bundle.putSerializable(DATA_SOURCE_FILTER_ARRAY_KEY, EnumSet.of(AdobeAssetDataSourceType.AdobeAssetDataSourceFiles));
        bundle.putBoolean("CREATE_MOVE_BUTTON", true);
        bundle.putBoolean(AdobeAssetViewEditFragmentExtraConfiguration.FRAGMENT_IS_FOR_COPY, this.configuration != null ? this.configuration.getIsCopy() : false);
        bundle.putSerializable(AdobeAssetMainBrowserExtraConfiguration.SHOULD_SHOW_ONLY_ASSETS_KEY, true);
        bundle.putSerializable(AdobeAssetMainBrowserConfiguration.DATA_SOURCE_FILTER_TYPE_KEY, AdobeAssetDataSourceFilterType.ADOBE_ASSET_DATASOURCE_FILTER_INCLUSION);
        adobeAssetViewMainBrowserFragment.setArguments(bundle);
        return adobeAssetViewMainBrowserFragment;
    }

    @Override // com.adobe.creativesdk.foundation.internal.base.AdobeTOUHandlerActivity, android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onStart() {
        super.onStart();
        this._assetContainerCommandsHandler.onStart();
    }

    @Override // com.adobe.creativesdk.foundation.internal.base.AdobeTOUHandlerActivity, android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onStop() {
        super.onStop();
        this._assetContainerCommandsHandler.onStop();
    }

    private boolean handleBackPress() {
        if (!this._multiSelectStarted) {
            if (this._moveFragment == null) {
                super.onBackPressed();
            } else {
                if (((AdobeAssetViewMainBrowserFragment) this._moveFragment).isAtRootFragment()) {
                    finish();
                    return true;
                }
                return ((AdobeAssetViewMainBrowserFragment) this._moveFragment).handleOnBackPressed();
            }
        } else {
            if (this._moveFragment != null) {
                if (((AdobeAssetViewMainBrowserFragment) this._moveFragment).isAtRootFragment()) {
                    boolean zHandleOnBackPressed = ((AdobeAssetViewMainBrowserFragment) this._moveFragment).handleOnBackPressed();
                    this._moveFragment = null;
                    setActionBarForMultiSelect();
                    this._assetMoveView.setVisibility(8);
                    this._assetEditView.setVisibility(0);
                    return zHandleOnBackPressed;
                }
                return ((AdobeAssetViewMainBrowserFragment) this._moveFragment).handleOnBackPressed();
            }
            if (!((CCFilesEditFragment) this._multiSelectFragment).handleBackPress()) {
                finish();
                return true;
            }
        }
        return false;
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onBackPressed() {
        handleBackPress();
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.edit.IAdobeAssetViewBrowserFragmentExtraControlsHostActivity
    public boolean hasExtraControls() {
        return true;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.edit.IAdobeAssetViewBrowserFragmentExtraControlsHostActivity
    public AdobeAssetViewEditFragmentExtraConfiguration getExtraConfiguration() {
        if (this.configuration == null) {
            this.configuration = new AdobeAssetViewEditFragmentExtraConfiguration();
            this.configuration.setMoveButton(true);
            this.configuration.setShouldShowOnlyFolders(true);
            this.configuration.setTitleForMainView(getResources().getString(R.string.adobe_csdk_asset_view_move_fragment_title));
        }
        return this.configuration;
    }

    class AssetEditContainerCommandsHandler extends AdobeAssetViewCommandsHandler {
        private AssetEditContainerCommandsHandler() {
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.commands.AdobeAssetViewCommandsHandler
        protected EnumSet<AdobeAssetViewBrowserCommandName> getCommandsListToRegister() {
            return EnumSet.of(AdobeAssetViewBrowserCommandName.ACTION_ASSET_EDIT_MOVE_OPERATION, AdobeAssetViewBrowserCommandName.ACTION_ASSET_EDIT_OPEN_MOVE_CCFILES_BROWSER, AdobeAssetViewBrowserCommandName.ACTION_ASSET_EDIT_COPY_OPERATION, AdobeAssetViewBrowserCommandName.ACTION_ASSET_EDIT_OPEN_COPY_CCFILES_BROWSER);
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.commands.AdobeAssetViewCommandsHandler
        protected void handleCommand(AdobeAssetViewBrowserCommandName adobeAssetViewBrowserCommandName, Object obj) {
            if (adobeAssetViewBrowserCommandName == AdobeAssetViewBrowserCommandName.ACTION_ASSET_EDIT_MOVE_OPERATION) {
                AdobeAssetEditActivity.this.handleMoveOperation((String) obj, false);
                return;
            }
            if (adobeAssetViewBrowserCommandName == AdobeAssetViewBrowserCommandName.ACTION_ASSET_EDIT_COPY_OPERATION) {
                AdobeAssetEditActivity.this.handleMoveOperation((String) obj, true);
            } else if (adobeAssetViewBrowserCommandName == AdobeAssetViewBrowserCommandName.ACTION_ASSET_EDIT_OPEN_MOVE_CCFILES_BROWSER || adobeAssetViewBrowserCommandName == AdobeAssetViewBrowserCommandName.ACTION_ASSET_EDIT_OPEN_COPY_CCFILES_BROWSER) {
                AdobeAssetEditActivity.this.OpenMoveFileBrowser(adobeAssetViewBrowserCommandName);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleMoveOperation(String str, boolean z) {
        AdobeCCFilesEditManager.createSession(str, getSupportFragmentManager(), z ? AdobeCCFilesEditOperation.ADOBE_CC_FILE_EDIT_OPERATION_COPY : AdobeCCFilesEditOperation.ADOBE_CC_FILE_EDIT_OPERATION_MOVE, getEditCallbackHandler(), this._editConfiguration.getCloud()).startEditSession();
        finish();
    }

    private IAdobeEditAssetCallback getEditCallbackHandler() {
        return new IAdobeEditAssetCallback() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.edit.AdobeAssetEditActivity.1
            @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.edit.IAdobeEditAssetCallback
            public void onComplete() {
                AdobeAssetBrowserCommandMgr.getInstance().postCommand(AdobeAssetViewBrowserCommandName.ACTION_ASSETVIEW_EDIT_COMPLETED);
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

    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
    }
}
