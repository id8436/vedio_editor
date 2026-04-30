package com.adobe.creativesdk.foundation.internal.storage.controllers.libraryedit;

import android.content.res.Configuration;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v7.widget.Toolbar;
import android.view.MenuItem;
import android.view.View;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudManager;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXException;
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

/* JADX INFO: loaded from: classes2.dex */
public class AdobeDesignLibraryMoveActivity extends AdobeTOUHandlerActivity implements IAdobeLibraryExtraControlsHostActivity {
    private Toolbar actionBarToolbar;
    private AdobeLibraryItemMoveExtraConfiguration configuration;
    private View contentView;
    private boolean copy;
    private int currentOrientation;
    protected Fragment moveFragment = null;
    private LibraryItemEditContainerCommandsHandler assetContainerCommandsHandler = new LibraryItemEditContainerCommandsHandler();

    @Override // com.adobe.creativesdk.foundation.internal.base.AdobeTOUHandlerActivity, android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onStart() {
        super.onStart();
        this.assetContainerCommandsHandler.onStart();
    }

    @Override // com.adobe.creativesdk.foundation.internal.base.AdobeTOUHandlerActivity, android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onStop() {
        super.onStop();
        this.assetContainerCommandsHandler.onStop();
    }

    @Override // com.adobe.creativesdk.foundation.internal.base.AdobeTOUHandlerActivity, android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (getIntent().getExtras() != null) {
            this.copy = getIntent().getExtras().getBoolean("IS_COPY", false);
        }
        setContentView(R.layout.activity_library_element_move);
        this.currentOrientation = getResources().getConfiguration().orientation;
        setupActionBarCustomFont();
        openMoveDesignLibraryBrowser();
    }

    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (configuration.orientation != this.currentOrientation) {
            this.currentOrientation = configuration.orientation;
            AdobeLocalNotificationCenter.getDefaultNotificationCenter().postNotification(new AdobeNotification(AdobeInternalNotificationID.AdobeAppOrientationConfigurationChanged, null));
        }
    }

    private void setupActionBarCustomFont() {
        this.actionBarToolbar = (Toolbar) findViewById(R.id.adobe_csdk_actionbar_toolbar);
        this.actionBarToolbar.setBackgroundColor(getResources().getColor(R.color.adobe_loki_app_bar));
        this.contentView = findViewById(android.R.id.content);
        AdobeCSDKActionBarController.changeTextColor(this.contentView, -1);
        AdobeCSDKActionBarController.setTitle(this.contentView, getResources().getString(R.string.adobe_csdk_library_chooser));
        setSupportActionBar(this.actionBarToolbar);
        if (getSupportActionBar() != null) {
            getSupportActionBar().setDisplayHomeAsUpEnabled(true);
            getSupportActionBar().setTitle("");
        }
    }

    private void setActionBarForMoveExplorer() {
        this.actionBarToolbar.setNavigationIcon(R.drawable.asset_edit_home_as_up_back);
    }

    private void openMoveDesignLibraryBrowser() {
        startDesignLibraryBrowser();
    }

    private void startDesignLibraryBrowser() {
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        int i = R.id.adobe_csdk_library_element_move_frame;
        if (this.moveFragment == null) {
            this.moveFragment = createDesignLibraryMoveBrowserFragment();
            setActionBarForMoveExplorer();
            FragmentTransaction fragmentTransactionBeginTransaction = supportFragmentManager.beginTransaction();
            fragmentTransactionBeginTransaction.replace(i, this.moveFragment, "");
            fragmentTransactionBeginTransaction.commit();
        }
    }

    private Fragment createDesignLibraryMoveBrowserFragment() {
        AdobeAssetViewMainBrowserFragment adobeAssetViewMainBrowserFragment = new AdobeAssetViewMainBrowserFragment();
        Bundle bundle = new Bundle();
        bundle.putSerializable("ADOBE_CLOUD", AdobeCloudManager.getSharedCloudManager().getDefaultCloud());
        bundle.putSerializable(AdobeAssetMainBrowserConfiguration.DATA_SOURCE_FILTER_ARRAY_KEY, EnumSet.of(AdobeAssetDataSourceType.AdobeAssetDataSourceLibrary));
        bundle.putSerializable(AdobeAssetMainBrowserConfiguration.DATA_SOURCE_FILTER_TYPE_KEY, AdobeAssetDataSourceFilterType.ADOBE_ASSET_DATASOURCE_FILTER_INCLUSION);
        bundle.putBoolean(AdobeAssetMainBrowserExtraConfiguration.SHOW_LIBRARY_ITEM_KEY, true);
        adobeAssetViewMainBrowserFragment.setArguments(bundle);
        return adobeAssetViewMainBrowserFragment;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.libraryedit.IAdobeLibraryExtraControlsHostActivity
    public boolean hasExtraControls() {
        return true;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.libraryedit.IAdobeLibraryExtraControlsHostActivity
    public AdobeLibraryItemMoveExtraConfiguration getExtraConfiguration() {
        if (this.configuration == null) {
            this.configuration = new AdobeLibraryItemMoveExtraConfiguration();
            this.configuration.setMoveButton(true);
            this.configuration.setShouldShowOnlyCollections(true);
        }
        return this.configuration;
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            handleBackPress();
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onBackPressed() {
        handleBackPress();
    }

    private boolean handleBackPress() {
        if (this.moveFragment == null) {
            super.onBackPressed();
            return false;
        }
        if (((AdobeAssetViewMainBrowserFragment) this.moveFragment).isAtRootFragment()) {
            finish();
            return true;
        }
        AdobeCSDKActionBarController.setTitle(this.contentView, getResources().getString(R.string.adobe_csdk_library_chooser));
        return ((AdobeAssetViewMainBrowserFragment) this.moveFragment).handleOnBackPressed();
    }

    class LibraryItemEditContainerCommandsHandler extends AdobeAssetViewCommandsHandler {
        private LibraryItemEditContainerCommandsHandler() {
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.commands.AdobeAssetViewCommandsHandler
        protected EnumSet<AdobeAssetViewBrowserCommandName> getCommandsListToRegister() {
            return EnumSet.of(AdobeAssetViewBrowserCommandName.ACTION_LIBRARY_ELEMENT_EDIT_MOVE_OPERATION);
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.commands.AdobeAssetViewCommandsHandler
        protected void handleCommand(AdobeAssetViewBrowserCommandName adobeAssetViewBrowserCommandName, Object obj) throws AdobeDCXException {
            if (adobeAssetViewBrowserCommandName == AdobeAssetViewBrowserCommandName.ACTION_LIBRARY_ELEMENT_EDIT_MOVE_OPERATION) {
                AdobeDesignLibraryMoveActivity.this.handleMoveOperation((String) obj);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleMoveOperation(String str) throws AdobeDCXException {
        AdobeDesignLibraryEditOperation adobeDesignLibraryEditOperation = AdobeDesignLibraryEditOperation.ADOBE_LIBRARY_ITEM_EDIT_OPERATION_MOVE;
        if (this.copy) {
            adobeDesignLibraryEditOperation = AdobeDesignLibraryEditOperation.ADOBE_LIBRARY_ITEM_EDIT_OPERATION_COPY;
        }
        AdobeDesignLibraryEditManager.createSession(str, getSupportFragmentManager(), adobeDesignLibraryEditOperation, new IAdobeEditLibraryCallback() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.libraryedit.AdobeDesignLibraryMoveActivity.1
            @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.libraryedit.IAdobeEditLibraryCallback
            public void onComplete() {
                Bundle bundle = new Bundle();
                bundle.putString("LIBRARY_ELEMENT_TYPE", AdobeEditSelectedLibraryElementsController.sharedController().getTargetAssets().get(0).getLibraryElement().getType());
                AdobeAssetBrowserCommandMgr.getInstance().postCommand(AdobeAssetViewBrowserCommandName.ACTION_LIBRARY_ITEM_EDIT_COMPLETED, bundle);
            }
        }).startEditSession();
        finish();
    }
}
