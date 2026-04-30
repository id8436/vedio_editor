package com.adobe.mobile;

import android.content.Context;

/* JADX INFO: loaded from: classes2.dex */
final class WearableFunctionBridge {
    private static Class<?> configSynchronizerClassLoader;
    private static Class<?> wearableFunctionClassLoader;

    WearableFunctionBridge() {
    }

    private static Class<?> getWearableFunctionClass() {
        if (wearableFunctionClassLoader != null) {
            return wearableFunctionClassLoader;
        }
        try {
            wearableFunctionClassLoader = WearableFunctionBridge.class.getClassLoader().loadClass("com.adobe.mobile.WearableFunction");
        } catch (Exception e2) {
            StaticMethods.logErrorFormat("Wearable - Failed to load class com.adobe.mobile.WearableFunction", e2.getLocalizedMessage());
        }
        return wearableFunctionClassLoader;
    }

    private static Class<?> getConfigSynchronizerClass() {
        if (configSynchronizerClassLoader != null) {
            return configSynchronizerClassLoader;
        }
        try {
            configSynchronizerClassLoader = WearableFunctionBridge.class.getClassLoader().loadClass("com.adobe.mobile.ConfigSynchronizer");
        } catch (Exception e2) {
            StaticMethods.logErrorFormat("Wearable - Failed to load class com.adobe.mobile.ConfigSynchronizer", e2.getLocalizedMessage());
        }
        return configSynchronizerClassLoader;
    }

