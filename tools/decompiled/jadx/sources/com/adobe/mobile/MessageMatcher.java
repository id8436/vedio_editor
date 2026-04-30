package com.adobe.mobile;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
abstract class MessageMatcher {
    private static final String MESSAGE_JSON_KEY = "key";
    private static final String MESSAGE_JSON_MATCHES = "matches";
    private static final String MESSAGE_JSON_VALUES = "values";
    private static final String MESSAGE_MATCHER_STRING_CONTAINS = "co";
    private static final String MESSAGE_MATCHER_STRING_ENDS_WITH = "ew";
    private static final String MESSAGE_MATCHER_STRING_EQUALS = "eq";
    private static final String MESSAGE_MATCHER_STRING_EXISTS = "ex";
    private static final String MESSAGE_MATCHER_STRING_GREATER_THAN = "gt";
    private static final String MESSAGE_MATCHER_STRING_GREATER_THAN_OR_EQUALS = "ge";
    private static final String MESSAGE_MATCHER_STRING_LESS_THAN = "lt";
    private static final String MESSAGE_MATCHER_STRING_LESS_THAN_OR_EQUALS = "le";
    private static final String MESSAGE_MATCHER_STRING_NOT_CONTAINS = "nc";
    private static final String MESSAGE_MATCHER_STRING_NOT_EQUALS = "ne";
    private static final String MESSAGE_MATCHER_STRING_NOT_EXISTS = "nx";
    private static final String MESSAGE_MATCHER_STRING_STARTS_WITH = "sw";
    private static final Map<String, Class> _messageMatcherDictionary = new HashMap<String, Class>() { // from class: com.adobe.mobile.MessageMatcher.1
        {
            put(MessageMatcher.MESSAGE_MATCHER_STRING_EQUALS, MessageMatcherEquals.class);
            put(MessageMatcher.MESSAGE_MATCHER_STRING_NOT_EQUALS, MessageMatcherNotEquals.class);
            put(MessageMatcher.MESSAGE_MATCHER_STRING_GREATER_THAN, MessageMatcherGreaterThan.class);
            put(MessageMatcher.MESSAGE_MATCHER_STRING_GREATER_THAN_OR_EQUALS, MessageMatcherGreaterThanOrEqual.class);
            put(MessageMatcher.MESSAGE_MATCHER_STRING_LESS_THAN, MessageMatcherLessThan.class);
            put(MessageMatcher.MESSAGE_MATCHER_STRING_LESS_THAN_OR_EQUALS, MessageMatcherLessThanOrEqual.class);
            put(MessageMatcher.MESSAGE_MATCHER_STRING_CONTAINS, MessageMatcherContains.class);
            put(MessageMatcher.MESSAGE_MATCHER_STRING_NOT_CONTAINS, MessageMatcherNotContains.class);
            put(MessageMatcher.MESSAGE_MATCHER_STRING_STARTS_WITH, MessageMatcherStartsWith.class);
            put(MessageMatcher.MESSAGE_MATCHER_STRING_ENDS_WITH, MessageMatcherEndsWith.class);
            put(MessageMatcher.MESSAGE_MATCHER_STRING_EXISTS, MessageMatcherExists.class);
            put(MessageMatcher.MESSAGE_MATCHER_STRING_NOT_EXISTS, MessageMatcherNotExists.class);
        }
    };
    protected String key;
    protected ArrayList<Object> values;

    MessageMatcher() {
    }

    protected static MessageMatcher messageMatcherWithJsonObject(JSONObject jSONObject) {
        String str;
        MessageMatcherUnknown messageMatcherUnknownNewInstance;
        try {
            String string = jSONObject.getString(MESSAGE_JSON_MATCHES);
            if (string != null && string.length() <= 0) {
                StaticMethods.logWarningFormat("Messages - message matcher type is empty", new Object[0]);
            }
            str = string;
        } catch (JSONException e2) {
            StaticMethods.logWarningFormat("Messages - message matcher type is required", new Object[0]);
            str = "UNKNOWN";
        }
        Class<MessageMatcherUnknown> cls = _messageMatcherDictionary.get(str);
        if (cls == null) {
            cls = MessageMatcherUnknown.class;
            StaticMethods.logWarningFormat("Messages - message matcher type \"%s\" is invalid", str);
        }
        try {
            messageMatcherUnknownNewInstance = cls.newInstance();
        } catch (IllegalAccessException e3) {
            StaticMethods.logErrorFormat("Messages - Error creating matcher (%s)", e3.getMessage());
            messageMatcherUnknownNewInstance = null;
        } catch (InstantiationException e4) {
            StaticMethods.logErrorFormat("Messages - Error creating matcher (%s)", e4.getMessage());
            messageMatcherUnknownNewInstance = null;
        }
        if (messageMatcherUnknownNewInstance != null) {
            try {
                messageMatcherUnknownNewInstance.key = jSONObject.getString(MESSAGE_JSON_KEY).toLowerCase();
                if (messageMatcherUnknownNewInstance.key != null && messageMatcherUnknownNewInstance.key.length() <= 0) {
                    StaticMethods.logWarningFormat("Messages - error creating matcher, key is empty", new Object[0]);
                }
            } catch (NullPointerException e5) {
                StaticMethods.logWarningFormat("Messages - error creating matcher, key is required", new Object[0]);
            } catch (JSONException e6) {
                StaticMethods.logWarningFormat("Messages - error creating matcher, key is required", new Object[0]);
            }
            try {
                messageMatcherUnknownNewInstance.values = new ArrayList<>();
                if (!(messageMatcherUnknownNewInstance instanceof MessageMatcherExists)) {
                    JSONArray jSONArray = jSONObject.getJSONArray(MESSAGE_JSON_VALUES);
                    int length = jSONArray.length();
                    for (int i = 0; i < length; i++) {
                        messageMatcherUnknownNewInstance.values.add(jSONArray.get(i));
                    }
                    if (messageMatcherUnknownNewInstance.values.size() == 0) {
                        StaticMethods.logWarningFormat("Messages - error creating matcher, values is empty", new Object[0]);
                    }
                }
            } catch (JSONException e7) {
                StaticMethods.logWarningFormat("Messages - error creating matcher, values is required", new Object[0]);
            }
        }
        return messageMatcherUnknownNewInstance;
    }

    protected boolean matchesInMaps(Map<String, Object>... mapArr) {
        if (mapArr == null || mapArr.length <= 0) {
            return false;
        }
        Object obj = null;
        int length = mapArr.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                break;
            }
            Map<String, Object> map = mapArr[i];
            if (map == null || !map.containsKey(this.key)) {
                i++;
            } else {
                obj = map.get(this.key);
                break;
            }
        }
        return obj != null && matches(obj);
    }

    protected boolean matches(Object obj) {
        return false;
    }

    protected Double tryParseDouble(Object obj) {
        try {
            return Double.valueOf(obj.toString());
        } catch (Exception e2) {
            return null;
        }
    }
}
