package com.adobe.creativesdk.foundation.internal.storage.controllers.OneUpViewConfiguration;

import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeOneUpViewerConfigurationFactory {
    private static int current_ID = 0;
    private static HashMap<Integer, AdobeOneUpViewerController> configurations = new HashMap<>();

    public static synchronized AdobeOneUpViewerController getOneUpViewerController(int i) {
        return configurations.get(Integer.valueOf(i));
    }

    public static synchronized int registerController(AdobeOneUpViewerController adobeOneUpViewerController) {
        current_ID++;
        configurations.put(Integer.valueOf(current_ID), adobeOneUpViewerController);
        return current_ID;
    }

    public static synchronized void unregisterController(int i) {
        configurations.remove(Integer.valueOf(i));
    }
}
