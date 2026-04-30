package com.adobe.premiereclip.source;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import com.adobe.creativesdk.foundation.AdobeCSDKFoundation;
import com.adobe.creativesdk.foundation.adobeinternal.auth.AdobeUXAuthManagerRestricted;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudManager;
import com.adobe.creativesdk.foundation.auth.AdobeAuthException;
import com.adobe.creativesdk.foundation.auth.AdobeAuthSessionHelper;
import com.adobe.creativesdk.foundation.auth.AdobeAuthSessionLauncher;
import com.adobe.creativesdk.foundation.auth.AdobeUXAuthManager;
import com.adobe.creativesdk.foundation.internal.auth.AdobeAuthIMSEnvironment;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import com.adobe.creativesdk.foundation.storage.AdobeAssetDataSourceFilter;
import com.adobe.creativesdk.foundation.storage.AdobeAssetDataSourceFilterType;
import com.adobe.creativesdk.foundation.storage.AdobeAssetDataSourceType;
import com.adobe.creativesdk.foundation.storage.AdobeAssetMIMETypeFilter;
import com.adobe.creativesdk.foundation.storage.AdobeAssetMIMETypeFilterType;
import com.adobe.creativesdk.foundation.storage.AdobeAssetMimeTypes;
import com.adobe.creativesdk.foundation.storage.AdobePhotoAsset;
import com.adobe.creativesdk.foundation.storage.AdobeSelection;
import com.adobe.creativesdk.foundation.storage.AdobeSelectionPhotoAsset;
import com.adobe.creativesdk.foundation.storage.AdobeUXAssetBrowser;
import com.adobe.creativesdk.foundation.storage.AdobeUXAssetBrowserConfiguration;
import com.adobe.creativesdk.foundation.storage.AdobeUXAssetBrowserOption;
import com.adobe.premiereclip.downloadmanager.CCDownloadManager;
import com.adobe.premiereclip.metrics.Metrics;
import com.adobe.sync.s3utils.S3TransferManager;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class CreativeCloudSource implements CCDownloadManager.CCDownloadCallback {
    public static final int CC_ASSET_BROWSER_FOR_BUG_INTENT_ID = 8758;
    public static final int CC_ASSET_BROWSER_FOR_BUMPER_INTENT_ID = 1233;
    public static final int CC_ASSET_BROWSER_INTENT_ID = 9001;
    public static final int CC_ASSET_LIGHTROOM_INTENT_ID = 9002;
    public static final int CC_LOGIN_INTENT_ID = 1000;
    public static final int CC_SIGNUP_INTENT_ID = 1001;
    public static final String CREATIVE_SDK_CLIP_CLIENT_ID = "ClipAndroid1";
    public static final String CREATIVE_SDK_CLIP_CLIENT_SECRET = "17544f50-0868-421a-81e3-89333608effb";
    private static CreativeCloudSource instance = new CreativeCloudSource();
    private AdobeAuthSessionHelper mAuthSessionHelper;
    private boolean mInitialized = false;
    private ICreativeCloudLoginCallback mLoginCallback = null;
    private ICreativeCloudLogoutCallback mLogoutCallback = null;
    private ICreativeCloudAssetBrowserCallback mAssetBrowserCallback = null;
    private AdobeAuthSessionHelper.IAdobeAuthStatusCallback mStatusCallback = new AdobeAuthSessionHelper.IAdobeAuthStatusCallback() { // from class: com.adobe.premiereclip.source.CreativeCloudSource.1
        @Override // com.adobe.creativesdk.foundation.auth.AdobeAuthSessionHelper.IAdobeAuthStatusCallback
        public void call(AdobeAuthSessionHelper.AdobeAuthStatus adobeAuthStatus, AdobeAuthException adobeAuthException) {
            if (adobeAuthStatus == AdobeAuthSessionHelper.AdobeAuthStatus.AdobeAuthLoginAttemptFailed) {
                if (CreativeCloudSource.this.mLoginCallback != null) {
                    CreativeCloudSource.this.mLoginCallback.didLogin(adobeAuthException);
                }
                CreativeCloudSource.this.mLoginCallback = null;
                return;
            }
            if (adobeAuthStatus == AdobeAuthSessionHelper.AdobeAuthStatus.AdobeAuthLoggedIn) {
                if (CreativeCloudSource.this.mLoginCallback != null) {
                    CreativeCloudSource.this.mLoginCallback.didLogin(null);
                }
                CreativeCloudSource.this.mLoginCallback = null;
            } else if (adobeAuthStatus == AdobeAuthSessionHelper.AdobeAuthStatus.AdobeAuthLogoutAttemptFailed) {
                if (CreativeCloudSource.this.mLogoutCallback != null) {
                    CreativeCloudSource.this.mLogoutCallback.didLogout(adobeAuthException);
                }
                CreativeCloudSource.this.mLogoutCallback = null;
            } else if (adobeAuthStatus == AdobeAuthSessionHelper.AdobeAuthStatus.AdobeAuthLoggedOut) {
                if (CreativeCloudSource.this.mLogoutCallback != null) {
                    CreativeCloudSource.this.mLogoutCallback.didLogout(null);
                }
                CreativeCloudSource.this.mLogoutCallback = null;
            }
        }
    };

    /* JADX INFO: loaded from: classes2.dex */
    public interface ICreativeCloudAssetBrowserCallback {
        void onDownloadAsset(String str, String str2, String str3, AdobeCSDKException adobeCSDKException);

        void onRejectDownload();

        void onStartDownload();

        void onUpdateDownloadProgress(double d2, String str);
    }

    public interface ICreativeCloudLoginCallback {
        void didLogin(AdobeAuthException adobeAuthException);
    }

    /* JADX INFO: loaded from: classes2.dex */
    public interface ICreativeCloudLogoutCallback {
        void didLogout(AdobeAuthException adobeAuthException);
    }

    private CreativeCloudSource() {
        this.mAuthSessionHelper = null;
        this.mAuthSessionHelper = new AdobeAuthSessionHelper(this.mStatusCallback);
        this.mAuthSessionHelper.onCreate(null);
    }

    public static CreativeCloudSource getInstance() {
        if (instance == null) {
            instance = new CreativeCloudSource();
        }
        return instance;
    }

    public final void initializeIfNotInitialized(Context context) {
        if (!this.mInitialized) {
            AdobeCSDKFoundation.initializeCSDKFoundation(context);
            AdobeUXAuthManagerRestricted.getSharedAuthManagerRestricted().setAuthenticationEnvironment(AdobeAuthIMSEnvironment.AdobeAuthIMSEnvironmentProductionUS);
            this.mInitialized = true;
        }
    }

    public final void handleOnPause() {
        this.mAuthSessionHelper.onPause();
    }

    public final void handleOnResume() {
        this.mAuthSessionHelper.onResume();
    }

    private boolean initializationCheck() {
        if (!this.mInitialized) {
            Log.d("App", "CCSource is not initialized yet");
        }
        return this.mInitialized;
    }

    private void openCreativeCloudImagePicker(Activity activity, AdobeUXAssetBrowserConfiguration adobeUXAssetBrowserConfiguration, int i) {
        if (initializationCheck()) {
            try {
                AdobeUXAssetBrowser.getSharedInstance().popupFileBrowser(activity, i, adobeUXAssetBrowserConfiguration);
            } catch (AdobeCSDKException e2) {
                e2.printStackTrace();
            }
        }
    }

    public final void openCreativeCloudImagePicker(Activity activity, EnumSet<AdobeAssetDataSourceType> enumSet) {
        AdobeUXAssetBrowserConfiguration adobeUXAssetBrowserConfiguration = new AdobeUXAssetBrowserConfiguration();
        adobeUXAssetBrowserConfiguration.options = EnumSet.of(AdobeUXAssetBrowserOption.ENABLE_MULTI_SELECT, AdobeUXAssetBrowserOption.SHOW_MULTI_SELECT_ON_POPUP);
        adobeUXAssetBrowserConfiguration.mimeTypeFilter = AdobeAssetMIMETypeFilter.createFromMimeTypes(EnumSet.of(AdobeAssetMimeTypes.MIMETYPE_JPEG, AdobeAssetMimeTypes.MIMETYPE_JPG, AdobeAssetMimeTypes.MIMETYPE_PNG, AdobeAssetMimeTypes.MIMETYPE_MP4, AdobeAssetMimeTypes.MIMETYPE_M4V, AdobeAssetMimeTypes.MIMETYPE_QUICKTIME), AdobeAssetMIMETypeFilterType.ADOBE_ASSET_MIMETYPE_FILTERTYPE_INCLUSION);
        adobeUXAssetBrowserConfiguration.dataSourceFilter = AdobeAssetDataSourceFilter.createFromDataSources(enumSet, AdobeAssetDataSourceFilterType.ADOBE_ASSET_DATASOURCE_FILTER_INCLUSION);
        adobeUXAssetBrowserConfiguration.cloud = AdobeCloudManager.getSharedCloudManager().getDefaultCloud();
        openCreativeCloudImagePicker(activity, adobeUXAssetBrowserConfiguration, 9001);
    }

    public final void openCreativeCloudPickerForBumper(Activity activity) {
        AdobeUXAssetBrowserConfiguration adobeUXAssetBrowserConfiguration = new AdobeUXAssetBrowserConfiguration();
        adobeUXAssetBrowserConfiguration.mimeTypeFilter = AdobeAssetMIMETypeFilter.createFromMimeTypes(EnumSet.of(AdobeAssetMimeTypes.MIMETYPE_MP4, AdobeAssetMimeTypes.MIMETYPE_QUICKTIME), AdobeAssetMIMETypeFilterType.ADOBE_ASSET_MIMETYPE_FILTERTYPE_INCLUSION);
        adobeUXAssetBrowserConfiguration.dataSourceFilter = AdobeAssetDataSourceFilter.createFromDataSources(EnumSet.of(AdobeAssetDataSourceType.AdobeAssetDataSourceFiles), AdobeAssetDataSourceFilterType.ADOBE_ASSET_DATASOURCE_FILTER_INCLUSION);
        adobeUXAssetBrowserConfiguration.cloud = AdobeCloudManager.getSharedCloudManager().getDefaultCloud();
        openCreativeCloudImagePicker(activity, adobeUXAssetBrowserConfiguration, CC_ASSET_BROWSER_FOR_BUMPER_INTENT_ID);
    }

    public final void openCreativeCloudImagePickerForBug(Activity activity) {
        AdobeUXAssetBrowserConfiguration adobeUXAssetBrowserConfiguration = new AdobeUXAssetBrowserConfiguration();
        adobeUXAssetBrowserConfiguration.mimeTypeFilter = AdobeAssetMIMETypeFilter.createFromMimeTypes(EnumSet.of(AdobeAssetMimeTypes.MIMETYPE_PNG), AdobeAssetMIMETypeFilterType.ADOBE_ASSET_MIMETYPE_FILTERTYPE_INCLUSION);
        adobeUXAssetBrowserConfiguration.dataSourceFilter = AdobeAssetDataSourceFilter.createFromDataSources(EnumSet.of(AdobeAssetDataSourceType.AdobeAssetDataSourceFiles), AdobeAssetDataSourceFilterType.ADOBE_ASSET_DATASOURCE_FILTER_INCLUSION);
        adobeUXAssetBrowserConfiguration.cloud = AdobeCloudManager.getSharedCloudManager().getDefaultCloud();
        openCreativeCloudImagePicker(activity, adobeUXAssetBrowserConfiguration, CC_ASSET_BROWSER_FOR_BUG_INTENT_ID);
    }

    public final void handleCreativeCloudImagePickerResponse(String str, int i, int i2, Intent intent, Context context, ICreativeCloudAssetBrowserCallback iCreativeCloudAssetBrowserCallback) {
        if (intent != null) {
            ArrayList<AdobeSelection> selectionAssetArray = new AdobeUXAssetBrowser.ResultProvider(intent).getSelectionAssetArray();
            this.mAssetBrowserCallback = iCreativeCloudAssetBrowserCallback;
            if (selectionAssetArray != null && selectionAssetArray.size() != 0) {
                Metrics.sharedInstance().didSelectCreativeCloudAssetInMediaPickerWithAssetCount(selectionAssetArray.size());
                Iterator<AdobeSelection> it = selectionAssetArray.iterator();
                while (it.hasNext()) {
                    CCDownloadManager.getInstance().downloadCCAsset(str, context, it.next(), this);
                }
            }
        }
    }

    public final void handleCreativeCloudLightroomResponse(String str, int i, int i2, ArrayList<AdobePhotoAsset> arrayList, Context context, ICreativeCloudAssetBrowserCallback iCreativeCloudAssetBrowserCallback) {
        if (arrayList != null && arrayList.size() > 0) {
            this.mAssetBrowserCallback = iCreativeCloudAssetBrowserCallback;
            Iterator<AdobePhotoAsset> it = arrayList.iterator();
            while (it.hasNext()) {
                CCDownloadManager.getInstance().downloadCCAsset(str, context, new AdobeSelectionPhotoAsset(it.next()) { // from class: com.adobe.premiereclip.source.CreativeCloudSource.1AdobePhotoSelection
                }, this);
            }
        }
    }

    public final void cancelCCDownloads(String str) {
        CCDownloadManager.getInstance().cancelOngoingDownloads(str);
    }

    public final boolean isCCDownloadOngoing(String str) {
        return CCDownloadManager.getInstance().isDownloadPending(str);
    }

    public final void login(Activity activity) {
        if (initializationCheck()) {
            AdobeUXAuthManager.getSharedAuthManager().login(new AdobeAuthSessionLauncher.Builder().withActivity(activity).withRequestCode(1000).build());
        }
    }

    public final void logout(ICreativeCloudLogoutCallback iCreativeCloudLogoutCallback) {
        if (initializationCheck()) {
            this.mLogoutCallback = iCreativeCloudLogoutCallback;
            AdobeUXAuthManager.getSharedAuthManager().logout();
            S3TransferManager.getInstance().cancelTransfers();
            this.mLogoutCallback.didLogout(null);
            this.mLogoutCallback = null;
            Metrics.sharedInstance().didSignOut();
        }
    }

    public final boolean isLoggedIn() {
        if (initializationCheck()) {
            return AdobeUXAuthManager.getSharedAuthManager().isAuthenticated();
        }
        return false;
    }

    public final void signup(Activity activity) {
        if (initializationCheck()) {
            AdobeUXAuthManagerRestricted.getSharedAuthManagerRestricted().promptForSignUp(new AdobeAuthSessionLauncher.Builder().withActivity(activity).withRequestCode(1001).build());
        }
    }

    public final void handleLoginActivityResponse(int i, int i2, Intent intent, ICreativeCloudLoginCallback iCreativeCloudLoginCallback) {
        this.mLoginCallback = iCreativeCloudLoginCallback;
        this.mAuthSessionHelper.onActivityResult(i, i2, intent);
    }

    @Override // com.adobe.premiereclip.downloadmanager.CCDownloadManager.CCDownloadCallback
    public final void didFinishDownloadAsset(String str, String str2, String str3, AdobeCSDKException adobeCSDKException) {
        if (adobeCSDKException != null) {
            Log.d("CCSource", "Error in picking image from AssetBrowser: " + adobeCSDKException);
        } else {
            Log.d("CCSource", "didpickimage hit");
        }
        this.mAssetBrowserCallback.onDownloadAsset(str, str2, str3, adobeCSDKException);
    }

    @Override // com.adobe.premiereclip.downloadmanager.CCDownloadManager.CCDownloadCallback
    public void didStartDownloadAsset() {
        this.mAssetBrowserCallback.onStartDownload();
    }

    @Override // com.adobe.premiereclip.downloadmanager.CCDownloadManager.CCDownloadCallback
    public void didUpdateProgressOfAssetDownload(double d2, String str) {
        this.mAssetBrowserCallback.onUpdateDownloadProgress(d2, str);
    }

    @Override // com.adobe.premiereclip.downloadmanager.CCDownloadManager.CCDownloadCallback
    public void didRejectAssetDownload() {
        this.mAssetBrowserCallback.onRejectDownload();
    }

    public String getAdobeId() {
        return AdobeUXAuthManager.getSharedAuthManager().getUserProfile() == null ? "" : AdobeUXAuthManager.getSharedAuthManager().getUserProfile().getAdobeID();
    }
}
