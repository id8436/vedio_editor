package com.adobe.utility.analytics;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.preference.PreferenceManager;
import android.util.Log;
import com.adobe.creativesdk.foundation.adobeinternal.analytics.AdobeAnalyticsManager;
import com.adobe.creativesdk.foundation.adobeinternal.analytics.AdobeAnalyticsMode;
import com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsGlobalData;
import com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsSDKReporter;
import com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsSession;
import com.adobe.creativesdk.foundation.internal.analytics.IAdobeAnalyticsSessionCallback;
import com.adobe.mobile.Analytics;
import com.adobe.mobile.Config;
import com.adobe.mobile.MobilePrivacyStatus;
import com.adobe.mobile.Target;
import com.adobe.mobile.TargetLocationRequest;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class TrackingUtility {
    public static final String ANALYTICSACTIONID_EMAIL_SENT = "Email Sent";
    public static final String ANALYTICSACTIONID_EMAIL_WINDOW_CLOSE = "Email Window Close";
    public static final String ANALYTICSACTIONID_EMAIL_WINDOW_OPEN = "Email Window Open";
    public static final String ANALYTICSACTIONID_NEWPROJECT = "New Project";
    public static final String ANALYTICSKEY_INAPP_WORKFLOW_TYPE = "InAppEmail-Workflow";
    public static final String EMAIL_SENT = "email-sent";
    public static final String EMAIL_WINDOW_CLOSE = "email-window-close";
    public static final String EMAIL_WINDOW_OPEN = "email-window-open";
    public static final String EVENT_ACTION = "adb.mobile.event.action";
    public static final String EVENT_AREA = "adb.mobile.event.area";
    public static final String EVENT_NAME = "adb.mobile.event.name";
    public static final String INAPP_MAIL_FEEDBACK = "Feedback";
    public static final String INAPP_MAIL_PHOTOSHOP = "Photoshop";
    public static final String OMNITURE_PERMISSION = "OmniturePermission";
    public static final String WORKFLOW_TYPE = "adb.mobile.event.type";
    private static TrackingUtility sharedSingleton = null;
    private static String trackingPrefix = "";
    private String nameSpace;
    private String productCategory;
    private String productClientID;
    private String productLocale;
    private String productVersion;
    private Context applicationContext = null;
    protected IAdobeAnalyticsSessionCallback _analyticsSessionDelegate = null;
    private boolean _AAEnabled = false;

    /* JADX INFO: loaded from: classes2.dex */
    public interface TargetRequestCallback {
        void onCall(String str, HashMap<String, Object> map);
    }

    private TrackingUtility() {
    }

    public static TrackingUtility getInstance() {
        if (sharedSingleton == null) {
            sharedSingleton = new TrackingUtility();
        }
        return sharedSingleton;
    }

    /* JADX INFO: loaded from: classes2.dex */
    public class SignInConstants {
        public static final String ACTIONSIGNINTYPE = "mobile.psmix.signInType";
        public static final String ANALYTICSACTIONID_SIGNIN = "Sign In";
        public static final String SIGNINTYPE_FIRSTTIME = "signInType:firstTime";
        public static final String SIGNINTYPE_WITHNEWACCOUNT = "signInType:withNewAccount";
        public static final String SIGNINTYPE_WITHOLDACCOUNT = "signInType:withOldAccount";

        public SignInConstants() {
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    public class TutorialsViewConstants {
        public static final String ANALYTICSACTIONID_VIEWTUTORIALPAGE = "View Tutorial Page";
        public static final String VIEWTUTORIALPAGE_PAGENO = "mobile.psmix.viewTutorial.pageNo";

        public TutorialsViewConstants() {
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    public class CreativeSDKImageTrackerConstants {
        public static final String ANALYTICSKEY_ACTIONINDICATOR = "mobile.psmix.stateInfo.fromCreativeSDKPSMix";
        public static final String ANALYTICSKEY_STATEINDICATOR = "mobile.psmix.actionInfo.fromCreativeSDKPSMix";

        public CreativeSDKImageTrackerConstants() {
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    public class PublishPSDConstants {
        public static final String ANALYTICS_SERVICE_CREATEPSD = "Service CreatePSD";
        public static final String ANALYTICS_SERVICE_RESULT_KEY = "mobile.psmix.cloudService.result";

        public PublishPSDConstants() {
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    public class MiscConstants {
        public static final String ANALYTICSACTIONID_RESETTOOLTIPS = "Reset Tooltips";

        public MiscConstants() {
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    public class SyncConstants {
        public static final String ANALYTICSACTIONID_CLOUDSYNC = "CC Sync";
        public static final String ANALYTICSKEY_SYNC_ACTION = "mobile.psmix.ccsync.actionName";
        public static final String ANALYTICSKEY_SYNC_ACTION_DELETE = "ccSyncActionType:delete";
        public static final String ANALYTICSKEY_SYNC_ACTION_PULL = "ccSyncActionType:pull";
        public static final String ANALYTICSKEY_SYNC_ACTION_PUSH = "ccSyncActionType:push";
        public static final String ANALYTICSKEY_SYNC_COMPOSITETYPE = "mobile.psmix.ccsync.composite";
        public static final String ANALYTICSKEY_SYNC_COMPOSITETYPE_EXISTING = "ccSyncCompositeType:existing";
        public static final String ANALYTICSKEY_SYNC_COMPOSITETYPE_NEW = "ccSyncCompositeType:new";

        public SyncConstants() {
        }
    }

    public void configure(Context context) {
        this.applicationContext = context;
        Config.setContext(this.applicationContext);
        boolean trackingValue = getTrackingValue();
        updateMobilePrivacyConfiguration(Boolean.valueOf(trackingValue));
        if (trackingValue) {
            startAnalyticsSession();
        }
    }

    public void setUserIdentifier(String str) {
        Config.setUserIdentifier(str);
    }

    private void setCommonTrackingData() {
        this.productCategory = "mobile";
        this.nameSpace = "psmixAndroid";
        this.productClientID = "OrionPS1";
        PackageManager packageManager = this.applicationContext.getPackageManager();
        String packageName = this.applicationContext.getPackageName();
        this.productVersion = "1.0";
        try {
            this.productVersion = packageManager.getPackageInfo(packageName, 0).versionName;
        } catch (PackageManager.NameNotFoundException e2) {
            e2.printStackTrace();
        }
        this.productLocale = Locale.getDefault().toString();
        if (getTrackingValue()) {
            startAnalyticsSession();
            this._AAEnabled = true;
        }
    }

    public void startAnalyticsSession() {
        if (this._analyticsSessionDelegate == null) {
            this._analyticsSessionDelegate = new IAdobeAnalyticsSessionCallback() { // from class: com.adobe.utility.analytics.TrackingUtility.1
                @Override // com.adobe.creativesdk.foundation.internal.analytics.IAdobeAnalyticsSessionCallback
                public void trackState(String str, Map<String, Object> map) {
                    Analytics.trackState(str, map);
                }

                @Override // com.adobe.creativesdk.foundation.internal.analytics.IAdobeAnalyticsSessionCallback
                public void trackAction(String str, Map<String, Object> map) {
                    Analytics.trackAction(str, map);
                }

                @Override // com.adobe.creativesdk.foundation.internal.analytics.IAdobeAnalyticsSessionCallback
                public void trackTimedActionStart(String str, Map<String, Object> map) {
                    Analytics.trackTimedActionStart(str, map);
                }

                @Override // com.adobe.creativesdk.foundation.internal.analytics.IAdobeAnalyticsSessionCallback
                public void trackTimedActionUpdate(String str, Map<String, Object> map) {
                    Analytics.trackTimedActionUpdate(str, map);
                }

                @Override // com.adobe.creativesdk.foundation.internal.analytics.IAdobeAnalyticsSessionCallback
                public void trackTimedActionEnd(String str, Map<String, Object> map) {
                }
            };
        }
        AdobeAnalyticsSession.getSharedInstance().registerDelegate(this._analyticsSessionDelegate, this.applicationContext);
        AdobeAnalyticsManager.getInstance().enableAnalyticsReporting(AdobeAnalyticsMode.ADOBE_ANALYTICS_MODE_PRODUCTION);
    }

    public void stopAnalyticsSession() {
        if (this._AAEnabled) {
            AdobeAnalyticsSession.getSharedInstance().unregisterDelegate(this.applicationContext);
            AdobeAnalyticsManager.getInstance().disableAnalyticsReporting();
        }
    }

    public void setTrackingValue(boolean z) {
        boolean trackingValue = getTrackingValue();
        SharedPreferences.Editor editorEdit = PreferenceManager.getDefaultSharedPreferences(this.applicationContext).edit();
        editorEdit.putBoolean(OMNITURE_PERMISSION, z);
        updateMobilePrivacyConfiguration(Boolean.valueOf(z));
        if (trackingValue != z) {
            if (this._AAEnabled) {
                stopAnalyticsSession();
                this._AAEnabled = false;
            } else {
                startAnalyticsSession();
                this._AAEnabled = true;
            }
        }
        editorEdit.apply();
    }

    public boolean getTrackingValue() {
        return PreferenceManager.getDefaultSharedPreferences(this.applicationContext).getBoolean(OMNITURE_PERMISSION, true);
    }

    public void setDebugLogging(Boolean bool) {
        Config.setDebugLogging(bool);
    }

    public void updateMobilePrivacyConfiguration(Boolean bool) {
        Config.setPrivacyStatus(bool.booleanValue() ? MobilePrivacyStatus.MOBILE_PRIVACY_STATUS_OPT_IN : MobilePrivacyStatus.MOBILE_PRIVACY_STATUS_OPT_OUT);
    }

    public void startTrackingLifecycleData(Activity activity) {
        Config.collectLifecycleData(activity);
    }

    public void startTrackingLifecycleData() {
        Config.collectLifecycleData();
    }

    public void stopTrackingLifecycleData() {
        Config.pauseCollectingLifecycleData();
    }

    public void trackOrionAction(String str, Map<String, Object> map) {
        String str2 = !trackingPrefix.isEmpty() ? trackingPrefix + ":" + str : str;
        HashMap map2 = new HashMap();
        if (map != null) {
            map2.putAll(map);
        }
        map2.put(AdobeAnalyticsSDKReporter.AdobeAnalyticsKeyADB_EventName, str);
        map2.put("adb.page.pageInfo.productCategory", this.productCategory);
        map2.put("adb.page.pageInfo.namespace", this.nameSpace);
        map2.put("adb.page.pageInfo.productVersion", this.productVersion);
        map2.put(AdobeAnalyticsGlobalData.AdobeAnalyticsKeyPageInfoLanguage, this.productLocale);
        map2.put(AdobeAnalyticsGlobalData.AdobeAnalyticsKeyADB_ClientId, this.productClientID);
        Analytics.trackAction(str2, map2);
    }

    public void trackOrionState(String str, Map<String, Object> map) {
        HashMap map2 = new HashMap();
        if (map != null) {
            map2.putAll(map);
        }
        map2.put("adb.page.pageInfo.productCategory", this.productCategory);
        map2.put("adb.page.pageInfo.namespace", this.nameSpace);
        map2.put("adb.page.pageInfo.productVersion", this.productVersion);
        map2.put(AdobeAnalyticsGlobalData.AdobeAnalyticsKeyPageInfoLanguage, this.productLocale);
        map2.put(AdobeAnalyticsGlobalData.AdobeAnalyticsKeyADB_ClientId, this.productClientID);
        map2.put("adb.page.pageInfo.pageName", str);
        map2.put("adb.page.pageInfo.category.primaryCategory", str);
        Analytics.trackState(str, map2);
    }

    public void trackState(String str, Map<String, Object> map) {
        Analytics.trackState(str, map);
    }

    public void trackAction(String str, Map<String, Object> map) {
        Analytics.trackAction(str, map);
    }

    public void trackTimedActionStart(String str, Map<String, Object> map) {
        Analytics.trackTimedActionStart(str, map);
    }

    public void trackTimedActionUpdate(String str, Map<String, Object> map) {
        Analytics.trackTimedActionUpdate(str, map);
    }

    public void trackTimedActionEnd(String str, Analytics.TimedActionBlock<Boolean> timedActionBlock) {
        Analytics.trackTimedActionEnd(str, timedActionBlock);
    }

    public void makeTargetRequest(String str, String str2, final TargetRequestCallback targetRequestCallback) {
        String string = Locale.getDefault().toString();
        final HashMap map = new HashMap();
        map.put(TargetLocationRequest.TARGET_PARAMETER_MBOX_HOST, "premiereclipdev");
        map.put("clipUserLocale", string);
        Log.d("ABTrackingUtil", "productLocale " + string);
        Target.loadRequest(Target.createRequest(str, str2, map), new Target.TargetCallback<String>() { // from class: com.adobe.utility.analytics.TrackingUtility.2
            @Override // com.adobe.mobile.Target.TargetCallback
            public void call(String str3) {
                targetRequestCallback.onCall(str3, map);
            }
        });
    }
}
