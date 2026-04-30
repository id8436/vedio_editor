package com.adobe.mobile;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import android.util.Log;
import c.a.a.a.a.d.d;
import com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsSDKReporter;
import com.adobe.mobile.Config;
import com.adobe.xmp.XMPConst;
import com.behance.sdk.util.BehanceSDKConstants;
import com.google.android.exoplayer.text.ttml.TtmlNode;
import com.google.api.gbase.client.GoogleBaseNamespaces;
import com.google.common.primitives.UnsignedBytes;
import com.google.gdata.client.GDataProtocol;
import com.google.gdata.data.analytics.Engagement;
import java.io.File;
import java.io.UnsupportedEncodingException;
import java.lang.ref.WeakReference;
import java.net.URLDecoder;
import java.security.SecureRandom;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
final class StaticMethods {
    private static final String ADID_DPID = "20914";
    private static final String AID_JSON_ID_KEY = "id";
    private static final String CARRIER_NAME_KEY = "a.CarrierName";
    private static final String DEVICE_NAME_KEY = "a.DeviceName";
    protected static final String LAST_KNOWN_TIMESTAMP_KEY = "ADBLastKnownTimestampKey";
    protected static final String LIBRARY_VERSION = "4.8.2-AN";
    private static final String MCPNS_DPID = "20919";
    private static final String NO_ACTIVITY_MESSAGE = "Message - No Current Activity (Messages must have a reference to the current activity to work properly)";
    private static final String NO_CONTEXT_MESSAGE = "Config - No Application Context (Application context must be set prior to calling any library functions.)";
    private static final String NO_SHARED_PREFERENCES_EDITOR_MESSAGE = "Config - Unable to create an instance of a SharedPreferences Editor";
    private static final String NO_SHARED_PREFERENCES_MESSAGE = "Config - No SharedPreferences available";
    private static final String PUSH_ID_ENABLED_ACTION_NAME = "Push";
    private static final String RESOLUTION_KEY = "a.Resolution";
    private static final String RUN_MODE_APPLICATION = "Application";
    private static final String RUN_MODE_EXTENSION = "Extension";
    private static final String RUN_MODE_KEY = "a.RunMode";
    protected static final String TIME_SINCE_LAUNCH_KEY = "a.TimeSinceLaunch";
    private static boolean _debugLogging;
    private static final String[] encodedChars = {"%00", "%01", "%02", "%03", "%04", "%05", "%06", "%07", "%08", "%09", "%0A", "%0B", "%0C", "%0D", "%0E", "%0F", "%10", "%11", "%12", "%13", "%14", "%15", "%16", "%17", "%18", "%19", "%1A", "%1B", "%1C", "%1D", "%1E", "%1F", "%20", "%21", "%22", "%23", "%24", "%25", "%26", "%27", "%28", "%29", "*", "%2B", "%2C", "-", ".", "%2F", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "%3A", "%3B", "%3C", "%3D", "%3E", "%3F", "%40", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", AdobeAnalyticsSDKReporter.AdobeAnalyticsValueNo, "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", AdobeAnalyticsSDKReporter.AdobeAnalyticsValueYes, "Z", "%5B", "%5C", "%5D", "%5E", d.ROLL_OVER_FILE_NAME_SEPARATOR, "%60", "a", "b", "c", "d", "e", "f", GoogleBaseNamespaces.G_ALIAS, "h", "i", "j", "k", "l", "m", "n", "o", TtmlNode.TAG_P, "q", "r", "s", "t", "u", GDataProtocol.Parameter.VERSION, "w", "x", "y", "z", "%7B", "%7C", "%7D", "%7E", "%7F", "%80", "%81", "%82", "%83", "%84", "%85", "%86", "%87", "%88", "%89", "%8A", "%8B", "%8C", "%8D", "%8E", "%8F", "%90", "%91", "%92", "%93", "%94", "%95", "%96", "%97", "%98", "%99", "%9A", "%9B", "%9C", "%9D", "%9E", "%9F", "%A0", "%A1", "%A2", "%A3", "%A4", "%A5", "%A6", "%A7", "%A8", "%A9", "%AA", "%AB", "%AC", "%AD", "%AE", "%AF", "%B0", "%B1", "%B2", "%B3", "%B4", "%B5", "%B6", "%B7", "%B8", "%B9", "%BA", "%BB", "%BC", "%BD", "%BE", "%BF", "%C0", "%C1", "%C2", "%C3", "%C4", "%C5", "%C6", "%C7", "%C8", "%C9", "%CA", "%CB", "%CC", "%CD", "%CE", "%CF", "%D0", "%D1", "%D2", "%D3", "%D4", "%D5", "%D6", "%D7", "%D8", "%D9", "%DA", "%DB", "%DC", "%DD", "%DE", "%DF", "%E0", "%E1", "%E2", "%E3", "%E4", "%E5", "%E6", "%E7", "%E8", "%E9", "%EA", "%EB", "%EC", "%ED", "%EE", "%EF", "%F0", "%F1", "%F2", "%F3", "%F4", "%F5", "%F6", "%F7", "%F8", "%F9", "%FA", "%FB", "%FC", "%FD", "%FE", "%FF"};
    private static final boolean[] utf8Mask = {false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, true, true, false, true, true, true, true, true, true, true, true, true, true, false, false, false, false, false, false, false, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, false, false, false, false, true, false, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false};
    private static final boolean[] contextDataMask = {false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, true, true, true, true, true, true, true, true, true, true, false, false, false, false, false, false, false, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, false, false, false, false, true, false, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false};
    private static Config.ApplicationType _appType = Config.ApplicationType.APPLICATION_TYPE_HANDHELD;
    private static boolean _isWearable = false;
    private static SharedPreferences prefs = null;
    private static final Object _sharedPreferencesMutex = new Object();
    private static String appID = null;
    private static final Object _applicationIDMutex = new Object();
    private static String appName = null;
    private static final Object _applicationNameMutex = new Object();
    private static String versionName = null;
    private static final Object _applicationVersionMutex = new Object();
    private static int versionCode = -1;
    private static final Object _applicationVersionCodeMutex = new Object();
    private static String visitorID = null;
    private static final Object _visitorIDMutex = new Object();
    private static final Object _userIdentifierMutex = new Object();
    private static boolean pushEnabled = false;
    private static final Object _pushEnabledMutex = new Object();
    private static String pushIdentifier = null;
    private static final Object _pushIdentifierMutex = new Object();
    private static String advertisingIdentifier = null;
    private static final Object _advertisingIdentifierMutex = new Object();
    private static String userAgent = null;
    private static final Object _userAgentMutex = new Object();
    private static HashMap<String, Object> defaultData = null;
    private static final Object _defaultDataMutex = new Object();
    private static String resolution = null;
    private static final Object _resolutionMutex = new Object();
    private static String carrier = null;
    private static final Object _carrierMutex = new Object();
    private static String operatingSystem = null;
    private static final Object _operatingSystemMutex = new Object();
    private static String timestamp = null;
    private static final Object _timestampMutex = new Object();
    private static ExecutorService mediaExecutor = null;
    private static final Object _mediaExecutorMutex = new Object();
    private static ExecutorService timedActionsExecutor = null;
    private static final Object _timedActionsExecutorMutex = new Object();
    private static ExecutorService sharedExecutor = null;
    private static final Object _sharedExecutorMutex = new Object();
    private static ExecutorService analyticsExecutor = null;
    private static final Object _analyticsExecutorMutex = new Object();
    private static ExecutorService messagesExecutor = null;
    private static final Object _messagesExecutorMutex = new Object();
    private static ExecutorService thirdPartyCallbacksExecutor = null;
    private static final Object _thirdPartyCallbacksExecutorMutex = new Object();
    private static ExecutorService messageImageCachingExecutor = null;
    private static final Object _messageImageCachingExecutorMutex = new Object();
    private static ExecutorService audienceExecutor = null;
    private static final Object _audienceExecutorMutex = new Object();
    private static String aid = null;
    private static boolean _aidDone = false;
    private static final Object _aidMutex = new Object();
    static final Map<String, String> _contextDataKeyWhiteList = new HashMap(256);
    static int _contextDataKeyWhiteListCount = 0;
    private static Context sharedContext = null;
    private static WeakReference<Activity> _activity = null;
    private static final Object _currentActivityMutex = new Object();
    private static final char[] BYTE_TO_HEX = "000102030405060708090A0B0C0D0E0F101112131415161718191A1B1C1D1E1F202122232425262728292A2B2C2D2E2F303132333435363738393A3B3C3D3E3F404142434445464748494A4B4C4D4E4F505152535455565758595A5B5C5D5E5F606162636465666768696A6B6C6D6E6F707172737475767778797A7B7C7D7E7F808182838485868788898A8B8C8D8E8F909192939495969798999A9B9C9D9E9FA0A1A2A3A4A5A6A7A8A9AAABACADAEAFB0B1B2B3B4B5B6B7B8B9BABBBCBDBEBFC0C1C2C3C4C5C6C7C8C9CACBCCCDCECFD0D1D2D3D4D5D6D7D8D9DADBDCDDDEDFE0E1E2E3E4E5E6E7E8E9EAEBECEDEEEFF0F1F2F3F4F5F6F7F8F9FAFBFCFDFEFF".toCharArray();

    StaticMethods() {
    }

    public class NullContextException extends Exception {
        public NullContextException(String str) {
            super(str);
        }
    }

    public class NullActivityException extends Exception {
        public NullActivityException(String str) {
            super(str);
        }
    }

    protected static SharedPreferences getSharedPreferences() throws NullContextException {
        SharedPreferences sharedPreferences;
        synchronized (_sharedPreferencesMutex) {
            if (prefs == null) {
                prefs = getSharedContext().getSharedPreferences("APP_MEASUREMENT_CACHE", 0);
                if (prefs == null) {
                    logWarningFormat(NO_SHARED_PREFERENCES_MESSAGE, new Object[0]);
                }
            }
            if (prefs == null) {
                throw new NullContextException(NO_SHARED_PREFERENCES_MESSAGE);
            }
            sharedPreferences = prefs;
        }
        return sharedPreferences;
    }

    protected static String getApplicationID() {
        String str;
        synchronized (_applicationIDMutex) {
            if (appID == null) {
                appID = (getApplicationName() != null ? getApplicationName() : "") + ((getApplicationVersion() == null || getApplicationVersion().length() <= 0) ? "" : " " + getApplicationVersion() + " ") + (getApplicationVersionCode() != 0 ? String.format(Locale.US, "(%d)", Integer.valueOf(getApplicationVersionCode())) : "");
                try {
                    SharedPreferences.Editor sharedPreferencesEditor = getSharedPreferencesEditor();
                    sharedPreferencesEditor.putString("ADOBEMOBILE_STOREDDEFAULTS_APPID", appID);
                    sharedPreferencesEditor.commit();
                } catch (NullContextException e2) {
                    logWarningFormat("Config - Unable to set Application ID in preferences (%s)", e2.getLocalizedMessage());
                }
                str = appID;
            } else {
                str = appID;
            }
        }
        return str;
    }

    private static String getApplicationName() {
        String str;
        synchronized (_applicationNameMutex) {
            if (appName == null) {
                appName = "";
                try {
                    PackageManager packageManager = getSharedContext().getPackageManager();
                    if (packageManager != null) {
                        ApplicationInfo applicationInfo = packageManager.getApplicationInfo(getSharedContext().getPackageName(), 0);
                        if (applicationInfo != null) {
                            appName = packageManager.getApplicationLabel(applicationInfo) != null ? (String) packageManager.getApplicationLabel(applicationInfo) : "";
                        } else {
                            logWarningFormat("Analytics - ApplicationInfo was null", new Object[0]);
                            appName = "";
                        }
                    } else {
                        logWarningFormat("Analytics - PackageManager was null", new Object[0]);
                        appName = "";
                    }
                } catch (PackageManager.NameNotFoundException e2) {
                    logWarningFormat("Analytics - PackageManager couldn't find application name (%s)", e2.toString());
                    appName = "";
                } catch (NullContextException e3) {
                    logErrorFormat("Config - Unable to get package to pull application name. (%s)", e3.getMessage());
                    appName = "";
                }
                str = appName;
            } else {
                str = appName;
            }
        }
        return str;
    }

    protected static String getApplicationVersion() {
        String str;
        synchronized (_applicationVersionMutex) {
            if (versionName == null) {
                versionName = "";
                try {
                    PackageManager packageManager = getSharedContext().getPackageManager();
                    if (packageManager != null) {
                        PackageInfo packageInfo = packageManager.getPackageInfo(getSharedContext().getPackageName(), 0);
                        if (packageInfo != null) {
                            versionName = packageInfo.versionName != null ? packageInfo.versionName : "";
                        } else {
                            logWarningFormat("Analytics - PackageInfo was null", new Object[0]);
                            versionName = "";
                        }
                    } else {
                        logWarningFormat("Analytics - PackageManager was null", new Object[0]);
                        versionName = "";
                    }
                } catch (PackageManager.NameNotFoundException e2) {
                    logWarningFormat("Analytics - PackageManager couldn't find application version (%s)", e2.toString());
                    versionName = "";
                } catch (NullContextException e3) {
                    logErrorFormat("Config - Unable to get package to pull application version. (%s)", e3.getMessage());
                    versionName = "";
                }
                str = versionName;
            } else {
                str = versionName;
            }
        }
        return str;
    }

    protected static int getApplicationVersionCode() {
        int i;
        synchronized (_applicationVersionCodeMutex) {
            if (versionCode == -1) {
                try {
                    try {
                        PackageManager packageManager = getSharedContext().getPackageManager();
                        if (packageManager != null) {
                            PackageInfo packageInfo = packageManager.getPackageInfo(getSharedContext().getPackageName(), 0);
                            if (packageInfo != null) {
                                versionCode = packageInfo.versionCode > 0 ? packageInfo.versionCode : 0;
                            } else {
                                logWarningFormat("Analytics - PackageInfo was null", new Object[0]);
                                versionCode = 0;
                            }
                        } else {
                            logWarningFormat("Analytics - PackageManager was null", new Object[0]);
                            versionCode = 0;
                        }
                    } catch (NullContextException e2) {
                        logErrorFormat("Config - Unable to get package to pull application version code. (%s)", e2.getMessage());
                        versionCode = 0;
                    }
                } catch (PackageManager.NameNotFoundException e3) {
                    logWarningFormat("Analytics - PackageManager couldn't find application version code (%s)", e3.toString());
                    versionCode = 0;
                }
                i = versionCode;
            } else {
                i = versionCode;
            }
        }
        return i;
    }

    protected static String getVisitorID() {
        String str;
        synchronized (_visitorIDMutex) {
            if (visitorID == null) {
                try {
                    visitorID = getSharedPreferences().getString("APP_MEASUREMENT_VISITOR_ID", null);
                } catch (NullContextException e2) {
                    logErrorFormat("Config - Unable to pull visitorID from shared preferences. (%s)", e2.getMessage());
                }
                str = visitorID;
            } else {
                str = visitorID;
            }
        }
        return str;
    }

    protected static void setVisitorID(String str) {
        synchronized (_userIdentifierMutex) {
            visitorID = str;
            WearableFunctionBridge.syncVisitorIDToWearable(str);
            try {
                SharedPreferences.Editor sharedPreferencesEditor = getSharedPreferencesEditor();
                sharedPreferencesEditor.putString("APP_MEASUREMENT_VISITOR_ID", str);
                sharedPreferencesEditor.commit();
            } catch (NullContextException e2) {
                logErrorFormat("Config - Error updating visitorID. (%s)", e2.getMessage());
            }
        }
    }

    protected static boolean isPushEnabled() {
        synchronized (_pushEnabledMutex) {
            try {
                pushEnabled = getSharedPreferences().getBoolean("ADBMOBILE_KEY_PUSH_ENABLED", false);
            } catch (NullContextException e2) {
                logErrorFormat("Config - Unable to pull push status from shared preferences. (%s)", e2.getMessage());
            }
        }
        return pushEnabled;
    }

    protected static void setPushEnabled(boolean z) {
        synchronized (_pushEnabledMutex) {
            try {
                SharedPreferences.Editor sharedPreferencesEditor = getSharedPreferencesEditor();
                sharedPreferencesEditor.putBoolean("ADBMOBILE_KEY_PUSH_ENABLED", z);
                sharedPreferencesEditor.commit();
                pushEnabled = z;
                WearableFunctionBridge.syncPushEnabledToWearable(z);
            } catch (NullContextException e2) {
                logErrorFormat("Config - Unable to set pushEnabled shared preferences. (%s)", e2.getMessage());
            }
        }
    }

    protected static String getPushIdentifier() {
        String str;
        synchronized (_pushIdentifierMutex) {
            str = pushIdentifier;
        }
        return str;
    }

    protected static void setPushIdentifier(final String str) {
        synchronized (_pushIdentifierMutex) {
            if (str == null) {
                if (isPushEnabled()) {
                    setPushEnabled(false);
                    AnalyticsTrackInternal.trackInternal(PUSH_ID_ENABLED_ACTION_NAME, new HashMap<String, Object>() { // from class: com.adobe.mobile.StaticMethods.1
                        {
                            put("a.push.optin", XMPConst.FALSESTR);
                        }
                    }, getTimeSince1970());
                }
                if (str != null && str.length() >= 0 && !isPushEnabled()) {
                    setPushEnabled(true);
                    AnalyticsTrackInternal.trackInternal(PUSH_ID_ENABLED_ACTION_NAME, new HashMap<String, Object>() { // from class: com.adobe.mobile.StaticMethods.2
                        {
                            put("a.push.optin", XMPConst.TRUESTR);
                        }
                    }, getTimeSince1970());
                }
                pushIdentifier = str;
                VisitorIDService.sharedInstance().idSync((Map<String, String>) null, new HashMap<String, String>() { // from class: com.adobe.mobile.StaticMethods.3
                    {
                        put(StaticMethods.MCPNS_DPID, str);
                    }
                });
            } else {
                if (str != null) {
                    setPushEnabled(true);
                    AnalyticsTrackInternal.trackInternal(PUSH_ID_ENABLED_ACTION_NAME, new HashMap<String, Object>() { // from class: com.adobe.mobile.StaticMethods.2
                        {
                            put("a.push.optin", XMPConst.TRUESTR);
                        }
                    }, getTimeSince1970());
                }
                pushIdentifier = str;
                VisitorIDService.sharedInstance().idSync((Map<String, String>) null, new HashMap<String, String>() { // from class: com.adobe.mobile.StaticMethods.3
                    {
                        put(StaticMethods.MCPNS_DPID, str);
                    }
                });
            }
        }
    }

    protected static String getAdvertisingIdentifier() {
        String str;
        synchronized (_advertisingIdentifierMutex) {
            str = advertisingIdentifier;
        }
        return str;
    }

    protected static void setAdvertisingIdentifier(final String str) {
        if (str == null || !str.equals(getAdvertisingIdentifier())) {
            synchronized (_advertisingIdentifierMutex) {
                advertisingIdentifier = str;
                WearableFunctionBridge.syncAdvertisingIdentifierToWearable(str);
                VisitorIDService.sharedInstance().idSync((Map<String, String>) null, new HashMap<String, String>() { // from class: com.adobe.mobile.StaticMethods.4
                    {
                        put(StaticMethods.ADID_DPID, str);
                    }
                });
            }
        }
    }

    protected static String getDefaultUserAgent() {
        String str;
        synchronized (_userAgentMutex) {
            if (userAgent == null) {
                userAgent = "Mozilla/5.0 (Linux; U; Android " + getAndroidVersion() + "; " + getDefaultAcceptLanguage() + "; " + Build.MODEL + " Build/" + Build.ID + ")";
            }
            str = userAgent;
        }
        return str;
    }

    protected static HashMap<String, Object> getDefaultData() {
        HashMap<String, Object> map;
        synchronized (_defaultDataMutex) {
            if (defaultData == null) {
                defaultData = new HashMap<>();
                defaultData.put(DEVICE_NAME_KEY, Build.MODEL);
                defaultData.put(RESOLUTION_KEY, getResolution());
                defaultData.put("a.OSVersion", getOperatingSystem());
                defaultData.put(CARRIER_NAME_KEY, getCarrier());
                defaultData.put("a.AppID", getApplicationID());
                defaultData.put(RUN_MODE_KEY, isWearableApp() ? RUN_MODE_EXTENSION : RUN_MODE_APPLICATION);
            }
            map = defaultData;
        }
        return map;
    }

    protected static String getResolution() {
        String str;
        synchronized (_resolutionMutex) {
            if (resolution == null) {
                try {
                    DisplayMetrics displayMetrics = getSharedContext().getResources().getDisplayMetrics();
                    resolution = displayMetrics.widthPixels + "x" + displayMetrics.heightPixels;
                } catch (NullContextException e2) {
                    logErrorFormat("Config - Error getting device resolution. (%s)", e2.getMessage());
                }
                str = resolution;
            } else {
                str = resolution;
            }
        }
        return str;
    }

    protected static String getCarrier() {
        String str;
        synchronized (_carrierMutex) {
            if (carrier == null) {
                try {
                    carrier = ((TelephonyManager) getSharedContext().getSystemService("phone")).getNetworkOperatorName();
                } catch (NullContextException e2) {
                    logErrorFormat("Config - Error getting device carrier. (%s)", e2.getMessage());
                }
                str = carrier;
            } else {
                str = carrier;
            }
        }
        return str;
    }

    protected static String getOperatingSystem() {
        String str;
        synchronized (_operatingSystemMutex) {
            if (operatingSystem == null) {
                operatingSystem = "Android " + getAndroidVersion();
                try {
                    SharedPreferences.Editor sharedPreferencesEditor = getSharedPreferencesEditor();
                    sharedPreferencesEditor.putString("ADOBEMOBILE_STOREDDEFAULTS_OS", operatingSystem);
                    sharedPreferencesEditor.commit();
                } catch (NullContextException e2) {
                    logWarningFormat("Config - Unable to set OS version in preferences (%s)", e2.getLocalizedMessage());
                }
                str = operatingSystem;
            } else {
                str = operatingSystem;
            }
        }
        return str;
    }

    protected static String getTimestampString() {
        String str;
        synchronized (_timestampMutex) {
            if (timestamp == null) {
                Date date = new Date();
                Calendar calendar = Calendar.getInstance();
                calendar.setTime(date);
                timestamp = "00/00/0000 00:00:00 0 " + ((calendar.getTimeZone().getOffset(1, calendar.get(1), calendar.get(2), calendar.get(5), calendar.get(7), calendar.get(14) + (((((calendar.get(11) * 60) + calendar.get(12)) * 60) + calendar.get(13)) * 1000)) / 60000) * (-1));
            }
            str = timestamp;
        }
        return str;
    }

    protected static File getCacheDirectory() {
        try {
            return getSharedContext().getCacheDir();
        } catch (NullContextException e2) {
            logErrorFormat("Config - Error getting cache directory. (%s)", e2.getMessage());
            return null;
        }
    }

    protected static ExecutorService getMediaExecutor() {
        ExecutorService executorService;
        synchronized (_mediaExecutorMutex) {
            if (mediaExecutor == null) {
                mediaExecutor = Executors.newSingleThreadExecutor();
            }
            executorService = mediaExecutor;
        }
        return executorService;
    }

    public static ExecutorService getTimedActionsExecutor() {
        ExecutorService executorService;
        synchronized (_timedActionsExecutorMutex) {
            if (timedActionsExecutor == null) {
                timedActionsExecutor = Executors.newSingleThreadExecutor();
            }
            executorService = timedActionsExecutor;
        }
        return executorService;
    }

    protected static ExecutorService getSharedExecutor() {
        ExecutorService executorService;
        synchronized (_sharedExecutorMutex) {
            if (sharedExecutor == null) {
                sharedExecutor = Executors.newSingleThreadExecutor();
            }
            executorService = sharedExecutor;
        }
        return executorService;
    }

    protected static ExecutorService getAnalyticsExecutor() {
        ExecutorService executorService;
        synchronized (_analyticsExecutorMutex) {
            if (analyticsExecutor == null) {
                analyticsExecutor = Executors.newSingleThreadExecutor();
            }
            executorService = analyticsExecutor;
        }
        return executorService;
    }

    protected static ExecutorService getMessagesExecutor() {
        ExecutorService executorService;
        synchronized (_messagesExecutorMutex) {
            if (messagesExecutor == null) {
                messagesExecutor = Executors.newSingleThreadExecutor();
            }
            executorService = messagesExecutor;
        }
        return executorService;
    }

    protected static ExecutorService getThirdPartyCallbacksExecutor() {
        ExecutorService executorService;
        synchronized (_thirdPartyCallbacksExecutorMutex) {
            if (thirdPartyCallbacksExecutor == null) {
                thirdPartyCallbacksExecutor = Executors.newSingleThreadExecutor();
            }
            executorService = thirdPartyCallbacksExecutor;
        }
        return executorService;
    }

    protected static ExecutorService getMessageImageCachingExecutor() {
        ExecutorService executorService;
        synchronized (_messageImageCachingExecutorMutex) {
            if (messageImageCachingExecutor == null) {
                messageImageCachingExecutor = Executors.newSingleThreadExecutor();
            }
            executorService = messageImageCachingExecutor;
        }
        return executorService;
    }

    protected static ExecutorService getAudienceExecutor() {
        ExecutorService executorService;
        synchronized (_audienceExecutorMutex) {
            if (audienceExecutor == null) {
                audienceExecutor = Executors.newSingleThreadExecutor();
            }
            executorService = audienceExecutor;
        }
        return executorService;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x005b A[Catch: all -> 0x0079, DONT_GENERATE, TRY_ENTER, TRY_LEAVE, TryCatch #1 {, blocks: (B:4:0x0003, B:6:0x0007, B:7:0x000a, B:9:0x0026, B:14:0x0036, B:16:0x0044, B:17:0x0053, B:21:0x005f, B:11:0x002a, B:24:0x0068, B:18:0x005b), top: B:30:0x0003, inners: #0 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected static java.lang.String getAID() {
        /*
            java.lang.Object r1 = com.adobe.mobile.StaticMethods._aidMutex
            monitor-enter(r1)
            boolean r0 = com.adobe.mobile.StaticMethods._aidDone     // Catch: java.lang.Throwable -> L79
            if (r0 != 0) goto L5b
            r0 = 1
            com.adobe.mobile.StaticMethods._aidDone = r0     // Catch: java.lang.Throwable -> L79
            android.content.SharedPreferences r0 = getSharedPreferences()     // Catch: com.adobe.mobile.StaticMethods.NullContextException -> L67 java.lang.Throwable -> L79
            java.lang.String r2 = "ADOBEMOBILE_STOREDDEFAULTS_IGNORE_AID"
            r3 = 0
            boolean r0 = r0.getBoolean(r2, r3)     // Catch: com.adobe.mobile.StaticMethods.NullContextException -> L67 java.lang.Throwable -> L79
            android.content.SharedPreferences r2 = getSharedPreferences()     // Catch: com.adobe.mobile.StaticMethods.NullContextException -> L67 java.lang.Throwable -> L79
            java.lang.String r3 = "ADOBEMOBILE_STOREDDEFAULTS_AID"
            r4 = 0
            java.lang.String r2 = r2.getString(r3, r4)     // Catch: com.adobe.mobile.StaticMethods.NullContextException -> L67 java.lang.Throwable -> L79
            com.adobe.mobile.StaticMethods.aid = r2     // Catch: com.adobe.mobile.StaticMethods.NullContextException -> L67 java.lang.Throwable -> L79
            if (r0 != 0) goto L2a
            java.lang.String r2 = com.adobe.mobile.StaticMethods.aid     // Catch: com.adobe.mobile.StaticMethods.NullContextException -> L67 java.lang.Throwable -> L79
            if (r2 == 0) goto L36
        L2a:
            com.adobe.mobile.MobileConfig r2 = com.adobe.mobile.MobileConfig.getInstance()     // Catch: com.adobe.mobile.StaticMethods.NullContextException -> L67 java.lang.Throwable -> L79
            boolean r2 = r2.getVisitorIdServiceEnabled()     // Catch: com.adobe.mobile.StaticMethods.NullContextException -> L67 java.lang.Throwable -> L79
            if (r2 != 0) goto L5b
            if (r0 == 0) goto L5b
        L36:
            java.lang.String r0 = retrieveAIDFromVisitorIDService()     // Catch: com.adobe.mobile.StaticMethods.NullContextException -> L67 java.lang.Throwable -> L79
            com.adobe.mobile.StaticMethods.aid = r0     // Catch: com.adobe.mobile.StaticMethods.NullContextException -> L67 java.lang.Throwable -> L79
            android.content.SharedPreferences$Editor r0 = getSharedPreferencesEditor()     // Catch: com.adobe.mobile.StaticMethods.NullContextException -> L67 java.lang.Throwable -> L79
            java.lang.String r2 = com.adobe.mobile.StaticMethods.aid     // Catch: com.adobe.mobile.StaticMethods.NullContextException -> L67 java.lang.Throwable -> L79
            if (r2 == 0) goto L5f
            java.lang.String r2 = "ADOBEMOBILE_STOREDDEFAULTS_AID"
            java.lang.String r3 = com.adobe.mobile.StaticMethods.aid     // Catch: com.adobe.mobile.StaticMethods.NullContextException -> L67 java.lang.Throwable -> L79
            r0.putString(r2, r3)     // Catch: com.adobe.mobile.StaticMethods.NullContextException -> L67 java.lang.Throwable -> L79
            java.lang.String r2 = "ADOBEMOBILE_STOREDDEFAULTS_IGNORE_AID"
            r3 = 0
            r0.putBoolean(r2, r3)     // Catch: com.adobe.mobile.StaticMethods.NullContextException -> L67 java.lang.Throwable -> L79
        L53:
            r0.commit()     // Catch: com.adobe.mobile.StaticMethods.NullContextException -> L67 java.lang.Throwable -> L79
            java.lang.String r0 = com.adobe.mobile.StaticMethods.aid     // Catch: com.adobe.mobile.StaticMethods.NullContextException -> L67 java.lang.Throwable -> L79
            syncAIDIfNeeded(r0)     // Catch: com.adobe.mobile.StaticMethods.NullContextException -> L67 java.lang.Throwable -> L79
        L5b:
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L79
            java.lang.String r0 = com.adobe.mobile.StaticMethods.aid
            return r0
        L5f:
            java.lang.String r2 = "ADOBEMOBILE_STOREDDEFAULTS_IGNORE_AID"
            r3 = 1
            r0.putBoolean(r2, r3)     // Catch: com.adobe.mobile.StaticMethods.NullContextException -> L67 java.lang.Throwable -> L79
            goto L53
        L67:
            r0 = move-exception
            java.lang.String r2 = "Config - Error getting AID. (%s)"
            r3 = 1
            java.lang.Object[] r3 = new java.lang.Object[r3]     // Catch: java.lang.Throwable -> L79
            r4 = 0
            java.lang.String r0 = r0.getMessage()     // Catch: java.lang.Throwable -> L79
            r3[r4] = r0     // Catch: java.lang.Throwable -> L79
            logErrorFormat(r2, r3)     // Catch: java.lang.Throwable -> L79
            goto L5b
        L79:
            r0 = move-exception
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L79
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.adobe.mobile.StaticMethods.getAID():java.lang.String");
    }

    private static void syncAIDIfNeeded(String str) {
        boolean z;
        if (str != null && MobileConfig.getInstance().getVisitorIdServiceEnabled()) {
            try {
                z = getSharedPreferences().getBoolean("ADOBEMOBILE_STOREDDEFAULTS_AID_SYNCED", false);
            } catch (NullContextException e2) {
                logWarningFormat("Visitor ID - Null context when attempting to determine visitor ID sync status (%s)", e2.getLocalizedMessage());
                z = false;
            }
            if (!z) {
                HashMap map = new HashMap();
                map.put("AVID", str);
                VisitorIDService.sharedInstance().idSync(map);
                try {
                    SharedPreferences.Editor sharedPreferencesEditor = getSharedPreferencesEditor();
                    sharedPreferencesEditor.putBoolean("ADOBEMOBILE_STOREDDEFAULTS_AID_SYNCED", true);
                    sharedPreferencesEditor.commit();
                } catch (NullContextException e3) {
                    logWarningFormat("Visitor ID - Null context when attempting to persist visitor ID sync status (%s)", e3.getLocalizedMessage());
                }
            }
        }
    }

    private static String retrieveAIDFromVisitorIDService() {
        String string;
        StringBuilder sb = new StringBuilder(64);
        sb.append(MobileConfig.getInstance().getSSL() ? "https" : "http");
        sb.append("://");
        sb.append(MobileConfig.getInstance().getTrackingServer());
        sb.append("/id");
        boolean visitorIdServiceEnabled = MobileConfig.getInstance().getVisitorIdServiceEnabled();
        if (visitorIdServiceEnabled) {
            sb.append(VisitorIDService.sharedInstance().getAnalyticsIDRequestParameterString());
        }
        logDebugFormat("Analytics ID - Sending Analytics ID call(%s)", sb);
        byte[] bArrRetrieveData = RequestHandler.retrieveData(sb.toString(), null, 500, "Analytics ID");
        if (bArrRetrieveData != null) {
            try {
                string = new JSONObject(new String(bArrRetrieveData, "UTF-8")).getString("id");
            } catch (UnsupportedEncodingException e2) {
                logErrorFormat("Analytics ID - Unable to decode /id response(%s)", e2.getLocalizedMessage());
                string = null;
            } catch (JSONException e3) {
                if (!visitorIdServiceEnabled) {
                    logErrorFormat("Analytics ID - Unable to parse /id response(%s)", e3.getLocalizedMessage());
                }
                string = null;
            }
        } else {
            string = null;
        }
        if (string == null || string.length() != 33) {
            if (visitorIdServiceEnabled) {
                return null;
            }
            return generateAID();
        }
        return string;
    }

    private static String generateAID() {
        String upperCase = UUID.randomUUID().toString().replace("-", "").toUpperCase(Locale.US);
        Pattern patternCompile = Pattern.compile("^[89A-F]");
        Pattern patternCompile2 = Pattern.compile("^[4-9A-F]");
        Matcher matcher = patternCompile.matcher(upperCase.substring(0, 16));
        Matcher matcher2 = patternCompile2.matcher(upperCase.substring(16, 32));
        SecureRandom secureRandom = new SecureRandom();
        return matcher.replaceAll(String.valueOf(secureRandom.nextInt(7))) + "-" + matcher2.replaceAll(String.valueOf(secureRandom.nextInt(3)));
    }

    protected static void setDebugLogging(boolean z) {
        _debugLogging = z;
    }

    protected static boolean getDebugLogging() {
        return _debugLogging;
    }

    protected static void setApplicationType(Config.ApplicationType applicationType) {
        _appType = applicationType;
        _isWearable = _appType == Config.ApplicationType.APPLICATION_TYPE_WEARABLE;
    }

    protected static Config.ApplicationType getApplicationType() {
        return _appType;
    }

    protected static boolean isWearableApp() {
        return _isWearable;
    }

    protected static void serializeToQueryString(Map<String, Object> map, StringBuilder sb) {
        if (map != null) {
            for (Map.Entry<String, Object> entry : map.entrySet()) {
                String strURLEncode = URLEncode(entry.getKey());
                if (strURLEncode != null) {
                    Object value = entry.getValue();
                    if (value instanceof ContextData) {
                        ContextData contextData = (ContextData) value;
                        if (contextData.value != null) {
                            serializeKeyValuePair(strURLEncode, contextData.value, sb);
                        }
                        if (contextData.contextData != null && contextData.contextData.size() > 0) {
                            sb.append("&");
                            sb.append(strURLEncode);
                            sb.append(".");
                            serializeToQueryString(contextData.contextData, sb);
                            sb.append("&.");
                            sb.append(strURLEncode);
                        }
                    } else {
                        serializeKeyValuePair(strURLEncode, value, sb);
                    }
                }
            }
        }
    }

    private static void serializeKeyValuePair(String str, Object obj, StringBuilder sb) {
        if (str != null && obj != null && !(obj instanceof ContextData) && str.length() > 0) {
            if (!(obj instanceof String) || ((String) obj).length() > 0) {
                sb.append("&");
                sb.append(str);
                sb.append(Engagement.Comparison.EQ);
                if (obj instanceof List) {
                    sb.append(URLEncode(join((List) obj, BehanceSDKConstants.TAG_CLIENT_SIDE_SEPERATOR)));
                } else {
                    sb.append(URLEncode(obj.toString()));
                }
            }
        }
    }

    protected static String join(Iterable<?> iterable, String str) {
        StringBuilder sb = new StringBuilder();
        Iterator<?> it = iterable.iterator();
        while (it.hasNext()) {
            sb.append(it.next());
            if (!it.hasNext()) {
                break;
            }
            sb.append(str);
        }
        return sb.toString();
    }

    protected static String URLEncode(String str) {
        if (str == null) {
            return null;
        }
        try {
            byte[] bytes = str.getBytes("UTF-8");
            int length = bytes.length;
            int i = 0;
            while (i < length && utf8Mask[bytes[i] & UnsignedBytes.MAX_VALUE]) {
                i++;
            }
            if (i != length) {
                StringBuilder sb = new StringBuilder(bytes.length << 1);
                if (i > 0) {
                    sb.append(new String(bytes, 0, i, "UTF-8"));
                }
                while (i < length) {
                    sb.append(encodedChars[bytes[i] & UnsignedBytes.MAX_VALUE]);
                    i++;
                }
                return sb.toString();
            }
            return str;
        } catch (UnsupportedEncodingException e2) {
            logWarningFormat("UnsupportedEncodingException : " + e2.getMessage(), new Object[0]);
            return null;
        }
    }

    protected static void logErrorFormat(String str, Object... objArr) {
        if (objArr != null && objArr.length > 0) {
            Log.e("ADBMobile", String.format("ADBMobile Error : " + str, objArr));
        } else {
            Log.e("ADBMobile", "ADBMobile Error : " + str);
        }
    }

    protected static void logWarningFormat(String str, Object... objArr) {
        if (getDebugLogging()) {
            if (objArr != null && objArr.length > 0) {
                Log.w("ADBMobile", String.format("ADBMobile Warning : " + str, objArr));
            } else {
                Log.w("ADBMobile", "ADBMobile Warning : " + str);
            }
        }
    }

    protected static void logDebugFormat(String str, Object... objArr) {
        if (getDebugLogging()) {
            if (objArr != null && objArr.length > 0) {
                Log.d("ADBMobile", String.format("ADBMobile Debug : " + str, objArr));
            } else {
                Log.d("ADBMobile", "ADBMobile Debug : " + str);
            }
        }
    }

    protected static ContextData translateContextData(Map<String, Object> map) {
        ContextData contextData = new ContextData();
        for (Map.Entry<String, Object> entry : cleanContextDataDictionary(map).entrySet()) {
            String key = entry.getKey();
            ArrayList arrayList = new ArrayList();
            int i = 0;
            while (true) {
                int iIndexOf = key.indexOf(46, i);
                if (iIndexOf >= 0) {
                    arrayList.add(key.substring(i, iIndexOf));
                    i = iIndexOf + 1;
                }
            }
            arrayList.add(key.substring(i, key.length()));
            addValueToHashMap(entry.getValue(), contextData, arrayList, 0);
        }
        return contextData;
    }

    protected static Map<String, Object> cleanContextDataDictionary(Map<String, Object> map) {
        if (map == null) {
            return new HashMap();
        }
        HashMap map2 = new HashMap();
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            String strCleanContextDataKey = cleanContextDataKey(entry.getKey());
            if (strCleanContextDataKey != null) {
                map2.put(strCleanContextDataKey, entry.getValue());
            }
        }
        return map2;
    }

    protected static String cleanContextDataKey(String str) {
        String str2;
        if (str == null) {
            return null;
        }
        synchronized (_contextDataKeyWhiteList) {
            str2 = _contextDataKeyWhiteList.get(str);
            if (str2 == null) {
                try {
                    byte[] bytes = str.getBytes("UTF-8");
                    byte[] bArr = new byte[bytes.length];
                    int i = 0;
                    byte b2 = 0;
                    for (byte b3 : bytes) {
                        if ((b3 != 46 || b2 != 46) && contextDataMask[b3 & UnsignedBytes.MAX_VALUE]) {
                            bArr[i] = b3;
                            i++;
                            b2 = b3;
                        }
                    }
                    if (i == 0) {
                        str2 = null;
                    } else {
                        int i2 = bArr[0] == 46 ? 1 : 0;
                        int i3 = (i - (bArr[i + (-1)] == 46 ? 1 : 0)) - i2;
                        if (i3 <= 0) {
                            str2 = null;
                        } else {
                            str2 = new String(bArr, i2, i3, "UTF-8");
                            synchronized (_contextDataKeyWhiteList) {
                                if (_contextDataKeyWhiteListCount > 250) {
                                    _contextDataKeyWhiteList.clear();
                                    _contextDataKeyWhiteListCount = 0;
                                }
                                _contextDataKeyWhiteList.put(str, str2);
                                _contextDataKeyWhiteListCount++;
                            }
                        }
                    }
                } catch (UnsupportedEncodingException e2) {
                    logErrorFormat("Analytics - Unable to clean context data key (%s)", e2.getLocalizedMessage());
                    str2 = null;
                }
            }
        }
        return str2;
    }

    private static void addValueToHashMap(Object obj, ContextData contextData, List<String> list, int i) {
        if (contextData != null && list != null) {
            int size = list.size();
            String str = i < size ? list.get(i) : null;
            if (str != null) {
                ContextData contextData2 = new ContextData();
                if (contextData.containsKey(str)) {
                    contextData2 = contextData.get(str);
                }
                if (size - 1 == i) {
                    contextData2.value = obj;
                    contextData.put(str, contextData2);
                } else {
                    contextData.put(str, contextData2);
                    addValueToHashMap(obj, contextData2, list, i + 1);
                }
            }
        }
    }

    protected static long getTimeSince1970() {
        return System.currentTimeMillis() / 1000;
    }

    protected static void updateLastKnownTimestamp(Long l) {
        MobileConfig mobileConfig = MobileConfig.getInstance();
        if (mobileConfig == null) {
            logErrorFormat("Config - Lost config instance", new Object[0]);
            return;
        }
        if (mobileConfig.getOfflineTrackingEnabled()) {
            try {
                SharedPreferences.Editor sharedPreferencesEditor = getSharedPreferencesEditor();
                sharedPreferencesEditor.putLong(LAST_KNOWN_TIMESTAMP_KEY, l.longValue());
                sharedPreferencesEditor.commit();
            } catch (NullContextException e2) {
                logErrorFormat("Config - Error while updating last known timestamp. (%s)", e2.getMessage());
            }
        }
    }

    protected static String getDefaultAcceptLanguage() {
        Configuration configuration;
        Locale locale;
        try {
            Resources resources = getSharedContext().getResources();
            if (resources == null || (configuration = resources.getConfiguration()) == null || (locale = configuration.locale) == null) {
                return null;
            }
            return locale.toString().replace('_', '-');
        } catch (NullContextException e2) {
            logErrorFormat("Config - Error getting application resources for default accepted language. (%s)", e2.getMessage());
            return null;
        }
    }

    private static String getAndroidVersion() {
        return Build.VERSION.RELEASE;
    }

    protected static SharedPreferences.Editor getSharedPreferencesEditor() throws NullContextException {
        SharedPreferences.Editor editorEdit = getSharedPreferences().edit();
        if (editorEdit == null) {
            throw new NullContextException(NO_SHARED_PREFERENCES_EDITOR_MESSAGE);
        }
        return editorEdit;
    }

    protected static Context getSharedContext() throws NullContextException {
        if (sharedContext == null) {
            throw new NullContextException(NO_CONTEXT_MESSAGE);
        }
        return sharedContext;
    }

    protected static void setSharedContext(Context context) {
        if (context != null) {
            if (context instanceof Activity) {
                sharedContext = context.getApplicationContext();
            } else {
                sharedContext = context;
            }
        }
    }

    protected static long getTimeSinceLaunch() {
        long timeSince1970 = getTimeSince1970() - Lifecycle.sessionStartTime;
        if (timeSince1970 < 604800) {
            return timeSince1970;
        }
        return 0L;
    }

    protected static HashMap<String, Object> mapFromJson(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        Iterator<String> itKeys = jSONObject.keys();
        HashMap<String, Object> map = new HashMap<>();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            try {
                map.put(next, jSONObject.getString(next));
            } catch (JSONException e2) {
                logWarningFormat("Problem parsing json data (%s)", e2.getLocalizedMessage());
            }
        }
        return map;
    }

    protected static void setCurrentActivity(Activity activity) {
        synchronized (_currentActivityMutex) {
            _activity = new WeakReference<>(activity);
        }
    }

    protected static Activity getCurrentActivity() throws NullActivityException {
        Activity activity;
        synchronized (_currentActivityMutex) {
            if (_activity == null || _activity.get() == null) {
                throw new NullActivityException(NO_ACTIVITY_MESSAGE);
            }
            activity = _activity.get();
        }
        return activity;
    }

    protected static String expandTokens(String str, Map<String, String> map) {
        Exception exc;
        String str2;
        try {
            String strReplace = str;
            for (Map.Entry<String, String> entry : map.entrySet()) {
                try {
                    strReplace = strReplace.replace(entry.getKey(), entry.getValue());
                } catch (Exception e2) {
                    exc = e2;
                    str2 = strReplace;
                    logDebugFormat("Unable to expand tokens (%s)", exc.toString());
                    return str2;
                }
            }
            return strReplace;
        } catch (Exception e3) {
            exc = e3;
            str2 = str;
        }
    }

    protected static int getCurrentOrientation() {
        try {
            return getCurrentActivity().getResources().getConfiguration().orientation;
        } catch (NullActivityException e2) {
            return -1;
        }
    }

    protected static String getHexString(String str) {
        int i = 0;
        if (str == null || str.length() <= 0) {
            return null;
        }
        try {
            byte[] bytes = str.getBytes("UTF-8");
            int length = bytes.length;
            char[] cArr = new char[length << 1];
            int i2 = 0;
            while (i2 < length) {
                int i3 = i2 + 1;
                int i4 = (bytes[i2] & UnsignedBytes.MAX_VALUE) << 1;
                int i5 = i + 1;
                cArr[i] = BYTE_TO_HEX[i4];
                i = i5 + 1;
                cArr[i5] = BYTE_TO_HEX[i4 + 1];
                i2 = i3;
            }
            return new String(cArr);
        } catch (UnsupportedEncodingException e2) {
            logDebugFormat("Failed to get hex from string (%s)", e2.getMessage());
            return null;
        }
    }

    protected static String hexToString(String str) {
        if (str == null || str.length() <= 0 || str.length() % 2 != 0) {
            return null;
        }
        int length = str.length();
        byte[] bArr = new byte[length / 2];
        for (int i = 0; i < length; i += 2) {
            bArr[i / 2] = (byte) ((Character.digit(str.charAt(i), 16) << 4) + Character.digit(str.charAt(i + 1), 16));
        }
        try {
            return new String(bArr, "UTF-8");
        } catch (UnsupportedEncodingException e2) {
            logDebugFormat("Failed to get string from hex (%s)", e2.getMessage());
            return null;
        }
    }

    protected static String appendContextData(Map<String, Object> map, String str) {
        String strGroup;
        if (str != null && map != null && map.size() != 0) {
            Matcher matcher = Pattern.compile(".*(&c\\.(.*)&\\.c).*").matcher(str);
            if (matcher.matches() && (strGroup = matcher.group(2)) != null) {
                HashMap map2 = new HashMap(64);
                ArrayList arrayList = new ArrayList(16);
                for (String str2 : strGroup.split("&")) {
                    if (str2.endsWith(".") && !str2.contains(Engagement.Comparison.EQ)) {
                        arrayList.add(str2);
                    } else if (str2.startsWith(".")) {
                        if (arrayList.size() > 0) {
                            arrayList.remove(arrayList.size() - 1);
                        }
                    } else {
                        String[] strArrSplit = str2.split(Engagement.Comparison.EQ);
                        if (strArrSplit.length == 2) {
                            try {
                                map2.put(contextDataStringPath(arrayList, strArrSplit[0]), URLDecoder.decode(strArrSplit[1], "UTF-8"));
                            } catch (UnsupportedEncodingException e2) {
                                e2.printStackTrace();
                            }
                        }
                    }
                }
                map2.putAll(map);
                StringBuilder sb = new StringBuilder(str.substring(0, matcher.start(1)));
                HashMap map3 = new HashMap();
                map3.put("c", translateContextData(map2));
                serializeToQueryString(map3, sb);
                sb.append(str.substring(matcher.end(1)));
                return sb.toString();
            }
            return str;
        }
        return str;
    }

    protected static String contextDataStringPath(List<String> list, String str) {
        StringBuilder sb = new StringBuilder();
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            sb.append(it.next());
        }
        sb.append(str);
        return sb.toString();
    }

    private static Locale getDeviceLocale() {
        try {
            Resources resources = getSharedContext().getResources();
            if (resources == null) {
                return Locale.US;
            }
            Configuration configuration = resources.getConfiguration();
            if (configuration == null) {
                return Locale.US;
            }
            return configuration.locale != null ? configuration.locale : Locale.US;
        } catch (NullContextException e2) {
            logErrorFormat("Config - Error getting application resources for device locale. (%s)", e2.getMessage());
            return Locale.US;
        }
    }

    protected static String getIso8601Date() {
        return getIso8601Date(new Date());
    }

    protected static String getIso8601Date(Date date) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ssZZZ", getDeviceLocale());
        if (date == null) {
            date = new Date();
        }
        return simpleDateFormat.format(date);
    }

    protected static void reset() {
        appID = null;
        appName = null;
        visitorID = null;
        userAgent = null;
        synchronized (_defaultDataMutex) {
            defaultData = null;
        }
        resolution = null;
        versionCode = -1;
        versionName = null;
        carrier = null;
        operatingSystem = null;
        aid = null;
        _aidDone = false;
        sharedContext = null;
        prefs = null;
        _activity = null;
        _contextDataKeyWhiteList.clear();
        _contextDataKeyWhiteListCount = 0;
        _appType = Config.ApplicationType.APPLICATION_TYPE_HANDHELD;
        _isWearable = false;
    }
}
