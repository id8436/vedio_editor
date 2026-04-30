package com.adobe.creativesdk.foundation.internal.analytics;

import android.content.Context;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class AdobeAnalyticsSession {
    private static volatile AdobeAnalyticsSession sharedSession = null;
    private Map<Context, IAdobeAnalyticsSessionCallback> registeredSessionDelegates = new HashMap();

    public static AdobeAnalyticsSession getSharedInstance() {
        if (sharedSession == null) {
            synchronized (AdobeAnalyticsSession.class) {
                if (sharedSession == null) {
                    sharedSession = new AdobeAnalyticsSession();
                }
            }
        }
        return sharedSession;
    }

    void init() {
    }

    public Boolean hasDelegate() {
        return this.registeredSessionDelegates.size() != 0;
    }

    public void registerDelegate(IAdobeAnalyticsSessionCallback iAdobeAnalyticsSessionCallback, Context context) {
        this.registeredSessionDelegates.put(context, iAdobeAnalyticsSessionCallback);
    }

    public void unregisterDelegate(Context context) {
        this.registeredSessionDelegates.remove(context);
    }

    void trackState(String str, Map<String, Object> map) {
        if (hasDelegate().booleanValue()) {
            Iterator<Context> it = this.registeredSessionDelegates.keySet().iterator();
            while (it.hasNext()) {
                this.registeredSessionDelegates.get(it.next()).trackState(str, map);
            }
        }
    }

    void trackAction(String str, Map<String, Object> map) {
        if (hasDelegate().booleanValue()) {
            Iterator<Context> it = this.registeredSessionDelegates.keySet().iterator();
            while (it.hasNext()) {
                this.registeredSessionDelegates.get(it.next()).trackAction(str, map);
            }
        }
    }

    void trackTimedActionStart(String str, Map<String, Object> map) {
        if (hasDelegate().booleanValue()) {
            Iterator<Context> it = this.registeredSessionDelegates.keySet().iterator();
            while (it.hasNext()) {
                this.registeredSessionDelegates.get(it.next()).trackTimedActionStart(str, map);
            }
        }
    }

    void trackTimedActionUpdate(String str, Map<String, Object> map) {
        if (hasDelegate().booleanValue()) {
            Iterator<Context> it = this.registeredSessionDelegates.keySet().iterator();
            while (it.hasNext()) {
                this.registeredSessionDelegates.get(it.next()).trackTimedActionUpdate(str, map);
            }
        }
    }

    void trackTimedActionEnd(String str, Map<String, Object> map) {
        if (hasDelegate().booleanValue()) {
            Iterator<Context> it = this.registeredSessionDelegates.keySet().iterator();
            while (it.hasNext()) {
                this.registeredSessionDelegates.get(it.next()).trackTimedActionEnd(str, map);
            }
        }
    }
}
