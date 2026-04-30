package com.adobe.creativesdk.foundation.storage;

import android.graphics.Color;
import android.os.Handler;
import com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback;
import com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXException;
import com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryUtils;
import com.adobe.creativesdk.foundation.adobeinternal.storage.psd.AdobePSDCompositeConstants;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageUtils;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import com.google.api.gbase.client.GoogleBaseNamespaces;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeDesignLibraryUtils {
    public static final String AdobeCharacterStyleMimeType = "application/vnd.adobe.characterstyle+json";
    public static final String AdobeColorMimeType = "application/vnd.adobe.color+json";
    public static final String AdobeColorThemeMimeType = "application/vnd.adobe.colortheme+json";
    public static final String AdobeDesignLibrary3DLightElementType = "application/vnd.adobe.element.light+dcx";
    public static final String AdobeDesignLibrary3DMaterialElementType = "application/vnd.adobe.element.material+dcx";
    public static final String AdobeDesignLibrary3DModelElementType = "application/vnd.adobe.element.3d+dcx";
    public static final String AdobeDesignLibraryAnimationElementType = "application/vnd.adobe.element.animation+dcx";
    public static final String AdobeDesignLibraryBrushElementType = "application/vnd.adobe.element.brush+dcx";
    public static final String AdobeDesignLibraryCharacterStyleElementType = "application/vnd.adobe.element.characterstyle+dcx";
    public static final String AdobeDesignLibraryColorElementType = "application/vnd.adobe.element.color+dcx";
    public static final String AdobeDesignLibraryColorThemeElementType = "application/vnd.adobe.element.colortheme+dcx";
    public static final String AdobeDesignLibraryImageElementType = "application/vnd.adobe.element.image+dcx";
    public static final String AdobeDesignLibraryLayerStyleElementType = "application/vnd.adobe.element.layerstyle+dcx";
    public static final String AdobeDesignLibraryLookElementType = "application/vnd.adobe.element.look+dcx";
    public static final String AdobeDesignLibraryPatternElementType = "application/vnd.adobe.element.pattern+dcx";
    public static final String AdobeDesignLibraryTemplateElementType = "application/vnd.adobe.element.template+dcx";
    public static final String AdobeDesignLibraryVideoElementType = "application/vnd.adobe.element.video+dcx";
    public static final String AdobeMimeTypeDataKey = "data";

    public static AdobeLibraryElement addImage(String str, String str2, AdobeLibraryComposite adobeLibraryComposite) throws AdobeLibraryException, AdobeDCXException {
        if (str == null) {
            throw AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorBadParameter, null, null, "cannot find image file url");
        }
        adobeLibraryComposite.beginChanges();
        AdobeLibraryElement adobeLibraryElementAddElement = adobeLibraryComposite.addElement(str2, AdobeDesignLibraryImageElementType);
        if (adobeLibraryElementAddElement == null) {
            return null;
        }
        try {
            adobeLibraryElementAddElement.addRepresentationWithContentType(getFileMimeType(str), str, null, false, AdobeLibraryRepresentation.AdobeLibraryRepresentationRelationshipTypePrimary, null, null, false);
            adobeLibraryComposite.endChanges();
            return adobeLibraryElementAddElement;
        } catch (AdobeLibraryException e2) {
            AdobeLogger.log(Level.DEBUG, AdobeDesignLibraryUtils.class.getSimpleName(), null, null);
            return adobeLibraryElementAddElement;
        } catch (IllegalArgumentException e3) {
            AdobeLogger.log(Level.DEBUG, AdobeDesignLibraryUtils.class.getSimpleName(), "Invalid Argument", e3);
            return null;
        }
    }

    public static AdobeLibraryElement addRGBColor(Integer num, String str, AdobeLibraryComposite adobeLibraryComposite) throws AdobeLibraryException, AdobeDCXException {
        JSONObject jSONObject;
        if (num == null) {
            throw AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorBadParameter, null, null, "cannot find the rgb color data");
        }
        adobeLibraryComposite.beginChanges();
        AdobeLibraryElement adobeLibraryElementAddElement = adobeLibraryComposite.addElement(str, AdobeDesignLibraryColorElementType);
        if (adobeLibraryElementAddElement == null) {
            return null;
        }
        try {
            jSONObject = new JSONObject("{\"mode\":\"RGB\",\"value\":{\"r\":" + Color.red(num.intValue()) + ",\"g\":" + Color.green(num.intValue()) + ",\"b\":" + Color.blue(num.intValue()) + "}}");
        } catch (JSONException e2) {
            AdobeLogger.log(Level.DEBUG, AdobeDesignLibraryUtils.class.getSimpleName(), null, null);
            jSONObject = null;
        }
        adobeLibraryElementAddElement.addRepresentationWithContentType(AdobeColorMimeType, AdobeLibraryRepresentation.AdobeLibraryRepresentationRelationshipTypePrimary).setValue(jSONObject, "data", "color");
        try {
            adobeLibraryComposite.endChanges();
        } catch (AdobeLibraryException e3) {
            AdobeLogger.log(Level.DEBUG, AdobeDesignLibraryUtils.class.getSimpleName(), null, null);
        }
        return adobeLibraryElementAddElement;
    }

    public static AdobeLibraryRepresentation addRendition(String str, String str2, AdobeLibraryElement adobeLibraryElement, AdobeLibraryComposite adobeLibraryComposite, Integer num, Integer num2, boolean z) throws AdobeLibraryException {
        if (str == null || str2 == null) {
            throw AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorBadParameter, null, null, "cannot find rendition file URL");
        }
        if (adobeLibraryElement == null || adobeLibraryComposite == null) {
            throw AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorBadParameter, null, null, null);
        }
        return adobeLibraryElement.addRepresentationWithContentType(str2, str, null, false, AdobeLibraryRepresentation.AdobeLibraryRepresentationRelationshipTypeRendition, num, num2, z);
    }

    public static List<String> getRepresentationTypesForElement(AdobeLibraryElement adobeLibraryElement, AdobeLibraryComposite adobeLibraryComposite) {
        if (adobeLibraryComposite == null || adobeLibraryElement == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (AdobeLibraryRepresentation adobeLibraryRepresentation : adobeLibraryElement.getRepresentations()) {
            if (!arrayList.contains(adobeLibraryRepresentation.getType())) {
                arrayList.add(adobeLibraryRepresentation.getType());
            }
        }
        return arrayList;
    }

    public static boolean getImageFilePathForElement(AdobeLibraryElement adobeLibraryElement, String str, AdobeLibraryComposite adobeLibraryComposite, IAdobeGenericCompletionCallback<String> iAdobeGenericCompletionCallback, IAdobeGenericErrorCallback<AdobeLibraryException> iAdobeGenericErrorCallback, Handler handler) {
        if (adobeLibraryComposite == null || str == null || adobeLibraryElement == null || !adobeLibraryElement.getType().equals(AdobeDesignLibraryImageElementType)) {
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

    public static Integer getRGBColorForElement(AdobeLibraryElement adobeLibraryElement, AdobeLibraryComposite adobeLibraryComposite) {
        JSONObject jSONObject;
        if (adobeLibraryComposite == null || adobeLibraryElement == null || !adobeLibraryElement.getType().equals(AdobeDesignLibraryColorElementType)) {
            return 0;
        }
        List<AdobeLibraryRepresentation> representations = adobeLibraryElement.getRepresentations();
        if (representations != null) {
            for (AdobeLibraryRepresentation adobeLibraryRepresentation : representations) {
                if (adobeLibraryRepresentation.getType().compareTo(AdobeColorMimeType) == 0 && (jSONObject = (JSONObject) adobeLibraryRepresentation.getValueForKey("data", "color")) != null && "RGB".compareTo(jSONObject.optString(AdobePSDCompositeConstants.AdobePSDCompositeLayerBlendOptionsModeKey)) == 0) {
                    JSONObject jSONObject2 = (JSONObject) jSONObject.opt("value");
                    return Integer.valueOf(Color.argb(255, jSONObject2.optInt("r"), jSONObject2.optInt(GoogleBaseNamespaces.G_ALIAS), jSONObject2.optInt("b")));
                }
            }
        }
        return 0;
    }

    static String getFileMimeType(String str) {
        return AdobeStorageUtils.getMimeType(str);
    }

    public static ArrayList<Integer> getRGBColorThemeForElement(AdobeLibraryElement adobeLibraryElement, AdobeLibraryComposite adobeLibraryComposite) {
        JSONObject jSONObject;
        if (adobeLibraryComposite == null || adobeLibraryElement == null || !adobeLibraryElement.getType().equals(AdobeDesignLibraryColorThemeElementType)) {
            return null;
        }
        List<AdobeLibraryRepresentation> representations = adobeLibraryElement.getRepresentations();
        new ArrayList();
        if (representations != null) {
            for (AdobeLibraryRepresentation adobeLibraryRepresentation : representations) {
                if (adobeLibraryRepresentation.getType().compareTo(AdobeColorThemeMimeType) == 0 && (jSONObject = (JSONObject) adobeLibraryRepresentation.getValueForKey("data", "colortheme")) != null && jSONObject.has("swatches")) {
                    try {
                        Object obj = jSONObject.get("swatches");
                        if (!(obj instanceof JSONArray)) {
                            return null;
                        }
                        ArrayList<Integer> arrayListSwatchesToUIColorArray = swatchesToUIColorArray((JSONArray) obj);
                        if (arrayListSwatchesToUIColorArray.size() >= 5) {
                            return arrayListSwatchesToUIColorArray;
                        }
                    } catch (JSONException e2) {
                        e2.printStackTrace();
                        return null;
                    }
                }
            }
        }
        return null;
    }

    static ArrayList<Integer> swatchesToUIColorArray(JSONArray jSONArray) {
        JSONObject jSONObject;
        int i = 0;
        ArrayList<Integer> arrayList = new ArrayList<>();
        while (true) {
            int i2 = i;
            if (i2 >= jSONArray.length()) {
                return arrayList;
            }
            try {
                JSONArray jSONArray2 = jSONArray.getJSONArray(i2);
                if (jSONArray2 != null && (jSONObject = (JSONObject) ((JSONObject) jSONArray2.get(0)).get("value")) != null) {
                    arrayList.add(Integer.valueOf(Color.rgb(jSONObject.getInt("r"), jSONObject.getInt(GoogleBaseNamespaces.G_ALIAS), jSONObject.getInt("b"))));
                }
                i = i2 + 1;
            } catch (JSONException e2) {
                e2.printStackTrace();
                return null;
            }
        }
    }
}
