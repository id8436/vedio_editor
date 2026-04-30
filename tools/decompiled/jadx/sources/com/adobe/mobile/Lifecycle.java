package com.adobe.mobile;

import android.app.Activity;
import android.content.Intent;
import android.content.SharedPreferences;
import com.adobe.mobile.StaticMethods;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import org.apache.commons.lang3.time.DateUtils;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
final class Lifecycle {
    protected static final String ADB_LIFECYCLE_PUSH_MESSAGE_ID_KEY = "adb_m_id";
    protected static final String ADB_TRACK_INTERNAL_PUSH_CLICK_THROUGH = "PushMessage";
    protected static long sessionStartTime = 0;
    protected static volatile boolean lifecycleHasRun = false;
    private static final HashMap<String, Object> _lifecycleContextData = new HashMap<>();
    private static final HashMap<String, Object> _lifecycleContextDataLowercase = new HashMap<>();
    private static final HashMap<String, Object> _previousSessionlifecycleContextData = new HashMap<>();
    private static final Object _contextDataMutex = new Object();
    private static final Object _lowercaseContextDataMutex = new Object();

    Lifecycle() {
    }

    protected static void start(Activity activity, Map<String, Object> map) throws StaticMethods.NullActivityException, StaticMethods.NullContextException {
        if (!lifecycleHasRun) {
            lifecycleHasRun = true;
            try {
                SharedPreferences sharedPreferences = StaticMethods.getSharedPreferences();
                Activity currentActivity = null;
                try {
                    currentActivity = StaticMethods.getCurrentActivity();
                } catch (StaticMethods.NullActivityException e2) {
                }
                if (currentActivity != null && activity != null && currentActivity.getComponentName().toString().equals(activity.getComponentName().toString())) {
                    Messages.checkForInAppMessage(null, null, null);
                }
                StaticMethods.setCurrentActivity(activity);
                MobileConfig mobileConfig = MobileConfig.getInstance();
                long j = sharedPreferences.getLong("ADMS_PauseDate", 0L);
                int lifecycleTimeout = mobileConfig.getLifecycleTimeout();
                boolean z = true;
                if (j > 0) {
                    int time = (int) ((new Date().getTime() - j) / 1000);
                    long j2 = sharedPreferences.getLong("ADMS_SessionStart", 0L);
                    sessionStartTime = j2 / 1000;
                    AnalyticsTrackTimedAction.sharedInstance().trackTimedActionUpdateAdjustedStartTime(time);
                    if (time < lifecycleTimeout && j2 > 0) {
                        try {
                            SharedPreferences.Editor sharedPreferencesEditor = StaticMethods.getSharedPreferencesEditor();
                            sharedPreferencesEditor.putLong("ADMS_SessionStart", ((long) (time * 1000)) + j2);
                            sharedPreferencesEditor.commit();
                        } catch (StaticMethods.NullContextException e3) {
                            StaticMethods.logErrorFormat("Lifecycle - Error while updating start time (%s).", e3.getMessage());
                        }
                        sessionStartTime = sharedPreferences.getLong("ADMS_SessionStart", 0L) / 1000;
                        z = false;
                    }
                }
                long time2 = new Date().getTime();
                if (z) {
                    mobileConfig.downloadRemoteConfigs();
                    _lifecycleContextData.clear();
                    clearContextDataLowercase();
                    HashMap map2 = map != null ? new HashMap(map) : new HashMap();
                    if (!sharedPreferences.contains("ADMS_InstallDate")) {
                        addInstallData(map2, time2);
                    } else {
                        addNonInstallData(map2, time2);
                        addUpgradeData(map2, time2);
                        addSessionLengthData(map2);
                    }
                    addLifecycleGenericData(map2, time2);
                    generateLifecycleToBeSaved(map2);
                    persistLifecycleContextData();
                    if (mobileConfig.mobileUsingAnalytics()) {
                        AnalyticsTrackInternal.trackInternal("Lifecycle", map2, StaticMethods.getTimeSince1970() - 1);
                    }
                    if (!mobileConfig.getAamAnalyticsForwardingEnabled()) {
                        AudienceManagerWorker.SubmitSignal(_lifecycleContextData, null);
                    }
                }
                checkForPushMessageClickThrough(activity);
                resetLifecycleFlags(time2);
            } catch (StaticMethods.NullContextException e4) {
                StaticMethods.logErrorFormat("Lifecycle - Error starting lifecycle (%s).", e4.getMessage());
            }
        }
    }

