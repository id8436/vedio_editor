package com.adobe.mobile;

import android.content.SharedPreferences;
import com.adobe.mobile.RequestHandler;
import com.adobe.mobile.StaticMethods;
import com.adobe.mobile.Target;
import com.google.gdata.data.analytics.Engagement;
import java.math.BigDecimal;
import java.net.HttpCookie;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;

/* JADX INFO: loaded from: classes2.dex */
final class TargetWorker {
    protected static final String COOKIE_EXPIRES_KEY_SUFFIX = "_Expires";
    protected static final String COOKIE_NAME_PCID = "mboxPC";
    protected static final String COOKIE_NAME_SESSION = "mboxSession";
    protected static final String COOKIE_VALUE_KEY_SUFFIX = "_Value";
    protected static final String LOCATION_CONTENT_TYPE = "text%2Fplain%3Bcharset%3Dutf-8";
    protected static final String LOCATION_SERVER_SUFFIX = ".tt.omtrdc.net";
    protected static final String LOCATION_SESSION_STRING = "&mboxSession=%s&mboxPC=%s&mboxXDomain=disabled";
    private static final String OFFER_ENCODING = "UTF-8";
    private static final int TO_MILLI = 1000;
    private static String _pcId;
    private static HashMap<String, Object> _persistentParameters;
    private static String _sessionId;
    private static final Object _sessionIdMutex = new Object();
    private static final Object _pcIdMutex = new Object();
    private static final Object _parameterMutex = new Object();
    private static String _serverURL = null;
    private static final Object _serverURLMutex = new Object();

    TargetWorker() {
    }

    protected static void loadRequest(TargetLocationRequest targetLocationRequest, Target.TargetCallback<String> targetCallback) {
        if (targetLocationRequest == null) {
            StaticMethods.logWarningFormat("Target - LocationRequest parameter is null", new Object[0]);
            if (targetCallback != null) {
                targetCallback.call(null);
                return;
            }
            return;
        }
        new Thread(new SendRequestTask(targetLocationRequest, targetCallback)).start();
    }

    public class SendRequestTask implements Runnable {
        private Target.TargetCallback<String> callback;
        private BigDecimal lifetimeValue;
        private TargetLocationRequest request;

        private SendRequestTask(TargetLocationRequest targetLocationRequest, Target.TargetCallback<String> targetCallback) {
            this.request = targetLocationRequest;
            this.callback = targetCallback;
            this.lifetimeValue = AnalyticsTrackLifetimeValueIncrease.getLifetimeValue();
        }

        @Override // java.lang.Runnable
        public void run() throws Throwable {
            if (this.lifetimeValue != null) {
                TargetWorker.addPersistentParameter("a.ltv.amount", this.lifetimeValue.toString());
            }
            String uRLRequestString = TargetWorker.getURLRequestString(this.request.name, this.request.parameters);
            if (uRLRequestString == null || uRLRequestString.length() <= 0) {
                StaticMethods.logWarningFormat("Target - LocationRequest requires a name.", new Object[0]);
                if (this.callback != null) {
                    this.callback.call(this.request.defaultContent);
                    return;
                }
                return;
            }
            try {
                byte[] bArrRetrieveData = RequestHandler.retrieveData(uRLRequestString, MobileConfig.getInstance().getDefaultLocationTimeout() * 1000, "Target", new Callable<Map<String, String>>() { // from class: com.adobe.mobile.TargetWorker.SendRequestTask.1
                    @Override // java.util.concurrent.Callable
                    public Map<String, String> call() {
                        String cookieValue = TargetWorker.getCookieValue("mboxPC");
                        String str = cookieValue + (cookieValue.length() > 0 ? "; " : "") + TargetWorker.getCookieValue("mboxSession");
                        HashMap map = new HashMap();
                        map.put("Cookie", str);
                        return map;
                    }
                }, new RequestHandler.HeaderCallback() { // from class: com.adobe.mobile.TargetWorker.SendRequestTask.2
                    @Override // com.adobe.mobile.RequestHandler.HeaderCallback
                    public void call(Map<String, List<String>> map) {
                        TargetWorker.readAndStoreCookiesFromHeaders(map);
                    }
                });
                if (bArrRetrieveData != null && bArrRetrieveData.length > 0) {
                    String str = new String(bArrRetrieveData, "UTF-8");
                    if (this.callback != null) {
                        this.callback.call(str);
                    }
                } else {
                    StaticMethods.logWarningFormat("Target - No content found or user didn't qualify for campaign for LocationRequest (%s)", this.request.name);
                    if (this.callback != null) {
                        this.callback.call(this.request.defaultContent);
                    }
                }
            } catch (RuntimeException e2) {
                throw e2;
            } catch (Exception e3) {
                StaticMethods.logWarningFormat("Target - Unable to retrieve content (%s)", e3.getLocalizedMessage());
                if (this.callback != null) {
                    this.callback.call(this.request.defaultContent);
                }
            }
        }
    }

