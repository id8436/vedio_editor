package com.adobe.creativesdk.foundation.internal.utils.logging;

/* JADX INFO: loaded from: classes2.dex */
public enum Level {
    INFO(0),
    DEBUG(1),
    WARN(2),
    ERROR(3);

    private int _val;

    Level(int i) {
        this._val = i;
    }

    public int getValue() {
        return this._val;
    }
}
