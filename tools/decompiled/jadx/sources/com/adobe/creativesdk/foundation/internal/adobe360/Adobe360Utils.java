package com.adobe.creativesdk.foundation.internal.adobe360;

import android.content.Context;
import com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360Asset;
import com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360Constants;
import com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360Message;
import com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360WorkflowActionType;
import com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360WorkflowRequestMessageCreator;
import com.adobe.creativesdk.foundation.adobeinternal.analytics.AdobeAnalyticsEventParams;
import com.adobe.creativesdk.foundation.internal.common.AdobeCommonApplicationContextHolder;
import com.behance.sdk.util.BehanceSDKPublishConstants;
import com.google.gdata.data.ILink;
import com.google.gson.JsonParser;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class Adobe360Utils {
    public static ArrayList<String> getAllKeys(Map<String, Object> map) {
        ArrayList<String> arrayList = new ArrayList<>();
        Iterator<Map.Entry<String, Object>> it = map.entrySet().iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().getKey());
        }
        return arrayList;
    }

    public static ArrayList<Adobe360Asset> getAllValues(Map<String, Object> map) {
        ArrayList<Adobe360Asset> arrayList = new ArrayList<>();
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            if (entry.getValue() instanceof List) {
                arrayList.addAll((ArrayList) entry.getValue());
            } else {
                arrayList.add((Adobe360Asset) entry.getValue());
            }
        }
        return arrayList;
    }

    public static boolean jsonObjsAreEqual(JSONObject jSONObject, JSONObject jSONObject2) {
        if (jSONObject == jSONObject2 || jSONObject == null || jSONObject2 == null) {
            return true;
        }
        JsonParser jsonParser = new JsonParser();
        return jsonParser.parse(jSONObject.toString()).equals(jsonParser.parse(jSONObject2.toString()));
    }

    public static String getApplicationName() {
        Context applicationContext = AdobeCommonApplicationContextHolder.getSharedApplicationContextHolder().getApplicationContext();
        if (applicationContext == null) {
            return null;
        }
        return applicationContext.getString(applicationContext.getApplicationInfo().labelRes);
    }

    public static String getAppPackageName() {
        Context applicationContext = AdobeCommonApplicationContextHolder.getSharedApplicationContextHolder().getApplicationContext();
        if (applicationContext == null) {
            return null;
        }
        return applicationContext.getApplicationInfo().packageName;
    }

    public static String getCallingAppPackageName(Adobe360Message adobe360Message) {
        return (String) adobe360Message.getTransportReservedData().opt(Adobe360WorkflowRequestMessageCreator.ADOBE_360_WORKFLOW_CALLING_APP);
    }

    public static int getResultCode(Adobe360Message adobe360Message) {
        if (adobe360Message.getResponseStatusCode().equals(Adobe360Constants.kAdobe360SatusOk)) {
            return -1;
        }
        if (adobe360Message.getResponseStatusCode().equals("cancelled")) {
        }
        return 0;
    }

    public static Adobe360WorkflowActionType getActionType(Adobe360Message adobe360Message) {
        return Adobe360WorkflowActionType.getActionType(adobe360Message.getActionType());
    }

    public static String getETSStartActionType(String str) {
        if (str.equalsIgnoreCase(ILink.Rel.ENTRY_EDIT)) {
            return AdobeAnalyticsEventParams.Type.AdobeEventTypeAppEdit.getValue();
        }
        if (str.equalsIgnoreCase(BehanceSDKPublishConstants.KEY_EMBED)) {
            return AdobeAnalyticsEventParams.Type.AdobeEventTypeAppEmbed.getValue();
        }
        if (str.equalsIgnoreCase("capture")) {
            return AdobeAnalyticsEventParams.Type.AdobeEventTypeAppCapture.getValue();
        }
        if (str.equalsIgnoreCase("embedN")) {
            return AdobeAnalyticsEventParams.Type.AdobeEventTypeAppEmbedN.getValue();
        }
        if (str.equalsIgnoreCase("captureN")) {
            return AdobeAnalyticsEventParams.Type.AdobeEventTypeAppCaptureN.getValue();
        }
        return null;
    }

    public static String getETSCompleteActionType(Adobe360Message adobe360Message) {
        if (adobe360Message.getResponseStatusCode().equals(Adobe360Constants.kAdobe360SatusOk)) {
            return AdobeAnalyticsEventParams.Type.AdobeEventTypeAppSaveAndReturn.getValue();
        }
        if (adobe360Message.getResponseStatusCode().equals("cancelled")) {
            return AdobeAnalyticsEventParams.Type.AdobeEventTypeAppCancelAndReturn.getValue();
        }
        return AdobeAnalyticsEventParams.Type.AdobeEventTypeAppCancelAndReturn.getValue();
    }
}
