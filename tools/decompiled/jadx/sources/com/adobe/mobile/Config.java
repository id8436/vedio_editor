package com.adobe.mobile;

import android.app.Activity;
import android.content.Context;
import com.adobe.mobile.StaticMethods;
import java.io.InputStream;
import java.math.BigDecimal;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;

/* JADX INFO: loaded from: classes2.dex */
public final class Config {

    public enum ApplicationType {
        APPLICATION_TYPE_HANDHELD(0),
        APPLICATION_TYPE_WEARABLE(1);

        private final int value;

        ApplicationType(int i) {
            this.value = i;
        }

        protected int getValue() {
            return this.value;
        }
    }

    public static void setContext(Context context) {
        setContext(context, ApplicationType.APPLICATION_TYPE_HANDHELD);
    }

    public static void setContext(Context context, ApplicationType applicationType) {
        StaticMethods.setSharedContext(context);
        setApplicationType(applicationType);
        if (applicationType == ApplicationType.APPLICATION_TYPE_WEARABLE) {
            StaticMethods.getAnalyticsExecutor().execute(new Runnable() { // from class: com.adobe.mobile.Config.1
                @Override // java.lang.Runnable
                public void run() {
                    WearableFunctionBridge.syncConfigFromHandheld();
                }
            });
        }
    }

    public static String getVersion() {
        return "4.8.2-AN";
    }

