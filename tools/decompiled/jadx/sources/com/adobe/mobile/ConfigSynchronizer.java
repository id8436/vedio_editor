package com.adobe.mobile;

import android.content.Context;
import android.content.SharedPreferences;
import com.adobe.mobile.StaticMethods;
import com.adobe.mobile.WearableDataResponse;
import com.google.android.exoplayer.DefaultLoadControl;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.wearable.DataItem;
import com.google.android.gms.wearable.DataMap;
import com.google.android.gms.wearable.DataMapItem;
import com.google.android.gms.wearable.PutDataMapRequest;
import com.google.android.gms.wearable.Wearable;
import java.io.File;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
final class ConfigSynchronizer {
    private static final Object _handheldInstallDateMutex = new Object();
    private static final Object _aidMutex = new Object();
    private static final Object _visitorIDMutex = new Object();
    private static final Object _pushEnabledMutex = new Object();
    private static final Object _adiDMutex = new Object();
    private static final Object _visServiceMutex = new Object();
    private static final Object _privacyStatusMutex = new Object();

    ConfigSynchronizer() {
    }

    protected static void syncVisitorID(String str) {
        if (!StaticMethods.isWearableApp()) {
            DataMap dataMap = new DataMap();
            dataMap.putString("APP_MEASUREMENT_VISITOR_ID", str);
            syncData("/abdmobile/data/config/visitorId", dataMap);
        }
    }

    protected static void syncAdvertisingIdentifier(String str) {
        if (!StaticMethods.isWearableApp()) {
            DataMap dataMap = new DataMap();
            dataMap.putString("ADOBEMOBILE_STOREDDEFAULTS_ADVERTISING_IDENTIFIER", str);
            syncData("/abdmobile/data/config/adId", dataMap);
        }
    }

    protected static void syncPushEnabled(boolean z) {
        if (!StaticMethods.isWearableApp()) {
            DataMap dataMap = new DataMap();
            dataMap.putBoolean("ADBMOBILE_KEY_PUSH_ENABLED", z);
            syncData("/abdmobile/data/config/pushEnabled", dataMap);
        }
    }

    protected static void syncVidService(String str, String str2, String str3, long j, long j2, String str4) {
        if (!StaticMethods.isWearableApp()) {
            DataMap dataMap = new DataMap();
            dataMap.putString("ADBMOBILE_PERSISTED_MID", str);
            dataMap.putString("ADBMOBILE_PERSISTED_MID_BLOB", str3);
            dataMap.putString("ADBMOBILE_PERSISTED_MID_HINT", str2);
            dataMap.putLong("ADBMOBILE_VISITORID_TTL", j);
            dataMap.putLong("ADBMOBILE_VISITORID_SYNC", j2);
            dataMap.putString("ADBMOBILE_VISITORID_IDS", str4);
            syncData("/abdmobile/data/config/vidService", dataMap);
        }
    }

    protected static void syncPrivacyStatus(int i) {
        if (!StaticMethods.isWearableApp()) {
            DataMap dataMap = new DataMap();
            dataMap.putInt("PrivacyStatus", i);
            syncData("/abdmobile/data/config/privacyStatus", dataMap);
        }
    }

    protected static void syncData(String str, DataMap dataMap) {
        try {
            GoogleApiClient googleApiClientBuild = new GoogleApiClient.Builder(StaticMethods.getSharedContext()).addApi(Wearable.API).build();
            GoogleApiClientWrapper.connect(googleApiClientBuild);
            ConnectionResult connectionResultBlockingConnect = GoogleApiClientWrapper.blockingConnect(googleApiClientBuild, 15000L, TimeUnit.MILLISECONDS);
            if (connectionResultBlockingConnect == null || !connectionResultBlockingConnect.isSuccess()) {
                StaticMethods.logWarningFormat("Wearable - Failed to setup connection", new Object[0]);
                return;
            }
            PutDataMapRequest putDataMapRequestCreate = PutDataMapRequest.create(str);
            putDataMapRequestCreate.getDataMap().putAll(dataMap);
            Wearable.DataApi.putDataItem(googleApiClientBuild, putDataMapRequestCreate.asPutDataRequest());
        } catch (StaticMethods.NullContextException e2) {
        }
    }

