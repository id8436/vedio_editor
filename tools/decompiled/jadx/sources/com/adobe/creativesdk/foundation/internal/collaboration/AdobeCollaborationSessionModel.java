package com.adobe.creativesdk.foundation.internal.collaboration;

import com.adobe.creativesdk.foundation.adobeinternal.auth.AdobeUXAuthManagerRestricted;
import com.adobe.creativesdk.foundation.internal.auth.AdobeAuthIdentityManagementService;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpService;
import com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkHttpServiceDelegate;
import com.adobe.creativesdk.foundation.internal.notification.AdobeInternalNotificationID;
import com.adobe.creativesdk.foundation.internal.notification.AdobeLocalNotificationCenter;
import com.adobe.creativesdk.foundation.internal.notification.AdobeNotification;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import java.util.Timer;
import java.util.TimerTask;

/* JADX INFO: loaded from: classes.dex */
public class AdobeCollaborationSessionModel implements IAdobeNetworkHttpServiceDelegate {
    private static AdobeCollaborationSessionModel _sharedModel = null;
    boolean online;

    private AdobeCollaborationSessionModel() {
    }

    public boolean isOnline() {
        return this.online;
    }

    public static AdobeCollaborationSessionModel getSharedModel() {
        if (_sharedModel == null) {
            _sharedModel = new AdobeCollaborationSessionModel();
        }
        return _sharedModel;
    }

    @Override // com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkHttpServiceDelegate
    public boolean HTTPServiceAuthenticationDidFail(AdobeNetworkHttpService adobeNetworkHttpService) {
        boolean zReAuthenticate;
        if (!adobeNetworkHttpService.hasEncounteredTooManyAuthFailures()) {
            zReAuthenticate = AdobeUXAuthManagerRestricted.getSharedAuthManagerRestricted().reAuthenticate();
            adobeNetworkHttpService.setAccessToken(AdobeAuthIdentityManagementService.getSharedInstance().getAccessToken());
        } else {
            AdobeLogger.log(Level.ERROR, "AdobeStorageModel", "Too many authentication failures have occurred within the last 5 minutes.");
            adobeNetworkHttpService.setAccessToken(null);
            zReAuthenticate = false;
        }
        if (zReAuthenticate) {
            adobeNetworkHttpService.setSuspended(false);
        }
        return zReAuthenticate;
    }

    @Override // com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkHttpServiceDelegate
    public void HTTPServiceDidDisconnect(final AdobeNetworkHttpService adobeNetworkHttpService) {
        final Timer timer = new Timer();
        timer.schedule(new TimerTask() { // from class: com.adobe.creativesdk.foundation.internal.collaboration.AdobeCollaborationSessionModel.1
            boolean triedReconnecting = false;

            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                if (adobeNetworkHttpService.isConnected()) {
                    cancel();
                    timer.cancel();
                } else if (!this.triedReconnecting) {
                    adobeNetworkHttpService.reconnect();
                    this.triedReconnecting = true;
                } else {
                    AdobeLocalNotificationCenter.getDefaultNotificationCenter().postNotification(new AdobeNotification(AdobeInternalNotificationID.AdobeStorageServiceDisconnectedNotification, null));
                    cancel();
                    timer.cancel();
                }
            }
        }, 15000L, 15000L);
    }

    @Override // com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkHttpServiceDelegate
    public void HTTPServiceIsActive(AdobeNetworkHttpService adobeNetworkHttpService) {
    }

    public void login() {
    }

    public void logout() {
    }
}
