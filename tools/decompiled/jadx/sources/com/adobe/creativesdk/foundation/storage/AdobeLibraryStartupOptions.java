package com.adobe.creativesdk.foundation.storage;

import com.adobe.creativesdk.foundation.adobeinternal.net.AdobeNetworkReachability;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeLibraryStartupOptions {
    public ArrayList<String> autoDownloadContentTypes;
    public ArrayList elementTypesFilter;
    public HashMap<String, ArrayList<Integer>> renditionSizes;
    public AdobeLibraryDownloadPolicyType autoDownloadPolicy = AdobeLibraryDownloadPolicyType.AdobeLibraryDownloadPolicyTypeManifestOnly;
    public long autoSyncInterval = 60;
    public EnumSet<AdobeNetworkReachability.AdobeNetworkStatusCode> syncAllowedByNetworkStatusMask = EnumSet.of(AdobeNetworkReachability.AdobeNetworkStatusCode.AdobeNetworkReachableNonMetered);
    public boolean includeBookmarkedLibraries = true;
}