    public static MobilePrivacyStatus getPrivacyStatus() {
        FutureTask futureTask = new FutureTask(new Callable<MobilePrivacyStatus>() { // from class: com.adobe.mobile.Config.2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public MobilePrivacyStatus call() throws Exception {
                return MobileConfig.getInstance().getPrivacyStatus();
            }
        });
        StaticMethods.getSharedExecutor().execute(futureTask);
        try {
            return (MobilePrivacyStatus) futureTask.get();
        } catch (Exception e2) {
            StaticMethods.logErrorFormat("Analytics - Unable to get PrivacyStatus (%s)", e2.getMessage());
            return null;
        }
    }

    public static void setPrivacyStatus(final MobilePrivacyStatus mobilePrivacyStatus) {
        StaticMethods.getSharedExecutor().execute(new Runnable() { // from class: com.adobe.mobile.Config.3
            @Override // java.lang.Runnable
            public void run() {
                MobileConfig.getInstance().setPrivacyStatus(mobilePrivacyStatus);
            }
        });
    }

    public static String getUserIdentifier() {
        FutureTask futureTask = new FutureTask(new Callable<String>() { // from class: com.adobe.mobile.Config.4
            @Override // java.util.concurrent.Callable
            public String call() throws Exception {
                return StaticMethods.getVisitorID();
            }
        });
        StaticMethods.getAnalyticsExecutor().execute(futureTask);
        try {
            return (String) futureTask.get();
        } catch (Exception e2) {
            StaticMethods.logErrorFormat("Analytics - Unable to get UserIdentifier (%s)", e2.getMessage());
            return null;
        }
    }

    public static void setUserIdentifier(final String str) {
        StaticMethods.getAnalyticsExecutor().execute(new Runnable() { // from class: com.adobe.mobile.Config.5
            @Override // java.lang.Runnable
            public void run() {
                StaticMethods.setVisitorID(str);
            }
        });
    }

    public static void setPushIdentifier(final String str) {
        StaticMethods.getAnalyticsExecutor().execute(new Runnable() { // from class: com.adobe.mobile.Config.6
            @Override // java.lang.Runnable
            public void run() {
                StaticMethods.setPushIdentifier(str);
            }
        });
    }

    public static void submitAdvertisingIdentifierTask(final Callable<String> callable) {
        StaticMethods.getAnalyticsExecutor().execute(new Runnable() { // from class: com.adobe.mobile.Config.7
            @Override // java.lang.Runnable
            public void run() {
                try {
                    StaticMethods.setAdvertisingIdentifier((String) callable.call());
                } catch (Exception e2) {
                    StaticMethods.logErrorFormat("Config - Error running the task to get Advertising Identifier (%s).", e2.getLocalizedMessage());
                }
            }
        });
    }

    public static ApplicationType getApplicationType() {
        return StaticMethods.getApplicationType();
    }

    public static void setApplicationType(ApplicationType applicationType) {
        StaticMethods.setApplicationType(applicationType);
    }

    public static Boolean getDebugLogging() {
        return Boolean.valueOf(StaticMethods.getDebugLogging());
    }

    public static void setDebugLogging(Boolean bool) {
        StaticMethods.setDebugLogging(bool.booleanValue());
    }

    public static BigDecimal getLifetimeValue() {
        FutureTask futureTask = new FutureTask(new Callable<BigDecimal>() { // from class: com.adobe.mobile.Config.8
            @Override // java.util.concurrent.Callable
            public BigDecimal call() throws Exception {
                return AnalyticsTrackLifetimeValueIncrease.getLifetimeValue();
            }
        });
        StaticMethods.getAnalyticsExecutor().execute(futureTask);
        try {
            return (BigDecimal) futureTask.get();
        } catch (Exception e2) {
            StaticMethods.logErrorFormat("Analytics - Unable to get lifetime value (%s)", e2.getMessage());
            return null;
        }
    }

    public static void collectLifecycleData() {
        if (StaticMethods.isWearableApp()) {
            StaticMethods.logWarningFormat("Analytics - Method collectLifecycleData is not available for Wearable", new Object[0]);
        } else {
            StaticMethods.getAnalyticsExecutor().execute(new Runnable() { // from class: com.adobe.mobile.Config.9
                @Override // java.lang.Runnable
                public void run() throws StaticMethods.NullActivityException, StaticMethods.NullContextException {
                    Lifecycle.start(null, null);
                }
            });
        }
    }

    public static void collectLifecycleData(final Activity activity) {
        if (StaticMethods.isWearableApp()) {
            StaticMethods.logWarningFormat("Analytics - Method collectLifecycleData is not available for Wearable", new Object[0]);
        } else {
            StaticMethods.getAnalyticsExecutor().execute(new Runnable() { // from class: com.adobe.mobile.Config.10
                @Override // java.lang.Runnable
                public void run() throws StaticMethods.NullActivityException, StaticMethods.NullContextException {
                    Lifecycle.start(activity, null);
                }
            });
        }
    }

    public static void collectLifecycleData(final Activity activity, final Map<String, Object> map) {
        if (StaticMethods.isWearableApp()) {
            StaticMethods.logWarningFormat("Analytics - Method collectLifecycleData is not available for Wearable", new Object[0]);
        } else {
            StaticMethods.getAnalyticsExecutor().execute(new Runnable() { // from class: com.adobe.mobile.Config.11
                @Override // java.lang.Runnable
                public void run() throws StaticMethods.NullActivityException, StaticMethods.NullContextException {
                    Lifecycle.start(activity, map);
                }
            });
        }
    }

    public static void pauseCollectingLifecycleData() {
        if (StaticMethods.isWearableApp()) {
            StaticMethods.logWarningFormat("Analytics - Method pauseCollectingLifecycleData is not available for Wearable", new Object[0]);
        } else {
            MessageAlert.clearCurrentDialog();
            StaticMethods.getAnalyticsExecutor().execute(new Runnable() { // from class: com.adobe.mobile.Config.12
                @Override // java.lang.Runnable
                public void run() {
                    Lifecycle.stop();
                }
            });
        }
    }

    public static void setSmallIconResourceId(final int i) {
        if (StaticMethods.isWearableApp()) {
            StaticMethods.logWarningFormat("Analytics - Method setSmallIconResourceId is not available for Wearable", new Object[0]);
        } else {
            StaticMethods.getMessagesExecutor().execute(new Runnable() { // from class: com.adobe.mobile.Config.13
                @Override // java.lang.Runnable
                public void run() {
                    Messages.setSmallIconResourceId(i);
                }
            });
        }
    }

    public static void setLargeIconResourceId(final int i) {
        if (StaticMethods.isWearableApp()) {
            StaticMethods.logWarningFormat("Analytics - Method setLargeIconResourceId is not available for Wearable", new Object[0]);
        } else {
            StaticMethods.getMessagesExecutor().execute(new Runnable() { // from class: com.adobe.mobile.Config.14
                @Override // java.lang.Runnable
                public void run() {
                    Messages.setLargeIconResourceId(i);
                }
            });
        }
    }

    public static void overrideConfigStream(InputStream inputStream) {
        MobileConfig.setUserDefinedConfigPath(inputStream);
    }
}
