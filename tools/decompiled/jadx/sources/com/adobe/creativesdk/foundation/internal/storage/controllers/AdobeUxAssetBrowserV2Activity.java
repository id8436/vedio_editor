package com.adobe.creativesdk.foundation.internal.storage.controllers;

import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v7.widget.Toolbar;
import android.view.KeyEvent;
import android.view.MenuItem;
import com.adobe.creativesdk.foundation.adobeinternal.auth.AdobeUXAuthManagerRestricted;
import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.util.ACLibraryManagerUtil;
import com.adobe.creativesdk.foundation.assetux.R;
import com.adobe.creativesdk.foundation.auth.AdobeAuthErrorCode;
import com.adobe.creativesdk.foundation.auth.AdobeAuthException;
import com.adobe.creativesdk.foundation.auth.AdobeAuthSessionHelper;
import com.adobe.creativesdk.foundation.auth.AdobeAuthSessionLauncher;
import com.adobe.creativesdk.foundation.auth.AdobeUXAuthManager;
import com.adobe.creativesdk.foundation.internal.base.AdobeCSDKBaseActivity;
import com.adobe.creativesdk.foundation.internal.notification.AdobeInternalNotificationID;
import com.adobe.creativesdk.foundation.internal.notification.AdobeLocalNotificationCenter;
import com.adobe.creativesdk.foundation.internal.notification.AdobeNotification;
import com.adobe.creativesdk.foundation.internal.storage.AdobeStorageAssetSelectionState;
import com.adobe.creativesdk.foundation.internal.storage.AdobeStoragePhotoAssetSelectionState;
import com.adobe.creativesdk.foundation.internal.storage.controllers.OneUpViewConfiguration.AdobeOneUpViewerConfigurationFactory;
import com.adobe.creativesdk.foundation.internal.storage.controllers.OneUpViewConfiguration.AdobeOneUpViewerController;
import com.adobe.creativesdk.foundation.internal.storage.controllers.OneUpViewConfiguration.AdobeOneUpViewerControllerConfigurations;
import com.adobe.creativesdk.foundation.internal.storage.controllers.OneUpViewConfiguration.AdobeOneUpViewerFilesConfiguration;
import com.adobe.creativesdk.foundation.internal.storage.controllers.OneUpViewConfiguration.AdobeOneUpViewerLibraryConfiguration;
import com.adobe.creativesdk.foundation.internal.storage.controllers.OneUpViewConfiguration.AdobeOneUpViewerMobileCreationConfiguration;
import com.adobe.creativesdk.foundation.internal.storage.controllers.OneUpViewConfiguration.AdobeOneUpViewerPhotosConfiguration;
import com.adobe.creativesdk.foundation.internal.storage.controllers.actionbar.AdobeUxActionBarController;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;

