package com.adobe.creativesdk.foundation.internal.auth.authenticator;

import com.adobe.creativesdk.foundation.adobeinternal.auth.AdobeUXAuthManagerRestricted;
import com.adobe.creativesdk.foundation.internal.notification.AdobeInternalNotificationID;
import com.adobe.creativesdk.foundation.internal.notification.AdobeLocalNotificationCenter;
import java.util.Observable;
import java.util.Observer;
import java.util.Timer;
import java.util.TimerTask;

/* JADX INFO: loaded from: classes.dex */
public class AdobeContinuableEventHandler {
    private static AdobeContinuableEventHandler continuableEventHandler = null;
    private boolean isTimerActivated = false;
    private TimerTask task;
    private Timer timer;

    public static void startContinuableEventHandler() {
        synchronized (AdobeContinuableEventHandler.class) {
            if (continuableEventHandler == null) {
                continuableEventHandler = new AdobeContinuableEventHandler();
            }
        }
    }

    public static void stopContinuableTimer() {
        if (continuableEventHandler != null) {
            continuableEventHandler.stopTimer();
        }
    }

    private AdobeContinuableEventHandler() {
        AdobeLocalNotificationCenter.getDefaultNotificationCenter().addObserver(AdobeInternalNotificationID.AdobeNotificationContinualActivityClosed, new Observer() { // from class: com.adobe.creativesdk.foundation.internal.auth.authenticator.AdobeContinuableEventHandler.1
            @Override // java.util.Observer
            public void update(Observable observable, Object obj) {
                AdobeContinuableEventHandler.this.handleContinualActivityClose();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleContinualActivityClose() {
        synchronized (this) {
            if (!this.isTimerActivated) {
                this.isTimerActivated = true;
                startTimer();
            }
        }
    }

    private void startTimer() {
        this.timer = new Timer();
        this.task = new FifteenSecondsTimerTask();
        this.timer.scheduleAtFixedRate(this.task, 0L, 15000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void stopTimer() {
        if (this.isTimerActivated) {
            this.timer.cancel();
            this.isTimerActivated = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void refreshToken() {
        if (this.isTimerActivated) {
            final AdobeUXAuthManagerRestricted sharedAuthManagerRestricted = AdobeUXAuthManagerRestricted.getSharedAuthManagerRestricted();
            new Thread(new Runnable() { // from class: com.adobe.creativesdk.foundation.internal.auth.authenticator.AdobeContinuableEventHandler.2
                @Override // java.lang.Runnable
                public void run() {
                    if (sharedAuthManagerRestricted.reAuthenticate()) {
                        AdobeContinuableEventHandler.this.stopTimer();
                    }
                }
            }).start();
        }
    }

    class FifteenSecondsTimerTask extends TimerTask {
        private FifteenSecondsTimerTask() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            AdobeContinuableEventHandler.this.refreshToken();
        }
    }
}
