package com.adobe.premiereclip.metrics;

import android.util.Log;
import com.adobe.mobile.Analytics;
import com.adobe.premiereclip.dcx.DCXProjectKeys;
import com.adobe.utility.analytics.TrackingUtility;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class ADBMAnalyticsHelper {
    static Boolean sUserLoggedIn = false;
    static String sUserId = "";

    static void logDebug(String str) {
        if (!str.isEmpty()) {
            Log.d("ADBMAnalyticsHelper", str);
        }
    }

    static void logError(String str) {
        if (!str.isEmpty()) {
            Log.e("ADBMAnalyticsHelper", str);
        }
    }

    static Boolean debug_LogAllAnalyticsCalls() {
        return true;
    }

    public static void setDebugLogging(Boolean bool) {
        TrackingUtility.getInstance().setDebugLogging(bool);
    }

    public static void setUserIdentifier(String str) {
        if (debug_LogAllAnalyticsCalls().booleanValue()) {
            logDebug("ADBMobile setUserIdentifier: " + str);
        }
        if (sUserId.isEmpty() && str != null && !str.isEmpty()) {
            TrackingUtility.getInstance().setUserIdentifier(str);
            sUserId = str;
        }
    }

    public static void trackAction(String str, Map<String, Object> map) {
        if (debug_LogAllAnalyticsCalls().booleanValue()) {
            logDebug("ADBMobile trackAction: " + str + " data: " + map);
        }
        TrackingUtility.getInstance().trackAction(str, map);
    }

    public static void trackState(String str, Map<String, Object> map) {
        if (debug_LogAllAnalyticsCalls().booleanValue()) {
            logDebug("ADBMobile trackState: " + str + " data: " + map);
        }
        TrackingUtility.getInstance().trackState(str, map);
    }

    public static void trackTimedActionStart(String str, Map<String, Object> map) {
        if (debug_LogAllAnalyticsCalls().booleanValue()) {
            logDebug("ADBMobile trackTimedActionStart: " + str + " data: " + map);
        }
        TrackingUtility.getInstance().trackTimedActionStart(str, map);
    }

    public static void trackTimedActionUpdate(String str, Map<String, Object> map) {
        if (debug_LogAllAnalyticsCalls().booleanValue()) {
            logDebug("ADBMobile trackTimedActionUpdate: " + str + " data: " + map);
        }
        TrackingUtility.getInstance().trackTimedActionUpdate(str, map);
    }

    public static void trackTimedActionEnd(String str, Analytics.TimedActionBlock<Boolean> timedActionBlock) {
        TrackingUtility.getInstance().trackTimedActionEnd(str, timedActionBlock);
    }

    public static void makeTargetRequest(String str, String str2, TrackingUtility.TargetRequestCallback targetRequestCallback) {
        TrackingUtility.getInstance().makeTargetRequest(str, str2, targetRequestCallback);
    }

    public static void setPrivacyStatus(Boolean bool) {
        TrackingUtility.getInstance().updateMobilePrivacyConfiguration(bool);
        if (bool.booleanValue()) {
            TrackingUtility.getInstance().startTrackingLifecycleData();
        }
    }

    public static void setUserLoggedIn(Boolean bool) {
        sUserLoggedIn = bool;
    }

    public static String userLoggedIn() {
        return sUserLoggedIn.booleanValue() ? "logged in" : "not logged in";
    }

    public static void addStorycardClipTapped(String str, String str2) {
        if (str == null) {
            str = "nil";
        }
        if (str2 == null) {
            str2 = "nil";
        }
        HashMap map = new HashMap();
        map.put("LoginStatus", userLoggedIn());
        map.put("title", str);
        map.put("uuid", str2);
        trackAction("AddStorycardClipTapped", map);
    }

    public static void addStorycardDialogFeedbackTapped(String str, String str2) {
        if (str == null) {
            str = "nil";
        }
        if (str2 == null) {
            str2 = "nil";
        }
        HashMap map = new HashMap();
        map.put("LoginStatus", userLoggedIn());
        map.put("title", str);
        map.put("uuid", str2);
        trackAction("AddStorycardDialogFeedbackTapped", map);
    }

    public static void dropboxImportTapped(String str, String str2, String str3) {
        if (str == null) {
            str = "nil";
        }
        if (str2 == null) {
            str2 = "nil";
        }
        if (str3 == null) {
            str3 = "nil";
        }
        HashMap map = new HashMap();
        map.put("LoginStatus", userLoggedIn());
        map.put("title", str);
        map.put("uuid", str2);
        map.put("clipType", str3);
        trackAction("DropboxImportTapped", map);
    }

    public static void dropboxFeedbackTapped(String str, String str2, String str3) {
        if (str == null) {
            str = "nil";
        }
        if (str2 == null) {
            str2 = "nil";
        }
        if (str3 == null) {
            str3 = "nil";
        }
        HashMap map = new HashMap();
        map.put("LoginStatus", userLoggedIn());
        map.put("title", str);
        map.put("uuid", str2);
        map.put("clipType", str3);
        trackAction("DropboxFeedbackTapped", map);
    }

    public static void googleDriveImportTapped(String str, String str2, String str3) {
        if (str == null) {
            str = "nil";
        }
        if (str2 == null) {
            str2 = "nil";
        }
        if (str3 == null) {
            str3 = "nil";
        }
        HashMap map = new HashMap();
        map.put("LoginStatus", userLoggedIn());
        map.put("title", str);
        map.put("uuid", str2);
        map.put("clipType", str3);
        trackAction("GoogleDriveImportTapped", map);
    }

    public static void googleDriveFeedbackTapped(String str, String str2, String str3) {
        if (str == null) {
            str = "nil";
        }
        if (str2 == null) {
            str2 = "nil";
        }
        if (str3 == null) {
            str3 = "nil";
        }
        HashMap map = new HashMap();
        map.put("LoginStatus", userLoggedIn());
        map.put("title", str);
        map.put("uuid", str2);
        map.put("clipType", str3);
        trackAction("GoogleDriveFeedbackTapped", map);
    }

    public static void creativeCloudImportTapped(String str, String str2, String str3) {
        if (str == null) {
            str = "nil";
        }
        if (str2 == null) {
            str2 = "nil";
        }
        if (str3 == null) {
            str3 = "nil";
        }
        HashMap map = new HashMap();
        map.put("LoginStatus", userLoggedIn());
        map.put("title", str);
        map.put("uuid", str2);
        map.put("clipType", str3);
        trackAction("CreativeCloudImportTapped", map);
    }

    public static void creativeCloudFeedbackTapped(String str, String str2, String str3) {
        if (str == null) {
            str = "nil";
        }
        if (str2 == null) {
            str2 = "nil";
        }
        if (str3 == null) {
            str3 = "nil";
        }
        HashMap map = new HashMap();
        map.put("LoginStatus", userLoggedIn());
        map.put("title", str);
        map.put("uuid", str2);
        map.put("clipType", str3);
        trackAction("CreativeCloudFeedbackTapped", map);
    }

    public static void cameraImportTapped(String str) {
        HashMap map = new HashMap();
        map.put("LoginStatus", userLoggedIn());
        map.put("uuid", str);
        trackAction("cameraImportTapped", map);
    }

    public static void goProThumbsLoaded(String str) {
        HashMap map = new HashMap();
        map.put("LoginStatus", userLoggedIn());
        map.put("uuid", str);
        trackAction("goProThumbsLoaded", map);
    }

    public static void goProTransferAttempted(String str, Map<String, Object> map) {
        String str2 = String.format("%d x %d", Integer.valueOf(((Integer) map.get("width")).intValue()), Integer.valueOf(((Integer) map.get("height")).intValue()));
        HashMap map2 = new HashMap();
        map2.put("uuid", str);
        map2.put("LoginStatus", userLoggedIn());
        map2.put("clipDimensions", str2);
        map2.put("clipFramerate", map.get(DCXProjectKeys.kDCXKey_Sequence_frameRate));
        map2.put("clipDuration", map.get("duration"));
        trackAction("goProTransferAttempted", map2);
    }

    public static void goProTransferSucceeded(String str, Map<String, Object> map) {
        String str2 = String.format("%d x %d", Integer.valueOf(((Integer) map.get("width")).intValue()), Integer.valueOf(((Integer) map.get("height")).intValue()));
        HashMap map2 = new HashMap();
        map2.put("uuid", str);
        map2.put("LoginStatus", userLoggedIn());
        map2.put("clipDimensions", str2);
        map2.put("clipFramerate", map.get(DCXProjectKeys.kDCXKey_Sequence_frameRate));
        map2.put("clipDuration", map.get("duration"));
        trackAction("goProTransferSucceeded", map2);
    }

    public static void clipTitleMenuTapped(String str, String str2, String str3) {
        if (str == null) {
            str = "nil";
        }
        if (str2 == null) {
            str2 = "nil";
        }
        if (str3 == null) {
            str3 = "nil";
        }
        HashMap map = new HashMap();
        map.put("title", str);
        map.put("uuid", str2);
        map.put("clipType", str3);
        trackAction("ClipTitleMenuTapped", map);
    }

    public static void clipTitleDialogFeedbackTapped(String str, String str2, String str3) {
        if (str == null) {
            str = "nil";
        }
        if (str2 == null) {
            str2 = "nil";
        }
        if (str3 == null) {
            str3 = "nil";
        }
        HashMap map = new HashMap();
        map.put("title", str);
        map.put("uuid", str2);
        map.put("clipType", str3);
        trackAction("ClipTitleDialogFeedbackTapped", map);
    }

    public static void clipStoryCardMenuTapped(String str, String str2, String str3) {
        if (str == null) {
            str = "nil";
        }
        if (str2 == null) {
            str2 = "nil";
        }
        if (str3 == null) {
            str3 = "nil";
        }
        HashMap map = new HashMap();
        map.put("title", str);
        map.put("uuid", str2);
        map.put("clipType", str3);
        trackAction("ClipStoryCardMenuTapped", map);
    }

    public static void clipVoiceoverMenuTapped(String str, String str2, String str3) {
        if (str == null) {
            str = "nil";
        }
        if (str2 == null) {
            str2 = "nil";
        }
        if (str3 == null) {
            str3 = "nil";
        }
        HashMap map = new HashMap();
        map.put("title", str);
        map.put("uuid", str2);
        map.put("clipType", str3);
        trackAction("ClipVoiceoverMenuTapped", map);
    }

    public static void clipVoiceoverDialogFeedbackTapped(String str, String str2, String str3) {
        if (str == null) {
            str = "nil";
        }
        if (str2 == null) {
            str2 = "nil";
        }
        if (str3 == null) {
            str3 = "nil";
        }
        HashMap map = new HashMap();
        map.put("title", str);
        map.put("uuid", str2);
        map.put("clipType", str3);
        trackAction("ClipVoiceoverDialogFeedbackTapped", map);
    }
}
