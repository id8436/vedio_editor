package com.google.common.eventbus;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes3.dex */
final class SynchronizedEventSubscriber extends EventSubscriber {
    public SynchronizedEventSubscriber(Object obj, Method method) {
        super(obj, method);
    }

    @Override // com.google.common.eventbus.EventSubscriber
    public void handleEvent(Object obj) throws InvocationTargetException {
        synchronized (this) {
            super.handleEvent(obj);
        }
    }
}
