package com.adobe.creativesdk.foundation.internal.utils;

/* JADX INFO: loaded from: classes2.dex */
public class UIEventsUtil {
    private final Type _eventType;
    public int isVisible;

    public enum Type {
        kFabUIEvent(1),
        kCollabFragUIEvent(2);

        private int _val;

        Type(int i) {
            this._val = 0;
            this._val = i;
        }
    }

    public UIEventsUtil(Type type) {
        this._eventType = type;
    }

    public Type getEventType() {
        return this._eventType;
    }
}
