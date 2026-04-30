package com.adobe.mobile;

import android.content.SharedPreferences;
import c.a.a.a.a.d.d;
import com.adobe.mobile.AudienceManager;
import com.adobe.mobile.StaticMethods;
import com.google.android.exoplayer.ExoPlayer;
import com.google.gdata.data.analytics.Engagement;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
final class AudienceManagerWorker {
    private static final String AUDIENCE_MANAGER_CUSTOMER_DATA_PREFIX = "c_";
    private static final String AUDIENCE_MANAGER_DATA_PROVIDER_ID_KEY = "d_dpid";
    private static final String AUDIENCE_MANAGER_DATA_PROVIDER_USER_ID_KEY = "d_dpuuid";
    private static final String AUDIENCE_MANAGER_JSON_COOKIE_NAME_KEY = "cn";
    private static final String AUDIENCE_MANAGER_JSON_COOKIE_VALUE_KEY = "cv";
    private static final String AUDIENCE_MANAGER_JSON_DESTS_KEY = "dests";
    private static final String AUDIENCE_MANAGER_JSON_STUFF_KEY = "stuff";
    private static final String AUDIENCE_MANAGER_JSON_URL_KEY = "c";
    private static final String AUDIENCE_MANAGER_JSON_USER_ID_KEY = "uuid";
    private static final String AUDIENCE_MANAGER_SHARED_PREFS_PROFILE_KEY = "AAMUserProfile";
    private static final String AUDIENCE_MANAGER_SHARED_PREFS_USER_ID_KEY = "AAMUserId";
    private static final String AUDIENCE_MANAGER_URL_SUFFIX = "&d_ptfm=android&d_dst=1&d_rtbd=json";
    private static final String AUDIENCE_MANAGER_USER_ID_KEY = "d_uuid";
    private static String _dpid = null;
    private static String _dpuuid = null;
    private static HashMap<String, Object> _visitorProfile = null;
    private static volatile boolean VisitorProfile_pred = true;
    private static String _urlPrefix = null;
    private static volatile boolean UrlPrefix_pred = true;

    AudienceManagerWorker() {
    }

    public static HashMap<String, Object> GetVisitorProfile() {
        FutureTask futureTask = new FutureTask(new Callable<HashMap<String, Object>>() { // from class: com.adobe.mobile.AudienceManagerWorker.1
            @Override // java.util.concurrent.Callable
            public HashMap<String, Object> call() throws Exception {
                if (AudienceManagerWorker.VisitorProfile_pred) {
                    try {
                        String string = StaticMethods.getSharedPreferences().getString(AudienceManagerWorker.AUDIENCE_MANAGER_SHARED_PREFS_PROFILE_KEY, null);
                        if (string != null && string.length() > 0) {
                            try {
                                HashMap unused = AudienceManagerWorker._visitorProfile = StaticMethods.mapFromJson(new JSONObject(string));
                            } catch (JSONException e2) {
                                StaticMethods.logWarningFormat("Audience Manager - Problem accessing profile data (%s)", e2.getLocalizedMessage());
                            }
                            boolean unused2 = AudienceManagerWorker.VisitorProfile_pred = false;
                        }
                    } catch (StaticMethods.NullContextException e3) {
                        StaticMethods.logErrorFormat("Audience Manager - Problem accessing profile data (%s)", e3.getMessage());
                    }
                }
                return AudienceManagerWorker._visitorProfile;
            }
        });
        StaticMethods.getAudienceExecutor().execute(futureTask);
        try {
            return (HashMap) futureTask.get();
        } catch (Exception e2) {
            StaticMethods.logErrorFormat("Audience Manager - Unable to retrieve Visitor Profile", e2.getMessage());
            return null;
        }
    }

    public static String GetDpuuid() {
        FutureTask futureTask = new FutureTask(new Callable<String>() { // from class: com.adobe.mobile.AudienceManagerWorker.2
            @Override // java.util.concurrent.Callable
            public String call() throws Exception {
                return AudienceManagerWorker._dpuuid;
            }
        });
        StaticMethods.getAudienceExecutor().execute(futureTask);
        try {
            return (String) futureTask.get();
        } catch (Exception e2) {
            StaticMethods.logErrorFormat("Audience Manager - Unable to get Dpid (%s)", e2.getMessage());
            return null;
        }
    }

