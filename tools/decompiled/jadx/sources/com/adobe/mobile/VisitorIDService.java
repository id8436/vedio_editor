package com.adobe.mobile;

import android.content.SharedPreferences;
import com.adobe.mobile.StaticMethods;
import com.adobe.mobile.VisitorID;
import com.google.gdata.data.analytics.Engagement;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.FutureTask;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
final class VisitorIDService {
    static final String ANALYTICS_PARAMETER_KEY_BLOB = "aamb";
    static final String ANALYTICS_PARAMETER_KEY_LOCATION_HINT = "aamlh";
    static final String ANALYTICS_PARAMETER_KEY_MID = "mid";
    static final String ANALYTICS_PARAMETER_KEY_ORG = "mcorgid";
    static final String CID_DELIMITER = "%01";
    static final String RESPONSE_KEY_BLOB = "d_blob";
    static final String RESPONSE_KEY_ERROR = "error_msg";
    static final String RESPONSE_KEY_HINT = "dcs_region";
    static final String RESPONSE_KEY_MID = "d_mid";
    static final String RESPONSE_KEY_TTL = "id_sync_ttl";
    static final String TARGET_PARAMETER_KEY_AID = "mboxMCAVID";
    static final String TARGET_PARAMETER_KEY_BLOB = "mboxAAMB";
    static final String TARGET_PARAMETER_KEY_HINT = "mboxMCGLH";
    static final String TARGET_PARAMETER_KEY_MID = "mboxMCGVID";
    static final int TIMEOUT = 2000;
    static final String VISITOR_ID_PARAMETER_KEY_CUSTOMER = "d_cid_ic";
    private String _aamIdString;
    private String _analyticsIdString;
    private String _blob;
    private List<VisitorID> _customerIds;
    private long _lastSync;
    private String _locationHint;
    private String _marketingCloudID;
    private long _ttl;
    private final Executor _visitorIDExector = Executors.newSingleThreadExecutor();
    static String SERVER = "dpm.demdex.net";
    private static VisitorIDService _instance = null;
    private static final Object _instanceMutex = new Object();

    public static VisitorIDService sharedInstance() {
        VisitorIDService visitorIDService;
        synchronized (_instanceMutex) {
            if (_instance == null) {
                _instance = new VisitorIDService();
            }
            visitorIDService = _instance;
        }
        return visitorIDService;
    }

    protected VisitorIDService() {
        resetVariablesFromSharedPreferences();
        idSync(null);
    }

    protected void resetVariablesFromSharedPreferences() {
        FutureTask futureTask = new FutureTask(new Callable<Void>() { // from class: com.adobe.mobile.VisitorIDService.1
            @Override // java.util.concurrent.Callable
            public Void call() throws Exception {
                try {
                    VisitorIDService.this._customerIds = VisitorIDService.this._parseIdString(StaticMethods.getSharedPreferences().getString("ADBMOBILE_VISITORID_IDS", null));
                    VisitorIDService.this._analyticsIdString = VisitorIDService.this._generateAnalyticsCustomerIdString(VisitorIDService.this._customerIds);
                    VisitorIDService.this._aamIdString = VisitorIDService.this._generateCustomerIdString(VisitorIDService.this._customerIds);
                    VisitorIDService.this._marketingCloudID = StaticMethods.getSharedPreferences().getString("ADBMOBILE_PERSISTED_MID", null);
                    VisitorIDService.this._locationHint = StaticMethods.getSharedPreferences().getString("ADBMOBILE_PERSISTED_MID_HINT", null);
                    VisitorIDService.this._blob = StaticMethods.getSharedPreferences().getString("ADBMOBILE_PERSISTED_MID_BLOB", null);
                    VisitorIDService.this._ttl = StaticMethods.getSharedPreferences().getLong("ADBMOBILE_VISITORID_TTL", 0L);
                    VisitorIDService.this._lastSync = StaticMethods.getSharedPreferences().getLong("ADBMOBILE_VISITORID_SYNC", 0L);
                } catch (StaticMethods.NullContextException e2) {
                    VisitorIDService.this._marketingCloudID = null;
                    VisitorIDService.this._locationHint = null;
                    VisitorIDService.this._blob = null;
                    StaticMethods.logErrorFormat("Visitor - Unable to check for stored visitor ID due to context error (%s)", e2.getMessage());
                }
                return null;
            }
        });
        this._visitorIDExector.execute(futureTask);
        try {
            futureTask.get();
        } catch (Exception e2) {
            StaticMethods.logErrorFormat("ID Service - Unable to initialize visitor ID variables(%s)", e2.getLocalizedMessage());
        }
    }

