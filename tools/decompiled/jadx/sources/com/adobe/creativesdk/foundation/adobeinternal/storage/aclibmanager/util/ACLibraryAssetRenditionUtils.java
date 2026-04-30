package com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.util;

import android.app.Activity;
import android.os.Handler;
import android.support.annotation.NonNull;
import android.util.DisplayMetrics;
import com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback;
import com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXConstants;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXLocalStorageScheme;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXUtils;
import com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryCompositeInternal;
import com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryUtils;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import com.adobe.creativesdk.foundation.storage.AdobeAssetImageDimensions;
import com.adobe.creativesdk.foundation.storage.AdobeAssetMimeTypes;
import com.adobe.creativesdk.foundation.storage.AdobeDesignLibraryUtils;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryElement;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryException;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryRepresentation;
import com.adobe.creativesdk.foundation.storage.IAdobeGenericRequestCallback;
import com.google.android.exoplayer.ExoPlayer;
import org.json.JSONException;

/* JADX INFO: loaded from: classes.dex */
public class ACLibraryAssetRenditionUtils {
    public static boolean fetchAnyImageRepresentation(int i, @NonNull AdobeLibraryComposite adobeLibraryComposite, @NonNull AdobeLibraryElement adobeLibraryElement, @NonNull IAdobeGenericRequestCallback<String, AdobeLibraryException> iAdobeGenericRequestCallback, Handler handler) {
        return fetchRendition(i, adobeLibraryComposite, adobeLibraryElement, iAdobeGenericRequestCallback, handler);
    }

    public static boolean fetchfullImageRepresentation(@NonNull AdobeLibraryComposite adobeLibraryComposite, @NonNull AdobeLibraryElement adobeLibraryElement, @NonNull IAdobeGenericRequestCallback<String, AdobeLibraryException> iAdobeGenericRequestCallback, Handler handler) {
        return fetchRendition(0, adobeLibraryComposite, adobeLibraryElement, iAdobeGenericRequestCallback, handler);
    }

    public static boolean fetchAnyImageRepresentation(@NonNull AdobeLibraryComposite adobeLibraryComposite, @NonNull AdobeLibraryElement adobeLibraryElement, @NonNull AdobeAssetImageDimensions adobeAssetImageDimensions, @NonNull IAdobeGenericRequestCallback<String, AdobeLibraryException> iAdobeGenericRequestCallback, Handler handler) {
        return fetchRendition((int) (adobeAssetImageDimensions.width > adobeAssetImageDimensions.height ? adobeAssetImageDimensions.width : adobeAssetImageDimensions.height), adobeLibraryComposite, adobeLibraryElement, iAdobeGenericRequestCallback, handler);
    }

    public static boolean fetchPngRepresentation(@NonNull AdobeLibraryComposite adobeLibraryComposite, @NonNull AdobeLibraryElement adobeLibraryElement, IAdobeGenericRequestCallback<String, AdobeLibraryException> iAdobeGenericRequestCallback, Handler handler) {
        new String[1][0] = AdobeAssetMimeTypes.MIMETYPE_PNG.getMimeType();
        return fetchRendition(0, adobeLibraryComposite, adobeLibraryElement, iAdobeGenericRequestCallback, handler);
    }

    private static boolean isElementRepresentationMatch(AdobeLibraryRepresentation adobeLibraryRepresentation, String[] strArr) {
        if (adobeLibraryRepresentation == null) {
            return false;
        }
        for (String str : strArr) {
            if (str.equals(adobeLibraryRepresentation.getType())) {
                return true;
            }
        }
        return false;
    }

