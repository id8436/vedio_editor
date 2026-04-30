package com.adobe.mobile;

import com.adobe.mobile.Config;
import com.adobe.mobile.StaticMethods;
import com.adobe.mobile.WearableDataResponse;

/* JADX INFO: loaded from: classes2.dex */
final class WearableFunction {
    private static boolean sendHitFlag = false;

    WearableFunction() {
    }

    protected static boolean isHandheldAppStarted() {
        try {
            return StaticMethods.getSharedPreferences().getLong("ADMS_Handheld_App_InstallDate", 0L) != 0;
        } catch (StaticMethods.NullContextException e2) {
            StaticMethods.logWarningFormat("Wearable - Error getting install date of handheld app", new Object[0]);
            return false;
        }
    }

    protected static boolean shouldSendHit() {
        if (sendHitFlag) {
            return true;
        }
        if (Config.getApplicationType() != Config.ApplicationType.APPLICATION_TYPE_WEARABLE) {
            sendHitFlag = true;
            return true;
        }
        if (isHandheldAppStarted()) {
            sendHitFlag = true;
            return true;
        }
        StaticMethods.logWarningFormat("Analytics - Failed to send the Wearable request, containing app should get launched before Wearable app.", new Object[0]);
        return false;
    }

    protected static void sendGenericRequest(String str, int i) {
        retrieveData(str, i);
    }

    protected static byte[] retrieveData(String str, int i) {
        if (!StaticMethods.isWearableApp()) {
            return null;
        }
        try {
            WearableDataResponse.GetResponse getResponse = (WearableDataResponse.GetResponse) new WearableDataConnection(StaticMethods.getSharedContext().getApplicationContext()).send(WearableDataRequest.createGetRequest(str, i));
            return getResponse == null ? null : getResponse.getResult();
        } catch (StaticMethods.NullContextException e2) {
            StaticMethods.logErrorFormat("Analytics - Error registering network receiver (%s)", e2.getMessage());
            return null;
        }
    }

    protected static byte[] retrieveAnalyticsRequestData(String str, String str2, int i) {
        if (!StaticMethods.isWearableApp()) {
            return null;
        }
        try {
            WearableDataResponse.PostResponse postResponse = (WearableDataResponse.PostResponse) new WearableDataConnection(StaticMethods.getSharedContext().getApplicationContext()).send(WearableDataRequest.createPostRequest(str, str2, i));
            return postResponse == null ? null : postResponse.getResult();
        } catch (StaticMethods.NullContextException e2) {
            StaticMethods.logErrorFormat("Analytics - Error registering network receiver (%s)", e2.getMessage());
            return null;
        }
    }

    protected static boolean sendThirdPartyRequest(String str, String str2, int i, String str3) {
        if (!StaticMethods.isWearableApp()) {
            return true;
        }
        try {
            WearableDataResponse wearableDataResponseSend = new WearableDataConnection(StaticMethods.getSharedContext().getApplicationContext()).send(WearableDataRequest.createThirdPartyRequest(str, str2, i, str3));
            return wearableDataResponseSend != null && wearableDataResponseSend.isSuccess();
        } catch (StaticMethods.NullContextException e2) {
            StaticMethods.logErrorFormat("External Callback - Error registering network receiver (%s)", e2.getMessage());
            return false;
        }
    }
}
