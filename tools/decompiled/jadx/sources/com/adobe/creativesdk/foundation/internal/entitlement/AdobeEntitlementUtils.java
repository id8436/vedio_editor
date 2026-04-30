package com.adobe.creativesdk.foundation.internal.entitlement;

import com.adobe.creativesdk.foundation.adobeinternal.entitlement.AdobeEntitlementErrorCode;
import com.adobe.creativesdk.foundation.adobeinternal.entitlement.AdobeEntitlementException;
import com.adobe.creativesdk.foundation.adobeinternal.entitlement.AdobeEntitlementSession;
import com.adobe.creativesdk.foundation.internal.auth.AdobeAuthIMSEnvironment;
import com.adobe.creativesdk.foundation.internal.auth.AdobeAuthIdentityManagementService;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import java.util.Iterator;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class AdobeEntitlementUtils {
    public static final String AdobeEntitlementServiceAllowMobile = "allow_mobile";
    public static final String AdobeEntitlementServiceAssets = "storage";
    public static final String AdobeEntitlementServiceBehance = "Behance";
    public static final String AdobeEntitlementServiceCCV = "ccv";
    public static final String AdobeEntitlementServiceCollaboration = "collaboration";
    public static final String AdobeEntitlementServiceColor = "color";
    public static final String AdobeEntitlementServiceDesignAssets = "design_assets";
    public static final String AdobeEntitlementServiceEdgeInspect = "edge_inspect";
    public static final String AdobeEntitlementServiceExtract = "extract";
    public static final String AdobeEntitlementServiceFileSync = "file_sync";
    public static final String AdobeEntitlementServiceImage = "image";
    public static final String AdobeEntitlementServiceLibraries = "libraries";
    public static final String AdobeEntitlementServiceLightroom = "lightroom";
    public static final String AdobeEntitlementServicePhoneGapBuild = "phonegap_build";
    public static final String AdobeEntitlementServicePremiereClip = "premiere_clip";
    public static final String AdobeEntitlementServicePreview = "preview";
    public static final String AdobeEntitlementServiceStock = "stock";
    public static final String AdobeEntitlementServiceStorage = "storage";
    public static final String AdobeEntitlementServiceStory = "story";
    public static final String AdobeEntitlementServiceSyncMetadata = "sync_metadata";
    public static final String AdobeEntitlementServiceSyncSettings = "sync_settings";
    public static final String AdobeEntitlementServiceTypekit = "typekit";
    public static final String CLOUD_ID_STRING = "\t\t\"id\" : \"00000000-0000-0000-0000-000000000000\",\n";
    public static final String NEW_LINE = "\t[\n";
    public static final String kEntitledKey = "entitled";
    public static final String kServiceLevelKey = "service_level";

    private AdobeEntitlementUtils() {
    }

    public static JSONObject JSONObjectWithData(String str) throws AdobeEntitlementException {
        if (str == null) {
            throw new AdobeEntitlementException(AdobeEntitlementErrorCode.AdobeEntitlementErrorMissingJSONData);
        }
        try {
            Matcher matcher = Pattern.compile("while \\(1\\) \\{\\}").matcher(str);
            if (matcher.find()) {
                str = matcher.replaceAll("").trim();
            }
            return new JSONObject(str);
        } catch (JSONException e2) {
            throw new AdobeEntitlementException(AdobeEntitlementErrorCode.AdobeEntitlementErrorUnexpectedResponse, "Parsed collection data is not of type dictionary.", e2);
        }
    }

    public static JSONObject fallbackEndpointsData() {
        AdobeAuthIMSEnvironment environment = AdobeAuthIdentityManagementService.getSharedInstance().getEnvironment();
        if (environment == AdobeAuthIMSEnvironment.AdobeAuthIMSEnvironmentTestUS) {
            try {
                return new JSONObject("{\nendpoints:\n\t[\n\t{\"features\" : {\"photos\" : {\"service\" : {\"uri\" : \"https://api.oznext.com\"}}},\n\t\t\"id\" : \"00000000-0000-0000-0000-000000000000\",\n\t\t\"name\" : \"Adobe Creative Cloud [QA1]\",\n\t\t\"private\" : false,\n\t\t\"status\" : \"ONLINE\"}\n\t]\n};");
            } catch (JSONException e2) {
                AdobeLogger.log(Level.ERROR, AdobeEntitlementUtils.class.getSimpleName(), e2.getMessage(), e2);
                return null;
            }
        }
        if (environment == AdobeAuthIMSEnvironment.AdobeAuthIMSEnvironmentStageUS) {
            try {
                return new JSONObject("{\nendpoints:\n\t[\n\t{\"features\" : {\n\t\t\"files\" : {\"storage\" : {\"uri\" : \"https://cc-api-storage-stage.adobe.io\"},\"archive\" :{ \"uri\" : \"https://cc-api-storage-stage.adobe.io\"}},\n\t\t\"assets\" : {\"storage\" : {\"uri\" : \"https://cc-api-storage-stage.adobe.io\"}},\n\t\t\"libraries\" : {\"storage\" : {\"uri\" : \"https://cc-api-storage-stage.adobe.io\"}},\n\t\t\"imageservices\" : {\"service\" : {\"uri\" : \"https://cc-api-image-stage.adobe.io\"}},\n\t\t\"clipboard\" : {\"service\" : {\"uri\" : \"https://cc-api-storage-stage.adobe.io\"}}\n\t},\n\t\t\"id\" : \"00000000-0000-0000-0000-000000000000\",\n\t\t\"name\" : \"Adobe Creative Cloud [Stage] (static)\",\n\t\t\"private\" : false,\n\t\t\"status\" : \"ONLINE\"},\n\t]\n};");
            } catch (JSONException e3) {
                AdobeLogger.log(Level.ERROR, AdobeEntitlementUtils.class.getSimpleName(), e3.getMessage(), e3);
                return null;
            }
        }
        if (environment == AdobeAuthIMSEnvironment.AdobeAuthIMSEnvironmentProductionUS) {
            try {
                return new JSONObject("{\nendpoints:\n\t[\n\t{\"features\" : {\n\t\t\"files\" : {\"storage\" : {\"uri\" : \"https://cc-api-storage.adobe.io\"}, \"archive\" :{ \"uri\" : \"https://cc-api-storage.adobe.io\"} },\n\t\t\"assets\" : {\"storage\" : {\"uri\" : \"https://cc-api-storage.adobe.io\"}},\n\t\t\"libraries\" : {\"storage\" : {\"uri\" : \"https://cc-api-storage.adobe.io\"}},\n\t\t\"imageservices\" : {\"service\" : {\"uri\" : \"https://cc-api-image.adobe.io\"}},\n\t\t\"clipboard\" : {\"service\" : {\"uri\" : \"https://cc-api-storage.adobe.io\"}}\n\t},\n\t\t\"id\" : \"00000000-0000-0000-0000-000000000000\",\n\t\t\"name\" : \"Adobe Creative Cloud\",\n\t\t\"private\" : false,\n\t\t\"status\" : \"ONLINE\"},\n\t]\n};");
            } catch (JSONException e4) {
                AdobeLogger.log(Level.ERROR, AdobeEntitlementUtils.class.getSimpleName(), e4.getMessage(), e4);
            }
        }
        return null;
    }

    public static JSONObject fallbackServicesData() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(AdobeEntitlementSession.AdobeEntitlementSessionESDataEndpointsKey, fallbackEndpointsData().optJSONArray(AdobeEntitlementSession.AdobeEntitlementSessionESDataEndpointsKey));
            jSONObject.put(AdobeEntitlementSession.AdobeEntitlementSessionESDataServicesKey, new JSONObject("\t\t\t{\nBehance: {\n                \"allow_private_endpoint\": true,\nentitled: true\n            },\nccv: {\n                \"allow_private_endpoint\": true,\nentitled: true\n            },\ncollaboration: {\n                \"allow_private_endpoint\": true,\nentitled: true\n            },\ncolor: {\n                \"allow_private_endpoint\": true,\nentitled: true\n            },\ndesign_assets: {\n                \"allow_private_endpoint\": true,\nentitled: true\n            },\nedge_inspect: {\n                \"allow_private_endpoint\": true,\nentitled: true\n            },\nextract: {\n                \"allow_private_endpoint\": true,\nentitled: true\n            },\nfile_sync: {\n                \"allow_private_endpoint\": true,\nentitled: true\n            },\nimage: {\n                \"allow_private_endpoint\": true,\nentitled: true\n            },\nlibraries: {\n                \"allow_private_endpoint\": true,\nentitled: true\n            },\nlightroom: {\n                \"allow_private_endpoint\": true,\nentitled: true\n            },\nphonegap_build: {\n                \"allow_private_endpoint\": true,\nentitled: true\n            },\npreview: {\n                \"allow_private_endpoint\": true,\nentitled: true\n            },\nstorage: {\n                \"allow_private_endpoint\": true,\nentitled: true\n            },\nstory: {\n                \"allow_private_endpoint\": true,\nentitled: true\n            },\nsync_metadata: {\n                \"allow_private_endpoint\": true,\nentitled: true\n            },\nsync_settings: {\n                \"allow_private_endpoint\": true,\nentitled: true\n            },\ntypekit: {\n                \"allow_private_endpoint\": true,\nentitled: true\n            }\nstock: {\n                \"allow_private_endpoint\": true,\nentitled: true,\nservice_level: free_basic\n            }\n        }"));
        } catch (JSONException e2) {
            AdobeLogger.log(Level.ERROR, AdobeEntitlementUtils.class.getSimpleName(), e2.getMessage(), e2);
        }
        return jSONObject;
    }

    public static JSONObject getServicesForUserProfile(JSONObject jSONObject) throws AdobeEntitlementException {
        if (jSONObject != null && jSONObject.opt(AdobeEntitlementSession.AdobeEntitlementSessionESDataServicesKey) != null) {
            return jSONObject.optJSONObject(AdobeEntitlementSession.AdobeEntitlementSessionESDataServicesKey);
        }
        if (jSONObject != null && jSONObject.opt(AdobeEntitlementSession.AdobeEntitlementSessionESDataServicesKey) == null) {
            throw new AdobeEntitlementException(AdobeEntitlementErrorCode.AdobeEntitlementErrorNoServicesAvailable, "No Public Services are available for this user.");
        }
        throw new AdobeEntitlementException(AdobeEntitlementErrorCode.AdobeEntitlementErrorUnexpectedResponse, "Query for Public Services returned an unexpected response.");
    }

    public static boolean areValuesEqual(JSONObject jSONObject, JSONObject jSONObject2) {
        Iterator<String> itKeys = jSONObject.keys();
        int i = 0;
        while (itKeys.hasNext()) {
            itKeys.next();
            i++;
        }
        Iterator<String> itKeys2 = jSONObject2.keys();
        int i2 = 0;
        while (itKeys2.hasNext()) {
            itKeys2.next();
            i2++;
        }
        boolean z = i == i2;
        if (z) {
            Iterator<String> itKeys3 = jSONObject.keys();
            do {
                boolean z2 = z;
                if (!itKeys3.hasNext()) {
                    return z2;
                }
                String next = itKeys3.next();
                JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(next);
                JSONObject jSONObjectOptJSONObject2 = jSONObject2.optJSONObject(next);
                if (jSONObjectOptJSONObject == null || jSONObjectOptJSONObject2 == null) {
                    z = z2;
                } else {
                    Iterator<String> itKeys4 = jSONObjectOptJSONObject.keys();
                    while (itKeys4.hasNext()) {
                        String next2 = itKeys4.next();
                        if (jSONObjectOptJSONObject.opt(next2).getClass().equals(String.class)) {
                            if (!jSONObjectOptJSONObject.optString(next2).equals(jSONObjectOptJSONObject2.optString(next2))) {
                                z = false;
                                break;
                            }
                        } else if (jSONObjectOptJSONObject.opt(next2).getClass().equals(JSONObject.class)) {
                            if (!areValuesEqual(jSONObjectOptJSONObject.optJSONObject(next2), jSONObjectOptJSONObject2.optJSONObject(next2))) {
                                z = false;
                                break;
                            }
                        } else if (jSONObjectOptJSONObject.optBoolean(next2) != jSONObjectOptJSONObject2.optBoolean(next2)) {
                            z = false;
                            break;
                        }
                    }
                    z = z2;
                }
            } while (z);
            return z;
        }
        return z;
    }
}
