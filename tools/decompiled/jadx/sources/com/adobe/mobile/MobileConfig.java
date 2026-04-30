package com.adobe.mobile;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.adobe.mobile.RemoteDownload;
import com.adobe.mobile.StaticMethods;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
final class MobileConfig {
    private static final String CONFIG_FILE_NAME = "ADBMobileConfig.json";
    private static final String CONFIG_PRIVACY_OPTED_IN = "optedin";
    private static final String CONFIG_PRIVACY_OPTED_OUT = "optedout";
    private static final String CONFIG_PRIVACY_UNKNOWN = "optunknown";
    private static final boolean DEFAULT_AAM_ANALYTICS_FORWARD_ENABLED = false;
    private static final boolean DEFAULT_BACKDATE_SESSION_INFO = true;
    private static final int DEFAULT_BATCH_LIMIT = 0;
    private static final String DEFAULT_CHARSET = "UTF-8";
    private static final int DEFAULT_LIFECYCLE_TIMEOUT = 300;
    private static final int DEFAULT_LOCATION_TIMEOUT = 2;
    private static final boolean DEFAULT_OFFLINE_TRACKING = false;
    private static final int DEFAULT_REFERRER_TIMEOUT = 0;
    private static final boolean DEFAULT_SSL = false;
    private static final String JSON_CONFIG_AAM_ANALYTICS_FORWARD_KEY = "analyticsForwardingEnabled";
    private static final String JSON_CONFIG_AAM_KEY = "audienceManager";
    private static final String JSON_CONFIG_ACQUISITION_KEY = "acquisition";
    private static final String JSON_CONFIG_ANALYTICS_KEY = "analytics";
    private static final String JSON_CONFIG_APP_IDENTIFIER_KEY = "appid";
    private static final String JSON_CONFIG_BACKDATE_SESSION_INFO_KEY = "backdateSessionInfo";
    private static final String JSON_CONFIG_BATCH_LIMIT_KEY = "batchLimit";
    private static final String JSON_CONFIG_CHAR_SET_KEY = "charset";
    private static final String JSON_CONFIG_CLIENT_CODE_KEY = "clientCode";
    private static final String JSON_CONFIG_LIFECYCLE_TIMEOUT_KEY = "lifecycleTimeout";
    private static final String JSON_CONFIG_MARKETINGCLOUD_KEY = "marketingCloud";
    private static final String JSON_CONFIG_MESSAGES_KEY = "messages";
    private static final String JSON_CONFIG_MESSAGES_URL_KEY = "messages";
    private static final String JSON_CONFIG_OFFLINE_TRACKING_KEY = "offlineEnabled";
    private static final String JSON_CONFIG_ORGID_KEY = "org";
    private static final String JSON_CONFIG_POINTS_OF_INTEREST_KEY = "poi";
    private static final String JSON_CONFIG_POI_REMOTES_KEY = "analytics.poi";
    private static final String JSON_CONFIG_PRIVACY_DEFAULT_KEY = "privacyDefault";
    private static final String JSON_CONFIG_REFERRER_TIMEOUT_KEY = "referrerTimeout";
    private static final String JSON_CONFIG_REMOTES_KEY = "remotes";
    private static final String JSON_CONFIG_REPORT_SUITES_KEY = "rsids";
    private static final String JSON_CONFIG_SERVER_KEY = "server";
    private static final String JSON_CONFIG_SSL_KEY = "ssl";
    private static final String JSON_CONFIG_TARGET_KEY = "target";
    private static final String JSON_CONFIG_TIMEOUT_KEY = "timeout";
    private boolean _aamAnalyticsForwardingEnabled;
    private String _aamServer;
    private String _acquisitionAppIdentifier;
    private String _acquisitionServer;
    private boolean _backdateSessionInfoEnabled;
    private int _batchLimit;
    private String _characterSet;
    private String _clientCode;
    private int _defaultLocationTimeout;
    private int _lifecycleTimeout;
    private String _marketingCloudOrganizationId;
    private String _messagesURL;
    private boolean _offlineTrackingEnabled;
    private String _pointsOfInterestURL;
    private MobilePrivacyStatus _privacyStatus;
    private int _referrerTimeout;
    private String _reportSuiteIds;
    private boolean _ssl;
    private String _trackingServer;
    private static final MobilePrivacyStatus DEFAULT_PRIVACY_STATUS = MobilePrivacyStatus.MOBILE_PRIVACY_STATUS_OPT_IN;
    private static MobileConfig _instance = null;
    private static final Object _instanceMutex = new Object();
    private static final Object _usingAnalyticsMutex = new Object();
    private static final Object _usingGooglePlayServicesMutex = new Object();
    private static final Object _usingAudienceManagerMutex = new Object();
    private static final Object _usingTargetMutex = new Object();
    private static InputStream _userDefinedInputStream = null;
    private static final Object _userDefinedInputStreamMutex = new Object();
    private boolean _networkConnectivity = false;
    private List<List<Object>> _pointsOfInterest = null;
    private ArrayList<Message> _inAppMessages = null;
    private ArrayList<Message> _callbackTemplates = null;
    private Boolean _usingAnalytics = null;
    private Boolean _usingGooglePlayServices = null;
    private Boolean _usingAudienceManager = null;
    private Boolean _usingTarget = null;

    protected static MobileConfig getInstance() {
        MobileConfig mobileConfig;
        synchronized (_instanceMutex) {
            if (_instance == null) {
                _instance = new MobileConfig();
            }
            mobileConfig = _instance;
        }
        return mobileConfig;
    }

