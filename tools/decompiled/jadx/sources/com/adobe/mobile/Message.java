package com.adobe.mobile;

import android.content.SharedPreferences;
import com.adobe.mobile.Messages;
import com.adobe.mobile.StaticMethods;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
abstract class Message {
    protected static final String JSON_CONFIG_ASSETS = "assets";
    private static final String JSON_CONFIG_AUDIENCES = "audiences";
    private static final String JSON_CONFIG_END_DATE = "endDate";
    private static final String JSON_CONFIG_MESSAGE_ID = "messageId";
    private static final String JSON_CONFIG_SHOW_OFFLINE = "showOffline";
    private static final String JSON_CONFIG_SHOW_RULE = "showRule";
    private static final String JSON_CONFIG_START_DATE = "startDate";
    private static final String JSON_CONFIG_TEMPLATE = "template";
    private static final String JSON_CONFIG_TRIGGERS = "triggers";
    private static final boolean JSON_DEFAULT_SHOW_OFFLINE = false;
    private static final String MESSAGE_ENUM_STRING_UNKNOWN = "unknown";
    protected static final String MESSAGE_IMAGE_CACHE_DIR = "messageImages";
    protected static final String MESSAGE_JSON_PAYLOAD = "payload";
    private static final String MESSAGE_SHOW_RULE_STRING_ALWAYS = "always";
    private static final String MESSAGE_SHOW_RULE_STRING_ONCE = "once";
    private static final String MESSAGE_SHOW_RULE_STRING_UNTIL_CLICK = "untilClick";
    private static final String MESSAGE_TEMPLATE_STRING_ALERT = "alert";
    private static final String MESSAGE_TEMPLATE_STRING_CALLBACK = "callback";
    private static final String MESSAGE_TEMPLATE_STRING_FULLSCREEN = "fullscreen";
    private static final String MESSAGE_TEMPLATE_STRING_LOCAL_NOTIFICATION = "local";
    private static final String SHARED_PREFERENCES_BLACK_LIST = "messagesBlackList";
    private static HashMap<String, Integer> _blacklist;
    protected ArrayList<ArrayList<String>> assets;
    protected ArrayList<MessageMatcher> audiences;
    protected Date endDate;
    protected boolean isVisible;
    protected String messageId;
    protected int orientationWhenShown;
    protected boolean showOffline;
    protected Messages.MessageShowRule showRule;
    protected Date startDate;
    protected ArrayList<MessageMatcher> triggers;
    private static final Long JSON_DEFAULT_START_DATE = 0L;
    private static final Map<String, Class> _messageTypeDictionary = new HashMap<String, Class>() { // from class: com.adobe.mobile.Message.1
        {
            put("local", MessageLocalNotification.class);
            put("alert", MessageAlert.class);
            put(Message.MESSAGE_TEMPLATE_STRING_FULLSCREEN, MessageFullScreen.class);
            put("callback", MessageTemplateCallback.class);
        }
    };
    private static final Object _blacklistMutex = new Object();
    private static final Map<String, Messages.MessageShowRule> _showRuleEnumDictionary = new HashMap<String, Messages.MessageShowRule>() { // from class: com.adobe.mobile.Message.2
        {
            put("unknown", Messages.MessageShowRule.MESSAGE_SHOW_RULE_UNKNOWN);
            put("always", Messages.MessageShowRule.MESSAGE_SHOW_RULE_ALWAYS);
            put(Message.MESSAGE_SHOW_RULE_STRING_ONCE, Messages.MessageShowRule.MESSAGE_SHOW_RULE_ONCE);
            put(Message.MESSAGE_SHOW_RULE_STRING_UNTIL_CLICK, Messages.MessageShowRule.MESSAGE_SHOW_RULE_UNTIL_CLICK);
        }
    };

    Message() {
    }

    protected static Message messageWithJsonObject(JSONObject jSONObject) {
        String string;
        String str = "";
        try {
            try {
                string = jSONObject.getString("template");
            } catch (NullPointerException e2) {
            }
            try {
                Message message = (Message) _messageTypeDictionary.get(string).newInstance();
                if (!message.initWithPayloadObject(jSONObject)) {
                    message = null;
                }
                return message;
            } catch (NullPointerException e3) {
                str = string;
                StaticMethods.logWarningFormat("Messages - invalid template specified for message (%s)", str);
                return null;
            }
        } catch (IllegalAccessException e4) {
            StaticMethods.logWarningFormat("Messages - unable to create instance of message (%s)", e4.getMessage());
            return null;
        } catch (InstantiationException e5) {
            StaticMethods.logWarningFormat("Messages - unable to create instance of message (%s)", e5.getMessage());
            return null;
        } catch (JSONException e6) {
            StaticMethods.logWarningFormat("Messages - template is required for in-app message", new Object[0]);
            return null;
        }
    }