    protected static void stop() {
        lifecycleHasRun = false;
        StaticMethods.updateLastKnownTimestamp(Long.valueOf(StaticMethods.getTimeSince1970()));
        try {
            SharedPreferences.Editor sharedPreferencesEditor = StaticMethods.getSharedPreferencesEditor();
            sharedPreferencesEditor.putBoolean("ADMS_SuccessfulClose", true);
            sharedPreferencesEditor.putLong("ADMS_PauseDate", new Date().getTime());
            sharedPreferencesEditor.commit();
        } catch (StaticMethods.NullContextException e2) {
            StaticMethods.logErrorFormat("Lifecycle - Error updating lifecycle pause data (%s)", e2.getMessage());
        }
        try {
            if (StaticMethods.getCurrentActivity().isFinishing()) {
                Messages.resetAllInAppMessages();
            }
        } catch (StaticMethods.NullActivityException e3) {
        }
    }

    private static void persistLifecycleContextData() {
        try {
            SharedPreferences.Editor sharedPreferencesEditor = StaticMethods.getSharedPreferencesEditor();
            sharedPreferencesEditor.putString("ADMS_LifecycleData", new JSONObject(_lifecycleContextData).toString());
            sharedPreferencesEditor.commit();
        } catch (StaticMethods.NullContextException e2) {
            StaticMethods.logWarningFormat("Lifecycle - Error persisting lifecycle data (%s)", e2.getMessage());
        }
    }

    protected static HashMap<String, Object> getContextData() {
        HashMap<String, Object> map;
        synchronized (_contextDataMutex) {
            if (_lifecycleContextData.size() > 0) {
                map = new HashMap<>(_lifecycleContextData);
            } else if (_previousSessionlifecycleContextData.size() > 0) {
                map = new HashMap<>(_previousSessionlifecycleContextData);
            } else {
                addPersistedLifecycleToMap(_previousSessionlifecycleContextData);
                map = new HashMap<>(_previousSessionlifecycleContextData);
            }
        }
        return map;
    }

    protected static void updateContextData(HashMap<String, Object> map) {
        synchronized (_contextDataMutex) {
            _lifecycleContextData.putAll(map);
        }
        synchronized (_lowercaseContextDataMutex) {
            for (Map.Entry<String, Object> entry : map.entrySet()) {
                _lifecycleContextDataLowercase.put(entry.getKey().toLowerCase(), entry.getValue());
            }
        }
    }

    protected static void removeContextData(String str) {
        synchronized (_contextDataMutex) {
            _lifecycleContextData.remove(str);
        }
        synchronized (_lowercaseContextDataMutex) {
            _lifecycleContextDataLowercase.remove(str.toLowerCase());
        }
    }

    protected static Map<String, Object> getContextDataLowercase() {
        HashMap<String, Object> map;
        synchronized (_lowercaseContextDataMutex) {
            if (_lifecycleContextDataLowercase.size() <= 0) {
                HashMap map2 = new HashMap();
                addPersistedLifecycleToMap(map2);
                for (Map.Entry entry : map2.entrySet()) {
                    _lifecycleContextDataLowercase.put(((String) entry.getKey()).toLowerCase(), entry.getValue());
                }
            }
            map = _lifecycleContextDataLowercase;
        }
        return map;
    }

    private static void clearContextDataLowercase() {
        synchronized (_lowercaseContextDataMutex) {
            _lifecycleContextDataLowercase.clear();
        }
    }

    private static void addPersistedLifecycleToMap(Map<String, Object> map) {
        try {
            String string = StaticMethods.getSharedPreferences().getString("ADMS_LifecycleData", null);
            if (string != null && string.length() > 0) {
                map.putAll(StaticMethods.mapFromJson(new JSONObject(string)));
            }
        } catch (StaticMethods.NullContextException e2) {
            StaticMethods.logErrorFormat("Lifecycle - Issue loading persisted lifecycle data", e2.getMessage());
        } catch (JSONException e3) {
            StaticMethods.logWarningFormat("Lifecycle - Issue loading persisted lifecycle data (%s)", e3.getMessage());
        }
    }

