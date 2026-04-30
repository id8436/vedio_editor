package com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.internal.providers.colortheme.helper;

import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.internal.providers.colortheme.model.ACAdobeColor;
import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.internal.providers.colortheme.model.ACAdobeColorTheme;
import com.adobe.creativesdk.foundation.adobeinternal.storage.psd.AdobePSDCompositeConstants;
import com.adobe.creativesdk.foundation.storage.AdobeDesignLibraryUtils;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryElement;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryRepresentation;
import com.google.api.gbase.client.GoogleBaseNamespaces;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class ACColorThemeAssetHelper {
    public static ACAdobeColorTheme getColorThemeFromElement(AdobeLibraryComposite adobeLibraryComposite, AdobeLibraryElement adobeLibraryElement) {
        AdobeLibraryRepresentation firstRepresentationOfType = adobeLibraryComposite.getFirstRepresentationOfType(AdobeDesignLibraryUtils.AdobeColorThemeMimeType, adobeLibraryElement);
        if (firstRepresentationOfType == null) {
            return null;
        }
        return extractThemeDataFromJSON((JSONObject) firstRepresentationOfType.getValueForKey("data", "colortheme"));
    }

    protected static int findRGBIndex(JSONArray jSONArray) {
        if (0 < jSONArray.length() && jSONArray.optJSONArray(0).length() > 0) {
            int i = 0;
            while (i < jSONArray.optJSONArray(0).length()) {
                String strOptString = jSONArray.optJSONArray(0).optJSONObject(i).optString(AdobePSDCompositeConstants.AdobePSDCompositeLayerBlendOptionsModeKey);
                if (!strOptString.equals("RGB") && !strOptString.equals("rgb")) {
                    i++;
                } else {
                    return i;
                }
            }
        }
        return 0;
    }

    public static ACAdobeColorTheme extractThemeDataFromJSON(JSONObject jSONObject) {
        ACAdobeColorTheme aCAdobeColorTheme = new ACAdobeColorTheme();
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("swatches");
        int iFindRGBIndex = findRGBIndex(jSONArrayOptJSONArray);
        if (jSONArrayOptJSONArray != null) {
            for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                double dOptDouble = jSONArrayOptJSONArray.optJSONArray(i).optJSONObject(iFindRGBIndex).optJSONObject("value").optDouble("r");
                double dOptDouble2 = jSONArrayOptJSONArray.optJSONArray(i).optJSONObject(iFindRGBIndex).optJSONObject("value").optDouble(GoogleBaseNamespaces.G_ALIAS);
                double dOptDouble3 = jSONArrayOptJSONArray.optJSONArray(i).optJSONObject(iFindRGBIndex).optJSONObject("value").optDouble("b");
                ACAdobeColor aCAdobeColor = new ACAdobeColor();
                aCAdobeColor.setRGB(dOptDouble, dOptDouble2, dOptDouble3);
                aCAdobeColorTheme._colors.add(aCAdobeColor);
            }
        }
        JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONArray("tags");
        if (jSONArrayOptJSONArray2 != null) {
            for (int i2 = 0; i2 < jSONArrayOptJSONArray2.length(); i2++) {
                aCAdobeColorTheme._tags.add(i2, jSONArrayOptJSONArray2.opt(i2).toString());
            }
        }
        try {
            aCAdobeColorTheme._baseColorIndex = jSONObject.getInt("baseSwatchIndex");
        } catch (JSONException e2) {
            aCAdobeColorTheme._baseColorIndex = 2;
        }
        return aCAdobeColorTheme;
    }
}