    private MobileConfig() throws Throwable {
        JSONObject jSONObject;
        JSONObject jSONObject2;
        JSONObject jSONObject3;
        JSONObject jSONObject4;
        JSONObject jSONObject5;
        JSONArray jSONArray;
        JSONObject jSONObject6;
        String string;
        this._reportSuiteIds = null;
        this._trackingServer = null;
        this._characterSet = "UTF-8";
        this._ssl = false;
        this._offlineTrackingEnabled = false;
        this._backdateSessionInfoEnabled = true;
        this._lifecycleTimeout = 300;
        this._referrerTimeout = 0;
        this._batchLimit = 0;
        this._privacyStatus = DEFAULT_PRIVACY_STATUS;
        this._pointsOfInterestURL = null;
        this._clientCode = null;
        this._defaultLocationTimeout = 2;
        this._aamServer = null;
        this._aamAnalyticsForwardingEnabled = false;
        this._acquisitionServer = null;
        this._acquisitionAppIdentifier = null;
        this._messagesURL = null;
        this._marketingCloudOrganizationId = null;
        startNotifier();
        JSONObject jSONObjectLoadBundleConfig = loadBundleConfig();
        if (jSONObjectLoadBundleConfig != null) {
            try {
                jSONObject = jSONObjectLoadBundleConfig.getJSONObject("analytics");
            } catch (JSONException e2) {
                StaticMethods.logDebugFormat("Analytics - Not configured.", new Object[0]);
                jSONObject = null;
            }
            if (jSONObject != null) {
                try {
                    this._trackingServer = jSONObject.getString(JSON_CONFIG_SERVER_KEY);
                    this._reportSuiteIds = jSONObject.getString(JSON_CONFIG_REPORT_SUITES_KEY);
                } catch (JSONException e3) {
                    this._trackingServer = null;
                    this._reportSuiteIds = null;
                    StaticMethods.logDebugFormat("Analytics - Not Configured.", new Object[0]);
                }
                try {
                    this._characterSet = jSONObject.getString("charset");
                } catch (JSONException e4) {
                    this._characterSet = "UTF-8";
                }
                try {
                    this._ssl = jSONObject.getBoolean(JSON_CONFIG_SSL_KEY);
                } catch (JSONException e5) {
                    this._ssl = false;
                }
                try {
                    this._offlineTrackingEnabled = jSONObject.getBoolean(JSON_CONFIG_OFFLINE_TRACKING_KEY);
                } catch (JSONException e6) {
                    this._offlineTrackingEnabled = false;
                }
                try {
                    this._backdateSessionInfoEnabled = jSONObject.getBoolean(JSON_CONFIG_BACKDATE_SESSION_INFO_KEY);
                } catch (JSONException e7) {
                    this._backdateSessionInfoEnabled = true;
                }
                try {
                    this._lifecycleTimeout = jSONObject.getInt(JSON_CONFIG_LIFECYCLE_TIMEOUT_KEY);
                } catch (JSONException e8) {
                    this._lifecycleTimeout = 300;
                }
                try {
                    this._referrerTimeout = jSONObject.getInt(JSON_CONFIG_REFERRER_TIMEOUT_KEY);
                } catch (JSONException e9) {
                    this._referrerTimeout = 0;
                }
                try {
                    this._batchLimit = jSONObject.getInt(JSON_CONFIG_BATCH_LIMIT_KEY);
                } catch (JSONException e10) {
                    this._batchLimit = 0;
                }
                try {
                    if (StaticMethods.getSharedPreferences().contains("PrivacyStatus")) {
                        this._privacyStatus = MobilePrivacyStatus.values()[StaticMethods.getSharedPreferences().getInt("PrivacyStatus", 0)];
                    } else {
                        try {
                            string = jSONObject.getString(JSON_CONFIG_PRIVACY_DEFAULT_KEY);
                        } catch (JSONException e11) {
                            string = null;
                        }
                        this._privacyStatus = string != null ? privacyStatusFromString(string) : DEFAULT_PRIVACY_STATUS;
                    }
                    try {
                        loadPoiFromJsonArray(jSONObject.getJSONArray(JSON_CONFIG_POINTS_OF_INTEREST_KEY));
                    } catch (JSONException e12) {
                        StaticMethods.logErrorFormat("Analytics - Malformed POI List(%s)", e12.getLocalizedMessage());
                    }
                } catch (StaticMethods.NullContextException e13) {
                    StaticMethods.logErrorFormat("Config - Error pulling privacy from shared preferences. (%s)", e13.getMessage());
                    return;
                }
            }
            try {
                jSONObject2 = jSONObjectLoadBundleConfig.getJSONObject(JSON_CONFIG_TARGET_KEY);
            } catch (JSONException e14) {
                StaticMethods.logDebugFormat("Target - Not Configured.", new Object[0]);
                jSONObject2 = null;
            }
            if (jSONObject2 != null) {
                try {
                    this._clientCode = jSONObject2.getString(JSON_CONFIG_CLIENT_CODE_KEY);
                } catch (JSONException e15) {
                    this._clientCode = null;
                    StaticMethods.logDebugFormat("Target - Not Configured.", new Object[0]);
                }
                try {
                    this._defaultLocationTimeout = jSONObject2.getInt(JSON_CONFIG_TIMEOUT_KEY);
                } catch (JSONException e16) {
                    this._defaultLocationTimeout = 2;
                }
            }
            try {
                jSONObject3 = jSONObjectLoadBundleConfig.getJSONObject(JSON_CONFIG_AAM_KEY);
            } catch (JSONException e17) {
                StaticMethods.logDebugFormat("Audience Manager - Not Configured.", new Object[0]);
                jSONObject3 = null;
            }
            if (jSONObject3 != null) {
                try {
                    this._aamServer = jSONObject3.getString(JSON_CONFIG_SERVER_KEY);
                } catch (JSONException e18) {
                    this._aamServer = null;
                    StaticMethods.logDebugFormat("Audience Manager - Not Configured.", new Object[0]);
                }
                try {
                    this._aamAnalyticsForwardingEnabled = jSONObject3.getBoolean(JSON_CONFIG_AAM_ANALYTICS_FORWARD_KEY);
                } catch (JSONException e19) {
                    this._aamAnalyticsForwardingEnabled = false;
                }
                if (this._aamAnalyticsForwardingEnabled) {
                    StaticMethods.logDebugFormat("Audience Manager - Analytics Server-Side Forwarding Is Enabled.", new Object[0]);
                }
            }
            try {
                jSONObject4 = jSONObjectLoadBundleConfig.getJSONObject(JSON_CONFIG_ACQUISITION_KEY);
            } catch (JSONException e20) {
                StaticMethods.logDebugFormat("Acquisition - Not Configured.", new Object[0]);
                jSONObject4 = null;
            }
            if (jSONObject4 != null) {
                try {
                    this._acquisitionAppIdentifier = jSONObject4.getString(JSON_CONFIG_APP_IDENTIFIER_KEY);
                    this._acquisitionServer = jSONObject4.getString(JSON_CONFIG_SERVER_KEY);
                } catch (JSONException e21) {
                    this._acquisitionAppIdentifier = null;
                    this._acquisitionServer = null;
                    StaticMethods.logDebugFormat("Acquisition - Not configured correctly (missing server or app identifier).", new Object[0]);
                }
            }
            try {
                jSONObject5 = jSONObjectLoadBundleConfig.getJSONObject(JSON_CONFIG_REMOTES_KEY);
            } catch (JSONException e22) {
                StaticMethods.logDebugFormat("Remotes - Not Configured.", new Object[0]);
                jSONObject5 = null;
            }
            if (jSONObject5 != null) {
                try {
                    this._messagesURL = jSONObject5.getString("messages");
                } catch (JSONException e23) {
                    StaticMethods.logDebugFormat("Config - No in-app messages remote url loaded (%s)", e23.getLocalizedMessage());
                }
                try {
                    this._pointsOfInterestURL = jSONObject5.getString(JSON_CONFIG_POI_REMOTES_KEY);
                } catch (JSONException e24) {
                    StaticMethods.logDebugFormat("Config - No points of interest remote url loaded (%s)", e24.getLocalizedMessage());
                }
            }
            try {
                jSONArray = jSONObjectLoadBundleConfig.getJSONArray("messages");
            } catch (JSONException e25) {
                StaticMethods.logDebugFormat("Messages - Not configured locally.", new Object[0]);
                jSONArray = null;
            }
            if (jSONArray != null && jSONArray.length() > 0) {
                loadMessagesFromJsonArray(jSONArray);
            }
            try {
                jSONObject6 = jSONObjectLoadBundleConfig.getJSONObject(JSON_CONFIG_MARKETINGCLOUD_KEY);
            } catch (JSONException e26) {
                StaticMethods.logDebugFormat("Marketing Cloud - Not configured locally.", new Object[0]);
                jSONObject6 = null;
            }
            if (jSONObject6 != null) {
                try {
                    this._marketingCloudOrganizationId = jSONObject6.getString(JSON_CONFIG_ORGID_KEY);
                } catch (JSONException e27) {
                    this._marketingCloudOrganizationId = null;
                    StaticMethods.logDebugFormat("Visitor - ID Service Not Configured.", new Object[0]);
                }
            }
            loadCachedRemotes();
            updateBlacklist();
        }
    }

