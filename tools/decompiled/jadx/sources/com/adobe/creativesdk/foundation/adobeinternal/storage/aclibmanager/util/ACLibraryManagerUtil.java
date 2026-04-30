package com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.util;

import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudManager;
import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.ACEventBus;
import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.appbridge.ACLibraryManagerAppBridge;
import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.core.ACLibraryManager;
import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.core.ACLibraryManagerOptions;
import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.internal.utils.ACLibraryManagerPrefs;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXUtils;
import com.adobe.creativesdk.foundation.auth.AdobeUXAuthManager;
import com.adobe.creativesdk.foundation.internal.common.AdobeCommonApplicationContextHolder;
import com.adobe.creativesdk.foundation.internal.notification.AdobeInternalNotificationID;
import com.adobe.creativesdk.foundation.internal.notification.AdobeLocalNotificationCenter;
import com.adobe.creativesdk.foundation.storage.AdobeCollaborationType;
import com.adobe.creativesdk.foundation.storage.AdobeDesignLibraryUtils;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryElement;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryElementFilter;
import java.io.File;
import java.util.ArrayList;
import java.util.Observable;
import java.util.Observer;

/* JADX INFO: loaded from: classes.dex */
public class ACLibraryManagerUtil {
    private static final Observer _cloudSwitchObserver = new Observer() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.util.ACLibraryManagerUtil.1
        @Override // java.util.Observer
        public void update(Observable observable, Object obj) {
            ACLibraryManagerAppBridge.destroyInstance();
            ACLibraryManagerUtil.createAndStartLibraryAppBridge();
        }
    };

    public static String getAdobeIDOfCurrentUser() {
        String adobeID = AdobeUXAuthManager.getSharedAuthManager().getUserProfile().getAdobeID();
        if (adobeID != null) {
            return adobeID.split("@")[0];
        }
        return null;
    }

    public static boolean appHasAnyAuthenticatedUser() {
        return getAdobeIDOfCurrentUser() != null;
    }

    public static String getDefaultDesignLibrariesDirectory() {
        String path = AdobeCommonApplicationContextHolder.getSharedApplicationContextHolder().getApplicationContext().getFilesDir().getPath();
        String adobeIDOfCurrentUser = getAdobeIDOfCurrentUser();
        if (adobeIDOfCurrentUser == null) {
            return null;
        }
        String strStringByAppendingLastPathComponent = AdobeDCXUtils.stringByAppendingLastPathComponent(path, adobeIDOfCurrentUser);
        if (AdobeCloudManager.getSharedCloudManager().getDefaultCloud() != null) {
            strStringByAppendingLastPathComponent = AdobeDCXUtils.stringByAppendingLastPathComponentAndLastPathComponentIsDir(AdobeDCXUtils.stringByAppendingLastPathComponent(strStringByAppendingLastPathComponent, AdobeCloudManager.getSharedCloudManager().getDefaultCloud().getGUID()), "Design Libraries");
        }
        File file = new File(strStringByAppendingLastPathComponent);
        if (file.exists() || file.mkdirs()) {
            return strStringByAppendingLastPathComponent;
        }
        return null;
    }

    public static AdobeLibraryComposite getLastUserSelectedLibraryFromPrefs(ACLibraryManager aCLibraryManager) {
        AdobeLibraryComposite adobeLibraryComposite = null;
        String lastUserSelectedLibraryId = ACLibraryManagerPrefs.getLastUserSelectedLibraryId();
        if (lastUserSelectedLibraryId != null) {
            for (AdobeLibraryComposite adobeLibraryComposite2 : aCLibraryManager.getLibraries()) {
                if (!adobeLibraryComposite2.getLibraryId().equals(lastUserSelectedLibraryId)) {
                    adobeLibraryComposite2 = adobeLibraryComposite;
                }
                adobeLibraryComposite = adobeLibraryComposite2;
            }
        }
        return adobeLibraryComposite;
    }

    public static boolean isLibraryCollaborated(AdobeLibraryComposite adobeLibraryComposite) {
        return adobeLibraryComposite.getCollaboration() != AdobeCollaborationType.ADOBE_COLLABORATION_TYPE_PRIVATE;
    }

    public static boolean isLibraryCollaboratedWithYou(AdobeLibraryComposite adobeLibraryComposite) {
        return adobeLibraryComposite.getCollaboration() == AdobeCollaborationType.ADOBE_COLLABORATION_TYPE_SHAREDWITHUSER;
    }

    public static boolean isLibrariesSame(AdobeLibraryComposite adobeLibraryComposite, AdobeLibraryComposite adobeLibraryComposite2) {
        if (adobeLibraryComposite == null || adobeLibraryComposite2 == null) {
            return false;
        }
        return adobeLibraryComposite.getLibraryId().equalsIgnoreCase(adobeLibraryComposite2.getLibraryId());
    }

    public static ArrayList<AdobeLibraryElement> getElementsOfFilter(AdobeLibraryComposite adobeLibraryComposite, AdobeLibraryElementFilter adobeLibraryElementFilter) {
        return (ACLibraryManagerAppBridge.getInstance() == null || ACLibraryManagerAppBridge.getInstance().getLibraryManager() == null) ? new ArrayList<>() : adobeLibraryComposite.getElementsWithFilter(adobeLibraryElementFilter, ACLibraryManagerAppBridge.getInstance().getLibraryManager());
    }

    private static boolean containsType(String[] strArr, String str) {
        for (String str2 : strArr) {
            if (str.equalsIgnoreCase(str2)) {
                return true;
            }
        }
        return false;
    }

    public static ArrayList<AdobeLibraryElement> getElementsOfMediaType(AdobeLibraryComposite adobeLibraryComposite, String[] strArr) {
        ArrayList<AdobeLibraryElement> elements;
        ArrayList<AdobeLibraryElement> arrayList = new ArrayList<>();
        if (ACLibraryManagerAppBridge.getInstance() != null && ACLibraryManagerAppBridge.getInstance().getLibraryManager() != null && (elements = adobeLibraryComposite.getElements(ACLibraryManagerAppBridge.getInstance().getLibraryManager())) != null) {
            for (AdobeLibraryElement adobeLibraryElement : elements) {
                if (containsType(strArr, adobeLibraryElement.getType())) {
                    arrayList.add(adobeLibraryElement);
                }
            }
        }
        return arrayList;
    }

    public static void createAndStartLibraryAppBridge() {
        if (!ACLibraryManagerAppBridge.hasValidInstance()) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(AdobeDesignLibraryUtils.AdobeDesignLibraryColorElementType);
            arrayList.add(AdobeDesignLibraryUtils.AdobeDesignLibraryColorThemeElementType);
            arrayList.add(AdobeDesignLibraryUtils.AdobeDesignLibraryImageElementType);
            arrayList.add(AdobeDesignLibraryUtils.AdobeDesignLibraryBrushElementType);
            arrayList.add("application/vnd.adobe.element.look+dcx");
            arrayList.add(AdobeDesignLibraryUtils.AdobeDesignLibrary3DModelElementType);
            arrayList.add(AdobeDesignLibraryUtils.AdobeDesignLibraryCharacterStyleElementType);
            arrayList.add(AdobeDesignLibraryUtils.AdobeDesignLibraryLayerStyleElementType);
            arrayList.add(AdobeDesignLibraryUtils.AdobeDesignLibraryVideoElementType);
            arrayList.add(AdobeDesignLibraryUtils.AdobeDesignLibraryPatternElementType);
            arrayList.add(AdobeDesignLibraryUtils.AdobeDesignLibraryTemplateElementType);
            arrayList.add(AdobeDesignLibraryUtils.AdobeDesignLibrary3DMaterialElementType);
            arrayList.add(AdobeDesignLibraryUtils.AdobeDesignLibrary3DLightElementType);
            arrayList.add(AdobeDesignLibraryUtils.AdobeDesignLibraryAnimationElementType);
            ACLibraryManagerAppBridge.createNewInstance(ACLibraryManagerOptions.getDefaultOptions(arrayList), ACEventBus.getDefault());
            AdobeLocalNotificationCenter.getDefaultNotificationCenter().addObserver(AdobeInternalNotificationID.AdobeNotificationManagerSwitchedToPrivateCloudNotification, _cloudSwitchObserver);
            AdobeLocalNotificationCenter.getDefaultNotificationCenter().addObserver(AdobeInternalNotificationID.AdobeNotificationManagerSwitchedToPublicCloudNotification, _cloudSwitchObserver);
        }
        ACLibraryManagerAppBridge.getInstance().forceSync();
    }
}
