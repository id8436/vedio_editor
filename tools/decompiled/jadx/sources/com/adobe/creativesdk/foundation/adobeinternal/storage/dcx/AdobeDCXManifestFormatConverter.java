package com.adobe.creativesdk.foundation.adobeinternal.storage.dcx;

import android.support.v4.app.NotificationCompat;
import com.adobe.creativesdk.foundation.adobeinternal.storage.library.resources.AdobeCommunityConstants;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageUtils;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class AdobeDCXManifestFormatConverter {
    public static final long AdobeDCXManifestFormatVersion = 6;
    static JSONObject DCXTypeMapperToVersion4 = new JSONObject();

    public static boolean updateManifestDictionary(JSONObject jSONObject, long j) {
        if (j < 1 && !updateManifestDictionaryToVersion1(jSONObject)) {
            return false;
        }
        if (j < 2 && !updateManifestDictionaryToVersion2(jSONObject)) {
            return false;
        }
        if (j < 3 && !updateManifestDictionaryToVersion3(jSONObject)) {
            return false;
        }
        if (j < 4 && !updateManifestDictionaryToVersion4(jSONObject)) {
            return false;
        }
        if (j < 5 && !updateManifestDictionaryToVersion5(jSONObject)) {
            return false;
        }
        if (j > 6 || updateManifestDictionaryToVersion6(jSONObject)) {
            return (jSONObject.optJSONObject("local") != null ? jSONObject.optJSONObject("local").optInt(AdobeCommunityConstants.AdobeCommunityResourceVersionKey, 0) : 0) >= 1 || updateLocalDataInManifestDictionaryToVersion1(jSONObject);
        }
        return false;
    }

    static boolean updateLocalDataInManifestDictionaryToVersion1(JSONObject jSONObject) {
        String strOptString;
        try {
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("local");
            if (jSONObjectOptJSONObject == null) {
                jSONObjectOptJSONObject = new JSONObject();
                jSONObject.put("local", jSONObjectOptJSONObject);
            }
            if (jSONObjectOptJSONObject.opt("manifestEtag") == null && (strOptString = jSONObject.optString("etag", null)) != null) {
                jSONObjectOptJSONObject.put("manifestEtag", strOptString);
                jSONObject.remove("etag");
            }
            jSONObjectOptJSONObject.put(AdobeCommunityConstants.AdobeCommunityResourceVersionKey, 1);
            return true;
        } catch (JSONException e2) {
            return false;
        }
    }

    static boolean recursiveUpdateComponentsToVersion6(JSONObject jSONObject) {
        Object objOpt;
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("components");
        if (jSONArrayOptJSONArray != null) {
            for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i);
                if (jSONObjectOptJSONObject != null && (objOpt = jSONObjectOptJSONObject.opt(AdobeCommunityConstants.AdobeCommunityResourceVersionKey)) != null && !(objOpt instanceof String)) {
                    if (!(objOpt instanceof Number)) {
                        return false;
                    }
                    try {
                        jSONObjectOptJSONObject.putOpt(AdobeCommunityConstants.AdobeCommunityResourceVersionKey, objOpt.toString());
                    } catch (JSONException e2) {
                        AdobeDCXUtils.logAnalytics("csdk_android_dcx", "ManifestConverter-Recursive6", e2.getMessage(), jSONObject.toString());
                        e2.printStackTrace();
                        return false;
                    }
                }
            }
        }
        JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONArray("children");
        if (jSONArrayOptJSONArray2 != null) {
            for (int i2 = 0; i2 < jSONArrayOptJSONArray2.length(); i2++) {
                if (!recursiveUpdateComponentsToVersion6(jSONArrayOptJSONArray2.optJSONObject(i2))) {
                    return false;
                }
            }
        }
        return true;
    }

    static boolean updateManifestDictionaryToVersion6(JSONObject jSONObject) {
        if (jSONObject.optString("path", null) != null) {
            jSONObject.remove("path");
        }
        if (!recursiveUpdateComponentsToVersion6(jSONObject)) {
            return false;
        }
        try {
            jSONObject.put(AdobeDCXConstants.AdobeDCXManifestFormatVersionManifestKey, 6);
            return true;
        } catch (JSONException e2) {
            e2.printStackTrace();
            AdobeDCXUtils.logAnalytics("csdk_android_dcx", "FromatConverter-updateManifestDictionaryToVersion6", e2.getMessage(), jSONObject.toString());
            return false;
        }
    }

    static JSONObject recursiveUpdateComponentsToVersion5(JSONObject jSONObject, JSONObject jSONObject2) {
        String strOptString;
        if (jSONObject != null) {
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("components");
            if (jSONArrayOptJSONArray != null) {
                for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                    JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i);
                    if (jSONObjectOptJSONObject != null && (strOptString = jSONObjectOptJSONObject.optString("localStorageAssetId")) != null) {
                        try {
                            jSONObject2.put(jSONObjectOptJSONObject.optString("id"), strOptString);
                        } catch (JSONException e2) {
                            e2.printStackTrace();
                        }
                        jSONObjectOptJSONObject.remove("localStorageAssetId");
                    }
                }
            }
            JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONArray("children");
            if (jSONArrayOptJSONArray2 != null) {
                for (int i2 = 0; i2 < jSONArrayOptJSONArray2.length(); i2++) {
                    jSONObject2 = recursiveUpdateComponentsToVersion5(jSONArrayOptJSONArray2.optJSONObject(i2), jSONObject2);
                    if (jSONObject2 == null) {
                        return null;
                    }
                }
                return jSONObject2;
            }
            return jSONObject2;
        }
        return jSONObject2;
    }

    static boolean updateManifestDictionaryToVersion5(JSONObject jSONObject) {
        JSONObject jSONObjectRecursiveUpdateComponentsToVersion5 = recursiveUpdateComponentsToVersion5(jSONObject, new JSONObject());
        if (jSONObjectRecursiveUpdateComponentsToVersion5 == null) {
            AdobeDCXUtils.logAnalytics("csdk_android_dcx", "FromatConverter-updateManifestDictionaryToVersion5", "storageIdLookup", jSONObject.toString());
            return false;
        }
        try {
            if (jSONObjectRecursiveUpdateComponentsToVersion5.length() > 0) {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("copyOnWrite#storageIds", jSONObjectRecursiveUpdateComponentsToVersion5);
                jSONObject.put("local", jSONObject2);
            }
            jSONObject.put(AdobeDCXConstants.AdobeDCXManifestFormatVersionManifestKey, 5);
            return true;
        } catch (JSONException e2) {
            AdobeDCXUtils.logAnalytics("csdk_android_dcx", "FromatConverter-updateManifestDictionaryToVersion5", e2.getMessage(), jSONObject.toString());
            return false;
        }
    }

    static boolean recursiveUpdateComponentsToVersion4(JSONObject jSONObject) {
        JSONObject jSONObjectOptJSONObject;
        if (jSONObject == null) {
            return true;
        }
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("components");
        if (jSONArrayOptJSONArray != null) {
            for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                JSONObject jSONObjectOptJSONObject2 = jSONArrayOptJSONArray.optJSONObject(i);
                if (jSONObjectOptJSONObject2 != null && (jSONObjectOptJSONObject = jSONObjectOptJSONObject2.optJSONObject(AdobeCommunityConstants.AdobeCommunityResourceLinkKey)) != null) {
                    if (jSONObjectOptJSONObject.opt("stormcloud#asset") != null) {
                        jSONObjectOptJSONObject.remove("stormcloud#asset");
                    }
                    if (jSONObjectOptJSONObject.opt("stormcloud#asset-version") != null) {
                        jSONObjectOptJSONObject.remove("stormcloud#asset-version");
                    }
                    if (jSONObjectOptJSONObject.length() == 0) {
                        jSONObjectOptJSONObject2.remove(AdobeCommunityConstants.AdobeCommunityResourceLinkKey);
                    }
                }
            }
        }
        JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONArray("children");
        if (jSONArrayOptJSONArray2 != null) {
            for (int i2 = 0; i2 < jSONArrayOptJSONArray2.length(); i2++) {
                if (!recursiveUpdateComponentsToVersion4(jSONArrayOptJSONArray2.optJSONObject(i2))) {
                    return false;
                }
            }
        }
        return true;
    }

    static boolean updateManifestDictionaryToVersion4(JSONObject jSONObject) {
        try {
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(AdobeCommunityConstants.AdobeCommunityResourceLinkKey);
            if (jSONObjectOptJSONObject != null) {
                if (jSONObjectOptJSONObject.opt("stormcloud#asset") != null) {
                    jSONObjectOptJSONObject.remove("stormcloud#asset");
                }
                if (jSONObjectOptJSONObject.opt("dma#document") != null) {
                    jSONObjectOptJSONObject.remove("dma#document");
                }
                if (jSONObjectOptJSONObject.length() == 0) {
                    jSONObject.remove(AdobeCommunityConstants.AdobeCommunityResourceLinkKey);
                }
            }
            if (!recursiveUpdateComponentsToVersion4(jSONObject)) {
                AdobeDCXUtils.logAnalytics("csdk_android_dcx", "FromatConverter-updateManifestDictionaryToVersion4", "components4 failure", jSONObject.toString());
                return false;
            }
            if (DCXTypeMapperToVersion4.length() == 0) {
                DCXTypeMapperToVersion4.put("application/vnd.adobe.html+cd", "application/vnd.adobe.html+dcx");
                DCXTypeMapperToVersion4.put("application/vnd.adobe.violet.sketchBook+cd", "application/vnd.adobe.sketch.project+dcx");
                DCXTypeMapperToVersion4.put("application/vnd.adobe.test+cd", "application/vnd.adobe.test+dcx");
            }
            String strOptString = DCXTypeMapperToVersion4.optString(jSONObject.optString("type"));
            if (strOptString != null) {
                jSONObject.put("type", strOptString);
            }
            jSONObject.put(AdobeDCXConstants.AdobeDCXManifestFormatVersionManifestKey, 4);
            return true;
        } catch (JSONException e2) {
            AdobeDCXUtils.logAnalytics("csdk_android_dcx", "FromatConverter-updateManifestDictionaryToVersion4", e2.getMessage(), jSONObject.toString());
            return false;
        }
    }

    static boolean recursiveUpdateComponentsToVersion3(JSONObject jSONObject) {
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("components");
        if (jSONArrayOptJSONArray != null) {
            for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i);
                if (jSONObjectOptJSONObject != null) {
                    JSONObject jSONObjectOptJSONObject2 = jSONObjectOptJSONObject.optJSONObject(AdobeCommunityConstants.AdobeCommunityResourceLinkKey);
                    String strOptString = jSONObjectOptJSONObject.optString("etag");
                    if (jSONObjectOptJSONObject2 != null && strOptString != null) {
                        JSONObject jSONObjectOptJSONObject3 = jSONObjectOptJSONObject2.optJSONObject("stormcloud#asset");
                        if (jSONObjectOptJSONObject3 != null) {
                            try {
                                jSONObjectOptJSONObject3.put("etag", strOptString);
                            } catch (JSONException e2) {
                            }
                        }
                        jSONObjectOptJSONObject.remove("etag");
                    }
                }
            }
        }
        JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONArray("children");
        if (jSONArrayOptJSONArray2 != null) {
            for (int i2 = 0; i2 < jSONArrayOptJSONArray2.length(); i2++) {
                if (!recursiveUpdateComponentsToVersion3(jSONArrayOptJSONArray2.optJSONObject(i2))) {
                    return false;
                }
            }
        }
        return true;
    }

    static boolean updateManifestDictionaryToVersion3(JSONObject jSONObject) {
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(AdobeCommunityConstants.AdobeCommunityResourceLinkKey);
        String strOptString = jSONObject.optString("etag");
        if (jSONObjectOptJSONObject != null && strOptString != null) {
            JSONObject jSONObjectOptJSONObject2 = jSONObjectOptJSONObject.optJSONObject("stormcloud#asset");
            if (jSONObjectOptJSONObject2 != null) {
                try {
                    jSONObjectOptJSONObject2.put("etag", strOptString);
                } catch (JSONException e2) {
                }
            }
            jSONObject.remove("etag");
        }
        if (!recursiveUpdateComponentsToVersion3(jSONObject)) {
            AdobeDCXUtils.logAnalytics("csdk_android_dcx", "FromatConverter-updateManifestDictionaryToVersion3", "components3 failure", jSONObject.toString());
            return false;
        }
        try {
            jSONObject.put(AdobeDCXConstants.AdobeDCXManifestFormatVersionManifestKey, 3);
            return true;
        } catch (JSONException e3) {
            e3.printStackTrace();
            AdobeDCXUtils.logAnalytics("csdk_android_dcx", "FromatConverter-updateManifestDictionaryToVersion3", e3.getMessage(), jSONObject.toString());
            return false;
        }
    }

    static boolean recursiveUpdateComponentsToVersion2(JSONObject jSONObject) {
        JSONObject jSONObjectOptJSONObject;
        try {
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("components");
            if (jSONArrayOptJSONArray != null) {
                for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                    JSONObject jSONObjectOptJSONObject2 = jSONArrayOptJSONArray.optJSONObject(i);
                    if (jSONObjectOptJSONObject2 != null && (jSONObjectOptJSONObject = jSONObjectOptJSONObject2.optJSONObject(AdobeCommunityConstants.AdobeCommunityResourceLinkKey)) != null) {
                        JSONObject jSONObjectOptJSONObject3 = jSONObjectOptJSONObject.optJSONObject("latest-version");
                        JSONObject jSONObjectOptJSONObject4 = jSONObjectOptJSONObject.optJSONObject("self");
                        if (jSONObjectOptJSONObject3 != null) {
                            jSONObjectOptJSONObject.put("stormcloud#asset", jSONObjectOptJSONObject3);
                            jSONObjectOptJSONObject.remove("latest-version");
                        }
                        if (jSONObjectOptJSONObject4 != null) {
                            jSONObjectOptJSONObject.put("stormcloud#asset-version", jSONObjectOptJSONObject4);
                            jSONObjectOptJSONObject.remove("self");
                        }
                        if (jSONObjectOptJSONObject3 != null && jSONObjectOptJSONObject4 == null) {
                            jSONObjectOptJSONObject.put("stormcloud#asset-version", jSONObjectOptJSONObject3);
                        } else if (jSONObjectOptJSONObject3 == null && jSONObjectOptJSONObject4 != null) {
                            jSONObjectOptJSONObject.put("stormcloud#asset", jSONObjectOptJSONObject4);
                        }
                    }
                }
            }
            JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONArray("children");
            if (jSONArrayOptJSONArray2 != null) {
                for (int i2 = 0; i2 < jSONArrayOptJSONArray2.length(); i2++) {
                    if (!recursiveUpdateComponentsToVersion2(jSONArrayOptJSONArray2.optJSONObject(i2))) {
                        return false;
                    }
                }
            }
            return true;
        } catch (JSONException e2) {
            e2.printStackTrace();
            AdobeDCXUtils.logAnalytics("csdk_android_dcx", "FromatConverter-recursiveUpdateComponentsToVersion2", e2.getMessage(), jSONObject.toString());
            return false;
        }
    }

    static boolean updateManifestDictionaryToVersion2(JSONObject jSONObject) {
        try {
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(AdobeCommunityConstants.AdobeCommunityResourceLinkKey);
            if (jSONObjectOptJSONObject != null) {
                JSONObject jSONObjectOptJSONObject2 = jSONObjectOptJSONObject.optJSONObject("dma#container");
                if (jSONObjectOptJSONObject2 != null) {
                    jSONObjectOptJSONObject2.put(NotificationCompat.CATEGORY_SERVICE, "stormcloud");
                    jSONObjectOptJSONObject.put("dma#document", jSONObjectOptJSONObject2);
                    jSONObjectOptJSONObject.remove("dma#container");
                }
                JSONObject jSONObjectOptJSONObject3 = jSONObjectOptJSONObject.optJSONObject("self");
                if (jSONObjectOptJSONObject3 != null) {
                    jSONObjectOptJSONObject.put("stormcloud#asset", jSONObjectOptJSONObject3);
                    jSONObjectOptJSONObject.remove("self");
                }
            }
            if (!recursiveUpdateComponentsToVersion2(jSONObject)) {
                AdobeDCXUtils.logAnalytics("csdk_android_dcx", "FromatConverter-updateManifestDictionaryToVersion2", "recursivecomponents2 failed", jSONObject.toString());
                return false;
            }
            jSONObject.put(AdobeDCXConstants.AdobeDCXManifestFormatVersionManifestKey, 2);
            return true;
        } catch (JSONException e2) {
            AdobeDCXUtils.logAnalytics("csdk_android_dcx", "FromatConverter-updateManifestDictionaryToVersion2", e2.getMessage(), jSONObject.toString());
            return false;
        }
    }

    static boolean updateManifestDictionaryToVersion1(JSONObject jSONObject) {
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(AdobeCommunityConstants.AdobeCommunityResourceLinkKey);
        if (jSONObjectOptJSONObject == null) {
            AdobeDCXUtils.logAnalytics("csdk_android_dcx", "FromatConverter-updateManifestDictionaryToVersion1", AdobeCommunityConstants.AdobeCommunityResourceLinkKey, jSONObject.toString());
            return false;
        }
        try {
            String strOptString = jSONObjectOptJSONObject.optJSONObject("self").optString("etag");
            if (strOptString != null) {
                jSONObject.put("etag", strOptString);
                jSONObjectOptJSONObject.optJSONObject("self").remove("etag");
            }
            JSONArray jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray("components");
            if (jSONArrayOptJSONArray != null) {
                for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                    JSONObject jSONObjectOptJSONObject2 = jSONArrayOptJSONArray.optJSONObject(i);
                    if (jSONObjectOptJSONObject2 != null) {
                        if (jSONObjectOptJSONObject2.opt("id") == null) {
                            jSONObjectOptJSONObject2.put("id", AdobeStorageUtils.generateUuid());
                        }
                        String strOptString2 = jSONObjectOptJSONObject2.optString("href");
                        JSONObject jSONObject2 = new JSONObject();
                        jSONObject2.put("href", strOptString2);
                        JSONObject jSONObject3 = new JSONObject();
                        jSONObject3.put("href", strOptString2);
                        JSONObject jSONObject4 = new JSONObject();
                        jSONObject4.put("self", jSONObject2);
                        jSONObject4.put("latest-version", jSONObject3);
                        jSONObjectOptJSONObject2.put(AdobeCommunityConstants.AdobeCommunityResourceLinkKey, jSONObject4);
                        jSONObjectOptJSONObject2.remove("href");
                    }
                }
                jSONObject.put("components", jSONArrayOptJSONArray);
                jSONObjectOptJSONObject.remove("components");
            }
            JSONObject jSONObjectOptJSONObject3 = jSONObjectOptJSONObject.optJSONObject("container");
            if (jSONObjectOptJSONObject3 != null) {
                jSONObjectOptJSONObject.put("dma#container", jSONObjectOptJSONObject3);
                jSONObjectOptJSONObject.remove("container");
            }
            jSONObject.put(AdobeDCXConstants.AdobeDCXManifestFormatVersionManifestKey, 1);
            return true;
        } catch (JSONException e2) {
            AdobeDCXUtils.logAnalytics("csdk_android_dcx", "FromatConverter-updateManifestDictionaryToVersion1", e2.getMessage(), jSONObject.toString());
            return false;
        }
    }
}
