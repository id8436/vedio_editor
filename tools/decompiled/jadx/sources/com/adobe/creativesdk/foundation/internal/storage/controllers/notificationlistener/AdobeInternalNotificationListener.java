package com.adobe.creativesdk.foundation.internal.storage.controllers.notificationlistener;

import com.adobe.creativesdk.foundation.internal.notification.AdobeInternalNotificationID;
import com.adobe.creativesdk.foundation.internal.notification.AdobeLocalNotificationCenter;
import com.adobe.creativesdk.foundation.internal.notification.AdobeNotification;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Observable;
import java.util.Observer;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeInternalNotificationListener {
    private Observer notificationObserver = new Observer() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.notificationlistener.AdobeInternalNotificationListener.1
        @Override // java.util.Observer
        public void update(Observable observable, Object obj) {
            AdobeNotification adobeNotification = (AdobeNotification) obj;
            AdobeInternalNotificationID adobeInternalNotificationID = (AdobeInternalNotificationID) adobeNotification.getId();
            Observer observer = (Observer) AdobeInternalNotificationListener.this.notificationHandlers.get(adobeInternalNotificationID);
            if (observer == null) {
                ArrayList arrayList = (ArrayList) AdobeInternalNotificationListener.this.notificationQueue.get(adobeInternalNotificationID);
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(adobeNotification);
                AdobeInternalNotificationListener.this.notificationQueue.put(adobeInternalNotificationID, arrayList);
                return;
            }
            observer.update(observable, obj);
        }
    };
    private Map<AdobeInternalNotificationID, ArrayList<AdobeNotification>> notificationQueue = new HashMap();
    private Map<AdobeInternalNotificationID, Observer> notificationHandlers = new HashMap();

    public void registerForNotification(AdobeInternalNotificationID adobeInternalNotificationID, Observer observer) {
        this.notificationHandlers.put(adobeInternalNotificationID, observer);
        AdobeLocalNotificationCenter.getDefaultNotificationCenter().addObserver(adobeInternalNotificationID, this.notificationObserver);
    }

    public void unregisterForNotification(AdobeInternalNotificationID adobeInternalNotificationID) {
        this.notificationHandlers.remove(adobeInternalNotificationID);
    }

    public void clearQueue(AdobeInternalNotificationID adobeInternalNotificationID) {
        if (this.notificationQueue != null) {
            this.notificationQueue.remove(adobeInternalNotificationID);
        }
    }

    public List<AdobeNotification> getNotificationsForID(AdobeInternalNotificationID adobeInternalNotificationID) {
        return this.notificationQueue.get(adobeInternalNotificationID);
    }
}