    private static void generateLifecycleToBeSaved(Map<String, Object> map) {
        HashMap map2 = map != null ? new HashMap(map) : new HashMap();
        map2.putAll(StaticMethods.getDefaultData());
        map2.put("a.locale", StaticMethods.getDefaultAcceptLanguage());
        map2.put("a.ltv.amount", AnalyticsTrackLifetimeValueIncrease.getLifetimeValue());
        _lifecycleContextData.putAll(map2);
        clearContextDataLowercase();
        for (Map.Entry<String, Object> entry : _lifecycleContextData.entrySet()) {
            _lifecycleContextDataLowercase.put(entry.getKey().toLowerCase(), entry.getValue());
        }
    }

    private static void resetLifecycleFlags(long j) throws StaticMethods.NullContextException {
        try {
            SharedPreferences.Editor sharedPreferencesEditor = StaticMethods.getSharedPreferencesEditor();
            if (!StaticMethods.getSharedPreferences().contains("ADMS_SessionStart")) {
                sharedPreferencesEditor.putLong("ADMS_SessionStart", j);
                sessionStartTime = j / 1000;
            }
            sharedPreferencesEditor.putString("ADMS_LastVersion", StaticMethods.getApplicationVersion());
            sharedPreferencesEditor.putBoolean("ADMS_SuccessfulClose", false);
            sharedPreferencesEditor.remove("ADMS_PauseDate");
            sharedPreferencesEditor.commit();
        } catch (StaticMethods.NullContextException e2) {
            StaticMethods.logErrorFormat("Lifecycle - Error resetting lifecycle flags (%s).", e2.getMessage());
        }
    }

    private static void addInstallData(Map<String, Object> map, long j) {
        map.put("a.InstallDate", new SimpleDateFormat("M/d/yyyy", Locale.US).format(Long.valueOf(j)));
        map.put("a.InstallEvent", "InstallEvent");
        map.put("a.DailyEngUserEvent", "DailyEngUserEvent");
        map.put("a.MonthlyEngUserEvent", "MonthlyEngUserEvent");
        try {
            if (StaticMethods.getSharedPreferences().contains("ADMS_Referrer_ContextData_Json_String")) {
                map.putAll(ReferrerHandler.parseV3Response(StaticMethods.getSharedPreferences().getString("ADMS_Referrer_ContextData_Json_String", null)));
            } else if (StaticMethods.getSharedPreferences().contains("utm_campaign")) {
                String string = StaticMethods.getSharedPreferences().getString("utm_source", null);
                String string2 = StaticMethods.getSharedPreferences().getString("utm_medium", null);
                String string3 = StaticMethods.getSharedPreferences().getString("utm_term", null);
                String string4 = StaticMethods.getSharedPreferences().getString("utm_content", null);
                String string5 = StaticMethods.getSharedPreferences().getString("utm_campaign", null);
                String string6 = StaticMethods.getSharedPreferences().getString("trackingcode", null);
                if (string != null && string5 != null) {
                    map.put("a.referrer.campaign.source", string);
                    map.put("a.referrer.campaign.medium", string2);
                    map.put("a.referrer.campaign.term", string3);
                    map.put("a.referrer.campaign.content", string4);
                    map.put("a.referrer.campaign.name", string5);
                    map.put("a.referrer.campaign.trackingcode", string6);
                }
            } else if (MobileConfig.getInstance().mobileReferrerConfigured() && MobileConfig.getInstance().getReferrerTimeout() > 0) {
                ReferrerHandler.setReferrerProcessed(false);
                Messages.block3rdPartyCallbacksQueueForReferrer();
            }
            SharedPreferences.Editor sharedPreferencesEditor = StaticMethods.getSharedPreferencesEditor();
            sharedPreferencesEditor.putLong("ADMS_InstallDate", j);
            sharedPreferencesEditor.commit();
        } catch (StaticMethods.NullContextException e2) {
            StaticMethods.logErrorFormat("Lifecycle - Error setting install data (%s).", e2.getMessage());
        }
    }