    protected boolean mobileUsingAnalytics() {
        boolean zBooleanValue;
        boolean z = false;
        synchronized (_usingAnalyticsMutex) {
            if (this._usingAnalytics == null) {
                if (getReportSuiteIds() != null && getReportSuiteIds().length() > 0 && getTrackingServer() != null && getTrackingServer().length() > 0) {
                    z = true;
                }
                this._usingAnalytics = Boolean.valueOf(z);
                if (!this._usingAnalytics.booleanValue()) {
                    StaticMethods.logDebugFormat("Analytics - Your config file is not set up to use Analytics(missing report suite id(s) or tracking server information)", new Object[0]);
                }
            }
            zBooleanValue = this._usingAnalytics.booleanValue();
        }
        return zBooleanValue;
    }

    protected boolean mobileUsingGooglePlayServices() {
        boolean zBooleanValue;
        synchronized (_usingGooglePlayServicesMutex) {
            if (this._usingGooglePlayServices == null) {
                this._usingGooglePlayServices = Boolean.valueOf(WearableFunctionBridge.isGooglePlayServicesEnabled());
            }
            zBooleanValue = this._usingGooglePlayServices.booleanValue();
        }
        return zBooleanValue;
    }

    protected boolean mobileUsingAudienceManager() {
        boolean zBooleanValue = false;
        if (!StaticMethods.isWearableApp()) {
            synchronized (_usingAudienceManagerMutex) {
                if (this._usingAudienceManager == null) {
                    if (getAamServer() != null && getAamServer().length() > 0) {
                        zBooleanValue = true;
                    }
                    this._usingAudienceManager = Boolean.valueOf(zBooleanValue);
                    if (!this._usingAudienceManager.booleanValue()) {
                        StaticMethods.logDebugFormat("Audience Manager - Your config file is not set up to use Audience Manager(missing audience manager server information)", new Object[0]);
                    }
                }
                zBooleanValue = this._usingAudienceManager.booleanValue();
            }
        }
        return zBooleanValue;
    }

