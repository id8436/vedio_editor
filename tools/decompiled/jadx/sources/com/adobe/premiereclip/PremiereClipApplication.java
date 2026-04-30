package com.adobe.premiereclip;

import android.app.Activity;
import android.app.Application;
import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.provider.Settings;
import android.support.multidex.MultiDex;
import android.util.Log;
import c.a.a.a.f;
import com.adobe.DeviceInfo.DeviceInfoProvider;
import com.adobe.creativesdk.foundation.adobeinternal.auth.AdobeUXAuthManagerRestricted;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudManager;
import com.adobe.creativesdk.foundation.adobeinternal.net.AdobeNetworkReachabilityUtil;
import com.adobe.creativesdk.foundation.auth.AdobeAuthException;
import com.adobe.creativesdk.foundation.auth.AdobeUXAuthManager;
import com.adobe.creativesdk.foundation.auth.IAdobeAuthClientCredentials;
import com.adobe.creativesdk.foundation.internal.auth.AdobeAuthManager;
import com.adobe.creativesdk.foundation.internal.auth.AdobeAuthSignInActivity;
import com.adobe.creativesdk.foundation.internal.auth.IAdobeAuthLogoutObserver;
import com.adobe.creativesdk.foundation.internal.auth.authenticator.AdobeCSDKAdobeIDAccountType;
import com.adobe.premiereclip.automode.AutoModeManager;
import com.adobe.premiereclip.dcx.DCXModelController;
import com.adobe.premiereclip.dcx.DCXPreferencesManager;
import com.adobe.premiereclip.dcx.DCXProjectManager;
import com.adobe.premiereclip.featuredVideos.FeaturedVideosBaseFragment;
import com.adobe.premiereclip.library.ClipLibraryManager;
import com.adobe.premiereclip.looks.LocalLooks;
import com.adobe.premiereclip.metrics.Metrics;
import com.adobe.premiereclip.sharing.TwitterUpload;
import com.adobe.premiereclip.source.CreativeCloudSource;
import com.adobe.premiereclip.util.BitmapCache;
import com.adobe.premiereclip.util.ClipMusicCacheData;
import com.adobe.premiereclip.util.CloudUtil;
import com.adobe.utility.AndroidMiscUtils;
import com.adobe.utility.FontUtils;
import com.adobe.utility.analytics.TrackingUtility;
import com.crashlytics.android.Crashlytics;
import com.twitter.sdk.android.core.TwitterAuthConfig;
import com.twitter.sdk.android.core.ad;
import com.twitter.sdk.android.core.d;
import com.twitter.sdk.android.core.v;

/* JADX INFO: loaded from: classes.dex */
public class PremiereClipApplication extends Application implements IAdobeAuthClientCredentials {
    private static Context context;
    private boolean isFirstLogin;
    private ApplicationLifecycleHandler lifeCycleHandler = null;
    private static final String TAG = ApplicationLifecycleHandler.class.getSimpleName();
    private static boolean isInBackground = false;
    private static PremiereClipApplication instance = null;

    class ApplicationLifecycleHandler implements Application.ActivityLifecycleCallbacks, ComponentCallbacks2 {
        private Activity mCurrentActivity;
        private IAdobeAuthLogoutObserver mLogoutClient;

        private ApplicationLifecycleHandler() {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
            this.mCurrentActivity = activity;
            this.mLogoutClient = new IAdobeAuthLogoutObserver() { // from class: com.adobe.premiereclip.PremiereClipApplication.ApplicationLifecycleHandler.1
                @Override // com.adobe.creativesdk.foundation.internal.auth.IAdobeAuthLogoutObserver
                public void onSuccess() {
                    ApplicationLifecycleHandler.this.handleLogout();
                }

                @Override // com.adobe.creativesdk.foundation.internal.auth.IAdobeAuthLogoutObserver
                public void onError(AdobeAuthException adobeAuthException) {
                    Log.e("LOGOUT_DEVICE", "Error in Logout: " + adobeAuthException);
                }
            };
        }