    public static String GetDpid() {
        FutureTask futureTask = new FutureTask(new Callable<String>() { // from class: com.adobe.mobile.AudienceManagerWorker.3
            @Override // java.util.concurrent.Callable
            public String call() throws Exception {
                return AudienceManagerWorker._dpid;
            }
        });
        StaticMethods.getAudienceExecutor().execute(futureTask);
        try {
            return (String) futureTask.get();
        } catch (Exception e2) {
            StaticMethods.logErrorFormat("Audience Manager - Unable to get Dpid (%s)", e2.getMessage());
            return null;
        }
    }

    public static void SetDpidAndDpuuid(final String str, final String str2) {
        StaticMethods.getAudienceExecutor().execute(new Runnable() { // from class: com.adobe.mobile.AudienceManagerWorker.4
            @Override // java.lang.Runnable
            public void run() {
                String unused = AudienceManagerWorker._dpid = str;
                String unused2 = AudienceManagerWorker._dpuuid = str2;
            }
        });
    }

    public class SubmitSignalTask implements Runnable {
        public final AudienceManager.AudienceManagerCallback<Map<String, Object>> callback;
        public final Map<String, Object> data;

        public SubmitSignalTask(Map<String, Object> map, AudienceManager.AudienceManagerCallback<Map<String, Object>> audienceManagerCallback) {
            this.data = map;
            this.callback = audienceManagerCallback;
        }

