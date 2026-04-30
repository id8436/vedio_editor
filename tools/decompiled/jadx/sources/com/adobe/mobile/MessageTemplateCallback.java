package com.adobe.mobile;

import android.util.Base64;
import com.adobe.creativesdk.foundation.internal.pushnotification.model.AdobePushNotificationPayloadKeys;
import com.google.common.primitives.UnsignedBytes;
import java.io.UnsupportedEncodingException;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
final class MessageTemplateCallback extends Message {
    private static final String ADB_TEMPLATE_CALLBACK_BODY = "templatebody";
    private static final String ADB_TEMPLATE_CALLBACK_TIMEOUT = "timeout";
    private static final String ADB_TEMPLATE_CALLBACK_TYPE = "contenttype";
    private static final String ADB_TEMPLATE_CALLBACK_URL = "templateurl";
    private static final int ADB_TEMPLATE_TIMEOUT_DEFAULT = 2;
    private static final char ADB_TEMPLATE_TOKEN_END = '}';
    private static final char ADB_TEMPLATE_TOKEN_START = '{';
    private static final boolean[] tokenDataMask = {false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, true, false, true, true, true, true, true, true, true, true, true, true, false, false, false, false, false, false, false, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, false, false, false, false, true, false, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false};
    private HashMap<String, Object> _combinedVariablesCopy;
    protected String contentType;
    private final SecureRandom randomGen = new SecureRandom();
    protected String templateBody;
    protected String templateUrl;
    protected int timeout;

    MessageTemplateCallback() {
    }

    @Override // com.adobe.mobile.Message
    protected boolean initWithPayloadObject(JSONObject jSONObject) {
        byte[] bArrDecode;
        if (jSONObject == null || jSONObject.length() <= 0 || !super.initWithPayloadObject(jSONObject)) {
            return false;
        }
        try {
            JSONObject jSONObject2 = jSONObject.getJSONObject(AdobePushNotificationPayloadKeys.ADOBE_PUSH_NOTIFICATION_PAYLOAD);
            if (jSONObject2.length() <= 0) {
                StaticMethods.logDebugFormat("Data Callback - Unable to create data callback \"%s\", \"payload\" is empty", this.messageId);
                return false;
            }
            try {
                this.templateUrl = jSONObject2.getString(ADB_TEMPLATE_CALLBACK_URL);
                if (this.templateUrl.length() <= 0) {
                    StaticMethods.logDebugFormat("Data Callback - Unable to create data callback \"%s\", \"templateurl\" is empty", this.messageId);
                    return false;
                }
                try {
                    this.timeout = jSONObject2.getInt(ADB_TEMPLATE_CALLBACK_TIMEOUT);
                } catch (JSONException e2) {
                    StaticMethods.logDebugFormat("Data Callback - Tried to read \"timeout\" for data callback, but found none.  Using default value of two (2) seconds", new Object[0]);
                    this.timeout = 2;
                }
                try {
                    String string = jSONObject2.getString(ADB_TEMPLATE_CALLBACK_BODY);
                    if (string != null && string.length() > 0 && (bArrDecode = Base64.decode(string, 0)) != null) {
                        String str = new String(bArrDecode, "UTF-8");
                        if (str.length() > 0) {
                            this.templateBody = str;
                        }
                    }
                } catch (UnsupportedEncodingException e3) {
                    StaticMethods.logDebugFormat("Data Callback - Failed to decode \"templatebody\" for data callback (%s).  This is not a required field", e3.getLocalizedMessage());
                } catch (IllegalArgumentException e4) {
                    StaticMethods.logDebugFormat("Data Callback - Failed to decode \"templatebody\" for data callback (%s).  This is not a required field", e4.getLocalizedMessage());
                } catch (JSONException e5) {
                    StaticMethods.logDebugFormat("Data Callback - Tried to read \"templatebody\" for data callback, but found none.  This is not a required field", new Object[0]);
                }
                if (this.templateBody != null && this.templateBody.length() > 0) {
                    try {
                        this.contentType = jSONObject2.getString(ADB_TEMPLATE_CALLBACK_TYPE);
                    } catch (JSONException e6) {
                        StaticMethods.logDebugFormat("Data Callback - Tried to read \"contenttype\" for data callback, but found none.  This is not a required field", new Object[0]);
                    }
                }
                return true;
            } catch (JSONException e7) {
                StaticMethods.logDebugFormat("Data Callback - Unable to create data callback \"%s\", \"templateurl\" is required", this.messageId);
                return false;
            }
        } catch (JSONException e8) {
            StaticMethods.logDebugFormat("Data Callback - Unable to create create data callback \"%s\", \"payload\" is required", this.messageId);
            return false;
        }
    }

