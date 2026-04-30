package com.adobe.mobile;

import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import com.adobe.mobile.StaticMethods;
import com.google.gdata.data.analytics.Engagement;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
final class ReferrerHandler {
    static final String ACQUISITION_V3_TOKEN = "adb_acq_v3";
    static final String CONTEXT_DATA_KEY = "contextData";
    private static boolean _referrerProcessed = true;
    static final String[] REFERRER_FIELDS = {"utm_source", "utm_medium", "utm_term", "utm_content", "utm_campaign", "trackingcode"};

    ReferrerHandler() {
    }

    protected static void setReferrerProcessed(boolean z) {
        _referrerProcessed = z;
    }

    protected static boolean getReferrerProcessed() {
        return _referrerProcessed;
    }

    public static void processIntent(Intent intent) {
        String referrerURLFromIntent = getReferrerURLFromIntent(intent);
        if (referrerURLFromIntent == null || referrerURLFromIntent.length() == 0) {
            StaticMethods.logDebugFormat("Analytics - Ignoring referrer due to the intent's referrer string being empty", new Object[0]);
            return;
        }
        StaticMethods.logDebugFormat("Analytics - Received referrer information(%s)", referrerURLFromIntent);
        HashMap<String, Object> referrerURLToMap = parseReferrerURLToMap(referrerURLFromIntent);
        if (isV3Response(referrerURLToMap)) {
            handleV3Acquisition(referrerURLToMap);
        } else {
            handleV1Acquisition(referrerURLToMap);
        }
    }

    protected static String getReferrerURLFromIntent(Intent intent) {
        if (intent == null) {
            StaticMethods.logWarningFormat("Analytics - Unable to process referrer due to an invalid intent parameter", new Object[0]);
            return null;
        }
        if (!intent.getAction().equals("com.android.vending.INSTALL_REFERRER")) {
            StaticMethods.logDebugFormat("Analytics - Ignoring referrer due to the intent's action not being handled by analytics", new Object[0]);
            return null;
        }
        try {
            Bundle extras = intent.getExtras();
            if (extras != null) {
                extras.containsKey(null);
            }
            String stringExtra = intent.getStringExtra("referrer");
            if (stringExtra == null) {
                return null;
            }
            try {
                return URLDecoder.decode(stringExtra, "UTF-8");
            } catch (Exception e2) {
                return stringExtra;
            }
        } catch (Exception e3) {
            return null;
        }
    }

    protected static HashMap<String, Object> parseReferrerURLToMap(String str) {
        HashMap<String, Object> map = new HashMap<>();
        for (String str2 : str.split("&")) {
            String[] strArrSplit = str2.split(Engagement.Comparison.EQ);
            if (strArrSplit.length == 2) {
                map.put(strArrSplit[0], strArrSplit[1]);
            }
        }
        return map;
    }

    protected static void handleV1Acquisition(HashMap<String, Object> map) {
        if (Lifecycle.lifecycleHasRun) {
            if (map.containsKey("utm_source") && map.containsKey("utm_campaign")) {
                final HashMap map2 = new HashMap();
                map2.put("a.referrer.campaign.source", map.get("utm_source"));
                map2.put("a.referrer.campaign.medium", map.get("utm_medium"));
                map2.put("a.referrer.campaign.term", map.get("utm_term"));
                map2.put("a.referrer.campaign.content", map.get("utm_content"));
                map2.put("a.referrer.campaign.name", map.get("utm_campaign"));
                map2.put("a.referrer.campaign.trackingcode", map.get("trackingcode"));
                StaticMethods.getAnalyticsExecutor().execute(new Runnable() { // from class: com.adobe.mobile.ReferrerHandler.1
                    @Override // java.lang.Runnable
                    public void run() {
                        Lifecycle.updateContextData(map2);
                    }
                });
                AnalyticsWorker.sharedInstance().kickWithReferrerData(map2);
                return;
            }
            return;
        }
        try {
            SharedPreferences.Editor sharedPreferencesEditor = StaticMethods.getSharedPreferencesEditor();
            for (String str : REFERRER_FIELDS) {
                if (map.containsKey(str) && map.get(str) != null) {
                    sharedPreferencesEditor.putString(str, map.get(str).toString());
                }
            }
            sharedPreferencesEditor.commit();
        } catch (StaticMethods.NullContextException e2) {
            StaticMethods.logErrorFormat("Analytics - Error persisting referrer data (%s)", e2.getMessage());
        }
        _referrerProcessed = true;
    }