    protected void idSync(Map<String, String> map, VisitorID.VisitorIDAuthenticationState visitorIDAuthenticationState) {
        idSync(map, null, visitorIDAuthenticationState);
    }

    protected void idSync(Map<String, String> map, Map<String, String> map2) {
        idSync(map, map2, VisitorID.VisitorIDAuthenticationState.VISITOR_ID_AUTHENTICATION_STATE_UNKNOWN);
    }

    protected void idSync(Map<String, String> map) {
        idSync(map, null, VisitorID.VisitorIDAuthenticationState.VISITOR_ID_AUTHENTICATION_STATE_UNKNOWN);
    }

    protected void idSync(Map<String, String> map, Map<String, String> map2, final VisitorID.VisitorIDAuthenticationState visitorIDAuthenticationState) {
        final HashMap map3 = map != null ? new HashMap(map) : null;
        final HashMap map4 = map2 != null ? new HashMap(map2) : null;
        this._visitorIDExector.execute(new Runnable() { // from class: com.adobe.mobile.VisitorIDService.2
            @Override // java.lang.Runnable
            public void run() {
                if (MobileConfig.getInstance().getVisitorIdServiceEnabled()) {
                    String marketingCloudOrganizationId = MobileConfig.getInstance().getMarketingCloudOrganizationId();
                    boolean z = StaticMethods.getTimeSince1970() - VisitorIDService.this._lastSync > VisitorIDService.this._ttl;
                    boolean z2 = map3 != null;
                    boolean z3 = map4 != null;
                    if (VisitorIDService.this._marketingCloudID == null || z2 || z3 || z) {
                        StringBuilder sb = new StringBuilder(MobileConfig.getInstance().getSSL() ? "https" : "http");
                        sb.append("://");
                        sb.append(VisitorIDService.SERVER);
                        sb.append("/id?d_ver=2&d_orgid=");
                        sb.append(marketingCloudOrganizationId);
                        if (VisitorIDService.this._marketingCloudID != null) {
                            sb.append("&");
                            sb.append(VisitorIDService.RESPONSE_KEY_MID);
                            sb.append(Engagement.Comparison.EQ);
                            sb.append(VisitorIDService.this._marketingCloudID);
                        }
                        if (VisitorIDService.this._blob != null) {
                            sb.append("&");
                            sb.append(VisitorIDService.RESPONSE_KEY_BLOB);
                            sb.append(Engagement.Comparison.EQ);
                            sb.append(VisitorIDService.this._blob);
                        }
                        if (VisitorIDService.this._locationHint != null) {
                            sb.append("&");
                            sb.append(VisitorIDService.RESPONSE_KEY_HINT);
                            sb.append(Engagement.Comparison.EQ);
                            sb.append(VisitorIDService.this._locationHint);
                        }
                        List list_generateCustomerIds = VisitorIDService.this._generateCustomerIds(map3, visitorIDAuthenticationState);
                        String str_generateCustomerIdString = VisitorIDService.this._generateCustomerIdString(list_generateCustomerIds);
                        if (str_generateCustomerIdString != null) {
                            sb.append(str_generateCustomerIdString);
                        }
                        String str_generateInternalIdString = VisitorIDService.this._generateInternalIdString(map4);
                        if (str_generateInternalIdString != null) {
                            sb.append(str_generateInternalIdString);
                        }
                        String string = sb.toString();
                        StaticMethods.logDebugFormat("ID Service - Sending id sync call (%s)", string);
                        JSONObject response = VisitorIDService.this.parseResponse(RequestHandler.retrieveData(string, null, VisitorIDService.TIMEOUT, "ID Service"));
                        if (response != null && response.has(VisitorIDService.RESPONSE_KEY_MID) && !response.has(VisitorIDService.RESPONSE_KEY_ERROR)) {
                            try {
                                VisitorIDService.this._marketingCloudID = response.getString(VisitorIDService.RESPONSE_KEY_MID);
                                if (response.has(VisitorIDService.RESPONSE_KEY_BLOB)) {
                                    VisitorIDService.this._blob = response.getString(VisitorIDService.RESPONSE_KEY_BLOB);
                                }
                                if (response.has(VisitorIDService.RESPONSE_KEY_HINT)) {
                                    VisitorIDService.this._locationHint = response.getString(VisitorIDService.RESPONSE_KEY_HINT);
                                }
                                if (response.has(VisitorIDService.RESPONSE_KEY_TTL)) {
                                    VisitorIDService.this._ttl = response.getInt(VisitorIDService.RESPONSE_KEY_TTL);
                                }
                                StaticMethods.logDebugFormat("ID Service - Got ID Response (mid: %s, blob: %s, hint: %s, ttl: %d)", VisitorIDService.this._marketingCloudID, VisitorIDService.this._blob, VisitorIDService.this._locationHint, Long.valueOf(VisitorIDService.this._ttl));
                            } catch (JSONException e2) {
                                StaticMethods.logDebugFormat("ID Service - Error parsing response (%s)", e2.getLocalizedMessage());
                            }
                        } else {
                            if (response != null && response.has(VisitorIDService.RESPONSE_KEY_ERROR)) {
                                try {
                                    StaticMethods.logErrorFormat("ID Service - Service returned error (%s)", response.getString(VisitorIDService.RESPONSE_KEY_ERROR));
                                } catch (JSONException e3) {
                                    StaticMethods.logErrorFormat("ID Service - Unable to read error condition(%s)", e3.getLocalizedMessage());
                                }
                            }
                            if (VisitorIDService.this._marketingCloudID == null) {
                                VisitorIDService.this._marketingCloudID = VisitorIDService.this._generateMID();
                                VisitorIDService.this._blob = null;
                                VisitorIDService.this._locationHint = null;
                                VisitorIDService.this._ttl = 600L;
                                StaticMethods.logDebugFormat("ID Service - Did not return an ID, generating one locally (mid: %s, ttl: %d)", VisitorIDService.this._marketingCloudID, Long.valueOf(VisitorIDService.this._ttl));
                            }
                        }
                        VisitorIDService.this._lastSync = StaticMethods.getTimeSince1970();
                        VisitorIDService.this._customerIds = VisitorIDService.this._mergeCustomerIds(list_generateCustomerIds);
                        VisitorIDService.this._analyticsIdString = VisitorIDService.this._generateAnalyticsCustomerIdString(VisitorIDService.this._customerIds);
                        VisitorIDService.this._aamIdString = VisitorIDService.this._generateCustomerIdString(VisitorIDService.this._customerIds);
                        String str_generateStoredCustomerIdString = VisitorIDService.this._generateStoredCustomerIdString(VisitorIDService.this._customerIds);
                        WearableFunctionBridge.syncVidServiceToWearable(VisitorIDService.this._marketingCloudID, VisitorIDService.this._locationHint, VisitorIDService.this._blob, VisitorIDService.this._ttl, VisitorIDService.this._lastSync, str_generateStoredCustomerIdString);
                        try {
                            SharedPreferences.Editor sharedPreferencesEditor = StaticMethods.getSharedPreferencesEditor();
                            sharedPreferencesEditor.putString("ADBMOBILE_VISITORID_IDS", str_generateStoredCustomerIdString);
                            sharedPreferencesEditor.putString("ADBMOBILE_PERSISTED_MID", VisitorIDService.this._marketingCloudID);
                            sharedPreferencesEditor.putString("ADBMOBILE_PERSISTED_MID_HINT", VisitorIDService.this._locationHint);
                            sharedPreferencesEditor.putString("ADBMOBILE_PERSISTED_MID_BLOB", VisitorIDService.this._blob);
                            sharedPreferencesEditor.putLong("ADBMOBILE_VISITORID_TTL", VisitorIDService.this._ttl);
                            sharedPreferencesEditor.putLong("ADBMOBILE_VISITORID_SYNC", VisitorIDService.this._lastSync);
                            sharedPreferencesEditor.commit();
                        } catch (StaticMethods.NullContextException e4) {
                            StaticMethods.logErrorFormat("ID Service - Unable to persist identifiers to shared preferences(%s)", e4.getLocalizedMessage());
                        }
                    }
                }
            }
        });
    }

