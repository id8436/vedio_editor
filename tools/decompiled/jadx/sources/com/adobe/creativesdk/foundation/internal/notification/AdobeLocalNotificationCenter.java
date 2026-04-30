package com.adobe.creativesdk.foundation.internal.notification;

import java.util.HashMap;
import java.util.Map;
import java.util.Observable;
import java.util.Observer;

/* JADX INFO: loaded from: classes.dex */
public class AdobeLocalNotificationCenter {
    private static AdobeLocalNotificationCenter staticNotificationCenter = null;
    Map<IAdobeNotificationID, ObservableWrapper> _observables;

    class ObservableWrapper extends Observable {
        private ObservableWrapper() {
        }

        public void markChanged() {
            setChanged();
        }
    }

    public static synchronized AdobeLocalNotificationCenter getDefaultNotificationCenter() {
        if (staticNotificationCenter == null) {
            staticNotificationCenter = new AdobeLocalNotificationCenter();
        }
        return staticNotificationCenter;
    }

    public AdobeLocalNotificationCenter() {
        this._observables = null;
        this._observables = new HashMap();
    }

    public synchronized void addObserver(IAdobeNotificationID iAdobeNotificationID, Observer observer) {
        ObservableWrapper observableWrapper = this._observables.get(iAdobeNotificationID);
        if (observableWrapper == null) {
            observableWrapper = new ObservableWrapper();
            this._observables.put(iAdobeNotificationID, observableWrapper);
        }
        observableWrapper.addObserver(observer);
    }

    public synchronized void removeObserver(IAdobeNotificationID iAdobeNotificationID, Observer observer) {
        ObservableWrapper observableWrapper = this._observables.get(iAdobeNotificationID);
        if (observableWrapper != null) {
            observableWrapper.deleteObserver(observer);
        }
    }

    public synchronized void postNotification(AdobeNotification adobeNotification) {
        ObservableWrapper observableWrapper = this._observables.get(adobeNotification.getId());
        if (observableWrapper != null) {
            observableWrapper.markChanged();
            observableWrapper.notifyObservers(adobeNotification);
        }
    }
}