    protected static void handleV3Acquisition(HashMap<String, Object> map) {
        String referrerDataFromV3Server = getReferrerDataFromV3Server((String) map.get("utm_content"), StaticMethods.getAdvertisingIdentifier());
        if (Lifecycle.lifecycleHasRun) {
            if (_referrerProcessed) {
                StaticMethods.logDebugFormat("Analytics - Acquisition referrer timed out", new Object[0]);
                return;
            }
            final HashMap<String, Object> v3Response = parseV3Response(referrerDataFromV3Server);
            StaticMethods.getAnalyticsExecutor().execute(new Runnable() { // from class: com.adobe.mobile.ReferrerHandler.2
                @Override // java.lang.Runnable
                public void run() {
                    Lifecycle.updateContextData(v3Response);
                }
            });
            AnalyticsWorker.sharedInstance().kickWithReferrerData(v3Response);
            return;
        }
        try {
            SharedPreferences.Editor sharedPreferencesEditor = StaticMethods.getSharedPreferencesEditor();
            sharedPreferencesEditor.putString("ADMS_Referrer_ContextData_Json_String", referrerDataFromV3Server);
            sharedPreferencesEditor.commit();
        } catch (StaticMethods.NullContextException e2) {
            StaticMethods.logErrorFormat("Analytics - Error persisting referrer data (%s)", e2.getMessage());
        }
        _referrerProcessed = true;
    }

    protected static boolean isV3Response(HashMap<String, Object> map) {
        return ACQUISITION_V3_TOKEN.equals(map.get("utm_source")) && ACQUISITION_V3_TOKEN.equals(map.get("utm_campaign"));
    }

    protected static HashMap<String, Object> parseV3Response(String str) {
        HashMap<String, Object> map = new HashMap<>();
        if (str != null && str.length() != 0) {
            try {
                try {
                    JSONObject jSONObject = new JSONObject(str).getJSONObject(CONTEXT_DATA_KEY);
                    if (jSONObject != null && jSONObject.has("a.referrer.campaign.name")) {
                        Iterator<String> itKeys = jSONObject.keys();
                        while (itKeys.hasNext()) {
                            String string = itKeys.next().toString();
                            try {
                                map.put(string, jSONObject.getString(string));
                            } catch (JSONException e2) {
                                StaticMethods.logDebugFormat("Analytics - Unable to parse acquisition service response (the value for %s is not a string)", string);
                            }
                        }
                        StaticMethods.logDebugFormat("Analytics - Received Referrer Data(%s)", map.toString());
                    }
                } catch (JSONException e3) {
                    StaticMethods.logDebugFormat("Analytics - Unable to parse acquisition service response (no contextData parameter in response)", new Object[0]);
                }
            } catch (JSONException e4) {
                StaticMethods.logDebugFormat("Analytics - Unable to parse response(%s)", e4.getLocalizedMessage());
            }
        }
        return map;
    }

    protected static String getReferrerDataFromV3Server(String str, String str2) {
        if (!MobileConfig.getInstance().mobileReferrerConfigured()) {
            return null;
        }
        String strGenerateURLForV3 = generateURLForV3(str, str2);
        StaticMethods.logDebugFormat("Analytics - Trying to fetch referrer data from (%s)", strGenerateURLForV3);
        byte[] bArrRetrieveData = RequestHandler.retrieveData(strGenerateURLForV3, null, MobileConfig.getInstance().getReferrerTimeout(), "Analytics");
        if (bArrRetrieveData == null) {
            return null;
        }
        try {
            return new String(bArrRetrieveData, "UTF-8");
        } catch (UnsupportedEncodingException e2) {
            StaticMethods.logErrorFormat("Analytics - Unable to decode response(%s)", e2.getLocalizedMessage());
            return null;
        }
    }

    protected static String generateURLForV3(String str, String str2) {
        StringBuilder sb = new StringBuilder(64);
        MobileConfig mobileConfig = MobileConfig.getInstance();
        sb.append(String.format("http://%s/v3/%s/end", mobileConfig.getAcquisitionServer(), mobileConfig.getAcquisitionAppId()));
        StringBuilder sb2 = new StringBuilder(64);
        if (str != null && str.length() > 0) {
            sb2.append(String.format("?a_ugid=%s", StaticMethods.URLEncode(str)));
        }
        if (str2 != null && str2.length() > 0) {
            sb2.append(sb2.length() > 0 ? "&" : "?");
            sb2.append(String.format("a_cid=%s", StaticMethods.URLEncode(str2)));
        }
        return sb.append((CharSequence) sb2).toString();
    }
}