    protected final JSONObject parseResponse(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        try {
            return new JSONObject(new String(bArr, "UTF-8"));
        } catch (UnsupportedEncodingException e2) {
            StaticMethods.logErrorFormat("ID Service - Unable to decode response(%s)", e2.getLocalizedMessage());
            return null;
        } catch (JSONException e3) {
            StaticMethods.logDebugFormat("ID Service - Unable to parse response(%s)", e3.getLocalizedMessage());
            return null;
        }
    }

    protected final String getMarketingCloudID() {
        FutureTask futureTask = new FutureTask(new Callable<String>() { // from class: com.adobe.mobile.VisitorIDService.3
            @Override // java.util.concurrent.Callable
            public String call() throws Exception {
                return VisitorIDService.this._marketingCloudID;
            }
        });
        this._visitorIDExector.execute(futureTask);
        try {
            return (String) futureTask.get();
        } catch (Exception e2) {
            StaticMethods.logErrorFormat("ID Service - Unable to retrieve marketing cloud id from queue(%s)", e2.getLocalizedMessage());
            return null;
        }
    }

    protected final List<VisitorID> getIdentifiers() {
        FutureTask futureTask = new FutureTask(new Callable<List<VisitorID>>() { // from class: com.adobe.mobile.VisitorIDService.4
            @Override // java.util.concurrent.Callable
            public List<VisitorID> call() throws Exception {
                return new ArrayList(VisitorIDService.this._customerIds);
            }
        });
        this._visitorIDExector.execute(futureTask);
        try {
            return (List) futureTask.get();
        } catch (Exception e2) {
            StaticMethods.logErrorFormat("ID Service - Unable to retrieve marketing cloud identifiers from queue(%s)", e2.getLocalizedMessage());
            return null;
        }
    }

