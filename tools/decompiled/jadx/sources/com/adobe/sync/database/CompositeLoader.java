package com.adobe.sync.database;

import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComposite;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXController;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXException;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXLocalStorageScheme;
import java.io.File;
import java.net.URI;
import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
public class CompositeLoader {
    private static CompositeLoader instance = null;
    private static boolean isInitialized = false;
    private HashMap<String, AdobeDCXComposite> compositeCache;
    private AdobeDCXController mDCXSyncController;
    private String mDeletedProjectDirectory;
    private String mPulledProjectDirectory;
    private String mRootDirectory;
    private String mSyncGroupName;

    public static CompositeLoader getInstance() {
        if (instance == null) {
            instance = new CompositeLoader();
        }
        return instance;
    }

    protected CompositeLoader() {
    }

    public void initialize(String str, String str2, String str3, String str4, AdobeDCXController adobeDCXController) {
        this.mDCXSyncController = adobeDCXController;
        this.mRootDirectory = str;
        this.mPulledProjectDirectory = str2;
        this.mDeletedProjectDirectory = str3;
        this.mSyncGroupName = str4;
        this.compositeCache = new HashMap<>();
        isInitialized = true;
    }

    private String getProjectPath(String str) {
        if (this.mRootDirectory == null || this.mRootDirectory.length() == 0) {
            return null;
        }
        return this.mRootDirectory + File.separator + str;
    }

    public AdobeDCXComposite loadComposite(String str, String str2, String str3) {
        AdobeDCXComposite adobeDCXCompositeCreateCompositeFromPath;
        AdobeDCXException e2;
        AdobeDCXComposite adobeDCXCompositeCreateCompositeFromHref = null;
        if (isInitialized) {
            if (str2 == null) {
                str2 = getProjectPath(str);
            }
            if (str2 != null && (adobeDCXCompositeCreateCompositeFromHref = this.compositeCache.get(str)) == null) {
                if (str3 != null) {
                    try {
                        adobeDCXCompositeCreateCompositeFromHref = AdobeDCXComposite.createCompositeFromHref(new URI(str3), str, str2, AdobeDCXLocalStorageScheme.AdobeDCXLocalStorageSchemeCopyOnWrite);
                    } catch (Exception e3) {
                        e3.printStackTrace();
                    }
                } else {
                    File file = new File(str2);
                    if (file.exists() && file.isDirectory()) {
                        try {
                            adobeDCXCompositeCreateCompositeFromPath = AdobeDCXComposite.createCompositeFromPath(str2, AdobeDCXLocalStorageScheme.AdobeDCXLocalStorageSchemeCopyOnWrite);
                        } catch (AdobeDCXException e4) {
                            adobeDCXCompositeCreateCompositeFromPath = adobeDCXCompositeCreateCompositeFromHref;
                            e2 = e4;
                        }
                        try {
                            adobeDCXCompositeCreateCompositeFromPath.setController(this.mDCXSyncController);
                            adobeDCXCompositeCreateCompositeFromHref = adobeDCXCompositeCreateCompositeFromPath;
                        } catch (AdobeDCXException e5) {
                            e2 = e5;
                            e2.printStackTrace();
                            adobeDCXCompositeCreateCompositeFromHref = adobeDCXCompositeCreateCompositeFromPath;
                        }
                    }
                }
                if (adobeDCXCompositeCreateCompositeFromHref != null) {
                    if (!str2.contains(this.mPulledProjectDirectory) && !str2.contains(this.mDeletedProjectDirectory)) {
                        this.compositeCache.put(str, adobeDCXCompositeCreateCompositeFromHref);
                        if (str3 == null) {
                            try {
                                if (str.equals("preferences")) {
                                    str3 = "assets" + File.separator + "adobe-premiereclip-preferences" + File.separator + str;
                                } else {
                                    str3 = "assets" + File.separator + "adobe-premiereclip" + File.separator + str;
                                }
                            } catch (Exception e6) {
                                e6.printStackTrace();
                            }
                        }
                        adobeDCXCompositeCreateCompositeFromHref.setHref(new URI(str3));
                    }
                    adobeDCXCompositeCreateCompositeFromHref.setController(this.mDCXSyncController);
                }
            }
        }
        return adobeDCXCompositeCreateCompositeFromHref;
    }

    public void removeFromCompositeCache(String str) {
        if (isInitialized && this.compositeCache.containsKey(str)) {
            this.compositeCache.remove(str);
        }
    }
}