    protected boolean initWithPayloadObject(JSONObject jSONObject) {
        if (jSONObject == null || jSONObject.length() == 0) {
            return false;
        }
        try {
            this.messageId = jSONObject.getString(JSON_CONFIG_MESSAGE_ID);
            if (this.messageId.length() <= 0) {
                StaticMethods.logWarningFormat("Messages - Unable to create message, messageId is empty", new Object[0]);
                return false;
            }
            try {
                String string = jSONObject.getString(JSON_CONFIG_SHOW_RULE);
                this.showRule = messageShowRuleFromString(string);
                if (this.showRule == null || this.showRule == Messages.MessageShowRule.MESSAGE_SHOW_RULE_UNKNOWN) {
                    StaticMethods.logWarningFormat("Messages - Unable to create message \"%s\", showRule not valid (%s)", this.messageId, string);
                    return false;
                }
                try {
                    this.startDate = new Date(jSONObject.getLong(JSON_CONFIG_START_DATE) * 1000);
                } catch (JSONException e2) {
                    StaticMethods.logDebugFormat("Messages - Tried to read startDate from message \"%s\" but none found. Using default value", this.messageId);
                    this.startDate = new Date(JSON_DEFAULT_START_DATE.longValue() * 1000);
                }
                try {
                    this.endDate = new Date(jSONObject.getLong(JSON_CONFIG_END_DATE) * 1000);
                } catch (JSONException e3) {
                    StaticMethods.logDebugFormat("Messages - Tried to read endDate from message \"%s\" but none found. Using default value", this.messageId);
                }
                try {
                    this.showOffline = jSONObject.getBoolean(JSON_CONFIG_SHOW_OFFLINE);
                } catch (JSONException e4) {
                    StaticMethods.logDebugFormat("Messages - Tried to read showOffline from message \"%s\" but none found. Using default value", this.messageId);
                    this.showOffline = false;
                }
                this.audiences = new ArrayList<>();
                try {
                    JSONArray jSONArray = jSONObject.getJSONArray(JSON_CONFIG_AUDIENCES);
                    int length = jSONArray.length();
                    for (int i = 0; i < length; i++) {
                        this.audiences.add(MessageMatcher.messageMatcherWithJsonObject(jSONArray.getJSONObject(i)));
                    }
                } catch (JSONException e5) {
                    StaticMethods.logDebugFormat("Messages - failed to read audience for message \"%s\", error: %s", this.messageId, e5.getMessage());
                }
                this.triggers = new ArrayList<>();
                try {
                    JSONArray jSONArray2 = jSONObject.getJSONArray(JSON_CONFIG_TRIGGERS);
                    int length2 = jSONArray2.length();
                    for (int i2 = 0; i2 < length2; i2++) {
                        this.triggers.add(MessageMatcher.messageMatcherWithJsonObject(jSONArray2.getJSONObject(i2)));
                    }
                } catch (JSONException e6) {
                    StaticMethods.logDebugFormat("Messages - failed to read trigger for message \"%s\", error: %s", this.messageId, e6.getMessage());
                }
                if (this.triggers.size() <= 0) {
                    StaticMethods.logWarningFormat("Messages - Unable to load message \"%s\" - at least one valid trigger is required for a message", this.messageId);
                    return false;
                }
                this.isVisible = false;
                return true;
            } catch (JSONException e7) {
                StaticMethods.logWarningFormat("Messages - Unable to create message \"%s\", showRule is required", this.messageId);
                return false;
            }
        } catch (JSONException e8) {
            StaticMethods.logWarningFormat("Messages - Unable to create message, messageId is required", new Object[0]);
            return false;
        }
    }

    protected void blacklist() {
        synchronized (_blacklistMutex) {
            if (_blacklist == null) {
                _blacklist = loadBlacklist();
            }
            _blacklist.put(this.messageId, Integer.valueOf(this.showRule.getValue()));
            StaticMethods.logDebugFormat("Messages - adding message \"%s\" to blacklist", this.messageId);
            try {
                SharedPreferences.Editor sharedPreferencesEditor = StaticMethods.getSharedPreferencesEditor();
                sharedPreferencesEditor.putString(SHARED_PREFERENCES_BLACK_LIST, stringFromMap(_blacklist));
                sharedPreferencesEditor.commit();
            } catch (StaticMethods.NullContextException e2) {
                StaticMethods.logErrorFormat("Messages - Error persisting blacklist map (%s).", e2.getMessage());
            }
        }
    }