    protected final String getAnalyticsIDRequestParameterString() {
        final StringBuilder sb = new StringBuilder();
        FutureTask futureTask = new FutureTask(new Callable<Void>() { // from class: com.adobe.mobile.VisitorIDService.5
            @Override // java.util.concurrent.Callable
            public Void call() throws Exception {
                if (VisitorIDService.this._marketingCloudID != null) {
                    sb.append("?");
                    sb.append(VisitorIDService.ANALYTICS_PARAMETER_KEY_MID);
                    sb.append(Engagement.Comparison.EQ);
                    sb.append(VisitorIDService.this._marketingCloudID);
                    sb.append("&");
                    sb.append(VisitorIDService.ANALYTICS_PARAMETER_KEY_ORG);
                    sb.append(Engagement.Comparison.EQ);
                    sb.append(MobileConfig.getInstance().getMarketingCloudOrganizationId());
                    return null;
                }
                return null;
            }
        });
        this._visitorIDExector.execute(futureTask);
        try {
            futureTask.get();
        } catch (Exception e2) {
            StaticMethods.logErrorFormat("ID Service - Unable to retrieve analytics id parameters from queue(%s)", e2.getLocalizedMessage());
        }
        return sb.toString();
    }

    protected final Map<String, String> getAnalyticsParameters() {
        final HashMap map = new HashMap();
        FutureTask futureTask = new FutureTask(new Callable<Void>() { // from class: com.adobe.mobile.VisitorIDService.6
            @Override // java.util.concurrent.Callable
            public Void call() throws Exception {
                if (VisitorIDService.this._marketingCloudID != null) {
                    map.put(VisitorIDService.ANALYTICS_PARAMETER_KEY_MID, VisitorIDService.this._marketingCloudID);
                    if (VisitorIDService.this._blob != null) {
                        map.put(VisitorIDService.ANALYTICS_PARAMETER_KEY_BLOB, VisitorIDService.this._blob);
                    }
                    if (VisitorIDService.this._locationHint != null) {
                        map.put(VisitorIDService.ANALYTICS_PARAMETER_KEY_LOCATION_HINT, VisitorIDService.this._locationHint);
                    }
                }
                return null;
            }
        });
        this._visitorIDExector.execute(futureTask);
        try {
            futureTask.get();
        } catch (Exception e2) {
            StaticMethods.logErrorFormat("ID Service - Unable to retrieve analytics parameters from queue(%s)", e2.getLocalizedMessage());
        }
        return map;
    }

