package com.adobe.mobile;

import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;

/* JADX INFO: loaded from: classes2.dex */
public final class Target {
    private static final String NO_TARGET_MESSAGE = "Target - ADBMobile is not configured correctly to use Target.";

    public interface TargetCallback<T> {
        void call(T t);
    }

    public static void loadRequest(TargetLocationRequest targetLocationRequest, TargetCallback<String> targetCallback) {
        if (StaticMethods.isWearableApp()) {
            StaticMethods.logWarningFormat("Target - Method loadRequest is not available for Wearable", new Object[0]);
        } else {
            TargetWorker.loadRequest(targetLocationRequest, targetCallback);
        }
    }

    public static TargetLocationRequest createRequest(String str, String str2, Map<String, Object> map) {
        return new TargetLocationRequest(str, str2, map);
    }

    public static TargetLocationRequest createOrderConfirmRequest(String str, String str2, String str3, String str4, Map<String, Object> map) {
        return TargetLocationRequest.createRequestWithOrderConfirm(str, str2, str3, str4, map);
    }

    public static void clearCookies() {
        StaticMethods.getAnalyticsExecutor().execute(new Runnable() { // from class: com.adobe.mobile.Target.1
            @Override // java.lang.Runnable
            public void run() {
                TargetWorker.clearCookies();
            }
        });
    }

    public static String getPcID() {
        FutureTask futureTask = new FutureTask(new Callable<String>() { // from class: com.adobe.mobile.Target.2
            @Override // java.util.concurrent.Callable
            public String call() throws Exception {
                return TargetWorker.getPcID();
            }
        });
        StaticMethods.getAnalyticsExecutor().execute(futureTask);
        try {
            return (String) futureTask.get();
        } catch (Exception e2) {
            StaticMethods.logErrorFormat("Target - Unable to get PcID (%s)", e2.getMessage());
            return null;
        }
    }

    public static String getSessionID() {
        FutureTask futureTask = new FutureTask(new Callable<String>() { // from class: com.adobe.mobile.Target.3
            @Override // java.util.concurrent.Callable
            public String call() throws Exception {
                return TargetWorker.getSessionID();
            }
        });
        StaticMethods.getAnalyticsExecutor().execute(futureTask);
        try {
            return (String) futureTask.get();
        } catch (Exception e2) {
            StaticMethods.logErrorFormat("Target - Unable to get SessionID (%s)", e2.getMessage());
            return null;
        }
    }
}