    private static void addUpgradeData(Map<String, Object> map, long j) {
        try {
            SharedPreferences.Editor sharedPreferencesEditor = StaticMethods.getSharedPreferencesEditor();
            long j2 = StaticMethods.getSharedPreferences().getLong("ADMS_UpgradeDate", 0L);
            if (!StaticMethods.getApplicationVersion().equalsIgnoreCase(StaticMethods.getSharedPreferences().getString("ADMS_LastVersion", ""))) {
                map.put("a.UpgradeEvent", "UpgradeEvent");
                sharedPreferencesEditor.putLong("ADMS_UpgradeDate", j);
                sharedPreferencesEditor.putInt("ADMS_LaunchesAfterUpgrade", 0);
            } else if (j2 > 0) {
                map.put("a.DaysSinceLastUpgrade", calculateDaysSince(j2, j));
            }
            if (j2 > 0) {
                int i = StaticMethods.getSharedPreferences().getInt("ADMS_LaunchesAfterUpgrade", 0) + 1;
                map.put("a.LaunchesSinceUpgrade", "" + i);
                sharedPreferencesEditor.putInt("ADMS_LaunchesAfterUpgrade", i);
            }
            sharedPreferencesEditor.commit();
        } catch (StaticMethods.NullContextException e2) {
            StaticMethods.logErrorFormat("Lifecycle - Error setting upgrade data (%s).", e2.getMessage());
        }
    }

    private static void addLifecycleGenericData(Map<String, Object> map, long j) {
        map.putAll(StaticMethods.getDefaultData());
        map.put("a.LaunchEvent", "LaunchEvent");
        map.put("a.OSVersion", StaticMethods.getOperatingSystem());
        map.put("a.HourOfDay", new SimpleDateFormat("H", Locale.US).format(Long.valueOf(j)));
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(j);
        map.put("a.DayOfWeek", Integer.toString(calendar.get(7)));
        String advertisingIdentifier = StaticMethods.getAdvertisingIdentifier();
        if (advertisingIdentifier != null) {
            map.put("a.adid", advertisingIdentifier);
        }
        try {
            SharedPreferences.Editor sharedPreferencesEditor = StaticMethods.getSharedPreferencesEditor();
            int i = StaticMethods.getSharedPreferences().getInt("ADMS_Launches", 0) + 1;
            map.put("a.Launches", Integer.toString(i));
            sharedPreferencesEditor.putInt("ADMS_Launches", i);
            sharedPreferencesEditor.putLong("ADMS_LastDateUsed", j);
            sharedPreferencesEditor.commit();
        } catch (StaticMethods.NullContextException e2) {
            StaticMethods.logErrorFormat("Lifecycle - Error adding generic data (%s).", e2.getMessage());
        }
    }

    private static void addNonInstallData(Map<String, Object> map, long j) {
        try {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy/M/d", Locale.US);
            long j2 = StaticMethods.getSharedPreferences().getLong("ADMS_LastDateUsed", 0L);
            if (!simpleDateFormat.format(Long.valueOf(j)).equalsIgnoreCase(simpleDateFormat.format(new Date(j2)))) {
                map.put("a.DailyEngUserEvent", "DailyEngUserEvent");
            }
            SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("yyyy/M", Locale.US);
            if (!simpleDateFormat2.format(Long.valueOf(j)).equalsIgnoreCase(simpleDateFormat2.format(new Date(j2)))) {
                map.put("a.MonthlyEngUserEvent", "MonthlyEngUserEvent");
            }
            map.put("a.DaysSinceFirstUse", calculateDaysSince(StaticMethods.getSharedPreferences().getLong("ADMS_InstallDate", 0L), j));
            map.put("a.DaysSinceLastUse", calculateDaysSince(j2, j));
            if (!StaticMethods.getSharedPreferences().getBoolean("ADMS_SuccessfulClose", false)) {
                SharedPreferences.Editor sharedPreferencesEditor = StaticMethods.getSharedPreferencesEditor();
                sharedPreferencesEditor.remove("ADMS_PauseDate");
                sharedPreferencesEditor.remove("ADMS_SessionStart");
                sessionStartTime = StaticMethods.getTimeSince1970();
                sharedPreferencesEditor.commit();
                long j3 = StaticMethods.getSharedPreferences().getLong("ADBLastKnownTimestampKey", 0L);
                if (j3 > 0 && MobileConfig.getInstance().mobileUsingAnalytics() && MobileConfig.getInstance().getOfflineTrackingEnabled() && MobileConfig.getInstance().getBackdateSessionInfoEnabled()) {
                    try {
                        SharedPreferences sharedPreferences = StaticMethods.getSharedPreferences();
                        HashMap map2 = new HashMap();
                        map2.put("a.CrashEvent", "CrashEvent");
                        map2.put("a.OSVersion", sharedPreferences.getString("ADOBEMOBILE_STOREDDEFAULTS_OS", ""));
                        map2.put("a.AppID", sharedPreferences.getString("ADOBEMOBILE_STOREDDEFAULTS_APPID", ""));
                        AnalyticsTrackInternal.trackInternal("Crash", map2, j3 + 1);
                        _lifecycleContextData.put("a.CrashEvent", "CrashEvent");
                    } catch (StaticMethods.NullContextException e2) {
                        StaticMethods.logWarningFormat("Config - Unable to get crash data for backdated hit (%s)", e2.getLocalizedMessage());
                    }
                } else {
                    map.put("a.CrashEvent", "CrashEvent");
                }
                AnalyticsTrackTimedAction.sharedInstance().trackTimedActionUpdateActionsClearAdjustedStartTime();
            }
        } catch (StaticMethods.NullContextException e3) {
            StaticMethods.logErrorFormat("Lifecycle - Error setting non install data (%s).", e3.getMessage());
        }
    }

