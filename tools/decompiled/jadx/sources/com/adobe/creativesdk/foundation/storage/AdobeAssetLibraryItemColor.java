package com.adobe.creativesdk.foundation.storage;

import android.graphics.Color;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXManifestNode;
import com.google.api.gbase.client.GoogleBaseNamespaces;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class AdobeAssetLibraryItemColor extends AdobeAssetLibraryItem {
    private Number colorAlpha;
    private Object colorComponents;
    private AdobeAssetLibraryColorMode colorMode;
    private String colorProfileName;
    private AdobeAssetLibraryColorType colorType;
    private Number renditionAlpha;
    private Object renditionComponents;
    private AdobeAssetLibraryColorMode renditionMode;
    private String renditionProfileName;
    private AdobeAssetLibraryColorType renditionType;

    public AdobeAssetLibraryColorType getColorType() {
        return this.colorType;
    }

    public AdobeAssetLibraryColorMode getColorMode() {
        return this.colorMode;
    }

    public Object getColorComponents() {
        return this.colorComponents;
    }

    public Number getColorAlpha() {
        return this.colorAlpha;
    }

    public String getColorProfileName() {
        return this.colorProfileName;
    }

    public AdobeAssetLibraryColorType getRenditionType() {
        return this.renditionType;
    }

    public AdobeAssetLibraryColorMode getRenditionMode() {
        return this.renditionMode;
    }

    public Object getRenditionComponents() {
        return this.renditionComponents;
    }

    public Number getRenditionAlpha() {
        return this.renditionAlpha;
    }

    public String getRenditionProfileName() {
        return this.renditionProfileName;
    }

    protected AdobeAssetLibraryItemColor(AdobeDCXManifestNode adobeDCXManifestNode, String str, String str2, String str3, Object obj, Number number, String str4, String str5, String str6, Object obj2, Number number2, String str7, AdobeAssetLibrary adobeAssetLibrary) {
        super(adobeDCXManifestNode, str, adobeAssetLibrary);
        this.colorType = colorTypeForStringType(str2);
        this.colorMode = colorModeForStringMode(str3);
        this.colorComponents = obj;
        this.colorAlpha = number;
        this.colorProfileName = str4;
        this.renditionType = colorTypeForStringType(str5);
        this.renditionMode = colorModeForStringMode(str6);
        this.renditionComponents = obj2;
        this.renditionAlpha = number2;
        this.renditionProfileName = str7;
    }

    public int color() {
        if (this.colorMode == null) {
            return -1;
        }
        switch (this.colorMode) {
            case AdobeAssetLibraryColorModeRGB:
                return rgbColor();
            case AdobeAssetLibraryColorModeCMYK:
                return rgbRenditionColor();
            case AdobeAssetLibraryColorModeGray:
                return grayColor();
            case AdobeAssetLibraryColorModeHSB:
                return hsbColor();
            case AdobeAssetLibraryColorModeLab:
                return rgbRenditionColor();
            case AdobeAssetLibraryColorModeUnknown:
                return rgbRenditionColor();
            default:
                return rgbRenditionColor();
        }
    }

    int rgbColor() {
        JSONObject jSONObject = (JSONObject) this.colorComponents;
        return Color.argb(255, jSONObject.optInt("r"), jSONObject.optInt(GoogleBaseNamespaces.G_ALIAS), jSONObject.optInt("b"));
    }

    int hsbColor() {
        JSONObject jSONObject = (JSONObject) this.colorComponents;
        return Color.HSVToColor(new float[]{jSONObject.optInt("h"), jSONObject.optInt("s"), jSONObject.optInt("b")});
    }

    int grayColor() {
        int iDoubleValue = (int) (((100.0d - ((Number) this.colorComponents).doubleValue()) / 100.0d) * 255.0d);
        return Color.rgb(iDoubleValue, iDoubleValue, iDoubleValue);
    }

    int rgbRenditionColor() {
        if (this.renditionComponents == null) {
            return -1;
        }
        JSONObject jSONObject = (JSONObject) this.renditionComponents;
        return Color.rgb(jSONObject.optInt("r"), jSONObject.optInt(GoogleBaseNamespaces.G_ALIAS), jSONObject.optInt("b"));
    }

    static AdobeAssetLibraryColorType colorTypeForStringType(String str) {
        if (str == null) {
            return null;
        }
        if (str.toLowerCase().equals("spot")) {
            return AdobeAssetLibraryColorType.AdobeAssetLibraryColorTypeSpot;
        }
        return AdobeAssetLibraryColorType.AdobeAssetLibraryColorTypeProcess;
    }

    static AdobeAssetLibraryColorMode colorModeForStringMode(String str) {
        if (str == null) {
            return null;
        }
        String lowerCase = str.toLowerCase();
        if (lowerCase.equals("rgb")) {
            return AdobeAssetLibraryColorMode.AdobeAssetLibraryColorModeRGB;
        }
        if (lowerCase.equals("cmyk")) {
            return AdobeAssetLibraryColorMode.AdobeAssetLibraryColorModeCMYK;
        }
        if (lowerCase.equals("lab")) {
            return AdobeAssetLibraryColorMode.AdobeAssetLibraryColorModeLab;
        }
        if (lowerCase.equals("hsb")) {
            return AdobeAssetLibraryColorMode.AdobeAssetLibraryColorModeHSB;
        }
        if (lowerCase.equals("gray")) {
            return AdobeAssetLibraryColorMode.AdobeAssetLibraryColorModeGray;
        }
        return AdobeAssetLibraryColorMode.AdobeAssetLibraryColorModeUnknown;
    }

    public String colorNameOrHexValue() {
        if (this.name != null) {
            return this.name;
        }
        String strHex = hex();
        return strHex == null ? renditionHex() : strHex;
    }

    private String hex() {
        switch (this.colorMode) {
            case AdobeAssetLibraryColorModeRGB:
                return rgbHex();
            case AdobeAssetLibraryColorModeCMYK:
            case AdobeAssetLibraryColorModeLab:
            case AdobeAssetLibraryColorModeUnknown:
            default:
                return null;
            case AdobeAssetLibraryColorModeGray:
                return grayHex();
            case AdobeAssetLibraryColorModeHSB:
                return hsbHex();
        }
    }

    private String rgbHex() {
        JSONObject jSONObject = (JSONObject) this.colorComponents;
        return String.format("#%02X%02X%02X", Integer.valueOf(jSONObject.optInt("r")), Integer.valueOf(jSONObject.optInt(GoogleBaseNamespaces.G_ALIAS)), Integer.valueOf(jSONObject.optInt("b")));
    }

    private String hsbHex() {
        JSONObject jSONObject = (JSONObject) this.colorComponents;
        return String.format("#%02X%02X%02X", Integer.valueOf(jSONObject.optInt("h")), Integer.valueOf(jSONObject.optInt("s")), Integer.valueOf(jSONObject.optInt("b")));
    }

    private String grayHex() {
        return String.format("#%02X", Integer.valueOf(((Number) this.colorComponents).intValue()));
    }

    private String renditionHex() {
        JSONObject jSONObject = (JSONObject) this.renditionComponents;
        return String.format("#%02X%02X%02X", Integer.valueOf(jSONObject.optInt("r")), Integer.valueOf(jSONObject.optInt(GoogleBaseNamespaces.G_ALIAS)), Integer.valueOf(jSONObject.optInt("b")));
    }
}
