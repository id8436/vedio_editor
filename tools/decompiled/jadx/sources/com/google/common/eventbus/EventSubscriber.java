package com.google.common.eventbus;

import com.google.common.base.Preconditions;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes3.dex */
class EventSubscriber {
    private final Method method;
    private final Object target;

    EventSubscriber(Object obj, Method method) {
        Preconditions.checkNotNull(obj, "EventSubscriber target cannot be null.");
        Preconditions.checkNotNull(method, "EventSubscriber method cannot be null.");
        this.target = obj;
        this.method = method;
        method.setAccessible(true);
    }

    public void handleEvent(Object obj) throws InvocationTargetException {
        Preconditions.checkNotNull(obj);
        try {
            this.method.invoke(this.target, obj);
        } catch (IllegalAccessException e2) {
            throw new Error("Method became inaccessible: " + obj, e2);
        } catch (IllegalArgumentException e3) {
            throw new Error("Method rejected target/argument: " + obj, e3);
        } catch (InvocationTargetException e4) {
            if (e4.getCause() instanceof Error) {
                throw ((Error) e4.getCause());
            }
            throw e4;
        }
    }

    public String toString() {
        return "[wrapper " + this.method + "]";
    }

    public int hashCode() {
        return ((this.method.hashCode() + 31) * 31) + System.identityHashCode(this.target);
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof EventSubscriber)) {
            return false;
        }
        EventSubscriber eventSubscriber = (EventSubscriber) obj;
        return this.target == eventSubscriber.target && this.method.equals(eventSubscriber.method);
    }

    public Object getSubscriber() {
        return this.target;
    }

    public Method getMethod() {
        return this.method;
    }
}
