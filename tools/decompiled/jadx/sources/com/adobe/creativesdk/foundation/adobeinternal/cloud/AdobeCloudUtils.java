package com.adobe.creativesdk.foundation.adobeinternal.cloud;

import com.adobe.creativesdk.foundation.adobeinternal.auth.AdobeUXAuthManagerRestricted;
import com.adobe.creativesdk.foundation.adobeinternal.entitlement.AdobeEntitlementErrorCode;
import com.adobe.creativesdk.foundation.adobeinternal.entitlement.AdobeEntitlementException;
import com.adobe.creativesdk.foundation.adobeinternal.entitlement.AdobeEntitlementSession;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class AdobeCloudUtils {
    private AdobeCloudUtils() {
    }

    public static boolean getCloudsFromUserProfile(JSONObject jSONObject, List<AdobeCloud> list) throws AdobeCSDKException {
        if (jSONObject != null) {
            boolean zOptBoolean = jSONObject.optBoolean(AdobeEntitlementSession.AdobeEntitlementSessionESDataPublicCloudStorageKey, true);
            if (AdobeUXAuthManagerRestricted.getSharedAuthManagerRestricted().hasPrivateCloudScope()) {
                if (jSONObject.opt(AdobeEntitlementSession.AdobeEntitlementSessionESDataEndpointsKey) != null) {
                    JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(AdobeEntitlementSession.AdobeEntitlementSessionESDataEndpointsKey);
                    JSONArray jSONArrayOptJSONArray2 = jSONArrayOptJSONArray.optJSONArray(0) != null ? jSONArrayOptJSONArray.optJSONArray(0) : jSONArrayOptJSONArray;
                    for (int i = 0; i < jSONArrayOptJSONArray2.length(); i++) {
                        JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray2.optJSONObject(i);
                        AdobeCloud adobeCloud = new AdobeCloud();
                        if (jSONObjectOptJSONObject != null && adobeCloud.updateFromDictionary(jSONObjectOptJSONObject)) {
                            if ((!adobeCloud.isPrivateCloud() ? zOptBoolean : true) && !list.contains(adobeCloud)) {
                                list.add(adobeCloud);
                            } else {
                                ArrayList arrayList = new ArrayList(list);
                                for (AdobeCloud adobeCloud2 : list) {
                                    if (!adobeCloud2.isStrictlyEqual(adobeCloud)) {
                                        arrayList.remove(adobeCloud2);
                                        arrayList.add(adobeCloud);
                                    }
                                }
                                list.clear();
                                list.addAll(arrayList);
                            }
                        }
                    }
                } else {
                    if (jSONObject.opt(AdobeEntitlementSession.AdobeEntitlementSessionESDataEndpointsKey) == null) {
                        throw new AdobeEntitlementException(AdobeEntitlementErrorCode.AdobeEntitlementErrorNoCloudsAvailable, "No clouds are available for this user.");
                    }
                    throw new AdobeEntitlementException(AdobeEntitlementErrorCode.AdobeEntitlementErrorUnexpectedResponse, "Query for clouds returned an unexpected response.");
                }
            } else {
                AdobeCloud adobeCloud3 = new AdobeCloud();
                adobeCloud3.setGUID("00000000-0000-0000-0000-000000000000");
                adobeCloud3.setName("Adobe Creative Cloud");
                adobeCloud3.setAvailable(true);
                adobeCloud3.setPrivateCloud(false);
                if (!list.contains(adobeCloud3)) {
                    list.add(adobeCloud3);
                }
            }
        }
        return true;
    }

    public static boolean isCloudValid(AdobeCloud adobeCloud) {
        Map<AdobeCloudServiceType, AdobeCloudEndpoint> endpoints = adobeCloud.getEndpoints();
        if (endpoints == null || endpoints.size() == 0) {
            return false;
        }
        AdobeCloudEndpoint adobeCloudEndpoint = endpoints.get(AdobeCloudServiceType.AdobeCloudServiceTypeStorage);
        if (adobeCloudEndpoint == null || adobeCloudEndpoint.getServiceURLs().size() == 0) {
            return false;
        }
        return adobeCloudEndpoint.getServiceURLs().size() != 0;
    }

    public static boolean areValuesEqual(List<AdobeCloud> list, List<AdobeCloud> list2) {
        int iIndexOf;
        boolean z = list.size() == list2.size();
        if (z) {
            for (AdobeCloud adobeCloud : list) {
                if (list2.contains(adobeCloud) && (iIndexOf = list2.indexOf(adobeCloud)) != -1 && list2.get(iIndexOf).isStrictlyEqual(adobeCloud)) {
                }
                return false;
            }
        }
        return z;
    }
}