    protected boolean mobileUsingTarget() {
        boolean zBooleanValue = false;
        if (!StaticMethods.isWearableApp()) {
            synchronized (_usingTargetMutex) {
                if (this._usingTarget == null) {
                    if (getClientCode() != null && getClientCode().length() > 0) {
                        zBooleanValue = true;
                    }
                    this._usingTarget = Boolean.valueOf(zBooleanValue);
                    if (!this._usingTarget.booleanValue()) {
                        StaticMethods.logDebugFormat("TargetWorker - Your config file is not set up to use Target(missing client code information)", new Object[0]);
                    }
                }
                zBooleanValue = this._usingTarget.booleanValue();
            }
        }
        return zBooleanValue;
    }

    protected boolean mobileReferrerConfigured() {
        return this._acquisitionServer != null && this._acquisitionAppIdentifier != null && this._acquisitionServer.length() > 0 && this._acquisitionAppIdentifier.length() > 0;
    }

    protected String getReportSuiteIds() {
        return this._reportSuiteIds;
    }

    protected String getTrackingServer() {
        return this._trackingServer;
    }

    protected String getCharacterSet() {
        return this._characterSet;
    }

    protected boolean getSSL() {
        return this._ssl;
    }

    protected boolean getOfflineTrackingEnabled() {
        return this._offlineTrackingEnabled;
    }

    protected boolean getBackdateSessionInfoEnabled() {
        return this._backdateSessionInfoEnabled;
    }

    protected int getLifecycleTimeout() {
        return this._lifecycleTimeout;
    }

    protected int getBatchLimit() {
        return this._batchLimit;
    }

    protected void setPrivacyStatus(MobilePrivacyStatus mobilePrivacyStatus) {
        if (mobilePrivacyStatus != null) {
            if (mobilePrivacyStatus == MobilePrivacyStatus.MOBILE_PRIVACY_STATUS_UNKNOWN && !this._offlineTrackingEnabled) {
                StaticMethods.logWarningFormat("Analytics - Cannot set privacy status to unknown when offline tracking is disabled", new Object[0]);
                return;
            }
            if (mobilePrivacyStatus == MobilePrivacyStatus.MOBILE_PRIVACY_STATUS_OPT_IN) {
                StaticMethods.getAnalyticsExecutor().execute(new Runnable() { // from class: com.adobe.mobile.MobileConfig.1
                    @Override // java.lang.Runnable
                    public void run() {
                        StaticMethods.logDebugFormat("Analytics - Privacy status set to opt in, attempting to send all hits in queue.", new Object[0]);
                        AnalyticsWorker.sharedInstance().kick(false);
                    }
                });
                StaticMethods.getThirdPartyCallbacksExecutor().execute(new Runnable() { // from class: com.adobe.mobile.MobileConfig.2
                    @Override // java.lang.Runnable
                    public void run() {
                        StaticMethods.logDebugFormat("Data Callback - Privacy status set to opt in, attempting to send all requests in queue", new Object[0]);
                        ThirdPartyQueue.sharedInstance().kick(false);
                    }
                });
            }
            if (mobilePrivacyStatus == MobilePrivacyStatus.MOBILE_PRIVACY_STATUS_OPT_OUT) {
                StaticMethods.getAnalyticsExecutor().execute(new Runnable() { // from class: com.adobe.mobile.MobileConfig.3
                    @Override // java.lang.Runnable
                    public void run() {
                        StaticMethods.logDebugFormat("Analytics - Privacy status set to opt out, attempting to clear Analytics queue of all hits.", new Object[0]);
                        AnalyticsWorker.sharedInstance().clearTrackingQueue();
                    }
                });
                StaticMethods.getThirdPartyCallbacksExecutor().execute(new Runnable() { // from class: com.adobe.mobile.MobileConfig.4
                    @Override // java.lang.Runnable
                    public void run() {
                        StaticMethods.logDebugFormat("Data Callback - Privacy status set to opt out, attempting to clear queue of all requests", new Object[0]);
                        ThirdPartyQueue.sharedInstance().clearTrackingQueue();
                    }
                });
                StaticMethods.getAudienceExecutor().execute(new Runnable() { // from class: com.adobe.mobile.MobileConfig.5
                    @Override // java.lang.Runnable
                    public void run() {
                        StaticMethods.logDebugFormat("Audience Manager - Privacy status set to opt out, clearing Audience Manager information.", new Object[0]);
                        AudienceManagerWorker.Reset();
                    }
                });
            }
            this._privacyStatus = mobilePrivacyStatus;
            WearableFunctionBridge.syncPrivacyStatusToWearable(mobilePrivacyStatus.getValue());
            try {
                SharedPreferences.Editor sharedPreferencesEditor = StaticMethods.getSharedPreferencesEditor();
                sharedPreferencesEditor.putInt("PrivacyStatus", mobilePrivacyStatus.getValue());
                sharedPreferencesEditor.commit();
            } catch (StaticMethods.NullContextException e2) {
                StaticMethods.logErrorFormat("Config - Error persisting privacy status (%s).", e2.getMessage());
            }
        }
    }

    protected MobilePrivacyStatus getPrivacyStatus() {
        return this._privacyStatus;
    }

    protected List<List<Object>> getPointsOfInterest() {
        return this._pointsOfInterest;
    }

