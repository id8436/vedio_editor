package com.adobe.creativesdk.foundation.storage;

import android.graphics.Color;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXManifestNode;
import com.adobe.creativesdk.foundation.adobeinternal.storage.library.resources.AdobeCommunityPublicationRecordConstants;
import com.google.api.gbase.client.GoogleBaseNamespaces;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class AdobeAssetLibraryItemColorTheme extends AdobeAssetLibraryItem {
    private AdobeAssetLibraryColorThemeMood mood;
    private AdobeAssetLibraryColorThemeRule rule;
    private JSONArray swatches;
    private JSONArray tags;

    public JSONArray getTags() {
        return this.tags;
    }

    protected void setTags(JSONArray jSONArray) {
        this.tags = jSONArray;
    }

    public AdobeAssetLibraryColorThemeRule getRule() {
        return this.rule;
    }

    protected void setRule(AdobeAssetLibraryColorThemeRule adobeAssetLibraryColorThemeRule) {
        this.rule = adobeAssetLibraryColorThemeRule;
    }

    public AdobeAssetLibraryColorThemeMood getMood() {
        return this.mood;
    }

    protected void setMood(AdobeAssetLibraryColorThemeMood adobeAssetLibraryColorThemeMood) {
        this.mood = adobeAssetLibraryColorThemeMood;
    }

    public JSONArray getSwatches() {
        return this.swatches;
    }

    protected void setSwatches(JSONArray jSONArray) {
        this.swatches = jSONArray;
    }

    protected AdobeAssetLibraryItemColorTheme(AdobeDCXManifestNode adobeDCXManifestNode, JSONArray jSONArray, String str, String str2, JSONArray jSONArray2, AdobeAssetLibrary adobeAssetLibrary) {
        super(adobeDCXManifestNode, null, adobeAssetLibrary);
        this.tags = jSONArray;
        this.swatches = jSONArray2;
        this.rule = themeRuleForStringRule(str);
        this.mood = themeMoodForStringMood(str2);
    }

    public ArrayList<Integer> getRGBColors() {
        JSONObject jSONObjectOptJSONObject;
        if (this.swatches == null) {
            return null;
        }
        int length = this.swatches.length();
        ArrayList<Integer> arrayList = new ArrayList<>(length);
        for (int i = 0; i < length; i++) {
            Object objOpt = this.swatches.opt(i);
            if (objOpt instanceof JSONArray) {
                jSONObjectOptJSONObject = ((JSONArray) objOpt).optJSONObject(0);
            } else {
                jSONObjectOptJSONObject = objOpt instanceof JSONObject ? (JSONObject) objOpt : null;
            }
            if (jSONObjectOptJSONObject != null) {
                Object objOpt2 = jSONObjectOptJSONObject.opt("value");
                if (objOpt2 == null) {
                    objOpt2 = jSONObjectOptJSONObject.opt("values");
                }
                if (objOpt2 instanceof JSONObject) {
                    JSONObject jSONObject = (JSONObject) objOpt2;
                    arrayList.add(Integer.valueOf(Color.rgb(jSONObject.optInt("r"), jSONObject.optInt(GoogleBaseNamespaces.G_ALIAS), jSONObject.optInt("b"))));
                } else if (objOpt2 instanceof JSONArray) {
                    JSONArray jSONArray = (JSONArray) objOpt2;
                    arrayList.add(Integer.valueOf(Color.rgb((int) (jSONArray.optDouble(0) * 255.0d), (int) (jSONArray.optDouble(1) * 255.0d), (int) (jSONArray.optDouble(2) * 255.0d))));
                }
            }
        }
        return arrayList;
    }

    private static AdobeAssetLibraryColorThemeRule themeRuleForStringRule(String str) {
        String lowerCase = str != null ? str.toLowerCase() : null;
        if (lowerCase == null) {
            return AdobeAssetLibraryColorThemeRule.AdobeAssetLibraryColorThemeRuleNotSet;
        }
        if (lowerCase.equals("analogous")) {
            return AdobeAssetLibraryColorThemeRule.AdobeAssetLibraryColorThemeRuleAnalogous;
        }
        if (lowerCase.equals("complimentary")) {
            return AdobeAssetLibraryColorThemeRule.AdobeAssetLibraryColorThemeRuleComplimentary;
        }
        if (lowerCase.equals("monochromatic")) {
            return AdobeAssetLibraryColorThemeRule.AdobeAssetLibraryColorThemeRuleMonochromatic;
        }
        if (lowerCase.equals("triad")) {
            return AdobeAssetLibraryColorThemeRule.AdobeAssetLibraryColorThemeRuleTriad;
        }
        if (lowerCase.equals(AdobeCommunityPublicationRecordConstants.AdobeCommunityPublicationCustomKey)) {
            return AdobeAssetLibraryColorThemeRule.AdobeAssetLibraryColorThemeRuleCustom;
        }
        return AdobeAssetLibraryColorThemeRule.AdobeAssetLibraryColorThemeRuleUnknown;
    }

    private static AdobeAssetLibraryColorThemeMood themeMoodForStringMood(String str) {
        String lowerCase = str != null ? str.toLowerCase() : null;
        if (lowerCase == null) {
            return AdobeAssetLibraryColorThemeMood.AdobeAssetLibraryColorThemeMoodNotSet;
        }
        if (lowerCase.equals("colorful")) {
            return AdobeAssetLibraryColorThemeMood.AdobeAssetLibraryColorThemeMoodColorful;
        }
        if (lowerCase.equals("bright")) {
            return AdobeAssetLibraryColorThemeMood.AdobeAssetLibraryColorThemeMoodBright;
        }
        if (lowerCase.equals("muted")) {
            return AdobeAssetLibraryColorThemeMood.AdobeAssetLibraryColorThemeMoodMuted;
        }
        if (lowerCase.equals("dark")) {
            return AdobeAssetLibraryColorThemeMood.AdobeAssetLibraryColorThemeMoodDark;
        }
        if (lowerCase.equals(AdobeCommunityPublicationRecordConstants.AdobeCommunityPublicationCustomKey)) {
            return AdobeAssetLibraryColorThemeMood.AdobeAssetLibraryColorThemeMoodCustom;
        }
        return AdobeAssetLibraryColorThemeMood.AdobeAssetLibraryColorThemeMoodUnknown;
    }
}