    protected static DataMap getSharedConfig() {
        DataMap dataMap = new DataMap();
        try {
            dataMap.putLong("ADMS_InstallDate", StaticMethods.getSharedPreferences().getLong("ADMS_InstallDate", 0L));
            dataMap.putBoolean("ADOBEMOBILE_STOREDDEFAULTS_IGNORE_AID", StaticMethods.getSharedPreferences().getBoolean("ADOBEMOBILE_STOREDDEFAULTS_IGNORE_AID", false));
            dataMap.putString("ADOBEMOBILE_STOREDDEFAULTS_AID", StaticMethods.getSharedPreferences().getString("ADOBEMOBILE_STOREDDEFAULTS_AID", null));
            dataMap.putBoolean("ADOBEMOBILE_STOREDDEFAULTS_AID_SYNCED", StaticMethods.getSharedPreferences().getBoolean("ADOBEMOBILE_STOREDDEFAULTS_AID_SYNCED", false));
            dataMap.putString("APP_MEASUREMENT_VISITOR_ID", StaticMethods.getSharedPreferences().getString("APP_MEASUREMENT_VISITOR_ID", null));
            dataMap.putString("ADOBEMOBILE_STOREDDEFAULTS_ADVERTISING_IDENTIFIER", StaticMethods.getSharedPreferences().getString("ADOBEMOBILE_STOREDDEFAULTS_ADVERTISING_IDENTIFIER", null));
            dataMap.putBoolean("ADBMOBILE_KEY_PUSH_ENABLED", StaticMethods.getSharedPreferences().getBoolean("ADBMOBILE_KEY_PUSH_ENABLED", false));
            dataMap.putString("ADBMOBILE_PERSISTED_MID", StaticMethods.getSharedPreferences().getString("ADBMOBILE_PERSISTED_MID", null));
            dataMap.putString("ADBMOBILE_PERSISTED_MID_HINT", StaticMethods.getSharedPreferences().getString("ADBMOBILE_PERSISTED_MID_HINT", null));
            dataMap.putString("ADBMOBILE_PERSISTED_MID_BLOB", StaticMethods.getSharedPreferences().getString("ADBMOBILE_PERSISTED_MID_BLOB", null));
            dataMap.putLong("ADBMOBILE_VISITORID_TTL", StaticMethods.getSharedPreferences().getLong("ADBMOBILE_VISITORID_TTL", 0L));
            dataMap.putLong("ADBMOBILE_VISITORID_SYNC", StaticMethods.getSharedPreferences().getLong("ADBMOBILE_VISITORID_SYNC", 0L));
            dataMap.putString("ADBMOBILE_VISITORID_IDS", StaticMethods.getSharedPreferences().getString("ADBMOBILE_VISITORID_IDS", null));
            if (StaticMethods.getSharedPreferences().contains("PrivacyStatus")) {
                dataMap.putInt("PrivacyStatus", StaticMethods.getSharedPreferences().getInt("PrivacyStatus", 0));
            }
        } catch (StaticMethods.NullContextException e2) {
            StaticMethods.logErrorFormat("Wearable - Error getting shared preferences", new Object[0]);
        }
        return dataMap;
    }

    protected static void restoreSharedConfig(DataMap dataMap) {
        restoreHandheldInstallDate(dataMap);
        restorePrivacyStatus(dataMap);
        restoreVisitorID(dataMap);
        restoreVidService(dataMap);
        restoreAid(dataMap);
        restoreAdid(dataMap);
        restorePushEnabled(dataMap);
    }

