package com.adobe.mobile;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class Messages {
    protected static final String MESSAGE_ACTION_NAME = "In-App Message";
    protected static final String MESSAGE_CLICKED = "a.message.clicked";
    protected static final String MESSAGE_ID = "a.message.id";
    protected static final String MESSAGE_LOCAL_ADB_CODE = "adbMessageCode";
    protected static final String MESSAGE_LOCAL_PAYLOAD = "alarm_message";
    protected static final String MESSAGE_LOCAL_REQUEST_CODE = "requestCode";
    protected static final String MESSAGE_TOKEN_LIFETIME_VALUE = "{lifetimeValue}";
    protected static final String MESSAGE_TOKEN_MESSAGE_ID = "{messageId}";
    protected static final String MESSAGE_TOKEN_TRACKING_ID = "{trackingId}";
    protected static final String MESSAGE_TOKEN_USER_ID = "{userId}";
    protected static final String MESSAGE_VIEWED = "a.message.viewed";
    protected static final Integer MESSAGE_LOCAL_IDENTIFIER = 750183;
    private static MessageFullScreen _messageFullScreen = null;
    private static final Object _messageFullScreenMutex = new Object();
    private static int _smallIconResourceId = -1;
    private static int _largeIconResourceId = -1;
    private static Message _currentMessage = null;
    private static final Object _currentMessageMutex = new Object();

    Messages() {
    }

    /* JADX INFO: loaded from: classes2.dex */
    public enum MessageShowRule {
        MESSAGE_SHOW_RULE_UNKNOWN(0),
        MESSAGE_SHOW_RULE_ALWAYS(1),
        MESSAGE_SHOW_RULE_ONCE(2),
        MESSAGE_SHOW_RULE_UNTIL_CLICK(3);

        private final int value;

        MessageShowRule(int i) {
            this.value = i;
        }

        protected int getValue() {
            return this.value;
        }
    }

    protected static HashMap<String, Object> lowercaseKeysForMap(Map<String, Object> map) {
        if (map == null || map.size() <= 0) {
            return null;
        }
        HashMap<String, Object> map2 = new HashMap<>(map.size());
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            map2.put(entry.getKey().toLowerCase(), entry.getValue());
        }
        return map2;
    }

    protected static void block3rdPartyCallbacksQueueForReferrer() {
        StaticMethods.getThirdPartyCallbacksExecutor().execute(new Runnable() { // from class: com.adobe.mobile.Messages.1
            @Override // java.lang.Runnable
            public void run() {
                while (!ReferrerHandler.getReferrerProcessed()) {
                    try {
                        Thread.sleep(100L);
                    } catch (Exception e2) {
                        StaticMethods.logWarningFormat("Data Callback - Data Callback Queue Is Interrupted(%s)", e2.getMessage());
                    }
                }
            }
        });
    }

    protected static void checkFor3rdPartyCallbacks(final Map<String, Object> map, final Map<String, Object> map2) {
        StaticMethods.getThirdPartyCallbacksExecutor().execute(new Runnable() { // from class: com.adobe.mobile.Messages.2
            @Override // java.lang.Runnable
            public void run() {
                ArrayList<Message> callbackTemplates = MobileConfig.getInstance().getCallbackTemplates();
                if (callbackTemplates != null && callbackTemplates.size() > 0) {
                    HashMap map3 = new HashMap(Lifecycle.getContextDataLowercase());
                    HashMap<String, Object> mapLowercaseKeysForMap = Messages.lowercaseKeysForMap(map2);
                    HashMap<String, Object> mapLowercaseKeysForMap2 = Messages.lowercaseKeysForMap(map);
                    for (Message message : callbackTemplates) {
                        if (message.shouldShowForVariables(mapLowercaseKeysForMap2, mapLowercaseKeysForMap, map3)) {
                            message.show();
                        }
                    }
                }
            }
        });
    }

    protected static void checkForInAppMessage(final Map<String, Object> map, final Map<String, Object> map2, final Map<String, Object> map3) {
        StaticMethods.getMessagesExecutor().execute(new Runnable() { // from class: com.adobe.mobile.Messages.3
            @Override // java.lang.Runnable
            public void run() {
                ArrayList<Message> inAppMessages = null;
                if (!StaticMethods.isWearableApp()) {
                    inAppMessages = MobileConfig.getInstance().getInAppMessages();
                }
                if (inAppMessages != null && inAppMessages.size() > 0) {
                    if (map == null || !map.containsKey("pev2") || !map.get("pev2").toString().equals("ADBINTERNAL:In-App Message")) {
                        HashMap<String, Object> mapLowercaseKeysForMap = Messages.lowercaseKeysForMap(map2);
                        HashMap<String, Object> mapLowercaseKeysForMap2 = Messages.lowercaseKeysForMap(map);
                        for (Message message : inAppMessages) {
                            if (message.shouldShowForVariables(mapLowercaseKeysForMap2, mapLowercaseKeysForMap, map3)) {
                                message.show();
                                return;
                            }
                        }
                    }
                }
            }
        });
    }

    protected static void setCurrentMessageFullscreen(MessageFullScreen messageFullScreen) {
        synchronized (_messageFullScreenMutex) {
            _messageFullScreen = messageFullScreen;
        }
    }

    protected static MessageFullScreen getCurrentFullscreenMessage() {
        MessageFullScreen messageFullScreen;
        synchronized (_messageFullScreenMutex) {
            messageFullScreen = _messageFullScreen;
        }
        return messageFullScreen;
    }

    protected static void resetAllInAppMessages() {
        StaticMethods.getMessagesExecutor().execute(new Runnable() { // from class: com.adobe.mobile.Messages.4
            @Override // java.lang.Runnable
            public void run() {
                ArrayList<Message> inAppMessages = MobileConfig.getInstance().getInAppMessages();
                if (inAppMessages != null && inAppMessages.size() > 0) {
                    Iterator<Message> it = inAppMessages.iterator();
                    while (it.hasNext()) {
                        it.next().isVisible = false;
                    }
                }
            }
        });
    }

    protected static void setSmallIconResourceId(int i) {
        _smallIconResourceId = i;
    }

    protected static int getSmallIconResourceId() {
        return _smallIconResourceId;
    }

    protected static void setLargeIconResourceId(int i) {
        _largeIconResourceId = i;
    }

    protected static int getLargeIconResourceId() {
        return _largeIconResourceId;
    }

    protected static Message getCurrentMessage() {
        Message message;
        synchronized (_currentMessageMutex) {
            message = _currentMessage;
        }
        return message;
    }

    protected static void setCurrentMessage(Message message) {
        synchronized (_currentMessageMutex) {
            _currentMessage = message;
        }
    }
}