        public void handleLogout() {
            DCXModelController.getInstance().setRefreshCloud(true);
            DCXModelController.getInstance().uninitializeSync();
            DCXModelController.getInstance().uninitalize();
            Metrics.sharedInstance().didSignOut();
            BitmapCache.clearDiskCache();
            FeaturedVideosBaseFragment.onLogout();
            Intent intent = new Intent(PremiereClipApplication.getContext(), (Class<?>) TourViewActivity.class);
            intent.setFlags(268468224);
            PremiereClipApplication.this.startActivity(intent);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity activity) {
            Crashlytics.log(4, "Started Activity", activity.getLocalClassName());
        }

        public boolean isInstanceOfBeforeSignInActivities(Activity activity) {
            return (activity instanceof SplashScreenActivity) || (activity instanceof TourViewActivity) || (activity instanceof AdobeAuthSignInActivity);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
            if (!AdobeAuthManager.sharedAuthManager().isAuthenticated() && !isInstanceOfBeforeSignInActivities(this.mCurrentActivity)) {
                handleLogout();
            }
            AdobeAuthManager.sharedAuthManager().registerLogoutClient(this.mLogoutClient);
            if (PremiereClipApplication.isInBackground) {
                Log.d(PremiereClipApplication.TAG, "app went to foreground");
                Metrics.sharedInstance().didShowBecomeActiveView();
                Metrics.sharedInstance().didBecomeActive();
                boolean unused = PremiereClipApplication.isInBackground = false;
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
            AdobeAuthManager.sharedAuthManager().unregisterLogoutClient(this.mLogoutClient);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
        }

        @Override // android.content.ComponentCallbacks
        public void onConfigurationChanged(Configuration configuration) {
        }

        @Override // android.content.ComponentCallbacks
        public void onLowMemory() {
        }

        @Override // android.content.ComponentCallbacks2
        public void onTrimMemory(int i) {
            if (i == 20) {
                Log.d(PremiereClipApplication.TAG, "app went to background");
                Metrics.sharedInstance().didResignActive();
                Metrics.sharedInstance().didShowResignedActiveView();
                boolean unused = PremiereClipApplication.isInBackground = true;
            }
        }
    }

    @Override // android.content.ContextWrapper
    protected void attachBaseContext(Context context2) {
        super.attachBaseContext(context2);
        MultiDex.install(this);
    }

    public static PremiereClipApplication getInstance() {
        return instance;
    }