    @Override // com.adobe.mobile.Message
    protected boolean shouldShowForVariables(Map<String, Object> map, Map<String, Object> map2, Map<String, Object> map3) {
        HashMap map4 = map2 != null ? new HashMap(map2) : new HashMap();
        if (map != null) {
            map4.putAll(map);
        }
        if (map3 != null) {
            map4.putAll(map3);
        }
        map4.putAll(getMapForTemplatedTokens());
        this._combinedVariablesCopy = new HashMap<>(map4);
        return super.shouldShowForVariables(map, map2, map3);
    }

    @Override // com.adobe.mobile.Message
    protected void show() {
        String strExpandTokens = StaticMethods.expandTokens(this.templateUrl, buildExpansionsForTokens(findTokensForExpansion(this.templateUrl)));
        String strExpandTokens2 = null;
        if (this.templateBody != null && this.templateBody.length() > 0) {
            strExpandTokens2 = StaticMethods.expandTokens(this.templateBody, buildExpansionsForTokens(findTokensForExpansion(this.templateBody)));
        }
        StaticMethods.logDebugFormat("Data Callback - Request Queued (url:%s body:%s contentType:%s)", strExpandTokens, strExpandTokens2, this.contentType);
        ThirdPartyQueue.sharedInstance().queue(strExpandTokens, strExpandTokens2, this.contentType, StaticMethods.getTimeSince1970(), this.timeout);
    }

    private HashMap<String, Object> getMapForTemplatedTokens() {
        HashMap<String, Object> map = new HashMap<>(5);
        map.put("%sdkver%", "4.8.2-AN");
        map.put("%cachebust%", String.valueOf(this.randomGen.nextInt(100000000)));
        map.put("%timestampu%", String.valueOf(StaticMethods.getTimeSince1970()));
        map.put("%timestampz%", StaticMethods.getIso8601Date());
        map.put("%adid%", StaticMethods.getAdvertisingIdentifier());
        map.put("%pushid%", StaticMethods.getPushIdentifier());
        return map;
    }

    private HashMap<String, String> buildExpansionsForTokens(ArrayList<String> arrayList) {
        HashMap<String, String> map = new HashMap<>(arrayList.size());
        for (String str : arrayList) {
            Object obj = this._combinedVariablesCopy.get(str.substring(1, str.length() - 1).toLowerCase());
            map.put(str, StaticMethods.URLEncode(obj == null ? "" : obj.toString()));
        }
        return map;
    }

    private ArrayList<String> findTokensForExpansion(String str) {
        if (str == null || str.length() <= 0) {
            return null;
        }
        ArrayList<String> arrayList = new ArrayList<>(32);
        int length = str.length();
        int i = 0;
        while (i < length) {
            if (str.charAt(i) == '{') {
                int i2 = i + 1;
                while (i2 < length && str.charAt(i2) != '}') {
                    i2++;
                }
                if (i2 == length) {
                    break;
                }
                String strSubstring = str.substring(i, i2 + 1);
                if (tokenIsValid(strSubstring.substring(1, strSubstring.length() - 1))) {
                    arrayList.add(strSubstring);
                    i = i2;
                }
            }
            i++;
        }
        return arrayList;
    }

    private boolean tokenIsValid(String str) {
        try {
            for (byte b2 : str.getBytes("UTF-8")) {
                if (!tokenDataMask[b2 & UnsignedBytes.MAX_VALUE]) {
                    return false;
                }
            }
            return true;
        } catch (UnsupportedEncodingException e2) {
            StaticMethods.logErrorFormat("Data Callback - Unable to validate token (%s)", e2.getLocalizedMessage());
            return false;
        }
    }
}