    protected final String getAnalyticsIdString() {
        FutureTask futureTask = new FutureTask(new Callable<String>() { // from class: com.adobe.mobile.VisitorIDService.7
            @Override // java.util.concurrent.Callable
            public String call() throws Exception {
                return VisitorIDService.this._analyticsIdString != null ? VisitorIDService.this._analyticsIdString : "";
            }
        });
        this._visitorIDExector.execute(futureTask);
        try {
            return (String) futureTask.get();
        } catch (Exception e2) {
            StaticMethods.logErrorFormat("ID Service - Unable to retrieve analytics id string from queue(%s)", e2.getLocalizedMessage());
            return "";
        }
    }

    protected final Map<String, Object> getAnalyticsIdVisitorParameters() {
        final HashMap map = new HashMap();
        FutureTask futureTask = new FutureTask(new Callable<Void>() { // from class: com.adobe.mobile.VisitorIDService.8
            @Override // java.util.concurrent.Callable
            public Void call() throws Exception {
                if (VisitorIDService.this._marketingCloudID != null) {
                    map.put(VisitorIDService.ANALYTICS_PARAMETER_KEY_MID, VisitorIDService.this._marketingCloudID);
                    if (VisitorIDService.this._blob != null) {
                        map.put(VisitorIDService.ANALYTICS_PARAMETER_KEY_BLOB, VisitorIDService.this._blob);
                    }
                    if (VisitorIDService.this._locationHint != null) {
                        map.put(VisitorIDService.ANALYTICS_PARAMETER_KEY_LOCATION_HINT, VisitorIDService.this._locationHint);
                    }
                }
                return null;
            }
        });
        this._visitorIDExector.execute(futureTask);
        try {
            futureTask.get();
        } catch (Exception e2) {
            StaticMethods.logErrorFormat("ID Service - Unable to retrieve analytics parameters from queue(%s)", e2.getLocalizedMessage());
        }
        return map;
    }

    protected final String getAAMParameterString() {
        final StringBuilder sb = new StringBuilder();
        FutureTask futureTask = new FutureTask(new Callable<Void>() { // from class: com.adobe.mobile.VisitorIDService.9
            @Override // java.util.concurrent.Callable
            public Void call() throws Exception {
                if (VisitorIDService.this._marketingCloudID != null) {
                    sb.append("&");
                    sb.append(VisitorIDService.RESPONSE_KEY_MID);
                    sb.append(Engagement.Comparison.EQ);
                    sb.append(VisitorIDService.this._marketingCloudID);
                    if (VisitorIDService.this._blob != null) {
                        sb.append("&");
                        sb.append(VisitorIDService.RESPONSE_KEY_BLOB);
                        sb.append(Engagement.Comparison.EQ);
                        sb.append(VisitorIDService.this._blob);
                    }
                    if (VisitorIDService.this._locationHint != null) {
                        sb.append("&");
                        sb.append(VisitorIDService.RESPONSE_KEY_HINT);
                        sb.append(Engagement.Comparison.EQ);
                        sb.append(VisitorIDService.this._locationHint);
                    }
                    if (VisitorIDService.this._aamIdString != null) {
                        sb.append(VisitorIDService.this._aamIdString);
                    }
                }
                return null;
            }
        });
        this._visitorIDExector.execute(futureTask);
        try {
            futureTask.get();
        } catch (Exception e2) {
            StaticMethods.logErrorFormat("ID Service - Unable to retrieve audience manager parameters from queue(%s)", e2.getLocalizedMessage());
        }
        return sb.toString();
    }