    public static void fetchRenditionForRepresentation(int i, @NonNull AdobeLibraryComposite adobeLibraryComposite, @NonNull AdobeLibraryRepresentation adobeLibraryRepresentation, @NonNull AdobeLibraryElement adobeLibraryElement, final IAdobeGenericRequestCallback<String, AdobeLibraryException> iAdobeGenericRequestCallback, Handler handler) {
        boolean z = i == 0;
        IAdobeGenericCompletionCallback<String> iAdobeGenericCompletionCallback = new IAdobeGenericCompletionCallback<String>() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.util.ACLibraryAssetRenditionUtils.1
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
            public void onCompletion(String str) {
                iAdobeGenericRequestCallback.onCompletion(str);
            }
        };
        IAdobeGenericErrorCallback<AdobeLibraryException> iAdobeGenericErrorCallback = new IAdobeGenericErrorCallback<AdobeLibraryException>() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.util.ACLibraryAssetRenditionUtils.2
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(AdobeLibraryException adobeLibraryException) {
                iAdobeGenericRequestCallback.onError(adobeLibraryException);
            }
        };
        if (checkIfLibraryNotYetSynced(adobeLibraryComposite, adobeLibraryElement)) {
            AdobeLibraryCompositeInternal adobeLibraryCompositeInternal = (AdobeLibraryCompositeInternal) adobeLibraryComposite;
            String relationship = adobeLibraryRepresentation.getRelationship();
            String type = adobeLibraryRepresentation.getType();
            if (relationship != null && relationship.equals(AdobeLibraryRepresentation.AdobeLibraryRepresentationRelationshipTypePrimary)) {
                if (!z) {
                    Integer.toString(i);
                }
                if ((adobeLibraryRepresentation.isExternalLink() && type != null && type.startsWith("image/")) && i > 400) {
                    adobeLibraryCompositeInternal.downloadRenditionFromExternalLink(adobeLibraryElement, adobeLibraryRepresentation, i, handler, iAdobeGenericRequestCallback, iAdobeGenericErrorCallback);
                    return;
                }
            }
            if (AdobeLibraryUtils.canComputerRenditionForType(type)) {
                try {
                    String pathOfComponent = AdobeDCXUtils.localStorageClassObjForScheme(AdobeDCXLocalStorageScheme.AdobeDCXLocalStorageSchemeCopyOnWrite).getPathOfComponent(adobeLibraryRepresentation.getComponent(), adobeLibraryCompositeInternal.getDcxComposite().getManifest(), adobeLibraryCompositeInternal.getDcxComposite(), false);
                    if (pathOfComponent != null) {
                        iAdobeGenericRequestCallback.onCompletion(pathOfComponent);
                        return;
                    }
                } catch (Exception e2) {
                    AdobeLogger.log(Level.DEBUG, "AdobeLibraryElement:FetchRendition", "Rendition candidate failure for local element" + e2.getMessage());
                }
            }
        }
        adobeLibraryComposite.getFilePathForRepresentation(adobeLibraryRepresentation, iAdobeGenericCompletionCallback, iAdobeGenericErrorCallback, handler);
    }

    private static boolean fetchRendition(@NonNull int i, @NonNull AdobeLibraryComposite adobeLibraryComposite, @NonNull AdobeLibraryElement adobeLibraryElement, final IAdobeGenericRequestCallback<String, AdobeLibraryException> iAdobeGenericRequestCallback, Handler handler) {
        boolean z = false;
        if (i == 0) {
            z = true;
        }
        IAdobeGenericCompletionCallback<String> iAdobeGenericCompletionCallback = new IAdobeGenericCompletionCallback<String>() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.util.ACLibraryAssetRenditionUtils.3
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
            public void onCompletion(String str) {
                iAdobeGenericRequestCallback.onCompletion(str);
            }
        };
        IAdobeGenericErrorCallback<AdobeLibraryException> iAdobeGenericErrorCallback = new IAdobeGenericErrorCallback<AdobeLibraryException>() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.util.ACLibraryAssetRenditionUtils.4
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(AdobeLibraryException adobeLibraryException) {
                iAdobeGenericRequestCallback.onError(adobeLibraryException);
            }
        };
        if (checkIfLibraryNotYetSynced(adobeLibraryComposite, adobeLibraryElement)) {
            AdobeLibraryCompositeInternal adobeLibraryCompositeInternal = (AdobeLibraryCompositeInternal) adobeLibraryComposite;
            for (AdobeLibraryRepresentation adobeLibraryRepresentation : adobeLibraryElement.getRepresentations()) {
                String relationship = adobeLibraryRepresentation.getRelationship();
                String type = adobeLibraryRepresentation.getType();
                if (relationship != null && relationship.equals(AdobeLibraryRepresentation.AdobeLibraryRepresentationRelationshipTypePrimary)) {
                    if (!z) {
                        Integer.toString(i);
                    }
                    if ((adobeLibraryRepresentation.isExternalLink() && type != null && type.startsWith("image/")) && i > 400) {
                        adobeLibraryCompositeInternal.downloadRenditionFromExternalLink(adobeLibraryElement, adobeLibraryRepresentation, i, handler, iAdobeGenericRequestCallback, iAdobeGenericErrorCallback);
                        return true;
                    }
                }
                if (AdobeLibraryUtils.canComputerRenditionForType(type)) {
                    try {
                        String pathOfComponent = AdobeDCXUtils.localStorageClassObjForScheme(AdobeDCXLocalStorageScheme.AdobeDCXLocalStorageSchemeCopyOnWrite).getPathOfComponent(adobeLibraryRepresentation.getComponent(), adobeLibraryCompositeInternal.getDcxComposite().getManifest(), adobeLibraryCompositeInternal.getDcxComposite(), false);
                        if (pathOfComponent != null) {
                            iAdobeGenericRequestCallback.onCompletion(pathOfComponent);
                            return true;
                        }
                        continue;
                    } catch (Exception e2) {
                        AdobeLogger.log(Level.DEBUG, "AdobeLibraryElement:FetchRendition", "Rendition candidate failure for local element" + e2.getMessage());
                    }
                }
            }
        }
        return adobeLibraryComposite.getRenditionPath(adobeLibraryElement.getElementId(), i, z, iAdobeGenericCompletionCallback, iAdobeGenericErrorCallback, handler);
    }

    public static int maxthumbnailSize(AdobeLibraryElement adobeLibraryElement, int i, Activity activity, boolean z) {
        int i2;
        int[] iArr = {110, 160, 400, 500, 1100};
        int[] iArr2 = {400, 800, 1600, 2400, 3100, ExoPlayer.Factory.DEFAULT_MIN_REBUFFER_MS};
        if (z) {
            i2 = i + 1;
        } else {
            iArr = iArr2;
            i2 = 1;
        }
        DisplayMetrics displayMetrics = new DisplayMetrics();
        activity.getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        int i3 = displayMetrics.widthPixels / i2;
        Object obj = null;
        if (adobeLibraryElement.getPrimaryRepresentation() != null && adobeLibraryElement.getPrimaryRepresentation().getTrackingData() != null) {
            try {
                obj = adobeLibraryElement.getPrimaryRepresentation().getTrackingData().get("adobestock");
            } catch (JSONException e2) {
            }
        }
        if (obj != null) {
            int iAbs = Math.abs(iArr[0] - i3);
            int i4 = 0;
            for (int i5 = 1; i5 < iArr.length; i5++) {
                int iAbs2 = Math.abs(iArr[i5] - i3);
                if (iAbs2 < iAbs) {
                    i4 = i5;
                    iAbs = iAbs2;
                }
            }
            return iArr[i4];
        }
        if (adobeLibraryElement.getType().equals(AdobeDesignLibraryUtils.AdobeDesignLibraryCharacterStyleElementType)) {
            return 0;
        }
        return i3;
    }

    public static boolean checkIfLibraryNotYetSynced(AdobeLibraryComposite adobeLibraryComposite, AdobeLibraryElement adobeLibraryElement) {
        if (((AdobeLibraryCompositeInternal) adobeLibraryComposite).getDcxComposite().getCurrent().getCompositeState().equals(AdobeDCXConstants.AdobeDCXAssetStateModified)) {
            for (AdobeLibraryRepresentation adobeLibraryRepresentation : adobeLibraryElement.getRepresentations()) {
                if (adobeLibraryRepresentation.getComponent() != null && adobeLibraryRepresentation.getComponent().getState().equals(AdobeDCXConstants.AdobeDCXAssetStateModified)) {
                    return true;
                }
            }
        }
        return false;
    }
}