    private static void restoreHandheldInstallDate(DataMap dataMap) {
        synchronized (_handheldInstallDateMutex) {
            try {
                SharedPreferences.Editor sharedPreferencesEditor = StaticMethods.getSharedPreferencesEditor();
                if (dataMap.containsKey("ADMS_InstallDate")) {
                    sharedPreferencesEditor.putLong("ADMS_Handheld_App_InstallDate", dataMap.getLong("ADMS_InstallDate", 0L));
                }
                sharedPreferencesEditor.commit();
            } catch (StaticMethods.NullContextException e2) {
                StaticMethods.logErrorFormat("Wearable - Error saving Handheld App install date to shared preferences", new Object[0]);
            }
        }
    }

    private static void restoreAid(DataMap dataMap) {
        synchronized (_aidMutex) {
            try {
                SharedPreferences.Editor sharedPreferencesEditor = StaticMethods.getSharedPreferencesEditor();
                sharedPreferencesEditor.putBoolean("ADOBEMOBILE_STOREDDEFAULTS_IGNORE_AID", dataMap.getBoolean("ADOBEMOBILE_STOREDDEFAULTS_IGNORE_AID"));
                sharedPreferencesEditor.putString("ADOBEMOBILE_STOREDDEFAULTS_AID", dataMap.getString("ADOBEMOBILE_STOREDDEFAULTS_AID"));
                sharedPreferencesEditor.putBoolean("ADOBEMOBILE_STOREDDEFAULTS_AID_SYNCED", dataMap.getBoolean("ADOBEMOBILE_STOREDDEFAULTS_AID_SYNCED"));
                sharedPreferencesEditor.commit();
            } catch (StaticMethods.NullContextException e2) {
                StaticMethods.logErrorFormat("Wearable - Error saving Aid data to shared preferences", new Object[0]);
            }
        }
    }

    private static void restoreVisitorID(DataMap dataMap) {
        synchronized (_visitorIDMutex) {
            Config.setUserIdentifier(dataMap.getString("APP_MEASUREMENT_VISITOR_ID"));
        }
    }

    private static void restorePushEnabled(DataMap dataMap) {
        synchronized (_pushEnabledMutex) {
            StaticMethods.setPushEnabled(dataMap.getBoolean("ADBMOBILE_KEY_PUSH_ENABLED"));
        }
    }

    private static void restoreAdid(final DataMap dataMap) {
        synchronized (_adiDMutex) {
            Config.submitAdvertisingIdentifierTask(new Callable<String>() { // from class: com.adobe.mobile.ConfigSynchronizer.1
                @Override // java.util.concurrent.Callable
                public String call() throws Exception {
                    return dataMap.getString("ADOBEMOBILE_STOREDDEFAULTS_ADVERTISING_IDENTIFIER");
                }
            });
        }
    }

    private static void restoreVidService(DataMap dataMap) {
        synchronized (_visServiceMutex) {
            try {
                SharedPreferences.Editor sharedPreferencesEditor = StaticMethods.getSharedPreferencesEditor();
                sharedPreferencesEditor.putString("ADBMOBILE_PERSISTED_MID", dataMap.getString("ADBMOBILE_PERSISTED_MID"));
                sharedPreferencesEditor.putString("ADBMOBILE_PERSISTED_MID_HINT", dataMap.getString("ADBMOBILE_PERSISTED_MID_HINT"));
                sharedPreferencesEditor.putString("ADBMOBILE_PERSISTED_MID_BLOB", dataMap.getString("ADBMOBILE_PERSISTED_MID_BLOB"));
                sharedPreferencesEditor.putLong("ADBMOBILE_VISITORID_TTL", dataMap.getLong("ADBMOBILE_VISITORID_TTL"));
                sharedPreferencesEditor.putLong("ADBMOBILE_VISITORID_SYNC", dataMap.getLong("ADBMOBILE_VISITORID_SYNC"));
                sharedPreferencesEditor.putString("ADBMOBILE_VISITORID_IDS", dataMap.getString("ADBMOBILE_VISITORID_IDS"));
                sharedPreferencesEditor.commit();
            } catch (StaticMethods.NullContextException e2) {
                StaticMethods.logErrorFormat("Wearable - Error saving Visitor Id Service data to shared preferences", new Object[0]);
            }
            VisitorIDService.sharedInstance().resetVariablesFromSharedPreferences();
        }
    }

