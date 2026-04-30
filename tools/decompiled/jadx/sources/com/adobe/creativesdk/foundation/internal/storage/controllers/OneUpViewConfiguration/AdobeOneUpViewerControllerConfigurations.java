package com.adobe.creativesdk.foundation.internal.storage.controllers.OneUpViewConfiguration;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeOneUpViewerControllerConfigurations {
    private static int CSDK_CONFIGURATION_KEY;
    private static int LOKI_CONFIGURATION_KEY;

    public static void setLokiConfigurationKey(int i) {
        LOKI_CONFIGURATION_KEY = i;
    }

    public static void setCSDKDefaultConfigurationKey(int i) {
        CSDK_CONFIGURATION_KEY = i;
    }

    public static int getLokiConfigurationKey() {
        return LOKI_CONFIGURATION_KEY;
    }

    public static int getCsdkConfigurationKey() {
        return CSDK_CONFIGURATION_KEY;
    }
}