    protected void removeFromBlacklist() {
        if (isBlacklisted()) {
            synchronized (_blacklistMutex) {
                _blacklist.remove(this.messageId);
                StaticMethods.logDebugFormat("Messages - removing message \"%s\" from blacklist", this.messageId);
                try {
                    SharedPreferences.Editor sharedPreferencesEditor = StaticMethods.getSharedPreferencesEditor();
                    sharedPreferencesEditor.putString(SHARED_PREFERENCES_BLACK_LIST, stringFromMap(_blacklist));
                    sharedPreferencesEditor.commit();
                } catch (StaticMethods.NullContextException e2) {
                    StaticMethods.logErrorFormat("Messages - Error persisting blacklist map (%s).", e2.getMessage());
                }
            }
        }
    }

    protected boolean isBlacklisted() {
        boolean z;
        synchronized (_blacklistMutex) {
            if (_blacklist == null) {
                _blacklist = loadBlacklist();
            }
            z = _blacklist.get(this.messageId) != null;
        }
        return z;
    }

    protected HashMap<String, Integer> loadBlacklist() {
        HashMap<String, Integer> mapMapFromString;
        try {
            String string = StaticMethods.getSharedPreferences().getString(SHARED_PREFERENCES_BLACK_LIST, null);
            if (string == null) {
                mapMapFromString = new HashMap<>();
            } else {
                mapMapFromString = mapFromString(string);
            }
            return mapMapFromString;
        } catch (StaticMethods.NullContextException e2) {
            StaticMethods.logDebugFormat("Messaging - Unable to get shared preferences while loading blacklist. (%s)", e2.getMessage());
            return new HashMap<>();
        }
    }

    protected boolean shouldShowForVariables(Map<String, Object> map, Map<String, Object> map2, Map<String, Object> map3) {
        if (this.isVisible && this.orientationWhenShown != StaticMethods.getCurrentOrientation() && (this instanceof MessageAlert)) {
            return true;
        }
        if (Messages.getCurrentMessage() != null && !(this instanceof MessageLocalNotification) && !(this instanceof MessageTemplateCallback)) {
            return false;
        }
        if ((map == null || map.size() <= 0) && (map2 == null || map2.size() <= 0)) {
            return false;
        }
        if (isBlacklisted()) {
            return false;
        }
        if (!MobileConfig.getInstance().networkConnectivity() && !this.showOffline) {
            return false;
        }
        Date date = new Date(StaticMethods.getTimeSince1970() * 1000);
        if (date.before(this.startDate)) {
            return false;
        }
        if (this.endDate != null && date.after(this.endDate)) {
            return false;
        }
        Iterator<MessageMatcher> it = this.audiences.iterator();
        while (it.hasNext()) {
            if (!it.next().matchesInMaps(map3)) {
                return false;
            }
        }
        Map<String, Object> mapCleanContextDataDictionary = StaticMethods.cleanContextDataDictionary(map2);
        Iterator<MessageMatcher> it2 = this.triggers.iterator();
        while (it2.hasNext()) {
            if (!it2.next().matchesInMaps(map, mapCleanContextDataDictionary)) {
                return false;
            }
        }
        return true;
    }

    protected void show() {
        this.orientationWhenShown = StaticMethods.getCurrentOrientation();
        Messages.setCurrentMessage(this);
    }

    protected void viewed() {
        HashMap map = new HashMap();
        map.put("a.message.id", this.messageId);
        map.put("a.message.viewed", 1);
        AnalyticsTrackInternal.trackInternal("In-App Message", map, StaticMethods.getTimeSince1970());
        if (this.showRule == Messages.MessageShowRule.MESSAGE_SHOW_RULE_ONCE) {
            blacklist();
        }
        Messages.setCurrentMessage(null);
    }

    protected void clickedThrough() {
        HashMap map = new HashMap();
        map.put("a.message.id", this.messageId);
        map.put("a.message.clicked", 1);
        AnalyticsTrackInternal.trackInternal("In-App Message", map, StaticMethods.getTimeSince1970());
        if (this.showRule == Messages.MessageShowRule.MESSAGE_SHOW_RULE_ONCE || this.showRule == Messages.MessageShowRule.MESSAGE_SHOW_RULE_UNTIL_CLICK) {
            blacklist();
        }
        Messages.setCurrentMessage(null);
    }

    protected String description() {
        return "Message ID: " + this.messageId + "; Show Rule: " + this.showRule.toString() + "; Blacklisted: " + isBlacklisted();
    }

    private static Messages.MessageShowRule messageShowRuleFromString(String str) {
        return _showRuleEnumDictionary.get(str);
    }

    private HashMap<String, Integer> mapFromString(String str) {
        HashMap<String, Integer> map = new HashMap<>();
        try {
            JSONObject jSONObject = new JSONObject(str);
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                map.put(next, Integer.valueOf(jSONObject.getInt(next)));
            }
        } catch (JSONException e2) {
            StaticMethods.logErrorFormat("Messages- Unable to deserialize blacklist(%s)", e2.getMessage());
        }
        return map;
    }

    private String stringFromMap(Map<String, Integer> map) {
        return new JSONObject(map).toString();
    }
}
