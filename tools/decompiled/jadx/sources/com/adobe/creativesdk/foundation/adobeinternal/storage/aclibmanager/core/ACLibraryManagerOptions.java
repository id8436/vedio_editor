package com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.core;

import android.os.Handler;
import com.adobe.creativesdk.foundation.adobeinternal.net.AdobeNetworkReachability;
import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.util.ACLibraryManagerUtil;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkRequestPriority;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryDownloadPolicyType;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryStartupOptions;
import java.util.ArrayList;
import java.util.EnumSet;

/* JADX INFO: loaded from: classes.dex */
public class ACLibraryManagerOptions {
    public Handler _almHandler;
    public AdobeLibraryStartupOptions _almStartupOptions;
    public String _defaultLibName;
    public String _designLibrariesFolder;
    public AdobeNetworkRequestPriority _downloadPriority;
    public AdobeNetworkRequestPriority _uploadPriority;

    public static ACLibraryManagerOptions getDefaultOptions(ArrayList<String> arrayList) {
        return createLibraryManagerOptions(arrayList);
    }

    public static ACLibraryManagerOptions getDefaultOptionsWithSyncPriorities(ArrayList<String> arrayList, AdobeNetworkRequestPriority adobeNetworkRequestPriority, AdobeNetworkRequestPriority adobeNetworkRequestPriority2) {
        ACLibraryManagerOptions aCLibraryManagerOptionsCreateLibraryManagerOptions = createLibraryManagerOptions(arrayList);
        aCLibraryManagerOptionsCreateLibraryManagerOptions._downloadPriority = adobeNetworkRequestPriority;
        aCLibraryManagerOptionsCreateLibraryManagerOptions._uploadPriority = adobeNetworkRequestPriority2;
        return aCLibraryManagerOptionsCreateLibraryManagerOptions;
    }

    private static ACLibraryManagerOptions createLibraryManagerOptions(ArrayList<String> arrayList) {
        AdobeLibraryStartupOptions adobeLibraryStartupOptions = new AdobeLibraryStartupOptions();
        adobeLibraryStartupOptions.autoDownloadPolicy = AdobeLibraryDownloadPolicyType.AdobeLibraryDownloadPolicyTypeManifestOnly;
        adobeLibraryStartupOptions.syncAllowedByNetworkStatusMask = EnumSet.of(AdobeNetworkReachability.AdobeNetworkStatusCode.AdobeNetworkReachableMetered, AdobeNetworkReachability.AdobeNetworkStatusCode.AdobeNetworkReachableNonMetered);
        adobeLibraryStartupOptions.elementTypesFilter = arrayList;
        ACLibraryManagerOptions aCLibraryManagerOptions = new ACLibraryManagerOptions();
        aCLibraryManagerOptions._almStartupOptions = adobeLibraryStartupOptions;
        aCLibraryManagerOptions._almHandler = new Handler();
        aCLibraryManagerOptions._designLibrariesFolder = ACLibraryManagerUtil.getDefaultDesignLibrariesDirectory();
        aCLibraryManagerOptions._uploadPriority = AdobeNetworkRequestPriority.NORMAL;
        aCLibraryManagerOptions._downloadPriority = AdobeNetworkRequestPriority.NORMAL;
        return aCLibraryManagerOptions;
    }
}
