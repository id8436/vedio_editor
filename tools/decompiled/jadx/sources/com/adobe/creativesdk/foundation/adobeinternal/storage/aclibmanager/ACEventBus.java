package com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager;

import b.a.a.c;

/* JADX INFO: loaded from: classes.dex */
public class ACEventBus {
    private static ACEventBus defaultInstance;
    private c _eventBus;

    public static ACEventBus getDefault() {
        if (defaultInstance == null) {
            synchronized (ACEventBus.class) {
                if (defaultInstance == null) {
                    defaultInstance = new ACEventBus(c.a());
                }
            }
        }
        return defaultInstance;
    }

    private ACEventBus(c cVar) {
        this._eventBus = cVar;
    }

    public ACEventBus() {
        this(new c());
    }

    public void register(Object obj) {
        this._eventBus.a(obj);
    }

    public void register(Object obj, int i) {
        this._eventBus.a(obj, i);
    }

    public void unregister(Object obj) {
        this._eventBus.b(obj);
    }

    public void post(Object obj) {
        this._eventBus.c(obj);
    }

    public void cancelEventDelivery(Object obj) {
        this._eventBus.d(obj);
    }
}
