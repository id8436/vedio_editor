package com.adobe.creativesdk.foundation.internal.storage;

import com.adobe.creativesdk.foundation.internal.notification.AdobeInternalNotificationID;
import com.adobe.creativesdk.foundation.internal.notification.AdobeLocalNotificationCenter;
import com.adobe.creativesdk.foundation.internal.notification.AdobeNotification;
import com.adobe.creativesdk.foundation.storage.AdobeAsset;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFile;
import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class AdobeStorageAssetSelectionState {
    static boolean isMultiSelectModeActive = false;
    static boolean isMultiSelectModeSupported = false;
    static HashMap<String, AdobeAsset> sharedSelectedAssetsCollection = null;
    static int _selectionStateTimeStamp = 1;

    public static HashMap<String, AdobeAsset> sharedSelectedAssets() {
        if (sharedSelectedAssetsCollection == null) {
            sharedSelectedAssetsCollection = new HashMap<>();
        }
        return sharedSelectedAssetsCollection;
    }

    public static int getCurrentSelectionTimeStamp() {
        return _selectionStateTimeStamp;
    }

    private static void setSelectionStateChanged() {
        _selectionStateTimeStamp++;
    }

    public static void addSelectedAsset(AdobeAssetFile adobeAssetFile) {
        if (adobeAssetFile != null) {
            setSelectionStateChanged();
            sharedSelectedAssets().put(adobeAssetFile.getGUID(), adobeAssetFile);
            AdobeLocalNotificationCenter.getDefaultNotificationCenter().postNotification(new AdobeNotification(AdobeInternalNotificationID.AdobeStorageSelectedAssetAssetCountChangeNotification, null));
        }
    }

    public static void removeSelectedAsset(AdobeAssetFile adobeAssetFile) {
        if (adobeAssetFile != null) {
            setSelectionStateChanged();
            sharedSelectedAssets().remove(adobeAssetFile.getGUID());
            AdobeLocalNotificationCenter.getDefaultNotificationCenter().postNotification(new AdobeNotification(AdobeInternalNotificationID.AdobeStorageSelectedAssetAssetCountChangeNotification, null));
        }
    }

    public static boolean containsAsset(AdobeAssetFile adobeAssetFile) {
        return sharedSelectedAssets().containsKey(adobeAssetFile.getGUID());
    }

    public static int selectedAssetCount() {
        return sharedSelectedAssets().size();
    }

    public static void resetSelectedAssets() {
        sharedSelectedAssetsCollection = new HashMap<>();
        setSelectionStateChanged();
        AdobeLocalNotificationCenter.getDefaultNotificationCenter().postNotification(new AdobeNotification(AdobeInternalNotificationID.AdobeStorageSelectedAssetAssetCountChangeNotification, null));
    }

    public static void setIsMultiSelectModeActive(boolean z) {
        if (isMultiSelectModeActive != z) {
            if (isMultiSelectModeActive && !z) {
                resetSelectedAssets();
            }
            isMultiSelectModeActive = z;
            AdobeLocalNotificationCenter.getDefaultNotificationCenter().postNotification(new AdobeNotification(AdobeInternalNotificationID.AdobeStorageSelectedAssetMultiselectModeDidChangeNotification, null));
        }
    }

    public static boolean isMultiSelectModeActive() {
        return isMultiSelectModeActive;
    }

    public static void setIsMultiSelectModeSupported(boolean z) {
        if (isMultiSelectModeSupported != z) {
            if (isMultiSelectModeSupported && !z) {
                resetSelectedAssets();
            }
            isMultiSelectModeSupported = z;
        }
    }

    public static boolean isMultiSelectModeSupported() {
        return isMultiSelectModeSupported;
    }

    public static boolean isAssetSelected() {
        return sharedSelectedAssets().size() > 0;
    }

    public static ArrayList<AdobeAsset> selectedAssets() {
        return new ArrayList<>(sharedSelectedAssets().values());
    }

    public static void refreshSelectionListWithNewlyLoadedAssets(ArrayList<AdobeAsset> arrayList, String str) {
        boolean z;
        boolean z2 = false;
        if (str != null && arrayList.size() > 0 && isMultiSelectModeActive) {
            HashMap<String, AdobeAsset> mapSharedSelectedAssets = sharedSelectedAssets();
            if (mapSharedSelectedAssets.size() != 0) {
                ArrayList arrayList2 = new ArrayList();
                for (String str2 : mapSharedSelectedAssets.keySet()) {
                    if (str2.startsWith(str)) {
                        arrayList2.add(str2);
                    }
                }
                int i = 0;
                while (true) {
                    z = z2;
                    if (i >= arrayList2.size()) {
                        break;
                    }
                    String str3 = (String) arrayList2.get(i);
                    ArrayList arrayList3 = new ArrayList();
                    for (AdobeAsset adobeAsset : arrayList) {
                        if (adobeAsset.getGUID().equals(str3)) {
                            arrayList3.add(adobeAsset);
                        }
                    }
                    if (arrayList3.size() == 0) {
                        z2 = true;
                        mapSharedSelectedAssets.remove(str3);
                    } else {
                        z2 = z;
                    }
                    i++;
                }
                if (z) {
                    setSelectionStateChanged();
                    AdobeLocalNotificationCenter.getDefaultNotificationCenter().postNotification(new AdobeNotification(AdobeInternalNotificationID.AdobeStorageSelectedAssetAssetCountChangeNotification, null));
                }
            }
        }
    }
}