    private static void restorePrivacyStatus(DataMap dataMap) {
        synchronized (_privacyStatusMutex) {
            if (dataMap.getInt("PrivacyStatus") >= MobilePrivacyStatus.values().length) {
                StaticMethods.logWarningFormat("Wearable - Invalid PrivacyStatus value (%d)", Integer.valueOf(dataMap.getInt("PrivacyStatus")));
            } else {
                if (dataMap.containsKey("PrivacyStatus")) {
                    Config.setPrivacyStatus(MobilePrivacyStatus.values()[dataMap.getInt("PrivacyStatus")]);
                }
            }
        }
    }

    protected static void restoreConfig(DataItem dataItem) {
        DataMap dataMap;
        if (dataItem != null && dataItem.getUri() != null && dataItem.getUri().getPath() != null && (dataMap = DataMapItem.fromDataItem(dataItem).getDataMap()) != null) {
            String path = dataItem.getUri().getPath();
            if (path.compareTo("/abdmobile/data/config/visitorId") == 0) {
                restoreVisitorID(dataMap);
                return;
            }
            if (path.compareTo("/abdmobile/data/config/vidService") == 0) {
                restoreVidService(dataMap);
                return;
            }
            if (path.compareTo("/abdmobile/data/config/privacyStatus") == 0) {
                restorePrivacyStatus(dataMap);
            } else if (path.compareTo("/abdmobile/data/config/adId") == 0) {
                restoreAdid(dataMap);
            } else if (path.compareTo("/abdmobile/data/config/pushEnabled") == 0) {
                restorePushEnabled(dataMap);
            }
        }
    }

    protected static void syncConfigFromHandheld() throws Throwable {
        if (StaticMethods.isWearableApp()) {
            try {
                Context applicationContext = StaticMethods.getSharedContext().getApplicationContext();
                WearableDataResponse.ShareConfigResponse shareConfigResponse = (WearableDataResponse.ShareConfigResponse) new WearableDataConnection(applicationContext).send(WearableDataRequest.createShareConfigRequest(DefaultLoadControl.DEFAULT_LOW_WATERMARK_MS));
                if (shareConfigResponse != null && shareConfigResponse.getResult() != null) {
                    restoreSharedConfig(shareConfigResponse.getResult());
                }
                String pointsOfInterestURL = MobileConfig.getInstance().getPointsOfInterestURL();
                String inAppMessageURL = MobileConfig.getInstance().getInAppMessageURL();
                if (pointsOfInterestURL != null || inAppMessageURL != null) {
                    File fileForCachedURL = RemoteDownload.getFileForCachedURL(pointsOfInterestURL);
                    String name = fileForCachedURL != null ? fileForCachedURL.getName() : null;
                    File fileForCachedURL2 = RemoteDownload.getFileForCachedURL(inAppMessageURL);
                    String name2 = fileForCachedURL2 != null ? fileForCachedURL2.getName() : null;
                    new WearableDataConnection(applicationContext).send(WearableDataRequest.createFileRequest(pointsOfInterestURL, name, DefaultLoadControl.DEFAULT_LOW_WATERMARK_MS));
                    new WearableDataConnection(applicationContext).send(WearableDataRequest.createFileRequest(inAppMessageURL, name2, DefaultLoadControl.DEFAULT_LOW_WATERMARK_MS));
                    MobileConfig.getInstance().loadCachedRemotes();
                }
            } catch (StaticMethods.NullContextException e2) {
                StaticMethods.logErrorFormat("Analytics - Error syncing Points of Interest and In-app Messages from handheld app to wearable app (%s)", e2.getLocalizedMessage());
            }
        }
    }
}
