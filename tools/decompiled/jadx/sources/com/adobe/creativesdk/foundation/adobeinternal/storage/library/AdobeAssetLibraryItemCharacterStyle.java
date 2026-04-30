package com.adobe.creativesdk.foundation.adobeinternal.storage.library;

import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXManifestNode;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFile;
import com.adobe.creativesdk.foundation.storage.AdobeAssetLibrary;
import com.adobe.creativesdk.foundation.storage.AdobeAssetLibraryItem;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class AdobeAssetLibraryItemCharacterStyle extends AdobeAssetLibraryItem {
    private AdobeAssetFile rendition;
    private float renditionHeight;
    private float renditionWidth;
    private JSONObject styleData;

    public JSONObject getStyleData() {
        return this.styleData;
    }

    public void setStyleData(JSONObject jSONObject) {
        this.styleData = jSONObject;
    }

    public AdobeAssetFile getRendition() {
        return this.rendition;
    }

    public void setRendition(AdobeAssetFile adobeAssetFile) {
        this.rendition = adobeAssetFile;
    }

    public float getRenditionHeight() {
        return this.renditionHeight;
    }

    public void setRenditionHeight(float f2) {
        this.renditionHeight = f2;
    }

    public float getRenditionWidth() {
        return this.renditionWidth;
    }

    public void setRenditionWidth(float f2) {
        this.renditionWidth = f2;
    }

    public AdobeAssetLibraryItemCharacterStyle(AdobeDCXManifestNode adobeDCXManifestNode, String str, JSONObject jSONObject, AdobeAssetFile adobeAssetFile, int i, int i2, AdobeAssetLibrary adobeAssetLibrary) {
        super(adobeDCXManifestNode, str, adobeAssetLibrary);
        this.styleData = jSONObject;
        this.rendition = adobeAssetFile;
        this.renditionHeight = i;
        this.renditionWidth = i2;
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeAssetLibraryItem
    public String nameOrIdForDisplay() {
        String strOptString;
        String strOptString2 = null;
        JSONObject styleData = getStyleData();
        double d2 = 0.0d;
        String strOptString3 = styleData.optString("fontFamily");
        JSONObject jSONObjectOptJSONObject = styleData.optJSONObject("fontSize");
        if (jSONObjectOptJSONObject != null) {
            strOptString = jSONObjectOptJSONObject.optString("value");
            strOptString2 = jSONObjectOptJSONObject.optString("type");
        } else {
            strOptString = null;
        }
        if (strOptString3 != null && strOptString3.length() > 0) {
            if (strOptString != null) {
                d2 = Double.parseDouble(strOptString);
            }
            Object[] objArr = new Object[3];
            objArr[0] = strOptString3;
            objArr[1] = strOptString != null ? Double.valueOf(d2) : "";
            objArr[2] = strOptString2 != null ? strOptString2 : "";
            return String.format("%s %.1f%s", objArr);
        }
        return super.nameOrIdForDisplay();
    }
}