    protected final String getTargetParameterString() {
        final StringBuilder sb = new StringBuilder();
        FutureTask futureTask = new FutureTask(new Callable<Void>() { // from class: com.adobe.mobile.VisitorIDService.10
            @Override // java.util.concurrent.Callable
            public Void call() throws Exception {
                if (VisitorIDService.this._marketingCloudID != null) {
                    sb.append("&");
                    sb.append(VisitorIDService.TARGET_PARAMETER_KEY_MID);
                    sb.append(Engagement.Comparison.EQ);
                    sb.append(VisitorIDService.this._marketingCloudID);
                    if (VisitorIDService.this._blob != null) {
                        sb.append("&");
                        sb.append(VisitorIDService.TARGET_PARAMETER_KEY_BLOB);
                        sb.append(Engagement.Comparison.EQ);
                        sb.append(VisitorIDService.this._blob);
                    }
                    if (VisitorIDService.this._locationHint != null) {
                        sb.append("&");
                        sb.append(VisitorIDService.TARGET_PARAMETER_KEY_HINT);
                        sb.append(Engagement.Comparison.EQ);
                        sb.append(VisitorIDService.this._locationHint);
                    }
                }
                return null;
            }
        });
        this._visitorIDExector.execute(futureTask);
        try {
            futureTask.get();
        } catch (Exception e2) {
            StaticMethods.logErrorFormat("ID Service - Unable to retrieve target parameters from queue(%s)", e2.getLocalizedMessage());
        }
        String aid = StaticMethods.getAID();
        if (aid != null) {
            sb.append("&");
            sb.append(TARGET_PARAMETER_KEY_AID);
            sb.append(Engagement.Comparison.EQ);
            sb.append(aid);
        }
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String _generateMID() {
        UUID uuidRandomUUID = UUID.randomUUID();
        long mostSignificantBits = uuidRandomUUID.getMostSignificantBits();
        long leastSignificantBits = uuidRandomUUID.getLeastSignificantBits();
        Locale locale = Locale.US;
        Object[] objArr = new Object[2];
        if (mostSignificantBits < 0) {
            mostSignificantBits = -mostSignificantBits;
        }
        objArr[0] = Long.valueOf(mostSignificantBits);
        objArr[1] = Long.valueOf(leastSignificantBits < 0 ? -leastSignificantBits : leastSignificantBits);
        return String.format(locale, "%019d%019d", objArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String _generateStoredCustomerIdString(List<VisitorID> list) {
        if (list == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        for (VisitorID visitorID : list) {
            sb.append("&d_cid_ic=");
            sb.append(visitorID.idType);
            if (visitorID.id != null) {
                sb.append(CID_DELIMITER);
                sb.append(visitorID.id);
            }
            sb.append(CID_DELIMITER);
            sb.append(visitorID.authenticationState.getValue());
        }
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String _generateCustomerIdString(List<VisitorID> list) {
        if (list == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        for (VisitorID visitorID : list) {
            sb.append("&d_cid_ic=");
            sb.append(StaticMethods.URLEncode(visitorID.idType));
            String strURLEncode = StaticMethods.URLEncode(visitorID.id);
            if (strURLEncode != null) {
                sb.append(CID_DELIMITER);
                sb.append(strURLEncode);
            }
            sb.append(CID_DELIMITER);
            sb.append(visitorID.authenticationState.getValue());
        }
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String _generateInternalIdString(Map<String, String> map) {
        if (map == null) {
            return null;
        }
        HashMap map2 = new HashMap(map);
        StringBuilder sb = new StringBuilder();
        for (Map.Entry entry : map2.entrySet()) {
            sb.append("&d_cid=");
            sb.append(StaticMethods.URLEncode((String) entry.getKey()));
            sb.append(CID_DELIMITER);
            sb.append(StaticMethods.URLEncode((String) entry.getValue()));
        }
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String _generateAnalyticsCustomerIdString(List<VisitorID> list) {
        if (list == null) {
            return null;
        }
        HashMap map = new HashMap();
        for (VisitorID visitorID : list) {
            map.put(visitorID.serializeIdentifierKeyForAnalyticsID(), visitorID.id);
            map.put(visitorID.serializeAuthenticationKeyForAnalyticsID(), Integer.valueOf(visitorID.authenticationState.getValue()));
        }
        HashMap map2 = new HashMap();
        map2.put("cid", StaticMethods.translateContextData(map));
        StringBuilder sb = new StringBuilder(2048);
        StaticMethods.serializeToQueryString(map2, sb);
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<VisitorID> _generateCustomerIds(Map<String, String> map, VisitorID.VisitorIDAuthenticationState visitorIDAuthenticationState) {
        if (map == null) {
            return null;
        }
        HashMap map2 = new HashMap(map);
        ArrayList arrayList = new ArrayList();
        for (Map.Entry entry : map2.entrySet()) {
            try {
                arrayList.add(new VisitorID(VISITOR_ID_PARAMETER_KEY_CUSTOMER, (String) entry.getKey(), (String) entry.getValue(), visitorIDAuthenticationState));
            } catch (IllegalStateException e2) {
                StaticMethods.logWarningFormat("ID Service - Unable to create ID after encoding:(%s)", e2.getLocalizedMessage());
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<VisitorID> _mergeCustomerIds(List<VisitorID> list) {
        if (list == null) {
            return this._customerIds;
        }
        ArrayList arrayList = this._customerIds != null ? new ArrayList(this._customerIds) : new ArrayList();
        for (VisitorID visitorID : list) {
            Iterator it = arrayList.iterator();
            while (true) {
                if (it.hasNext()) {
                    VisitorID visitorID2 = (VisitorID) it.next();
                    if (visitorID2.isVisitorID(visitorID.idType, visitorID.id)) {
                        visitorID2.authenticationState = visitorID.authenticationState;
                        break;
                    }
                } else {
                    try {
                        arrayList.add(visitorID);
                        break;
                    } catch (IllegalStateException e2) {
                        StaticMethods.logWarningFormat("ID Service - Unable to create ID after encoding:(%s)", e2.getLocalizedMessage());
                    }
                }
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<VisitorID> _parseIdString(String str) {
        if (str == null) {
            return null;
        }
        List<String> listAsList = Arrays.asList(str.split("&"));
        ArrayList arrayList = new ArrayList();
        for (String str2 : listAsList) {
            if (str2.length() > 0) {
                List listAsList2 = Arrays.asList(str2.split(Engagement.Comparison.EQ));
                List listAsList3 = Arrays.asList(((String) listAsList2.get(1)).split(CID_DELIMITER));
                if (listAsList2.size() != 2 || listAsList3.size() != 3) {
                    return arrayList;
                }
                try {
                    arrayList.add(new VisitorID((String) listAsList2.get(0), (String) listAsList3.get(0), (String) listAsList3.get(1), VisitorID.VisitorIDAuthenticationState.values()[Integer.parseInt((String) listAsList3.get(2))]));
                } catch (IllegalStateException e2) {
                    StaticMethods.logWarningFormat("ID Service - Unable to create ID after encoding:(%s)", e2.getLocalizedMessage());
                } catch (NumberFormatException e3) {
                    StaticMethods.logErrorFormat("ID Service - Unable to parse visitor ID: (%s) exception:(%s)", str, e3.getLocalizedMessage());
                }
            }
        }
        return arrayList;
    }
}
