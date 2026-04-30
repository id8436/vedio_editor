package com.adobe.creativeapps.settings.utils;

import android.os.Handler;
import android.util.Log;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudManager;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudServiceType;
import com.adobe.creativesdk.foundation.auth.AdobeAuthException;
import com.adobe.creativesdk.foundation.auth.AdobeAuthSessionHelper;
import com.adobe.creativesdk.foundation.auth.AdobeUXAuthManager;
import com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession;
import com.adobe.creativesdk.foundation.internal.storage.model.services.IAdobeStorageSessionQuotaCallback;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import com.adobe.creativesdk.foundation.storage.AdobeAssetException;

/* JADX INFO: loaded from: classes.dex */
public class CreativeCloudSource {
    private static CreativeCloudSource instance = null;
    private AdobeAuthSessionHelper mAuthSessionHelper;
    private boolean mInitialized;
    private ICreativeCloudLoginCallback mLoginCallback = null;
    private ICreativeCloudLogoutCallback mLogoutCallback = null;
    private AdobeAuthSessionHelper.IAdobeAuthStatusCallback mStatusCallback = new AdobeAuthSessionHelper.IAdobeAuthStatusCallback() { // from class: com.adobe.creativeapps.settings.utils.CreativeCloudSource.1
        @Override // com.adobe.creativesdk.foundation.auth.AdobeAuthSessionHelper.IAdobeAuthStatusCallback
        public void call(AdobeAuthSessionHelper.AdobeAuthStatus adobeAuthStatus, AdobeAuthException adobeAuthException) {
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

    public interface ICreativeCloudLoginCallback {
        void didLogin(AdobeAuthException adobeAuthException);
    }

    public interface ICreativeCloudLogoutCallback {
        void didLogout(AdobeAuthException adobeAuthException);
    }

    public interface ICreativeCloudStorageInfoCallback {
        void storageUpdateInfo(AdobeCSDKException adobeCSDKException, Number number, Number number2, Number number3);
    }

    private CreativeCloudSource() {
        this.mInitialized = false;
        this.mAuthSessionHelper = null;
        this.mAuthSessionHelper = new AdobeAuthSessionHelper(this.mStatusCallback);
        this.mAuthSessionHelper.onCreate(null);
        this.mInitialized = true;
    }

    public static CreativeCloudSource getInstance() {
        if (instance == null) {
            instance = new CreativeCloudSource();
        }
        return instance;
    }

    public final void logout(ICreativeCloudLogoutCallback iCreativeCloudLogoutCallback) {
        if (initializationCheck()) {
            this.mLogoutCallback = iCreativeCloudLogoutCallback;
            AdobeUXAuthManager.getSharedAuthManager().logout();
            this.mLogoutCallback.didLogout(null);
            this.mLogoutCallback = null;
        }
    }

    public final boolean isLoggedIn() {
        if (initializationCheck()) {
            return AdobeUXAuthManager.getSharedAuthManager().isAuthenticated();
        }
        return false;
    }

    public final void getCCStorageInfo(final ICreativeCloudStorageInfoCallback iCreativeCloudStorageInfoCallback) {
        ((AdobeStorageSession) AdobeCloudManager.getSharedCloudManager().getDefaultCloud().getSessionForService(AdobeCloudServiceType.AdobeCloudServiceTypeStorage)).getQuotaInformationOnCompletion(new IAdobeStorageSessionQuotaCallback() { // from class: com.adobe.creativeapps.settings.utils.CreativeCloudSource.2
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(AdobeCSDKException adobeCSDKException) {
                if (iCreativeCloudStorageInfoCallback != null) {
                    iCreativeCloudStorageInfoCallback.storageUpdateInfo((AdobeAssetException) adobeCSDKException, null, null, null);
                }
            }

            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.IAdobeStorageSessionQuotaCallback
            public void onCompletion(Number number, Number number2, Number number3) {
                iCreativeCloudStorageInfoCallback.storageUpdateInfo(null, number, number2, number3);
            }
        }, new Handler());
    }

    private boolean initializationCheck() {
        if (!this.mInitialized) {
            Log.d("CreativeCloudSource", "CCSource is not initialized yet");
        }
        return this.mInitialized;
    }
}