    protected static boolean isGooglePlayServicesEnabled() {
        try {
            Class<?> clsLoadClass = WearableFunctionBridge.class.getClassLoader().loadClass("com.google.android.gms.common.GoogleApiAvailability");
            Object objInvoke = clsLoadClass.getDeclaredMethod("isGooglePlayServicesAvailable", Context.class).invoke(clsLoadClass.getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]), StaticMethods.getSharedContext());
            if (objInvoke instanceof Integer) {
                return ((Integer) objInvoke).intValue() == 0;
            }
        } catch (IllegalStateException e2) {
            StaticMethods.logDebugFormat("Wearable - Google Play Services is not enabled in your app's AndroidManifest.xml", e2.getLocalizedMessage());
        } catch (Exception e3) {
        }
        try {
            Object objInvoke2 = WearableFunctionBridge.class.getClassLoader().loadClass("com.google.android.gms.common.GooglePlayServicesUtil").getDeclaredMethod("isGooglePlayServicesAvailable", Context.class).invoke(null, StaticMethods.getSharedContext());
            if (objInvoke2 instanceof Integer) {
                return ((Integer) objInvoke2).intValue() == 0;
            }
        } catch (IllegalStateException e4) {
            StaticMethods.logDebugFormat("Wearable - Google Play Services is not enabled in your app's AndroidManifest.xml", e4.getLocalizedMessage());
        } catch (Exception e5) {
        }
        return false;
    }

    protected static boolean shouldSendHit() {
        if (!StaticMethods.isWearableApp()) {
            return true;
        }
        try {
            Object objInvoke = getWearableFunctionClass().getDeclaredMethod("shouldSendHit", new Class[0]).invoke(null, new Object[0]);
            if (objInvoke instanceof Boolean) {
                return ((Boolean) objInvoke).booleanValue();
            }
        } catch (Exception e2) {
            StaticMethods.logErrorFormat("Wearable - Error checking status of handheld app (%s)", e2.getLocalizedMessage());
        }
        return true;
    }

    protected static void sendGenericRequest(String str, int i, String str2) {
        try {
            getWearableFunctionClass().getDeclaredMethod("sendGenericRequest", String.class, Integer.TYPE).invoke(null, str, Integer.valueOf(i));
            StaticMethods.logDebugFormat("%s - Request Sent(%s)", str2, str);
        } catch (Exception e2) {
            StaticMethods.logErrorFormat("Wearable - Error sending request (%s)", e2.getLocalizedMessage());
        }
    }

    protected static byte[] retrieveData(String str, int i) {
        try {
            Object objInvoke = getWearableFunctionClass().getDeclaredMethod("retrieveData", String.class, Integer.TYPE).invoke(null, str, Integer.valueOf(i));
            if (objInvoke instanceof byte[]) {
                return (byte[]) objInvoke;
            }
        } catch (Exception e2) {
            StaticMethods.logErrorFormat("Wearable - Error sending request (%s)", e2.getLocalizedMessage());
        }
        return null;
    }

    protected static byte[] retrieveAnalyticsRequestData(String str, String str2, int i, String str3) {
        try {
            Object objInvoke = getWearableFunctionClass().getDeclaredMethod("retrieveAnalyticsRequestData", String.class, String.class, Integer.TYPE).invoke(null, str, str2, Integer.valueOf(i));
            if (objInvoke instanceof byte[]) {
                return (byte[]) objInvoke;
            }
        } catch (Exception e2) {
            StaticMethods.logErrorFormat("Wearable - Error sending request (%s)", e2.getLocalizedMessage());
        }
        return null;
    }

    protected static boolean sendThirdPartyRequest(String str, String str2, int i, String str3, String str4) {
        try {
            Object objInvoke = getWearableFunctionClass().getDeclaredMethod("sendThirdPartyRequest", String.class, String.class, Integer.TYPE, String.class).invoke(null, str, str2, Integer.valueOf(i), str3);
            if (objInvoke instanceof Boolean) {
                if (((Boolean) objInvoke).booleanValue()) {
                    StaticMethods.logDebugFormat("%s - Successfully forwarded hit (url:%s body:%s contentType:%s)", str4, str, str2, str3);
                } else {
                    StaticMethods.logDebugFormat("%s - Failed to forwarded hit (url:%s body:%s contentType:%s)", str4, str, str2, str3);
                }
                return ((Boolean) objInvoke).booleanValue();
            }
        } catch (Exception e2) {
            StaticMethods.logErrorFormat("Wearable - Error sending request (%s)", e2.getLocalizedMessage());
        }
        return false;
    }

    protected static void syncVisitorIDToWearable(String str) {
        if (!StaticMethods.isWearableApp() && MobileConfig.getInstance().mobileUsingGooglePlayServices()) {
            try {
                getConfigSynchronizerClass().getDeclaredMethod("syncVisitorID", String.class).invoke(null, str);
            } catch (Exception e2) {
                StaticMethods.logDebugFormat("Wearable - Unable to sync visitor id (%s)", e2.getLocalizedMessage());
            }
        }
    }

    protected static void syncAdvertisingIdentifierToWearable(String str) {
        if (!StaticMethods.isWearableApp() && MobileConfig.getInstance().mobileUsingGooglePlayServices()) {
            try {
                getConfigSynchronizerClass().getDeclaredMethod("syncAdvertisingIdentifier", String.class).invoke(null, str);
            } catch (Exception e2) {
                StaticMethods.logDebugFormat("Wearable - Unable to sync advertisingIdentifier id (%s)", e2.getLocalizedMessage());
            }
        }
    }

    protected static void syncPushEnabledToWearable(boolean z) {
        if (!StaticMethods.isWearableApp() && MobileConfig.getInstance().mobileUsingGooglePlayServices()) {
            try {
                getConfigSynchronizerClass().getDeclaredMethod("syncPushEnabled", Boolean.TYPE).invoke(null, Boolean.valueOf(z));
            } catch (Exception e2) {
                StaticMethods.logDebugFormat("Wearable - Unable to sync push enabled status (%s)", e2.getLocalizedMessage());
            }
        }
    }

    protected static void syncVidServiceToWearable(String str, String str2, String str3, long j, long j2, String str4) {
        if (!StaticMethods.isWearableApp() && MobileConfig.getInstance().mobileUsingGooglePlayServices()) {
            try {
                getConfigSynchronizerClass().getDeclaredMethod("syncVidService", String.class, String.class, String.class, Long.TYPE, Long.TYPE, String.class).invoke(null, str, str2, str3, Long.valueOf(j), Long.valueOf(j2), str4);
            } catch (Exception e2) {
                StaticMethods.logDebugFormat("Wearable - Unable to sync visitor id service (%s)", e2.getLocalizedMessage());
            }
        }
    }

    protected static void syncPrivacyStatusToWearable(int i) {
        if (!StaticMethods.isWearableApp() && MobileConfig.getInstance().mobileUsingGooglePlayServices()) {
            try {
                getConfigSynchronizerClass().getDeclaredMethod("syncPrivacyStatus", Integer.TYPE).invoke(null, Integer.valueOf(i));
            } catch (Exception e2) {
                StaticMethods.logDebugFormat("Wearable - Unable to sync privacy status (%s)", e2.getLocalizedMessage());
            }
        }
    }

    protected static void syncConfigFromHandheld() {
        if (StaticMethods.isWearableApp()) {
            try {
                getConfigSynchronizerClass().getDeclaredMethod("syncConfigFromHandheld", new Class[0]).invoke(null, new Object[0]);
            } catch (Exception e2) {
                StaticMethods.logDebugFormat("Wearable - Unable to sync config (%s)", e2.getLocalizedMessage());
            }
        }
    }
}