        @Override // java.lang.Runnable
        public void run() {
            final HashMap map = new HashMap();
            try {
                try {
                    try {
                        try {
                            if (!MobileConfig.getInstance().mobileUsingAudienceManager()) {
                                if (this.callback != null) {
                                    new Thread(new Runnable() { // from class: com.adobe.mobile.AudienceManagerWorker.SubmitSignalTask.1
                                        @Override // java.lang.Runnable
                                        public void run() {
                                            SubmitSignalTask.this.callback.call(map);
                                        }
                                    }).start();
                                    return;
                                }
                                return;
                            }
                            if (MobileConfig.getInstance().getPrivacyStatus() == MobilePrivacyStatus.MOBILE_PRIVACY_STATUS_OPT_OUT) {
                                StaticMethods.logDebugFormat("Audience Manager - Privacy status is set to opt out, no signals will be submitted.", new Object[0]);
                                if (this.callback != null) {
                                    new Thread(new Runnable() { // from class: com.adobe.mobile.AudienceManagerWorker.SubmitSignalTask.1
                                        @Override // java.lang.Runnable
                                        public void run() {
                                            SubmitSignalTask.this.callback.call(map);
                                        }
                                    }).start();
                                    return;
                                }
                                return;
                            }
                            String strBuildSchemaRequest = AudienceManagerWorker.BuildSchemaRequest(this.data);
                            if (strBuildSchemaRequest.length() <= 1) {
                                StaticMethods.logWarningFormat("Audience Manager - Unable to create URL object", new Object[0]);
                                if (this.callback != null) {
                                    new Thread(new Runnable() { // from class: com.adobe.mobile.AudienceManagerWorker.SubmitSignalTask.1
                                        @Override // java.lang.Runnable
                                        public void run() {
                                            SubmitSignalTask.this.callback.call(map);
                                        }
                                    }).start();
                                    return;
                                }
                                return;
                            }
                            StaticMethods.logDebugFormat("Audience Manager - request (%s)", strBuildSchemaRequest);
                            byte[] bArrRetrieveData = RequestHandler.retrieveData(strBuildSchemaRequest, null, 2000, "Audience Manager");
                            String str = "";
                            if (bArrRetrieveData != null && bArrRetrieveData.length > 0) {
                                str = new String(bArrRetrieveData, "UTF-8");
                            }
                            map.putAll(AudienceManagerWorker.processJsonResponse(new JSONObject(str)));
                            if (this.callback != null) {
                                new Thread(new Runnable() { // from class: com.adobe.mobile.AudienceManagerWorker.SubmitSignalTask.1
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        SubmitSignalTask.this.callback.call(map);
                                    }
                                }).start();
                            }
                        } catch (Exception e2) {
                            StaticMethods.logWarningFormat("Audience Manager - Unexpected error parsing result (%s)", e2.getLocalizedMessage());
                            if (this.callback != null) {
                                new Thread(new Runnable() { // from class: com.adobe.mobile.AudienceManagerWorker.SubmitSignalTask.1
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        SubmitSignalTask.this.callback.call(map);
                                    }
                                }).start();
                            }
                        }
                    } catch (UnsupportedEncodingException e3) {
                        StaticMethods.logWarningFormat("Audience Manager - Unable to decode server response (%s)", e3.getLocalizedMessage());
                        if (this.callback != null) {
                            new Thread(new Runnable() { // from class: com.adobe.mobile.AudienceManagerWorker.SubmitSignalTask.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    SubmitSignalTask.this.callback.call(map);
                                }
                            }).start();
                        }
                    }
                } catch (JSONException e4) {
                    StaticMethods.logWarningFormat("Audience Manager - Unable to parse JSON data (%s)", e4.getLocalizedMessage());
                    if (this.callback != null) {
                        new Thread(new Runnable() { // from class: com.adobe.mobile.AudienceManagerWorker.SubmitSignalTask.1
                            @Override // java.lang.Runnable
                            public void run() {
                                SubmitSignalTask.this.callback.call(map);
                            }
                        }).start();
                    }
                }
            } catch (Throwable th) {
                if (this.callback != null) {
                    new Thread(new Runnable() { // from class: com.adobe.mobile.AudienceManagerWorker.SubmitSignalTask.1
                        @Override // java.lang.Runnable
                        public void run() {
                            SubmitSignalTask.this.callback.call(map);
                        }
                    }).start();
                }
                throw th;
            }
        }
    }

    public static void SubmitSignal(Map<String, Object> map, AudienceManager.AudienceManagerCallback<Map<String, Object>> audienceManagerCallback) {
        StaticMethods.getAudienceExecutor().execute(new SubmitSignalTask(map, audienceManagerCallback));
    }

    public static void Reset() {
        StaticMethods.getAudienceExecutor().execute(new Runnable() { // from class: com.adobe.mobile.AudienceManagerWorker.5
            @Override // java.lang.Runnable
            public void run() {
                AudienceManagerWorker.SetUUID(null);
                AudienceManagerWorker.SetVisitorProfile(null);
            }
        });
    }

    protected static HashMap<String, Object> processJsonResponse(JSONObject jSONObject) {
        ProcessDestsArray(jSONObject);
        try {
            SetUUID(jSONObject.getString(AUDIENCE_MANAGER_JSON_USER_ID_KEY));
        } catch (JSONException e2) {
            StaticMethods.logWarningFormat("Audience Manager - Unable to parse JSON data (%s)", e2.getLocalizedMessage());
        }
        HashMap<String, Object> mapProcessStuffArray = ProcessStuffArray(jSONObject);
        if (mapProcessStuffArray.size() <= 0) {
            StaticMethods.logWarningFormat("Audience Manager - response was empty", new Object[0]);
            return null;
        }
        StaticMethods.logDebugFormat("Audience Manager - response (%s)", mapProcessStuffArray);
        SetVisitorProfile(mapProcessStuffArray);
        return mapProcessStuffArray;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String BuildSchemaRequest(Map<String, Object> map) {
        if (GetUrlPrefix() == null) {
            return null;
        }
        return (GetUrlPrefix() + GetCustomUrlVariables(map) + GetDataProviderUrlVariables() + AUDIENCE_MANAGER_URL_SUFFIX).replace("?&", "?");
    }

    private static String GetCustomUrlVariables(Map<String, Object> map) {
        if (map == null || map.size() <= 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder(1024);
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            String key = entry.getKey();
            Object value = entry.getValue();
            if (key != null && key.length() > 0 && value != null && value.toString().length() > 0 && entry.getValue().getClass() == String.class) {
                sb.append("&").append(AUDIENCE_MANAGER_CUSTOMER_DATA_PREFIX).append(StaticMethods.URLEncode(SanitizeUrlVariableName(key))).append(Engagement.Comparison.EQ).append(StaticMethods.URLEncode(value.toString()));
            }
        }
        return sb.toString();
    }

    private static String SanitizeUrlVariableName(String str) {
        return str.replace(".", d.ROLL_OVER_FILE_NAME_SEPARATOR);
    }

    private static String GetDataProviderUrlVariables() {
        StringBuilder sb = new StringBuilder();
        if (MobileConfig.getInstance().getVisitorIdServiceEnabled()) {
            sb.append(VisitorIDService.sharedInstance().getAAMParameterString());
        }
        if (GetUUID() != null) {
            sb.append("&").append(AUDIENCE_MANAGER_USER_ID_KEY).append(Engagement.Comparison.EQ).append(GetUUID());
        }
        if (_dpid != null && _dpid.length() > 0 && _dpuuid != null && _dpuuid.length() > 0) {
            sb.append("&").append(AUDIENCE_MANAGER_DATA_PROVIDER_ID_KEY).append(Engagement.Comparison.EQ).append(_dpid).append("&").append(AUDIENCE_MANAGER_DATA_PROVIDER_USER_ID_KEY).append(Engagement.Comparison.EQ).append(_dpuuid);
        }
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void SetUUID(String str) {
        try {
            SharedPreferences.Editor sharedPreferencesEditor = StaticMethods.getSharedPreferencesEditor();
            if (str == null) {
                sharedPreferencesEditor.remove(AUDIENCE_MANAGER_SHARED_PREFS_USER_ID_KEY);
            } else {
                sharedPreferencesEditor.putString(AUDIENCE_MANAGER_SHARED_PREFS_USER_ID_KEY, str);
            }
            sharedPreferencesEditor.commit();
        } catch (StaticMethods.NullContextException e2) {
            StaticMethods.logErrorFormat("Audience Manager - Error updating uuid in shared preferences (%s)", e2.getMessage());
        }
    }

    private static String GetUUID() {
        try {
            return StaticMethods.getSharedPreferences().getString(AUDIENCE_MANAGER_SHARED_PREFS_USER_ID_KEY, null);
        } catch (StaticMethods.NullContextException e2) {
            StaticMethods.logErrorFormat("Audience Manager - Error getting uuid from shared preferences (%s).", e2.getMessage());
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void SetVisitorProfile(Map<String, Object> map) {
        VisitorProfile_pred = false;
        try {
            SharedPreferences.Editor sharedPreferencesEditor = StaticMethods.getSharedPreferencesEditor();
            if (map != null) {
                sharedPreferencesEditor.putString(AUDIENCE_MANAGER_SHARED_PREFS_PROFILE_KEY, new JSONObject(map).toString());
                _visitorProfile = new HashMap<>(map);
            } else {
                sharedPreferencesEditor.remove(AUDIENCE_MANAGER_SHARED_PREFS_PROFILE_KEY);
                _visitorProfile = null;
            }
            sharedPreferencesEditor.commit();
        } catch (StaticMethods.NullContextException e2) {
            StaticMethods.logErrorFormat("Audience Manager - Error updating visitor profile (%s)", e2.getMessage());
        }
    }

    private static void ProcessDestsArray(JSONObject jSONObject) {
        try {
            JSONArray jSONArray = jSONObject.getJSONArray(AUDIENCE_MANAGER_JSON_DESTS_KEY);
            for (int i = 0; i < jSONArray.length(); i++) {
                String string = jSONArray.getJSONObject(i).getString(AUDIENCE_MANAGER_JSON_URL_KEY);
                if (string != null && string.length() > 0) {
                    RequestHandler.sendGenericRequest(string, null, ExoPlayer.Factory.DEFAULT_MIN_REBUFFER_MS, "Audience Manager");
                }
            }
        } catch (JSONException e2) {
            StaticMethods.logDebugFormat("Audience Manager - No destination in response (%s)", e2.getLocalizedMessage());
        }
    }

    private static HashMap<String, Object> ProcessStuffArray(JSONObject jSONObject) {
        HashMap<String, Object> map = new HashMap<>();
        try {
            JSONArray jSONArray = jSONObject.getJSONArray(AUDIENCE_MANAGER_JSON_STUFF_KEY);
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                if (jSONObject2 != null) {
                    map.put(jSONObject2.getString(AUDIENCE_MANAGER_JSON_COOKIE_NAME_KEY), jSONObject2.getString(AUDIENCE_MANAGER_JSON_COOKIE_VALUE_KEY));
                }
            }
        } catch (JSONException e2) {
            StaticMethods.logDebugFormat("Audience Manager - No 'stuff' array in response (%s)", e2.getLocalizedMessage());
        }
        return map;
    }

    private static String GetUrlPrefix() {
        if (UrlPrefix_pred && MobileConfig.getInstance().mobileUsingAudienceManager()) {
            UrlPrefix_pred = false;
            Object[] objArr = new Object[2];
            objArr[0] = MobileConfig.getInstance().getSSL() ? "https" : "http";
            objArr[1] = MobileConfig.getInstance().getAamServer();
            _urlPrefix = String.format("%s://%s/event?", objArr);
        }
        return _urlPrefix;
    }
}