    protected static void clearCookies() {
        deleteCookie("mboxSession");
        deleteCookie("mboxPC");
    }

    protected static String getPcID() {
        String str;
        synchronized (_pcIdMutex) {
            str = _pcId;
        }
        return str;
    }

    protected static String getSessionID() {
        String str;
        synchronized (_sessionIdMutex) {
            str = _sessionId;
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String getURLRequestString(String str, Map<String, Object> map) {
        String paramsString;
        HashMap map2;
        if (str == null || str.length() <= 0 || !MobileConfig.getInstance().mobileUsingTarget()) {
            return null;
        }
        synchronized (_parameterMutex) {
            paramsString = getParamsString(_persistentParameters);
        }
        FutureTask futureTask = new FutureTask(new Callable<HashMap<String, Object>>() { // from class: com.adobe.mobile.TargetWorker.1
            @Override // java.util.concurrent.Callable
            public HashMap<String, Object> call() throws Exception {
                return Lifecycle.getContextData();
            }
        });
        StaticMethods.getAnalyticsExecutor().execute(futureTask);
        try {
            map2 = (HashMap) futureTask.get();
        } catch (Exception e2) {
            StaticMethods.logDebugFormat("Target - Unable to get lifecycle data (%s)", e2.getMessage());
            map2 = null;
        }
        String str2 = getServerURL(MobileConfig.getInstance().getClientCode()) + "/m2/" + MobileConfig.getInstance().getClientCode() + "/ubox/raw?mboxContentType=" + LOCATION_CONTENT_TYPE + "&t=" + StaticMethods.getTimeSince1970() + getSessionString() + "&mboxDefault=none&mbox=" + str + (MobileConfig.getInstance().getVisitorIdServiceEnabled() ? VisitorIDService.sharedInstance().getTargetParameterString() : "") + getParamsString(map) + getParamsString(map2) + paramsString;
        StaticMethods.logDebugFormat("Target - LocationRequest (%s) loading URL: %s", str, str2);
        return str2;
    }

    private static String getSessionString() {
        String str;
        String str2;
        synchronized (_pcIdMutex) {
            str = _pcId;
        }
        synchronized (_sessionIdMutex) {
            str2 = _sessionId;
        }
        if (str2 != null && str2.trim().length() > 0 && str != null && str.trim().length() > 0) {
            return String.format(LOCATION_SESSION_STRING, str2, str);
        }
        return "";
    }

    private static String getServerURL(String str) {
        String str2;
        synchronized (_serverURLMutex) {
            if (_serverURL == null) {
                _serverURL = (MobileConfig.getInstance().getSSL() ? "https://" : "http://") + str + LOCATION_SERVER_SUFFIX;
            }
            str2 = _serverURL;
        }
        return str2;
    }

    private static String getParamsString(Map<String, Object> map) {
        if (map == null || map.size() == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            String key = entry.getKey();
            Object value = entry.getValue();
            if (key != null && key.length() > 0 && value != null && value.toString().length() > 0) {
                sb.append("&");
                sb.append(StaticMethods.URLEncode(key));
                sb.append(Engagement.Comparison.EQ);
                sb.append(StaticMethods.URLEncode(value.toString()));
            }
        }
        return sb.toString();
    }

    private static void deleteCookie(String str) {
        if (str.equals("mboxSession")) {
            synchronized (_sessionIdMutex) {
                _sessionId = null;
            }
        } else if (str.equals("mboxPC")) {
            synchronized (_pcIdMutex) {
                _pcId = null;
            }
        }
        try {
            SharedPreferences.Editor sharedPreferencesEditor = StaticMethods.getSharedPreferencesEditor();
            sharedPreferencesEditor.remove(str + COOKIE_VALUE_KEY_SUFFIX);
            sharedPreferencesEditor.remove(str + COOKIE_EXPIRES_KEY_SUFFIX);
            sharedPreferencesEditor.commit();
        } catch (StaticMethods.NullContextException e2) {
            StaticMethods.logErrorFormat("Target - Error persisting cookies (%s)", e2.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String getCookieValue(String str) {
        try {
            long j = StaticMethods.getSharedPreferences().getLong(str + COOKIE_EXPIRES_KEY_SUFFIX, 0L);
            if (j > 0 && j > System.currentTimeMillis()) {
                String string = StaticMethods.getSharedPreferences().getString(str + COOKIE_VALUE_KEY_SUFFIX, "");
                if (string != null) {
                    return str + Engagement.Comparison.EQ + string;
                }
            } else {
                deleteCookie(str);
            }
        } catch (StaticMethods.NullContextException e2) {
            StaticMethods.logErrorFormat("Target - Error loading cookie data (%s)", e2.getMessage());
        }
        return "";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void readAndStoreCookiesFromHeaders(Map<String, List<String>> map) {
        List<String> list = map.get("Set-Cookie");
        if (list != null) {
            Iterator<String> it = list.iterator();
            while (it.hasNext()) {
                for (HttpCookie httpCookie : HttpCookie.parse(it.next())) {
                    String name = httpCookie.getName();
                    if (name.equals("mboxSession")) {
                        synchronized (_sessionIdMutex) {
                            _sessionId = httpCookie.getValue();
                        }
                        storeCookie(httpCookie);
                    } else if (name.equals("mboxPC")) {
                        synchronized (_pcIdMutex) {
                            _pcId = httpCookie.getValue();
                        }
                        storeCookie(httpCookie);
                    } else {
                        continue;
                    }
                }
            }
        }
    }

    private static void storeCookie(HttpCookie httpCookie) {
        try {
            SharedPreferences.Editor sharedPreferencesEditor = StaticMethods.getSharedPreferencesEditor();
            sharedPreferencesEditor.putString(httpCookie.getName() + COOKIE_VALUE_KEY_SUFFIX, httpCookie.getValue());
            sharedPreferencesEditor.putLong(httpCookie.getName() + COOKIE_EXPIRES_KEY_SUFFIX, (httpCookie.getMaxAge() * 1000) + System.currentTimeMillis());
            sharedPreferencesEditor.commit();
        } catch (StaticMethods.NullContextException e2) {
            StaticMethods.logErrorFormat("Target - Error persisting cookie (%s)", e2.getLocalizedMessage());
        }
    }

    protected static void addPersistentParameter(String str, String str2) {
        if (str != null && str2 != null) {
            synchronized (_parameterMutex) {
                if (_persistentParameters == null) {
                    _persistentParameters = new HashMap<>();
                }
                _persistentParameters.put(str, str2);
            }
        }
    }

    protected static void removePersistentParameter(String str) {
        if (str != null) {
            synchronized (_parameterMutex) {
                if (_persistentParameters != null) {
                    _persistentParameters.remove(str);
                }
            }
        }
    }
}