    private static void addSessionLengthData(Map<String, Object> map) {
        try {
            long j = StaticMethods.getSharedPreferences().getLong("ADMS_PauseDate", 0L);
            if (((int) ((new Date().getTime() - j) / 1000)) >= MobileConfig.getInstance().getLifecycleTimeout()) {
                int i = (int) ((j - StaticMethods.getSharedPreferences().getLong("ADMS_SessionStart", 0L)) / 1000);
                sessionStartTime = StaticMethods.getTimeSince1970();
                if (i > 0 && i < 604800) {
                    long j2 = StaticMethods.getSharedPreferences().getLong("ADBLastKnownTimestampKey", 0L);
                    if (j2 > 0 && MobileConfig.getInstance().mobileUsingAnalytics() && MobileConfig.getInstance().getOfflineTrackingEnabled() && MobileConfig.getInstance().getBackdateSessionInfoEnabled()) {
                        try {
                            SharedPreferences sharedPreferences = StaticMethods.getSharedPreferences();
                            HashMap map2 = new HashMap();
                            map2.put("a.PrevSessionLength", String.valueOf(i));
                            map2.put("a.OSVersion", sharedPreferences.getString("ADOBEMOBILE_STOREDDEFAULTS_OS", ""));
                            map2.put("a.AppID", sharedPreferences.getString("ADOBEMOBILE_STOREDDEFAULTS_APPID", ""));
                            AnalyticsTrackInternal.trackInternal("SessionInfo", map2, j2 + 1);
                            _lifecycleContextData.put("a.PrevSessionLength", String.valueOf(i));
                        } catch (StaticMethods.NullContextException e2) {
                            StaticMethods.logWarningFormat("Config - Unable to get session data for backdated hit (%s)", e2.getLocalizedMessage());
                        }
                    } else {
                        map.put("a.PrevSessionLength", Integer.toString(i));
                    }
                } else {
                    map.put("a.ignoredSessionLength", Integer.toString(i));
                }
                SharedPreferences.Editor sharedPreferencesEditor = StaticMethods.getSharedPreferencesEditor();
                sharedPreferencesEditor.remove("ADMS_SessionStart");
                sharedPreferencesEditor.commit();
            }
        } catch (StaticMethods.NullContextException e3) {
            StaticMethods.logErrorFormat("Lifecycle - Error adding session length data (%s).", e3.getMessage());
        }
    }

    private static String calculateDaysSince(long j, long j2) {
        return Integer.toString((int) ((j2 - j) / DateUtils.MILLIS_PER_DAY));
    }

    private static void checkForPushMessageClickThrough(Activity activity) {
        Intent intent;
        final String stringExtra;
        if (activity != null && (intent = activity.getIntent()) != null && (stringExtra = intent.getStringExtra(ADB_LIFECYCLE_PUSH_MESSAGE_ID_KEY)) != null && stringExtra.length() > 0) {
            HashMap<String, Object> map = new HashMap<String, Object>() { // from class: com.adobe.mobile.Lifecycle.1
                {
                    put("a.push.payloadId", stringExtra);
                }
            };
            updateContextData(map);
            if (MobileConfig.getInstance().mobileUsingAnalytics()) {
                AnalyticsTrackInternal.trackInternal(ADB_TRACK_INTERNAL_PUSH_CLICK_THROUGH, map, StaticMethods.getTimeSince1970());
            }
        }
    }
}
