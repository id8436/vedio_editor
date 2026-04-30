package com.adobe.mobile;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class AudienceManager {

    public interface AudienceManagerCallback<T> {
        void call(T t);
    }

    public static HashMap<String, Object> getVisitorProfile() {
        return AudienceManagerWorker.GetVisitorProfile();
    }

    public static String getDpuuid() {
        return AudienceManagerWorker.GetDpuuid();
    }

    public static String getDpid() {
        return AudienceManagerWorker.GetDpid();
    }

    public static void setDpidAndDpuuid(String str, String str2) {
        AudienceManagerWorker.SetDpidAndDpuuid(str, str2);
    }

    public static void signalWithData(Map<String, Object> map, AudienceManagerCallback<Map<String, Object>> audienceManagerCallback) {
        if (StaticMethods.isWearableApp()) {
            StaticMethods.logWarningFormat("Audience Manager - Method signalWithData is not available for Wearable", new Object[0]);
        } else {
            AudienceManagerWorker.SubmitSignal(map, audienceManagerCallback);
        }
    }

    public static void reset() {
        AudienceManagerWorker.Reset();
    }
}