    @Override // android.app.Application
    public void onCreate() {
        super.onCreate();
        instance = this;
        context = getApplicationContext();
        v.a(new ad(this).a(new d(3)).a(new TwitterAuthConfig(TwitterUpload.consumerKey, TwitterUpload.consumerSecret)).a(true).a());
        f.a(this, new Crashlytics());
        FontUtils.getInstance().initializeTypefaceCollections(getApplicationContext());
        com.h.a.d.a(FontUtils.getInstance().getAdobeCleanLightTypefaceCollection());
        CreativeCloudSource.getInstance().initializeIfNotInitialized(getApplicationContext());
        AutoModeManager.getSharedInstance().Initialize();
        setApplicationCredentials(getApplicationContext());
        TrackingUtility.getInstance().configure(getApplicationContext());
        Metrics.sharedInstance().didModifyAnalyticsCollection(Boolean.valueOf(TrackingUtility.getInstance().getTrackingValue()));
        Metrics.sharedInstance().setConnectionState(Boolean.valueOf(AdobeNetworkReachabilityUtil.getSharedInstance().isOnline()).booleanValue() ? "Online" : "Offline");
        String string = Settings.Secure.getString(context.getContentResolver(), "android_id");
        if (string != null) {
            Metrics.sharedInstance().didSetApplicationInstanceID(string);
        }
        String str = "1.0";
        try {
            str = getPackageManager().getPackageInfo(getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException e2) {
            e2.printStackTrace();
        }
        Metrics.sharedInstance().didStartAppWithBuildName("developer", str);
        ClipMusicCacheData.copyImpactAndWaveformDataToCache(context);
        ClipLibraryManager.getSharedInstance();
        LocalLooks.init();
        BitmapCache.init();
        DCXPreferencesManager.initAssets();
        if (CreativeCloudSource.getInstance().isLoggedIn()) {
            if (AdobeCloudManager.getSharedCloudManager().getDefaultCloud() != null) {
                initAppState();
            } else {
                CloudUtil.initCloud(getContext(), new CloudUtil.Listener() { // from class: com.adobe.premiereclip.PremiereClipApplication.1
                    @Override // com.adobe.premiereclip.util.CloudUtil.Listener
                    public void onCloudInit() {
                        PremiereClipApplication.this.initAppState();
                    }

                    @Override // com.adobe.premiereclip.util.CloudUtil.Listener
                    public void onNewCloud() {
                        PremiereClipApplication.this.initAppState();
                    }

                    @Override // com.adobe.premiereclip.util.CloudUtil.Listener
                    public void onCloudError() {
                    }
                });
            }
        }
        this.lifeCycleHandler = new ApplicationLifecycleHandler();
        registerActivityLifecycleCallbacks(this.lifeCycleHandler);
        registerComponentCallbacks(this.lifeCycleHandler);
    }

    @Override // android.app.Application
    public void onTerminate() {
        if (this.lifeCycleHandler != null) {
            unregisterActivityLifecycleCallbacks(this.lifeCycleHandler);
            unregisterComponentCallbacks(this.lifeCycleHandler);
        }
        TrackingUtility.getInstance().stopAnalyticsSession();
        super.onTerminate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initAppState() {
        String adobeID = AdobeUXAuthManager.getSharedAuthManager().getUserProfile().getAdobeID();
        if (!DCXModelController.getInstance().isInitialized()) {
            DCXModelController.getInstance().initalize(context, adobeID);
        }
        if (!DCXModelController.getInstance().isSyncInitialized()) {
            DCXModelController.getInstance().initializeSync();
        }
        DCXProjectManager.getInstance().getProjectListFromDCX();
        Metrics.sharedInstance().didAuthenticateUserWithAdobeID(adobeID);
        Metrics.sharedInstance().didRetrieveDeviceFreeSpaceBytes(AndroidMiscUtils.getFreeDiskspace());
    }

    @Override // com.adobe.creativesdk.foundation.auth.IAdobeAuthClientCredentials
    public String getClientID() {
        return CreativeCloudSource.CREATIVE_SDK_CLIP_CLIENT_ID;
    }

    @Override // com.adobe.creativesdk.foundation.auth.IAdobeAuthClientCredentials
    public String getClientSecret() {
        return CreativeCloudSource.CREATIVE_SDK_CLIP_CLIENT_SECRET;
    }

    @Override // com.adobe.creativesdk.foundation.auth.IAdobeAuthClientCredentials
    public String[] getAdditionalScopesList() {
        return null;
    }

    @Override // com.adobe.creativesdk.foundation.auth.IAdobeAuthClientCredentials
    public String getRedirectURI() {
        return null;
    }

    public static Context getContext() {
        return context;
    }

    private void setApplicationCredentials(Context context2) {
        AdobeUXAuthManagerRestricted.getSharedAuthManagerRestricted().setAdditionalAuthenticationParameters(null, DeviceInfoProvider.getUniqueDeviceID(new ContextWrapper(context2)), Build.MODEL, null, new String[]{"sao.hammersmith"});
        AdobeUXAuthManagerRestricted.setAccessGroupAccountType(AdobeCSDKAdobeIDAccountType.ADOBEID_ACCOUNT_TYPE_CC);
    }

    public boolean isFirstLogin() {
        return this.isFirstLogin;
    }

    public void setFirstLogin(boolean z) {
        this.isFirstLogin = z;
    }
}
