package com.adobe.creativesdk.foundation.adobeinternal.storage.library;

import android.os.Handler;
import com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback;
import com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback;
import com.adobe.creativesdk.foundation.internal.auth.AdobeAuthIdentityManagementService;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpRequest;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpRequestMethod;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpResponse;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpService;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkRequestPriority;
import com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkCompletionHandler;
import com.adobe.creativesdk.foundation.internal.storage.model.library.AdobeDesignLibraryRepresentationSource;
import com.adobe.creativesdk.foundation.internal.storage.model.library.AdobeDesignLibraryStockData;
import com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import com.adobe.creativesdk.foundation.network.AdobeNetworkException;
import com.adobe.creativesdk.foundation.storage.AdobeAssetImageDimensions;
import com.adobe.creativesdk.foundation.storage.AdobeDesignLibraryUtils;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryElement;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryErrorCode;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryException;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryManager;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryRepresentation;
import com.behance.sdk.util.BehanceSDKPublishConstants;
import java.io.File;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class AdobeDesignLibraryUtilsInternal {
    public static String getNameOrIdForDisplay(AdobeLibraryElement adobeLibraryElement) {
        return adobeLibraryElement.getName() != null ? adobeLibraryElement.getName() : adobeLibraryElement.getElementId();
    }

    public static long getModifiedDate(AdobeLibraryElement adobeLibraryElement) {
        return adobeLibraryElement.getModified();
    }

    public static AdobeLibraryElement addBrushWithPrimary(String str, String str2, JSONObject jSONObject, String str3, AdobeLibraryComposite adobeLibraryComposite) throws AdobeLibraryException {
        if (str == null || str2 == null || adobeLibraryComposite == null || !(adobeLibraryComposite instanceof AdobeLibraryCompositeInternal)) {
            throw AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorBadParameter, null, null, "cannot find primary brush file url or content type");
        }
        AdobeLibraryCompositeInternal adobeLibraryCompositeInternal = (AdobeLibraryCompositeInternal) adobeLibraryComposite;
        adobeLibraryCompositeInternal.beginChanges();
        AdobeLibraryElement adobeLibraryElementAddElement = adobeLibraryCompositeInternal.addElement(str3, AdobeDesignLibraryUtils.AdobeDesignLibraryBrushElementType);
        if (adobeLibraryElementAddElement == null) {
            return null;
        }
        if (adobeLibraryElementAddElement.addRepresentationWithContentType(str2, str, null, false, AdobeLibraryRepresentation.AdobeLibraryRepresentationRelationshipTypePrimary, null, null, false) != null) {
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                if (next == null || next.length() == 0) {
                    adobeLibraryCompositeInternal.discardChanges();
                    throw AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorBadParameter, null, null, null);
                }
                String str4 = (String) jSONObject.opt(next);
                if (str4 == null) {
                    adobeLibraryCompositeInternal.discardChanges();
                    throw AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorBadParameter, null, null, null);
                }
                adobeLibraryElementAddElement.addRepresentationWithContentType(next, str4, null, false, "alternate", null, null, false);
            }
        }
        adobeLibraryCompositeInternal.endChanges();
        return adobeLibraryElementAddElement;
    }

    public static AdobeLibraryElement addColor(JSONObject jSONObject, String str, AdobeLibraryComposite adobeLibraryComposite) throws AdobeLibraryException {
        if (jSONObject == null || adobeLibraryComposite == null || !(adobeLibraryComposite instanceof AdobeLibraryCompositeInternal)) {
            throw AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorBadParameter, null, null, "cannot find the color data");
        }
        AdobeLibraryCompositeInternal adobeLibraryCompositeInternal = (AdobeLibraryCompositeInternal) adobeLibraryComposite;
        adobeLibraryCompositeInternal.beginChanges();
        AdobeLibraryElement adobeLibraryElementAddElement = adobeLibraryCompositeInternal.addElement(str, AdobeDesignLibraryUtils.AdobeDesignLibraryColorElementType);
        if (adobeLibraryElementAddElement == null) {
            return null;
        }
        adobeLibraryElementAddElement.addRepresentationWithContentType(AdobeDesignLibraryUtils.AdobeColorMimeType, AdobeLibraryRepresentation.AdobeLibraryRepresentationRelationshipTypePrimary).setValue(jSONObject, "data", "color");
        try {
            adobeLibraryCompositeInternal.endChanges();
        } catch (AdobeLibraryException e2) {
            AdobeLogger.log(Level.DEBUG, AdobeDesignLibraryUtilsInternal.class.getSimpleName(), null, null);
        }
        return adobeLibraryElementAddElement;
    }

    public static AdobeLibraryElement addColorTheme(JSONObject jSONObject, String str, AdobeLibraryComposite adobeLibraryComposite) throws AdobeLibraryException {
        if (jSONObject == null || adobeLibraryComposite == null || !(adobeLibraryComposite instanceof AdobeLibraryCompositeInternal)) {
            throw AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorBadParameter, null, null, "cannot find color theme data");
        }
        AdobeLibraryCompositeInternal adobeLibraryCompositeInternal = (AdobeLibraryCompositeInternal) adobeLibraryComposite;
        adobeLibraryCompositeInternal.beginChanges();
        AdobeLibraryElement adobeLibraryElementAddElement = adobeLibraryCompositeInternal.addElement(str, AdobeDesignLibraryUtils.AdobeDesignLibraryColorThemeElementType);
        if (adobeLibraryElementAddElement == null) {
            return null;
        }
        adobeLibraryElementAddElement.addRepresentationWithContentType(AdobeDesignLibraryUtils.AdobeColorThemeMimeType, AdobeLibraryRepresentation.AdobeLibraryRepresentationRelationshipTypePrimary).setValue(jSONObject, "data", "colortheme");
        try {
            adobeLibraryCompositeInternal.endChanges();
        } catch (AdobeLibraryException e2) {
            AdobeLogger.log(Level.DEBUG, AdobeDesignLibraryUtilsInternal.class.getSimpleName(), null, null);
        }
        return adobeLibraryElementAddElement;
    }

    public static AdobeLibraryElement addCharacterStyle(JSONObject jSONObject, String str, AdobeLibraryComposite adobeLibraryComposite) throws AdobeLibraryException {
        if (jSONObject == null || adobeLibraryComposite == null || !(adobeLibraryComposite instanceof AdobeLibraryCompositeInternal)) {
            throw AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorBadParameter, null, null, "cannot find character style data");
        }
        AdobeLibraryCompositeInternal adobeLibraryCompositeInternal = (AdobeLibraryCompositeInternal) adobeLibraryComposite;
        adobeLibraryCompositeInternal.beginChanges();
        AdobeLibraryElement adobeLibraryElementAddElement = adobeLibraryCompositeInternal.addElement(str, AdobeDesignLibraryUtils.AdobeDesignLibraryCharacterStyleElementType);
        if (adobeLibraryElementAddElement == null) {
            return null;
        }
        adobeLibraryElementAddElement.addRepresentationWithContentType(AdobeDesignLibraryUtils.AdobeCharacterStyleMimeType, AdobeLibraryRepresentation.AdobeLibraryRepresentationRelationshipTypePrimary).setValue(jSONObject, "data", "characterstyle");
        try {
            adobeLibraryCompositeInternal.endChanges();
        } catch (AdobeLibraryException e2) {
            AdobeLogger.log(Level.DEBUG, AdobeDesignLibraryUtilsInternal.class.getSimpleName(), null, null);
        }
        return adobeLibraryElementAddElement;
    }

    public static boolean getBrushFilePathForElement(AdobeLibraryElement adobeLibraryElement, String str, AdobeLibraryComposite adobeLibraryComposite, IAdobeGenericCompletionCallback<String> iAdobeGenericCompletionCallback, IAdobeGenericErrorCallback<AdobeLibraryException> iAdobeGenericErrorCallback, Handler handler) {
        if (adobeLibraryComposite == null || str == null || adobeLibraryElement == null || !adobeLibraryElement.getType().equals(AdobeDesignLibraryUtils.AdobeDesignLibraryBrushElementType) || !(adobeLibraryComposite instanceof AdobeLibraryCompositeInternal)) {
            return false;
        }
        AdobeLibraryRepresentation primaryRepresentation = adobeLibraryElement.getPrimaryRepresentation();
        if (primaryRepresentation != null && primaryRepresentation.getType().equals(str)) {
            return primaryRepresentation.getContentPath(handler, iAdobeGenericCompletionCallback, iAdobeGenericErrorCallback);
        }
        for (AdobeLibraryRepresentation adobeLibraryRepresentation : adobeLibraryElement.getRepresentations()) {
            if (adobeLibraryRepresentation.getType().equals(str)) {
                return adobeLibraryRepresentation.getContentPath(handler, iAdobeGenericCompletionCallback, iAdobeGenericErrorCallback);
            }
        }
        return false;
    }

    public static AdobeAssetImageDimensions getDimsofRenditionForElement(AdobeLibraryElement adobeLibraryElement, AdobeLibraryComposite adobeLibraryComposite) {
        AdobeLibraryRepresentation firstRepresentationOfType;
        if (adobeLibraryComposite == null || adobeLibraryElement == null || !(adobeLibraryComposite instanceof AdobeLibraryCompositeInternal) || (firstRepresentationOfType = adobeLibraryElement.getFirstRepresentationOfType(AdobeLibraryRepresentation.AdobeLibraryRepresentationRelationshipTypeRendition)) == null) {
            return null;
        }
        return new AdobeAssetImageDimensions(firstRepresentationOfType.getWidth(), firstRepresentationOfType.getHeight());
    }

    public static JSONObject getCharacterStyleDataForElement(AdobeLibraryElement adobeLibraryElement, AdobeLibraryComposite adobeLibraryComposite) {
        AdobeLibraryRepresentation firstRepresentationOfType;
        if (adobeLibraryComposite == null || adobeLibraryElement == null || !adobeLibraryElement.getType().equals(AdobeDesignLibraryUtils.AdobeDesignLibraryCharacterStyleElementType) || !(adobeLibraryComposite instanceof AdobeLibraryCompositeInternal) || (firstRepresentationOfType = adobeLibraryElement.getFirstRepresentationOfType(AdobeDesignLibraryUtils.AdobeCharacterStyleMimeType)) == null) {
            return null;
        }
        return (JSONObject) firstRepresentationOfType.getValueForKey("data", "characterstyle");
    }

    public static JSONObject getColorDataForElement(AdobeLibraryElement adobeLibraryElement, AdobeLibraryComposite adobeLibraryComposite) {
        if (adobeLibraryComposite == null || adobeLibraryElement == null || !adobeLibraryElement.getType().equals(AdobeDesignLibraryUtils.AdobeDesignLibraryColorElementType) || !(adobeLibraryComposite instanceof AdobeLibraryCompositeInternal)) {
            return null;
        }
        AdobeLibraryRepresentation primaryRepresentation = adobeLibraryElement.getPrimaryRepresentation();
        if (AdobeDesignLibraryUtils.AdobeColorMimeType.equals(primaryRepresentation != null ? primaryRepresentation.getType() : null)) {
            return (JSONObject) primaryRepresentation.getValueForKey("data", "color");
        }
        return null;
    }

    public static JSONObject getColorThemeDataForElement(AdobeLibraryElement adobeLibraryElement, AdobeLibraryComposite adobeLibraryComposite) {
        if (adobeLibraryComposite == null || adobeLibraryElement == null || !adobeLibraryElement.getType().equals(AdobeDesignLibraryUtils.AdobeDesignLibraryColorThemeElementType) || !(adobeLibraryComposite instanceof AdobeLibraryCompositeInternal)) {
            return null;
        }
        AdobeLibraryRepresentation primaryRepresentationForElement = ((AdobeLibraryCompositeInternal) adobeLibraryComposite).getPrimaryRepresentationForElement(adobeLibraryElement);
        if (primaryRepresentationForElement.getType().compareTo(AdobeDesignLibraryUtils.AdobeColorThemeMimeType) == 0) {
            return (JSONObject) primaryRepresentationForElement.getValueForKey("data", "colortheme");
        }
        return null;
    }

    public static AdobeAssetImageDimensions getDimsForImgElement(AdobeLibraryElement adobeLibraryElement, AdobeLibraryComposite adobeLibraryComposite) {
        if (adobeLibraryComposite == null || adobeLibraryElement == null || !adobeLibraryElement.getType().equals(AdobeDesignLibraryUtils.AdobeDesignLibraryImageElementType) || !(adobeLibraryComposite instanceof AdobeLibraryCompositeInternal)) {
            return null;
        }
        AdobeLibraryRepresentation primaryRepresentationForElement = ((AdobeLibraryCompositeInternal) adobeLibraryComposite).getPrimaryRepresentationForElement(adobeLibraryElement);
        return new AdobeAssetImageDimensions(primaryRepresentationForElement != null ? primaryRepresentationForElement.getWidth() : 0, primaryRepresentationForElement == null ? 0 : primaryRepresentationForElement.getHeight());
    }

    public static AdobeLibraryElement updateColorTheme(JSONObject jSONObject, String str, String str2, AdobeLibraryComposite adobeLibraryComposite) throws AdobeLibraryException {
        AdobeLibraryRepresentation adobeLibraryRepresentationUpdateRepresentation;
        if (((str2 == null) || ((str == null) | (jSONObject == null))) || adobeLibraryComposite == null || !(adobeLibraryComposite instanceof AdobeLibraryCompositeInternal)) {
            return null;
        }
        AdobeLibraryCompositeInternal adobeLibraryCompositeInternal = (AdobeLibraryCompositeInternal) adobeLibraryComposite;
        adobeLibraryCompositeInternal.beginChanges();
        AdobeLibraryMutableElement mutableCopy = adobeLibraryComposite.getElementWithId(str2) != null ? adobeLibraryComposite.getElementWithId(str2).getMutableCopy() : null;
        if (mutableCopy == null) {
            return null;
        }
        mutableCopy.setName(str);
        adobeLibraryCompositeInternal.updateElement(mutableCopy);
        AdobeLibraryMutableRepresentation mutableCopy2 = adobeLibraryComposite.getFirstRepresentationOfType(AdobeDesignLibraryUtils.AdobeColorThemeMimeType, mutableCopy) != null ? adobeLibraryComposite.getFirstRepresentationOfType(AdobeDesignLibraryUtils.AdobeColorThemeMimeType, mutableCopy).getMutableCopy() : null;
        if (mutableCopy2 != null) {
            mutableCopy2.setValue(jSONObject, "data", "colortheme");
        }
        try {
            adobeLibraryRepresentationUpdateRepresentation = adobeLibraryCompositeInternal.updateRepresentation(mutableCopy2);
        } catch (Exception e2) {
            adobeLibraryRepresentationUpdateRepresentation = null;
        }
        if (adobeLibraryRepresentationUpdateRepresentation == null) {
            AdobeLogger.log(Level.DEBUG, AdobeDesignLibraryUtils.class.getSimpleName(), "Representation couldn't be updated");
            adobeLibraryCompositeInternal.discardChanges();
            return null;
        }
        adobeLibraryCompositeInternal.endChanges();
        return mutableCopy;
    }

    public static AdobeLibraryElement renameElement(String str, String str2, AdobeLibraryComposite adobeLibraryComposite) throws AdobeLibraryException {
        if (((str2 == null) || (str == null)) || adobeLibraryComposite == null || !(adobeLibraryComposite instanceof AdobeLibraryCompositeInternal)) {
            return null;
        }
        AdobeLibraryCompositeInternal adobeLibraryCompositeInternal = (AdobeLibraryCompositeInternal) adobeLibraryComposite;
        AdobeLibraryMutableElement mutableCopy = adobeLibraryCompositeInternal.getElementWithId(str2) != null ? adobeLibraryCompositeInternal.getElementWithId(str2).getMutableCopy() : null;
        if (mutableCopy == null) {
            return null;
        }
        mutableCopy.setName(str);
        adobeLibraryCompositeInternal.updateElement(mutableCopy);
        return mutableCopy;
    }

    public static boolean deleteElement(String str, AdobeLibraryComposite adobeLibraryComposite) {
        if (str == null || adobeLibraryComposite == null || !(adobeLibraryComposite instanceof AdobeLibraryCompositeInternal)) {
            return false;
        }
        AdobeLibraryCompositeInternal adobeLibraryCompositeInternal = (AdobeLibraryCompositeInternal) adobeLibraryComposite;
        AdobeLibraryElement elementWithId = adobeLibraryCompositeInternal.getElementWithId(str);
        if (elementWithId == null) {
            AdobeLogger.log(Level.DEBUG, AdobeDesignLibraryUtils.class.getSimpleName(), "library element not found");
            return false;
        }
        try {
            adobeLibraryCompositeInternal.removeElement(elementWithId);
            return true;
        } catch (AdobeLibraryException e2) {
            return false;
        }
    }

    public static boolean renameLibrary(String str, AdobeLibraryComposite adobeLibraryComposite) throws AdobeLibraryException {
        if (str == null || adobeLibraryComposite == null || !(adobeLibraryComposite instanceof AdobeLibraryCompositeInternal)) {
            return false;
        }
        ((AdobeLibraryCompositeInternal) adobeLibraryComposite).setName(str);
        return true;
    }

    private static void setWidthHeightAndLengthForRepresentation(AdobeLibraryRepresentation adobeLibraryRepresentation, AdobeDesignLibraryRepresentationSource adobeDesignLibraryRepresentationSource) {
        if (adobeDesignLibraryRepresentationSource.width > 0) {
            adobeLibraryRepresentation.setWidth(adobeDesignLibraryRepresentationSource.width);
        }
        if (adobeDesignLibraryRepresentationSource.height > 0) {
            adobeLibraryRepresentation.setHeight(adobeDesignLibraryRepresentationSource.height);
        }
        if (adobeDesignLibraryRepresentationSource.contentLength > 0) {
            adobeLibraryRepresentation.setContentLength(adobeDesignLibraryRepresentationSource.contentLength);
        }
    }

    public static String getStockAssetIdForElement(AdobeLibraryElement adobeLibraryElement, AdobeLibraryCompositeInternal adobeLibraryCompositeInternal) {
        AdobeLibraryRepresentation primaryRepresentation;
        JSONObject jSONObject;
        if (adobeLibraryCompositeInternal == null || adobeLibraryCompositeInternal.getDcxComposite() == null || adobeLibraryElement == null || (primaryRepresentation = adobeLibraryElement.getPrimaryRepresentation()) == null || (jSONObject = (JSONObject) primaryRepresentation.getValueForKey("trackingdata", "adobestock")) == null) {
            return null;
        }
        return jSONObject.optString("content_id");
    }

    public static boolean getIsLicensedForStockElement(AdobeLibraryElement adobeLibraryElement, AdobeLibraryCompositeInternal adobeLibraryCompositeInternal) {
        AdobeLibraryRepresentation primaryRepresentation;
        JSONObject jSONObject;
        Object objOpt;
        if (adobeLibraryCompositeInternal == null || adobeLibraryCompositeInternal.getDcxComposite() == null || adobeLibraryElement == null || (primaryRepresentation = adobeLibraryElement.getPrimaryRepresentation()) == null || (jSONObject = (JSONObject) primaryRepresentation.getValueForKey("trackingdata", "adobestock")) == null || (objOpt = jSONObject.opt("state")) == null || !(objOpt instanceof String)) {
            return false;
        }
        return ((String) objOpt).equals("purchased");
    }

    public static boolean addStockRepresentationsToLibrary(AdobeLibraryCompositeInternal adobeLibraryCompositeInternal, AdobeLibraryElement adobeLibraryElement, AdobeDesignLibraryRepresentationSource adobeDesignLibraryRepresentationSource, AdobeDesignLibraryRepresentationSource adobeDesignLibraryRepresentationSource2, AdobeDesignLibraryRepresentationSource adobeDesignLibraryRepresentationSource3, AdobeDesignLibraryStockData adobeDesignLibraryStockData) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("content_id", adobeDesignLibraryStockData.assetId);
            jSONObject.put("state", "not_purchased");
            if (adobeDesignLibraryStockData.stockId != null) {
                jSONObject.put("stock_id", adobeDesignLibraryStockData.stockId);
            }
            if (adobeDesignLibraryStockData.query != null) {
                jSONObject.put("query", adobeDesignLibraryStockData.query);
            }
            if (adobeDesignLibraryRepresentationSource != null) {
                AdobeLibraryRepresentation adobeLibraryRepresentationAddRepresentationWithContentType = adobeLibraryElement.addRepresentationWithContentType(adobeDesignLibraryRepresentationSource.contentType, null, adobeDesignLibraryRepresentationSource.sourceURL.toString(), true, AdobeLibraryRepresentation.AdobeLibraryRepresentationRelationshipTypePrimary, null, null, false);
                if (adobeLibraryRepresentationAddRepresentationWithContentType == null) {
                    return false;
                }
                setWidthHeightAndLengthForRepresentation(adobeLibraryRepresentationAddRepresentationWithContentType, adobeDesignLibraryRepresentationSource);
                JSONObject jSONObject2 = new JSONObject(jSONObject.toString());
                jSONObject2.put("state", "purchased");
                jSONObject2.put(BehanceSDKPublishConstants.KEY_LICENSE, adobeDesignLibraryStockData.licenseType != null ? adobeDesignLibraryStockData.licenseType : "Standard");
                if (adobeDesignLibraryStockData.stockId != null) {
                    jSONObject2.put("stock_id", adobeDesignLibraryStockData.stockId);
                }
                if (!adobeLibraryRepresentationAddRepresentationWithContentType.setValue(jSONObject2, "trackingdata", "adobestock")) {
                    return false;
                }
            }
            AdobeLibraryRepresentation adobeLibraryRepresentationAddRepresentationWithContentType2 = adobeLibraryElement.addRepresentationWithContentType(adobeDesignLibraryRepresentationSource2.contentType, null, adobeDesignLibraryRepresentationSource2.sourceURL.toString(), true, adobeDesignLibraryRepresentationSource != null ? AdobeLibraryRepresentation.AdobeLibraryRepresentationRelationshipTypeRendition : AdobeLibraryRepresentation.AdobeLibraryRepresentationRelationshipTypePrimary, null, null, false);
            if (adobeLibraryRepresentationAddRepresentationWithContentType2 == null) {
                return false;
            }
            setWidthHeightAndLengthForRepresentation(adobeLibraryRepresentationAddRepresentationWithContentType2, adobeDesignLibraryRepresentationSource2);
            if (!adobeLibraryRepresentationAddRepresentationWithContentType2.setValue(jSONObject, "trackingdata", "adobestock")) {
                return false;
            }
            boolean zExists = new File(adobeDesignLibraryRepresentationSource3.sourceURL).exists();
            AdobeLibraryRepresentation adobeLibraryRepresentationAddRepresentationWithContentType3 = adobeLibraryElement.addRepresentationWithContentType(adobeDesignLibraryRepresentationSource3.contentType, zExists ? adobeDesignLibraryRepresentationSource3.sourceURL.getPath() : null, zExists ? null : adobeDesignLibraryRepresentationSource3.sourceURL.toString(), false, AdobeLibraryRepresentation.AdobeLibraryRepresentationRelationshipTypeRendition, null, null, false);
            if (adobeLibraryRepresentationAddRepresentationWithContentType3 == null) {
                return false;
            }
            setWidthHeightAndLengthForRepresentation(adobeLibraryRepresentationAddRepresentationWithContentType3, adobeDesignLibraryRepresentationSource3);
            return true;
        } catch (AdobeLibraryException e2) {
            AdobeLogger.log(Level.DEBUG, AdobeDesignLibraryUtilsInternal.class.getSimpleName(), null, e2);
            return false;
        } catch (JSONException e3) {
            AdobeLogger.log(Level.DEBUG, AdobeDesignLibraryUtilsInternal.class.getSimpleName(), null, e3);
            return false;
        }
    }

    public static AdobeLibraryElement addAdobeStockElementOfType(String str, String str2, AdobeLibraryCompositeInternal adobeLibraryCompositeInternal, AdobeDesignLibraryRepresentationSource adobeDesignLibraryRepresentationSource, AdobeDesignLibraryRepresentationSource adobeDesignLibraryRepresentationSource2, AdobeDesignLibraryRepresentationSource adobeDesignLibraryRepresentationSource3, AdobeDesignLibraryStockData adobeDesignLibraryStockData) {
        if (str == null || (!str.equals(AdobeDesignLibraryUtils.AdobeDesignLibraryImageElementType) && !str.equals(AdobeDesignLibraryUtils.AdobeDesignLibraryVideoElementType))) {
            AdobeLogger.log(Level.ERROR, "AdobeDesignLibraryUtils:addAdobeStockElementOfType", "elementType must be image or video");
            return null;
        }
        if (adobeDesignLibraryRepresentationSource2 == null || adobeDesignLibraryRepresentationSource2.sourceURL == null || adobeDesignLibraryRepresentationSource2.sourceURL.toString().startsWith("file")) {
            AdobeLogger.log(Level.ERROR, "AdobeDesignLibraryUtils:addAdobeStockElementOfType", "compAsset must be specified and cannot be a file url");
            return null;
        }
        if (adobeDesignLibraryRepresentationSource3 == null || adobeDesignLibraryRepresentationSource3.sourceURL == null) {
            AdobeLogger.log(Level.ERROR, "AdobeDesignLibraryUtils:addAdobeStockElementOfType", "renditionAsset must be specified");
            return null;
        }
        if (adobeDesignLibraryRepresentationSource3.contentType == null) {
            AdobeLogger.log(Level.ERROR, "AdobeDesignLibraryUtils:addAdobeStockElementOfType", "renditionAsset content type must be specified");
            return null;
        }
        if (adobeDesignLibraryRepresentationSource != null) {
            if (adobeDesignLibraryRepresentationSource.sourceURL == null || adobeDesignLibraryRepresentationSource.sourceURL.toString().startsWith("file")) {
                AdobeLogger.log(Level.ERROR, "AdobeDesignLibraryUtils:addAdobeStockElementOfType", "licensedAsset url must be specified and cannot be a file url");
                return null;
            }
            if (adobeDesignLibraryRepresentationSource.contentType == null || adobeDesignLibraryRepresentationSource.contentType.length() == 0) {
                AdobeLogger.log(Level.ERROR, "AdobeDesignLibraryUtils:addAdobeStockElementOfType", "licensedAsset content type must be specified");
                return null;
            }
        }
        try {
            AdobeLibraryElement adobeLibraryElementAddElement = adobeLibraryCompositeInternal.addElement(str2, str);
            if (adobeLibraryElementAddElement == null) {
                return null;
            }
            if (!addStockRepresentationsToLibrary(adobeLibraryCompositeInternal, adobeLibraryElementAddElement, adobeDesignLibraryRepresentationSource, adobeDesignLibraryRepresentationSource2, adobeDesignLibraryRepresentationSource3, adobeDesignLibraryStockData)) {
                adobeLibraryCompositeInternal.removeElement(adobeLibraryElementAddElement);
                return null;
            }
            return adobeLibraryElementAddElement;
        } catch (AdobeLibraryException e2) {
            AdobeLogger.log(Level.ERROR, "AdobeDesignLibraryUtils:addAdobeStockElementOfType", "library element addition failed");
            return null;
        }
    }

    public static AdobeLibraryElement updateAdobeStockElement(AdobeLibraryElement adobeLibraryElement, AdobeLibraryCompositeInternal adobeLibraryCompositeInternal, AdobeDesignLibraryRepresentationSource adobeDesignLibraryRepresentationSource, AdobeDesignLibraryRepresentationSource adobeDesignLibraryRepresentationSource2, AdobeDesignLibraryRepresentationSource adobeDesignLibraryRepresentationSource3, AdobeDesignLibraryStockData adobeDesignLibraryStockData) {
        if (adobeLibraryElement == null) {
            AdobeLogger.log(Level.ERROR, "AdobeDesignLibraryUtils:updateAdobeStockElement", "element must not be null");
            return null;
        }
        if (adobeLibraryElement.getType() == null || (!adobeLibraryElement.getType().equals(AdobeDesignLibraryUtils.AdobeDesignLibraryImageElementType) && !adobeLibraryElement.getType().equals(AdobeDesignLibraryUtils.AdobeDesignLibraryVideoElementType))) {
            AdobeLogger.log(Level.ERROR, "AdobeDesignLibraryUtils:updateAdobeStockElement", "element must be of type AdobeDesignLibraryImageElementType or AdobeDesignLibraryVideoElementType");
            return null;
        }
        if (adobeDesignLibraryRepresentationSource == null) {
            AdobeLogger.log(Level.ERROR, "AdobeDesignLibraryUtils:updateAdobeStockElement", "licensedAsset must not be null");
            return null;
        }
        if (adobeDesignLibraryRepresentationSource.sourceURL == null || adobeDesignLibraryRepresentationSource.sourceURL.toString().startsWith("file")) {
            AdobeLogger.log(Level.ERROR, "AdobeDesignLibraryUtils:updateAdobeStockElement", "licensedAsset url must be specified and cannot be a file url");
            return null;
        }
        if (adobeDesignLibraryRepresentationSource.contentType == null || adobeDesignLibraryRepresentationSource.contentType.length() == 0) {
            AdobeLogger.log(Level.ERROR, "AdobeDesignLibraryUtils:updateAdobeStockElement", "licensedAsset content type must be specified");
            return null;
        }
        AdobeLibraryRepresentation primaryRepresentation = adobeLibraryElement.getPrimaryRepresentation();
        JSONObject jSONObject = (JSONObject) primaryRepresentation.getValueForKey("trackingdata", "adobestock");
        if (jSONObject == null || !jSONObject.has("content_id") || !jSONObject.optString("content_id").equals(adobeDesignLibraryStockData.assetId)) {
            AdobeLogger.log(Level.ERROR, "AdobeDesignLibraryUtils:updateAdobeStockElement", "stockData asset id must match the existing element stock asset id");
            return null;
        }
        if (!jSONObject.optString("state").equals("purchased")) {
            try {
                if (!primaryRepresentation.isExternalLink()) {
                    Iterator<AdobeLibraryRepresentation> it = adobeLibraryElement.getRepresentations().iterator();
                    while (it.hasNext()) {
                        adobeLibraryElement.removeRepresentation(it.next());
                    }
                    if (!addStockRepresentationsToLibrary(adobeLibraryCompositeInternal, adobeLibraryElement, adobeDesignLibraryRepresentationSource, adobeDesignLibraryRepresentationSource2, adobeDesignLibraryRepresentationSource3, adobeDesignLibraryStockData)) {
                        adobeLibraryCompositeInternal.removeElement(adobeLibraryElement);
                        return null;
                    }
                    return adobeLibraryElement;
                }
                primaryRepresentation.setRelationship(AdobeLibraryRepresentation.AdobeLibraryRepresentationRelationshipTypeRendition);
                primaryRepresentation.clearOrder();
                for (AdobeLibraryRepresentation adobeLibraryRepresentation : adobeLibraryElement.getRepresentations()) {
                    if (adobeLibraryRepresentation != primaryRepresentation) {
                        adobeLibraryRepresentation.clearOrder();
                    }
                }
                AdobeLibraryRepresentation adobeLibraryRepresentationAddRepresentationWithContentType = adobeLibraryElement.addRepresentationWithContentType(adobeDesignLibraryRepresentationSource.contentType, null, adobeDesignLibraryRepresentationSource.sourceURL.toString(), true, AdobeLibraryRepresentation.AdobeLibraryRepresentationRelationshipTypePrimary, null, null, false);
                if (adobeLibraryRepresentationAddRepresentationWithContentType == null) {
                    adobeLibraryCompositeInternal.removeElement(adobeLibraryElement);
                    return null;
                }
                setWidthHeightAndLengthForRepresentation(adobeLibraryRepresentationAddRepresentationWithContentType, adobeDesignLibraryRepresentationSource);
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("content_id", adobeDesignLibraryStockData.assetId);
                jSONObject2.put("state", "purchased");
                jSONObject2.put(BehanceSDKPublishConstants.KEY_LICENSE, adobeDesignLibraryStockData.licenseType != null ? adobeDesignLibraryStockData.licenseType : "Standard");
                if (adobeDesignLibraryStockData.query != null) {
                    jSONObject2.put("query", adobeDesignLibraryStockData.query);
                }
                if (adobeDesignLibraryStockData.stockId != null) {
                    jSONObject2.put("stock_id", adobeDesignLibraryStockData.stockId);
                }
                if (!adobeLibraryRepresentationAddRepresentationWithContentType.setValue(jSONObject2, "trackingdata", "adobestock")) {
                    adobeLibraryCompositeInternal.removeElement(adobeLibraryElement);
                    return null;
                }
                return adobeLibraryElement;
            } catch (AdobeLibraryException e2) {
                e = e2;
                AdobeLogger.log(Level.DEBUG, AdobeDesignLibraryUtilsInternal.class.getSimpleName(), null, e);
                return null;
            } catch (JSONException e3) {
                e = e3;
                AdobeLogger.log(Level.DEBUG, AdobeDesignLibraryUtilsInternal.class.getSimpleName(), null, e);
                return null;
            }
        }
        return adobeLibraryElement;
    }

    public static int licenseAdobeStockElements(AdobeDesignLibraryRepresentationSource adobeDesignLibraryRepresentationSource, AdobeDesignLibraryRepresentationSource adobeDesignLibraryRepresentationSource2, AdobeDesignLibraryRepresentationSource adobeDesignLibraryRepresentationSource3, AdobeDesignLibraryStockData adobeDesignLibraryStockData) {
        int i = 0;
        ArrayList<AdobeLibraryComposite> libraries = AdobeLibraryManager.getSharedInstance().getLibraries();
        if (libraries != null && libraries.size() > 0) {
            Iterator<AdobeLibraryComposite> it = libraries.iterator();
            while (true) {
                int i2 = i;
                if (!it.hasNext()) {
                    i = i2;
                    break;
                }
                AdobeLibraryComposite next = it.next();
                ArrayList<AdobeLibraryElement> allElements = next.getAllElements();
                if (allElements != null) {
                    Iterator<AdobeLibraryElement> it2 = allElements.iterator();
                    while (true) {
                        int i3 = i2;
                        if (!it2.hasNext()) {
                            i = i3;
                            break;
                        }
                        AdobeLibraryElement next2 = it2.next();
                        String stockAssetIdForElement = getStockAssetIdForElement(next2, (AdobeLibraryCompositeInternal) next);
                        if (stockAssetIdForElement != null && stockAssetIdForElement.equals(adobeDesignLibraryStockData.assetId)) {
                            if (updateAdobeStockElement(next2, (AdobeLibraryCompositeInternal) next, adobeDesignLibraryRepresentationSource, adobeDesignLibraryRepresentationSource2, adobeDesignLibraryRepresentationSource3, adobeDesignLibraryStockData) != null) {
                                i3++;
                            } else {
                                return i3;
                            }
                        }
                        i2 = i3;
                    }
                } else {
                    i = i2;
                }
            }
        }
        return i;
    }

    public static String getStockElementURL(AdobeLibraryComposite adobeLibraryComposite, AdobeLibraryElement adobeLibraryElement) {
        if (adobeLibraryComposite.getElementWithId(adobeLibraryElement.getElementId()) != null) {
            for (AdobeLibraryRepresentation adobeLibraryRepresentation : adobeLibraryComposite.getRepresentationsForElement(adobeLibraryElement)) {
                if (adobeLibraryRepresentation.getRelationship().equals(AdobeLibraryRepresentation.AdobeLibraryRepresentationRelationshipTypePrimary) && adobeLibraryRepresentation.isExternalLink()) {
                    return (String) adobeLibraryRepresentation.getNode().get(AdobeLibraryCompositeConstantsInternal.AdobeLibraryCompositeRepresentationLinkURLKey);
                }
            }
        }
        return null;
    }

    public static void getLicensedData(String str, final IAdobeGenericCompletionCallback<byte[]> iAdobeGenericCompletionCallback, final IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback, Handler handler) {
        String str2;
        AdobeNetworkHttpService adobeNetworkHttpService = new AdobeNetworkHttpService(null, AdobeAuthIdentityManagementService.getSharedInstance().getClientID(), null);
        adobeNetworkHttpService.setAccessToken(AdobeAuthIdentityManagementService.getSharedInstance().getAccessToken());
        AdobeNetworkHttpRequest adobeNetworkHttpRequest = new AdobeNetworkHttpRequest();
        if (str.contains("?")) {
            str2 = String.format("%s&size=%d", str, 400);
        } else {
            str2 = String.format("%s?size=%d", str, 400);
        }
        try {
            adobeNetworkHttpRequest.setUrl(new URL(str2));
            adobeNetworkHttpRequest.setRequestMethod(AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodGET);
            adobeNetworkHttpService.getResponseForDataRequest(adobeNetworkHttpRequest, AdobeNetworkRequestPriority.NORMAL, new IAdobeNetworkCompletionHandler() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeDesignLibraryUtilsInternal.1
                @Override // com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkCompletionHandler
                public void onSuccess(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                    int statusCode = adobeNetworkHttpResponse.getStatusCode();
                    if (statusCode == 200 || statusCode == 201) {
                        iAdobeGenericCompletionCallback.onCompletion(adobeNetworkHttpResponse.getDataBytes());
                    } else {
                        iAdobeGenericErrorCallback.onError(AdobeStorageSession.getAssetErrorFromResponse(adobeNetworkHttpResponse));
                    }
                }

                @Override // com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkCompletionHandler
                public void onError(AdobeNetworkException adobeNetworkException) {
                    iAdobeGenericErrorCallback.onError(AdobeStorageSession.getStorageError(adobeNetworkException));
                }
            }, handler);
        } catch (MalformedURLException e2) {
            e2.printStackTrace();
        }
    }
}