/* JADX INFO: loaded from: classes.dex */
public class AdobeUxAssetBrowserV2Activity extends AdobeCSDKBaseActivity implements IAdobeAssetViewBrowserFragmentHostActivity {
    private static final String T = "UxAssetBrowserV2";
    private Toolbar _actionBarToolbar;
    private AdobeUxActionBarController _actionBarUxDropDownController;
    Bundle _clientArgsBundle;
    private int _currentOrientation;
    private boolean _isRestoredActivity;
    AdobeAssetViewMainBrowserFragment _mainBrowserFragment;
    private QueuedActivityResult _queuedActivityResult;
    private boolean _sessionHelperResumed;
    private final String MAIN_BROWSER_FRAGMENT_TAG = "AssetBrowserV2_mainBrowserFragmentTag";
    private final String DATASOURCES_WAIT_FRAGMENT_TAG = "AssetBrowserV2_dataSourcesWaitFragmentTag";
    private final int ROOT_ID = 65535;
    private AdobeAuthSessionHelper _authSessionHelper = null;
    private AdobeAuthSessionHelper.IAdobeAuthStatusCallback _statusCallback = new AdobeAuthSessionHelper.IAdobeAuthStatusCallback() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeUxAssetBrowserV2Activity.1
        @Override // com.adobe.creativesdk.foundation.auth.AdobeAuthSessionHelper.IAdobeAuthStatusCallback
        public void call(AdobeAuthSessionHelper.AdobeAuthStatus adobeAuthStatus, AdobeAuthException adobeAuthException) {
            AdobeUXAuthManagerRestricted sharedAuthManagerRestricted = AdobeUXAuthManagerRestricted.getSharedAuthManagerRestricted();
            AdobeLogger.log(Level.DEBUG, AdobeUxAssetBrowserV2Activity.T, "Auth status " + adobeAuthStatus);
            if (AdobeAuthSessionHelper.AdobeAuthStatus.AdobeAuthLoggedIn == adobeAuthStatus) {
                ACLibraryManagerUtil.createAndStartLibraryAppBridge();
                AdobeUxAssetBrowserV2Activity.this.showAssetBroweserPageForCurrentUser();
                return;
            }
            if (AdobeAuthSessionHelper.AdobeAuthStatus.AdobeAuthContinuableEvent == adobeAuthStatus) {
                AdobeAuthErrorCode errorCode = adobeAuthException.getErrorCode();
                if (errorCode == AdobeAuthErrorCode.ADOBE_AUTH_ERROR_CODE_AGE_VERIFICATION || errorCode == AdobeAuthErrorCode.ADOBE_AUTH_ERROR_CODE_UPDATED_TOU || errorCode == AdobeAuthErrorCode.ADOBE_AUTH_ERROR_CODE_EMAIL_VERIFICATION) {
                    AdobeUXAuthManager.getSharedAuthManager().openContinuableAuthenticationEvent(new AdobeAuthSessionLauncher.Builder().withActivity(AdobeUxAssetBrowserV2Activity.this).withContinuableErrorCode(errorCode).build());
                    return;
                }
                return;
            }
            if (adobeAuthException == null || adobeAuthException.getErrorCode() != AdobeAuthErrorCode.ADOBE_AUTH_ERROR_CODE_USER_CANCELLED) {
                sharedAuthManagerRestricted.login(new AdobeAuthSessionLauncher.Builder().withActivity(AdobeUxAssetBrowserV2Activity.this).withRequestCode(2002).build());
            } else {
                AdobeUxAssetBrowserV2Activity.this.finish();
            }
        }
    };

    public AdobeUxAssetBrowserV2Activity() {
        this._sessionHelperResumed = false;
        this._sessionHelperResumed = false;
    }

    public void showAssetBroweserPageForCurrentUser() {
        if (this._actionBarToolbar.getVisibility() == 8) {
            this._actionBarToolbar.setVisibility(0);
        }
        setupMainBrowserFragment();
    }

    public void setupActionBarCustomFont() {
        this._actionBarToolbar = (Toolbar) findViewById(R.id.adobe_csdk_actionbar_toolbar);
        setSupportActionBar(this._actionBarToolbar);
        if (this._actionBarToolbar != null) {
            this._actionBarToolbar.setBackgroundResource(R.color.adobe_csdk_actionbar_background);
        }
        if (getSupportActionBar() != null) {
            getSupportActionBar().setDisplayHomeAsUpEnabled(true);
            getSupportActionBar().setHomeButtonEnabled(true);
            getSupportActionBar().setDisplayShowTitleEnabled(false);
        }
        this._actionBarUxDropDownController = new AdobeUxActionBarController();
        AdobeUxActionBarController.setInstance(this._actionBarUxDropDownController);
        AdobeUxActionBarController.getInstance().setUpActionBar(this);
    }

    @Override // android.support.v7.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        return i == 82 || super.onKeyDown(i, keyEvent);
    }

    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this._currentOrientation = getResources().getConfiguration().orientation;
        setContentView(R.layout.adobe_assetbrowser_v2_activity);
        setupActionBarCustomFont();
        this._clientArgsBundle = getIntent().getExtras();
        this._authSessionHelper = new AdobeAuthSessionHelper(this._statusCallback);
        this._authSessionHelper.onCreate(bundle);
        this._sessionHelperResumed = false;
        this._isRestoredActivity = false;
        AdobeOneUpViewerController adobeOneUpViewerController = new AdobeOneUpViewerController();
        adobeOneUpViewerController.setFileProviderAuthority(null);
        AdobeOneUpViewerFilesConfiguration adobeOneUpViewerFilesConfiguration = new AdobeOneUpViewerFilesConfiguration();
        adobeOneUpViewerFilesConfiguration.setIsMenuEnabled(false);
        AdobeOneUpViewerPhotosConfiguration adobeOneUpViewerPhotosConfiguration = new AdobeOneUpViewerPhotosConfiguration();
        adobeOneUpViewerPhotosConfiguration.setIsMenuEnabled(false);
        AdobeOneUpViewerLibraryConfiguration adobeOneUpViewerLibraryConfiguration = new AdobeOneUpViewerLibraryConfiguration();
        adobeOneUpViewerLibraryConfiguration.setIsMenuEnabled(false);
        AdobeOneUpViewerMobileCreationConfiguration adobeOneUpViewerMobileCreationConfiguration = new AdobeOneUpViewerMobileCreationConfiguration();
        adobeOneUpViewerMobileCreationConfiguration.setIsMenuEnabled(false);
        adobeOneUpViewerController.setFilesViewerConfiguration(adobeOneUpViewerFilesConfiguration);
        adobeOneUpViewerController.setLibraryViewerConfiguration(adobeOneUpViewerLibraryConfiguration);
        adobeOneUpViewerController.setPhotoViewerConfiguration(adobeOneUpViewerPhotosConfiguration);
        adobeOneUpViewerController.setMobileCreationViewerConfiguration(adobeOneUpViewerMobileCreationConfiguration);
        AdobeOneUpViewerControllerConfigurations.setCSDKDefaultConfigurationKey(AdobeOneUpViewerConfigurationFactory.registerController(adobeOneUpViewerController));
        AssetListCellView.setContext(getBaseContext());
    }

    private void setupMainBrowserFragment() {
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        Fragment fragmentFindFragmentById = supportFragmentManager.findFragmentById(R.id.adobe_csdk_assetbrowser_v2_frame);
        if (!(fragmentFindFragmentById instanceof AdobeAssetViewMainBrowserFragment)) {
            this._mainBrowserFragment = new AdobeAssetViewMainBrowserFragment();
            this._mainBrowserFragment.setArguments(getIntent().getExtras());
            FragmentTransaction fragmentTransactionBeginTransaction = supportFragmentManager.beginTransaction();
            fragmentTransactionBeginTransaction.replace(R.id.adobe_csdk_assetbrowser_v2_frame, this._mainBrowserFragment, "AssetBrowserV2_mainBrowserFragmentTag");
            fragmentTransactionBeginTransaction.commit();
        } else {
            this._mainBrowserFragment = (AdobeAssetViewMainBrowserFragment) fragmentFindFragmentById;
        }
        processAnyQueuedActivityResult();
    }

    private void processAnyQueuedActivityResult() {
        if (this._queuedActivityResult != null && this._mainBrowserFragment != null) {
            this._mainBrowserFragment.handleOnActivityResult(this._queuedActivityResult.requestCode, this._queuedActivityResult.resultCode, this._queuedActivityResult.resultData);
            this._queuedActivityResult = null;
        }
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (this._mainBrowserFragment != null) {
            this._mainBrowserFragment.handleOnActivityResult(i, i2, intent);
        } else {
            this._queuedActivityResult = new QueuedActivityResult(i, i2, intent);
        }
        this._authSessionHelper.onActivityResult(i, i2, intent);
        if (i == 2002) {
            if (i2 == 0) {
                AdobeLogger.log(Level.WARN, T, "Signin cancelled, finishing.");
                finish();
            } else if (i2 == -1) {
                AdobeLogger.log(Level.WARN, T, "Signin: restarting.");
                Intent intent2 = getIntent();
                finish();
                startActivity(intent2);
            }
        }
    }

    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (configuration.orientation != this._currentOrientation) {
            this._currentOrientation = configuration.orientation;
            AdobeLocalNotificationCenter.getDefaultNotificationCenter().postNotification(new AdobeNotification(AdobeInternalNotificationID.AdobeAppOrientationConfigurationChanged, null));
        }
    }

    boolean handleBackPress() {
        if (this._actionBarToolbar != null && !this._actionBarToolbar.hasExpandedActionView() && this._mainBrowserFragment != null) {
            if (this._mainBrowserFragment.isAtRootFragment()) {
                AdobeStorageAssetSelectionState.resetSelectedAssets();
                AdobeStoragePhotoAssetSelectionState.resetSelectedAssets();
                finish();
                return true;
            }
            if (this._mainBrowserFragment.handleOnBackPressed()) {
                return true;
            }
        }
        return false;
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != 16908332) {
            return super.onOptionsItemSelected(menuItem);
        }
        handleBackPress();
        return true;
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onBackPressed() {
        if (!handleBackPress()) {
            super.onBackPressed();
        }
    }

    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onStart() {
        super.onStart();
        this._authSessionHelper.onStart();
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        this._authSessionHelper.onResume();
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
        this._authSessionHelper.onPause();
    }

    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onStop() {
        super.onStop();
        this._authSessionHelper.onStop();
    }

    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
    }

    @Override // android.app.Activity
    protected void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        this._isRestoredActivity = true;
    }

    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        this._authSessionHelper.onDestroy();
        AdobeUxActionBarController.resetIfSameInstance(this._actionBarUxDropDownController);
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.IAdobeAssetViewBrowserFragmentHostActivity
    public void handleOpenSelectedFilesAction(Intent intent) {
        setResult(-1, intent);
        finish();
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.IAdobeAssetViewBrowserFragmentHostActivity
    public void handleUserSignOutAction() {
        clearCurrentMainAssetBrowserFragment();
        AdobeUXAuthManagerRestricted.getSharedAuthManagerRestricted().logout();
    }

    private void clearCurrentMainAssetBrowserFragment() {
        if (this._mainBrowserFragment != null) {
            FragmentTransaction fragmentTransactionBeginTransaction = getSupportFragmentManager().beginTransaction();
            fragmentTransactionBeginTransaction.remove(this._mainBrowserFragment);
            fragmentTransactionBeginTransaction.commit();
            this._mainBrowserFragment = null;
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.IAdobeAssetViewBrowserFragmentHostActivity
    public void hideCollaborationFrameOnBackPressed() {
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.IAdobeAssetViewBrowserFragmentHostActivity
    public boolean isCollaborationFrameVisible() {
        return false;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.IAdobeAssetViewBrowserFragmentHostActivity
    public void updateUploadCountForAppRater() {
    }

    class QueuedActivityResult {
        public int requestCode;
        public int resultCode;
        public Intent resultData;

        public QueuedActivityResult(int i, int i2, Intent intent) {
            this.requestCode = i;
            this.resultData = intent;
            this.resultCode = i2;
        }
    }
}