    protected int getReferrerTimeout() {
        return this._referrerTimeout * 1000;
    }

    protected int getAnalyticsResponseType() {
        return this._aamAnalyticsForwardingEnabled ? 10 : 0;
    }

    protected String getClientCode() {
        return this._clientCode;
    }

    protected int getDefaultLocationTimeout() {
        return this._defaultLocationTimeout;
    }

    protected String getAamServer() {
        return this._aamServer;
    }

    protected boolean getAamAnalyticsForwardingEnabled() {
        return this._aamAnalyticsForwardingEnabled;
    }

    protected String getAcquisitionAppId() {
        return this._acquisitionAppIdentifier;
    }

    protected String getAcquisitionServer() {
        return this._acquisitionServer;
    }

    protected void downloadRemoteConfigs() {
        StaticMethods.getMessagesExecutor().execute(new Runnable() { // from class: com.adobe.mobile.MobileConfig.6
            @Override // java.lang.Runnable
            public void run() {
                if (MobileConfig.this._messagesURL == null || MobileConfig.this._messagesURL.length() <= 0) {
                    MobileConfig.this.loadMessageImages();
                } else {
                    RemoteDownload.remoteDownloadSync(MobileConfig.this._messagesURL, new RemoteDownload.RemoteDownloadBlock() { // from class: com.adobe.mobile.MobileConfig.6.1
                        @Override // com.adobe.mobile.RemoteDownload.RemoteDownloadBlock
                        public void call(boolean z, File file) throws Throwable {
                            MobileConfig.this.updateMessagesData(file);
                            MobileConfig.this.loadMessageImages();
                            MobileConfig.this.updateBlacklist();
                        }
                    });
                }
            }
        });
        StaticMethods.getThirdPartyCallbacksExecutor().execute(new Runnable() { // from class: com.adobe.mobile.MobileConfig.7
            @Override // java.lang.Runnable
            public void run() {
                FutureTask futureTask = new FutureTask(new Callable<Void>() { // from class: com.adobe.mobile.MobileConfig.7.1
                    @Override // java.util.concurrent.Callable
                    public Void call() throws Exception {
                        return null;
                    }
                });
                StaticMethods.getMessagesExecutor().execute(futureTask);
                try {
                    futureTask.get();
                } catch (Exception e2) {
                    StaticMethods.logErrorFormat("Data Callback - Error waiting for callbacks being loaded (%s)", e2.getMessage());
                }
            }
        });
        if (this._pointsOfInterestURL != null && this._pointsOfInterestURL.length() > 0) {
            RemoteDownload.remoteDownloadAsync(this._pointsOfInterestURL, new RemoteDownload.RemoteDownloadBlock() { // from class: com.adobe.mobile.MobileConfig.8
                @Override // com.adobe.mobile.RemoteDownload.RemoteDownloadBlock
                public void call(boolean z, final File file) {
                    StaticMethods.getAnalyticsExecutor().execute(new Runnable() { // from class: com.adobe.mobile.MobileConfig.8.1
                        @Override // java.lang.Runnable
                        public void run() throws Throwable {
                            if (file != null) {
                                StaticMethods.logDebugFormat("Config - Using remote definition for points of interest", new Object[0]);
                                MobileConfig.this.updatePOIData(file);
                            }
                        }
                    });
                }
            });
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.io.FileInputStream] */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v14 */
    /* JADX WARN: Type inference failed for: r1v15 */
    /* JADX WARN: Type inference failed for: r1v16 */
    /* JADX WARN: Type inference failed for: r1v17 */
    /* JADX WARN: Type inference failed for: r1v18 */
    /* JADX WARN: Type inference failed for: r1v19 */
    /* JADX WARN: Type inference failed for: r1v20 */
    /* JADX WARN: Type inference failed for: r1v21 */
    /* JADX WARN: Type inference failed for: r1v22 */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r7v0, types: [com.adobe.mobile.MobileConfig] */
    protected void updateMessagesData(File file) throws Throwable {
        ?? r1;
        FileInputStream fileInputStream;
        FileInputStream fileInputStream2 = null;
        try {
            if (file == null) {
                if (0 != 0) {
                    try {
                        fileInputStream2.close();
                        return;
                    } catch (IOException e2) {
                        StaticMethods.logErrorFormat("Messages - Unable to close file stream (%s)", e2.getLocalizedMessage());
                        return;
                    }
                }
                return;
            }
            try {
                fileInputStream = new FileInputStream(file);
                try {
                    loadMessagesDataFromRemote(loadConfigFromStream(fileInputStream));
                    r1 = fileInputStream;
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                            r1 = fileInputStream;
                        } catch (IOException e3) {
                            StaticMethods.logErrorFormat("Messages - Unable to close file stream (%s)", e3.getLocalizedMessage());
                            r1 = "Messages - Unable to close file stream (%s)";
                        }
                    }
                } catch (IOException e4) {
                    e = e4;
                    StaticMethods.logWarningFormat("Messages - Unable to open messages config file, falling back to bundled messages (%s)", e.getLocalizedMessage());
                    r1 = fileInputStream;
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                            r1 = fileInputStream;
                        } catch (IOException e5) {
                            StaticMethods.logErrorFormat("Messages - Unable to close file stream (%s)", e5.getLocalizedMessage());
                            r1 = "Messages - Unable to close file stream (%s)";
                        }
                    }
                } catch (JSONException e6) {
                    e = e6;
                    StaticMethods.logErrorFormat("Messages - Unable to read messages remote config file, falling back to bundled messages (%s)", e.getLocalizedMessage());
                    r1 = fileInputStream;
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                            r1 = fileInputStream;
                        } catch (IOException e7) {
                            StaticMethods.logErrorFormat("Messages - Unable to close file stream (%s)", e7.getLocalizedMessage());
                            r1 = "Messages - Unable to close file stream (%s)";
                        }
                    }
                }
            } catch (IOException e8) {
                e = e8;
                fileInputStream = null;
            } catch (JSONException e9) {
                e = e9;
                fileInputStream = null;
            } catch (Throwable th) {
                th = th;
                r1 = 0;
            }
            return;
        } catch (Throwable th2) {
            th = th2;
        }
        if (r1 != 0) {
            try {
                r1.close();
            } catch (IOException e10) {
                StaticMethods.logErrorFormat("Messages - Unable to close file stream (%s)", e10.getLocalizedMessage());
            }
        }
        throw th;
    }

    protected String getPointsOfInterestURL() {
        return this._pointsOfInterestURL;
    }

    protected void updatePOIData(File file) throws Throwable {
        FileInputStream fileInputStream;
        FileInputStream fileInputStream2 = null;
        try {
            if (file == null) {
                if (0 != 0) {
                    try {
                        fileInputStream2.close();
                        return;
                    } catch (IOException e2) {
                        StaticMethods.logErrorFormat("Config - Unable to close file stream (%s)", e2.getLocalizedMessage());
                        return;
                    }
                }
                return;
            }
            try {
                fileInputStream = new FileInputStream(file);
                try {
                    JSONObject jSONObjectLoadConfigFromStream = loadConfigFromStream(fileInputStream);
                    if (jSONObjectLoadConfigFromStream != null) {
                        loadPoiFromJsonArray(jSONObjectLoadConfigFromStream.getJSONObject("analytics").getJSONArray(JSON_CONFIG_POINTS_OF_INTEREST_KEY));
                    }
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (IOException e3) {
                            StaticMethods.logErrorFormat("Config - Unable to close file stream (%s)", e3.getLocalizedMessage());
                        }
                    }
                } catch (IOException e4) {
                    e = e4;
                    StaticMethods.logWarningFormat("Config - Unable to open points of interest config file, falling back to bundled poi (%s)", e.getLocalizedMessage());
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (IOException e5) {
                            StaticMethods.logErrorFormat("Config - Unable to close file stream (%s)", e5.getLocalizedMessage());
                        }
                    }
                } catch (JSONException e6) {
                    e = e6;
                    StaticMethods.logErrorFormat("Config - Unable to read points of interest remote config file, falling back to bundled poi (%s)", e.getLocalizedMessage());
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (IOException e7) {
                            StaticMethods.logErrorFormat("Config - Unable to close file stream (%s)", e7.getLocalizedMessage());
                        }
                    }
                }
            } catch (IOException e8) {
                e = e8;
                fileInputStream = null;
            } catch (JSONException e9) {
                e = e9;
                fileInputStream = null;
            } catch (Throwable th) {
                th = th;
                if (0 != 0) {
                    try {
                        fileInputStream2.close();
                    } catch (IOException e10) {
                        StaticMethods.logErrorFormat("Config - Unable to close file stream (%s)", e10.getLocalizedMessage());
                    }
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    protected ArrayList<Message> getInAppMessages() {
        return this._inAppMessages;
    }

    protected String getInAppMessageURL() {
        return this._messagesURL;
    }

    protected ArrayList<Message> getCallbackTemplates() {
        return this._callbackTemplates;
    }

    protected String getMarketingCloudOrganizationId() {
        return this._marketingCloudOrganizationId;
    }

    protected boolean getVisitorIdServiceEnabled() {
        return this._marketingCloudOrganizationId != null && this._marketingCloudOrganizationId.length() > 0;
    }

    private JSONObject loadBundleConfig() {
        InputStream inputStream;
        JSONObject jSONObjectLoadConfigFromStream = null;
        synchronized (_userDefinedInputStreamMutex) {
            inputStream = _userDefinedInputStream;
        }
        if (inputStream != null) {
            try {
                StaticMethods.logDebugFormat("Config - Attempting to load config file from override stream", new Object[0]);
                jSONObjectLoadConfigFromStream = loadConfigFromStream(inputStream);
            } catch (IOException e2) {
                StaticMethods.logDebugFormat("Config - Error loading user defined config (%s)", e2.getMessage());
            } catch (JSONException e3) {
                StaticMethods.logDebugFormat("Config - Error parsing user defined config (%s)", e3.getMessage());
            }
        }
        if (jSONObjectLoadConfigFromStream == null) {
            if (inputStream != null) {
                StaticMethods.logDebugFormat("Config - Failed attempting to load custom config, will fall back to standard config location.", new Object[0]);
            }
            StaticMethods.logDebugFormat("Config - Attempting to load config file from default location", new Object[0]);
            JSONObject jSONObjectLoadConfigFile = loadConfigFile(CONFIG_FILE_NAME);
            if (jSONObjectLoadConfigFile == null) {
                StaticMethods.logDebugFormat("Config - Could not find config file at expected location.  Attempting to load from www folder", new Object[0]);
                return loadConfigFile("www" + File.separator + CONFIG_FILE_NAME);
            }
            return jSONObjectLoadConfigFile;
        }
        return jSONObjectLoadConfigFromStream;
    }

    private JSONObject loadConfigFile(String str) {
        AssetManager assets;
        try {
            Resources resources = StaticMethods.getSharedContext().getResources();
            if (resources == null || (assets = resources.getAssets()) == null) {
                return null;
            }
            return loadConfigFromStream(assets.open(str));
        } catch (StaticMethods.NullContextException e2) {
            StaticMethods.logErrorFormat("Config - Null context when attempting to read config file (%s)", e2.getMessage());
            return null;
        } catch (IOException e3) {
            StaticMethods.logErrorFormat("Config - Exception loading config file (%s)", e3.getMessage());
            return null;
        } catch (JSONException e4) {
            StaticMethods.logErrorFormat("Config - Exception parsing config file (%s)", e4.getMessage());
            return null;
        }
    }

    protected void loadCachedRemotes() throws Throwable {
        if (this._messagesURL != null && this._messagesURL.length() > 0) {
            updateMessagesData(RemoteDownload.getFileForCachedURL(this._messagesURL));
        }
        if (this._pointsOfInterestURL != null && this._pointsOfInterestURL.length() > 0) {
            updatePOIData(RemoteDownload.getFileForCachedURL(this._pointsOfInterestURL));
        }
    }

    private JSONObject loadConfigFromStream(InputStream inputStream) throws JSONException, IOException {
        try {
            if (inputStream == null) {
                return null;
            }
            try {
                byte[] bArr = new byte[inputStream.available()];
                inputStream.read(bArr);
                JSONObject jSONObject = new JSONObject(new String(bArr, "UTF-8"));
                try {
                    inputStream.close();
                    return jSONObject;
                } catch (IOException e2) {
                    StaticMethods.logErrorFormat("Config - Unable to close stream (%s)", e2.getMessage());
                    return jSONObject;
                }
            } catch (IOException e3) {
                StaticMethods.logErrorFormat("Config - Exception when reading config (%s)", e3.getMessage());
                try {
                    inputStream.close();
                } catch (IOException e4) {
                    StaticMethods.logErrorFormat("Config - Unable to close stream (%s)", e4.getMessage());
                }
                return new JSONObject();
            } catch (NullPointerException e5) {
                StaticMethods.logErrorFormat("Config - Stream closed when attempting to load config (%s)", e5.getMessage());
                try {
                    inputStream.close();
                } catch (IOException e6) {
                    StaticMethods.logErrorFormat("Config - Unable to close stream (%s)", e6.getMessage());
                }
                return new JSONObject();
            }
        } catch (Throwable th) {
            try {
                inputStream.close();
            } catch (IOException e7) {
                StaticMethods.logErrorFormat("Config - Unable to close stream (%s)", e7.getMessage());
            }
            throw th;
        }
    }

    public static void setUserDefinedConfigPath(InputStream inputStream) {
        synchronized (_userDefinedInputStreamMutex) {
            if (_userDefinedInputStream == null) {
                _userDefinedInputStream = inputStream;
            }
        }
    }

    private MobilePrivacyStatus privacyStatusFromString(String str) {
        if (str != null) {
            if (str.equalsIgnoreCase(CONFIG_PRIVACY_OPTED_IN)) {
                return MobilePrivacyStatus.MOBILE_PRIVACY_STATUS_OPT_IN;
            }
            if (str.equalsIgnoreCase(CONFIG_PRIVACY_OPTED_OUT)) {
                return MobilePrivacyStatus.MOBILE_PRIVACY_STATUS_OPT_OUT;
            }
            if (str.equalsIgnoreCase(CONFIG_PRIVACY_UNKNOWN)) {
                return MobilePrivacyStatus.MOBILE_PRIVACY_STATUS_UNKNOWN;
            }
        }
        return DEFAULT_PRIVACY_STATUS;
    }

    private void loadPoiFromJsonArray(JSONArray jSONArray) {
        if (jSONArray != null) {
            try {
                this._pointsOfInterest = new ArrayList();
                int length = jSONArray.length();
                for (int i = 0; i < length; i++) {
                    JSONArray jSONArray2 = jSONArray.getJSONArray(i);
                    ArrayList arrayList = new ArrayList(4);
                    arrayList.add(jSONArray2.getString(0));
                    arrayList.add(Double.valueOf(jSONArray2.getDouble(1)));
                    arrayList.add(Double.valueOf(jSONArray2.getDouble(2)));
                    arrayList.add(Double.valueOf(jSONArray2.getDouble(3)));
                    this._pointsOfInterest.add(arrayList);
                }
            } catch (JSONException e2) {
                StaticMethods.logErrorFormat("Messages - Unable to parse remote points of interest JSON (%s)", e2.getMessage());
            }
        }
    }

    private void loadMessagesDataFromRemote(JSONObject jSONObject) {
        JSONArray jSONArray;
        if (jSONObject == null) {
            StaticMethods.logDebugFormat("Messages - Remote messages config was null, falling back to bundled messages", new Object[0]);
            RemoteDownload.deleteFilesInDirectory("messageImages");
            return;
        }
        try {
            jSONArray = jSONObject.getJSONArray("messages");
        } catch (JSONException e2) {
            StaticMethods.logDebugFormat("Messages - Remote messages not configured, falling back to bundled messages", new Object[0]);
            jSONArray = null;
        }
        StaticMethods.logDebugFormat("Messages - Using remote definition for messages", new Object[0]);
        if (jSONArray == null || jSONArray.length() <= 0) {
            RemoteDownload.deleteFilesInDirectory("messageImages");
            this._inAppMessages = null;
            this._callbackTemplates = null;
            return;
        }
        loadMessagesFromJsonArray(jSONArray);
    }

    private void loadMessagesFromJsonArray(JSONArray jSONArray) {
        try {
            ArrayList<Message> arrayList = new ArrayList<>();
            ArrayList<Message> arrayList2 = new ArrayList<>();
            int length = jSONArray.length();
            for (int i = 0; i < length; i++) {
                Message messageMessageWithJsonObject = Message.messageWithJsonObject(jSONArray.getJSONObject(i));
                if (messageMessageWithJsonObject != null) {
                    StaticMethods.logDebugFormat("Messages - loaded message - %s", messageMessageWithJsonObject.description());
                    if (messageMessageWithJsonObject.getClass() == MessageTemplateCallback.class) {
                        arrayList2.add(messageMessageWithJsonObject);
                    } else {
                        arrayList.add(messageMessageWithJsonObject);
                    }
                }
            }
            this._inAppMessages = arrayList;
            this._callbackTemplates = arrayList2;
        } catch (JSONException e2) {
            StaticMethods.logErrorFormat("Messages - Unable to parse messages JSON (%s)", e2.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateBlacklist() {
        if (this._inAppMessages != null) {
            for (Message message : this._inAppMessages) {
                HashMap<String, Integer> mapLoadBlacklist = message.loadBlacklist();
                if (message.isBlacklisted() && message.showRule.getValue() != mapLoadBlacklist.get(message.messageId).intValue()) {
                    message.removeFromBlacklist();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadMessageImages() {
        StaticMethods.getMessageImageCachingExecutor().execute(new Runnable() { // from class: com.adobe.mobile.MobileConfig.9
            @Override // java.lang.Runnable
            public void run() {
                if (MobileConfig.this._inAppMessages == null || MobileConfig.this._inAppMessages.size() <= 0) {
                    RemoteDownload.deleteFilesInDirectory("messageImages");
                    return;
                }
                ArrayList arrayList = new ArrayList();
                for (Message message : MobileConfig.this._inAppMessages) {
                    if (message.assets != null && message.assets.size() > 0) {
                        for (ArrayList<String> arrayList2 : message.assets) {
                            if (arrayList2.size() > 0) {
                                for (String str : arrayList2) {
                                    arrayList.add(str);
                                    RemoteDownload.remoteDownloadSync(str, 10000, 10000, null, "messageImages");
                                }
                            }
                        }
                    }
                }
                if (arrayList.size() > 0) {
                    RemoteDownload.deleteFilesForDirectoryNotInList("messageImages", arrayList);
                } else {
                    RemoteDownload.deleteFilesInDirectory("messageImages");
                }
            }
        });
    }

    protected boolean networkConnectivity() {
        return StaticMethods.isWearableApp() || this._networkConnectivity;
    }

    protected void startNotifier() {
        Context applicationContext;
        IntentFilter intentFilter = new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE");
        try {
            applicationContext = StaticMethods.getSharedContext().getApplicationContext();
        } catch (StaticMethods.NullContextException e2) {
            StaticMethods.logErrorFormat("Analytics - Error registering network receiver (%s)", e2.getMessage());
            applicationContext = null;
        }
        if (applicationContext != null) {
            applicationContext.registerReceiver(new BroadcastReceiver() { // from class: com.adobe.mobile.MobileConfig.10
                @Override // android.content.BroadcastReceiver
                public void onReceive(Context context, Intent intent) {
                    MobileConfig.this._networkConnectivity = MobileConfig.this.getNetworkConnectivity(context);
                    if (MobileConfig.this._networkConnectivity) {
                        StaticMethods.logDebugFormat("Analytics - Network status changed (reachable)", new Object[0]);
                        AnalyticsWorker.sharedInstance().kick(false);
                    } else {
                        StaticMethods.logDebugFormat("Analytics - Network status changed (unreachable)", new Object[0]);
                    }
                }
            }, intentFilter);
        }
    }

    protected boolean getNetworkConnectivity(Context context) {
        Exception exc;
        boolean z;
        SecurityException securityException;
        boolean z2;
        NullPointerException nullPointerException;
        boolean z3;
        boolean z4;
        if (context == null) {
            return true;
        }
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager != null) {
                NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
                if (activeNetworkInfo != null) {
                    z4 = activeNetworkInfo.isAvailable() && activeNetworkInfo.isConnected();
                } else {
                    try {
                        StaticMethods.logWarningFormat("Analytics - Unable to determine connectivity status due to there being no default network currently active", new Object[0]);
                        z4 = false;
                    } catch (NullPointerException e2) {
                        nullPointerException = e2;
                        z3 = false;
                        StaticMethods.logWarningFormat("Analytics - Unable to determine connectivity status due to an unexpected error (%s)", nullPointerException.getLocalizedMessage());
                        return z3;
                    } catch (SecurityException e3) {
                        securityException = e3;
                        z2 = false;
                        StaticMethods.logErrorFormat("Analytics - Unable to access connectivity status due to a security error (%s)", securityException.getLocalizedMessage());
                        return z2;
                    } catch (Exception e4) {
                        exc = e4;
                        z = false;
                        StaticMethods.logWarningFormat("Analytics - Unable to access connectivity status due to an unexpected error (%s)", exc.getLocalizedMessage());
                        return z;
                    }
                }
                return z4;
            }
            StaticMethods.logWarningFormat("Analytics - Unable to determine connectivity status due to the system service requested being unrecognized", new Object[0]);
            return true;
        } catch (NullPointerException e5) {
            nullPointerException = e5;
            z3 = true;
        } catch (SecurityException e6) {
            securityException = e6;
            z2 = true;
        } catch (Exception e7) {
            exc = e7;
            z = true;
        }
    }
}
