package com.adobe.creativesdk.foundation.adobeinternal.cloud;

import com.adobe.creativesdk.foundation.AdobeCSDKFoundation;
import com.adobe.creativesdk.foundation.auth.AdobeUXAuthManager;
import com.adobe.creativesdk.foundation.internal.auth.AdobeAuthIdentityManagementService;
import com.adobe.creativesdk.foundation.internal.auth.AdobeAuthManager;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpService;
import com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkHttpServiceDelegate;
import com.adobe.creativesdk.foundation.internal.notification.AdobeInternalNotificationID;
import com.adobe.creativesdk.foundation.internal.notification.AdobeLocalNotificationCenter;
import com.adobe.creativesdk.foundation.internal.notification.AdobeNotification;
import com.adobe.creativesdk.foundation.internal.notification.IAdobeNotificationID;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import java.net.URL;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Observable;
import java.util.Observer;
import java.util.Timer;
import java.util.TimerTask;
import org.mortbay.jetty.servlet.ServletHandler;

/* JADX INFO: loaded from: classes.dex */
public abstract class AdobeCloudServiceSession implements IAdobeNetworkHttpServiceDelegate, Observer {
    static final /* synthetic */ boolean $assertionsDisabled;
    private boolean _checkIsAuthenticated;
    private Timer _connectionTimer;
    private IAdobeNotificationID _disconnectionNotifier;
    private AdobeCloudEndpoint _endpoint;
    private HashMap<String, AdobeNetworkHttpService> _httpServices;
    private Timer _ongoingConnectionTimer;
    private boolean _privateService;
    private boolean _triedReconnecting;
    private boolean _useOngoingTimer;

    static {
        $assertionsDisabled = !AdobeCloudServiceSession.class.desiredAssertionStatus();
    }

    public AdobeCloudServiceSession() {
        this._httpServices = new HashMap<>();
        AdobeLocalNotificationCenter.getDefaultNotificationCenter().addObserver(AdobeInternalNotificationID.AdobeAuthLoginNotification, this);
        AdobeLocalNotificationCenter.getDefaultNotificationCenter().addObserver(AdobeInternalNotificationID.AdobeAuthLoginExternalNotification, this);
        AdobeLocalNotificationCenter.getDefaultNotificationCenter().addObserver(AdobeInternalNotificationID.AdobeAuthLogoutNotification, this);
    }

    public AdobeCloudServiceSession(AdobeNetworkHttpService adobeNetworkHttpService) {
        this(adobeNetworkHttpService, null);
    }

    public AdobeCloudServiceSession(AdobeNetworkHttpService adobeNetworkHttpService, String str) {
        this();
        this._httpServices.put(str == null ? ServletHandler.__DEFAULT_SERVLET : str, adobeNetworkHttpService);
    }

    protected AdobeCloudServiceSession(AdobeCloudEndpoint adobeCloudEndpoint) {
        this();
        configureEndpoint(adobeCloudEndpoint);
    }

    public static AdobeCloudServiceSession getSessionForCloudEndpoint(AdobeCloudEndpoint adobeCloudEndpoint) {
        if ($assertionsDisabled) {
            return null;
        }
        throw new AssertionError("This method should be overriden by your subclass.");
    }

    public boolean isPrivateService() {
        return this._privateService;
    }

    public void setPrivateService(boolean z) {
        this._privateService = z;
    }

    public void setUpService() {
    }

    public void setUpService(String str, AdobeNetworkHttpService adobeNetworkHttpService) {
        this._httpServices.put(str, adobeNetworkHttpService);
    }

    public void tearDownService() {
        Iterator<AdobeNetworkHttpService> it = getHttpServices().values().iterator();
        while (it.hasNext()) {
            it.next().clearQueuedRequests();
        }
    }

    public AdobeNetworkHttpService getService() {
        return getServiceForSchemaId(null);
    }

    public AdobeNetworkHttpService getServiceForSchemaId(String str) {
        if (str == null) {
            Iterator<Map.Entry<String, AdobeNetworkHttpService>> it = this._httpServices.entrySet().iterator();
            if (it.hasNext()) {
                str = it.next().getKey();
            }
        }
        if (str == null) {
            return null;
        }
        return this._httpServices.get(str);
    }

    @Override // com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkHttpServiceDelegate
    public boolean HTTPServiceAuthenticationDidFail(AdobeNetworkHttpService adobeNetworkHttpService) {
        return refreshAccessTokenForService(adobeNetworkHttpService);
    }

    @Override // com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkHttpServiceDelegate
    public void HTTPServiceDidDisconnect(AdobeNetworkHttpService adobeNetworkHttpService) {
        setupConnectionTimer(15L, adobeNetworkHttpService);
    }

    @Override // com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkHttpServiceDelegate
    public void HTTPServiceIsActive(AdobeNetworkHttpService adobeNetworkHttpService) {
        stopConnectionTimer();
    }

    public HashMap<String, AdobeNetworkHttpService> getHttpServices() {
        return this._httpServices;
    }

    @Override // java.util.Observer
    public void update(Observable observable, Object obj) {
        AdobeNotification adobeNotification = (AdobeNotification) obj;
        if (adobeNotification.getId() == AdobeInternalNotificationID.AdobeAuthLogoutNotification && adobeNotification.getInfo() == null) {
            tearDownService();
            stopConnectionTimer();
            stopOngoingConnectionTimer();
            Iterator<Map.Entry<String, AdobeNetworkHttpService>> it = this._httpServices.entrySet().iterator();
            while (it.hasNext()) {
                it.next().getValue().clearQueuedRequests();
            }
            this._httpServices.clear();
            return;
        }
        if (adobeNotification.getId() == AdobeInternalNotificationID.AdobeAuthLoginNotification || adobeNotification.getId() == AdobeInternalNotificationID.AdobeAuthLoginExternalNotification) {
            AdobeAuthIdentityManagementService sharedInstance = AdobeAuthIdentityManagementService.getSharedInstance();
            Iterator<Map.Entry<String, AdobeNetworkHttpService>> it2 = this._httpServices.entrySet().iterator();
            while (it2.hasNext()) {
                Map.Entry<String, AdobeNetworkHttpService> next = it2.next();
                AdobeNetworkHttpService value = next.getValue();
                String key = next.getKey();
                value.setAccessToken(sharedInstance.getAccessToken());
                value.setSuspended(false);
                if (this._endpoint != null) {
                    if (!$assertionsDisabled && this._endpoint.getServiceURLs() == null) {
                        throw new AssertionError("Service endpoint URLs cannot be nil.");
                    }
                    URL url = this._endpoint.getServiceURLs() != null ? this._endpoint.getServiceURLs().get(key) : null;
                    if (url != null) {
                        value.setBaseURL(url);
                    } else if (this._endpoint.getServiceURLs() != null && this._endpoint.getServiceURLs().size() > 0) {
                        if (key.equals(ServletHandler.__DEFAULT_SERVLET)) {
                            Iterator<Map.Entry<String, URL>> it3 = this._endpoint.getServiceURLs().entrySet().iterator();
                            if (it2.hasNext()) {
                                it3.next();
                                next.getKey();
                            }
                            value.setBaseURL(this._endpoint.getServiceURLs().get(key));
                        } else {
                            value.setBaseURL(null);
                        }
                    }
                }
            }
            setUpService();
        }
    }

    protected void unInitialize() {
        AdobeLocalNotificationCenter.getDefaultNotificationCenter().removeObserver(AdobeInternalNotificationID.AdobeAuthLoginNotification, this);
        AdobeLocalNotificationCenter.getDefaultNotificationCenter().removeObserver(AdobeInternalNotificationID.AdobeAuthLoginExternalNotification, this);
        AdobeLocalNotificationCenter.getDefaultNotificationCenter().removeObserver(AdobeInternalNotificationID.AdobeAuthLogoutNotification, this);
        tearDownService();
    }

    protected void finalize() {
        unInitialize();
    }

    private void setupConnectionTimer(long j, AdobeNetworkHttpService adobeNetworkHttpService) {
        AdobeNetworkHttpService value;
        if (!this._useOngoingTimer) {
            Iterator<Map.Entry<String, AdobeNetworkHttpService>> it = this._httpServices.entrySet().iterator();
            while (true) {
                if (!it.hasNext()) {
                    value = null;
                    break;
                }
                Map.Entry<String, AdobeNetworkHttpService> next = it.next();
                if (adobeNetworkHttpService.equals(next.getValue())) {
                    value = next.getValue();
                    break;
                }
            }
            if (value == null) {
                this._httpServices.put(ServletHandler.__DEFAULT_SERVLET, adobeNetworkHttpService);
            }
            if (this._connectionTimer == null) {
                AdobeLogger.log(Level.DEBUG, AdobeCloudServiceSession.class.getSimpleName(), "Check connection for in " + j + " secs.");
                this._connectionTimer = new Timer();
                this._connectionTimer.scheduleAtFixedRate(new TimerTask() { // from class: com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudServiceSession.1
                    @Override // java.util.TimerTask, java.lang.Runnable
                    public void run() {
                        AdobeCloudServiceSession.this.checkServiceConnection();
                    }
                }, 0L, 1000 * j);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkServiceConnection() {
        if (!AdobeUXAuthManager.getSharedAuthManager().isAuthenticated()) {
            stopConnectionTimer();
            return;
        }
        if (!this._useOngoingTimer) {
            Iterator<Map.Entry<String, AdobeNetworkHttpService>> it = this._httpServices.entrySet().iterator();
            while (it.hasNext()) {
                AdobeNetworkHttpService value = it.next().getValue();
                if (value == null) {
                    AdobeLogger.log(Level.ERROR, AdobeCloudServiceSession.class.getSimpleName(), "Network service not set up for " + getClass().getSimpleName() + " timer");
                } else if (this._disconnectionNotifier == null) {
                    AdobeLogger.log(Level.ERROR, AdobeCloudServiceSession.class.getSimpleName(), "Disconnect notifier not set up for " + getClass().getSimpleName() + " timer");
                } else if (value.isConnected()) {
                    AdobeLogger.log(Level.DEBUG, AdobeCloudServiceSession.class.getSimpleName(), getClass().getSimpleName() + " isConnected is true.  Cancel timer.");
                    this._connectionTimer.cancel();
                    this._connectionTimer = null;
                } else if (!this._triedReconnecting) {
                    AdobeLogger.log(Level.DEBUG, AdobeCloudServiceSession.class.getSimpleName(), "Attempting to reconnect " + getClass().getSimpleName());
                    value.reconnect();
                    this._triedReconnecting = true;
                } else {
                    AdobeLogger.log(Level.DEBUG, AdobeCloudServiceSession.class.getSimpleName(), "Failed to reconnect " + getClass().getSimpleName() + ". Sending " + this._disconnectionNotifier);
                    AdobeLocalNotificationCenter.getDefaultNotificationCenter().postNotification(new AdobeNotification(this._disconnectionNotifier, null));
                    value.reconnect();
                    if (this._connectionTimer != null) {
                        this._connectionTimer.cancel();
                        this._connectionTimer = null;
                    }
                    this._triedReconnecting = false;
                }
            }
        }
    }

    private void stopConnectionTimer() {
        if (this._connectionTimer != null) {
            synchronized (this) {
                AdobeLogger.log(Level.DEBUG, AdobeCloudServiceSession.class.getSimpleName(), "Stopping connection timer");
                this._connectionTimer.cancel();
                this._connectionTimer = null;
                this._triedReconnecting = false;
            }
        }
    }

    private boolean refreshAccessTokenForService(AdobeNetworkHttpService adobeNetworkHttpService) {
        boolean zReAuthenticate = AdobeAuthManager.sharedAuthManager().reAuthenticate();
        if (zReAuthenticate) {
            adobeNetworkHttpService.setAccessToken(AdobeAuthIdentityManagementService.getSharedInstance().getAccessToken());
            adobeNetworkHttpService.setSuspended(false);
        }
        return zReAuthenticate;
    }

    public void setDisconnectionNotifier(IAdobeNotificationID iAdobeNotificationID) {
        this._disconnectionNotifier = iAdobeNotificationID;
    }

    public IAdobeNotificationID getDisconnectionNotifier(IAdobeNotificationID iAdobeNotificationID) {
        return this._disconnectionNotifier;
    }

    protected void configureEndpoint(AdobeCloudEndpoint adobeCloudEndpoint) {
        if (adobeCloudEndpoint != null) {
            AdobeAuthIdentityManagementService sharedInstance = AdobeAuthIdentityManagementService.getSharedInstance();
            String accessToken = sharedInstance.getAccessToken();
            HashMap map = new HashMap();
            String str = String.format("%s%s", "CreativeSDK", AdobeCSDKFoundation.getVersion());
            if (!$assertionsDisabled && sharedInstance.getClientID() == null) {
                throw new AssertionError("clientID not initialized by the authentication module.");
            }
            map.put("x-api-key", sharedInstance.getClientID());
            map.put("x-creativesdk-versions", str);
            if (!$assertionsDisabled && adobeCloudEndpoint.getServiceURLs() == null) {
                throw new AssertionError("Service endpoint URLs cannot be nil.");
            }
            for (Map.Entry<String, URL> entry : adobeCloudEndpoint.getServiceURLs().entrySet()) {
                AdobeNetworkHttpService adobeNetworkHttpService = new AdobeNetworkHttpService(entry.getValue().toString(), sharedInstance.getClientID(), map);
                adobeNetworkHttpService.setAccessToken(accessToken);
                adobeNetworkHttpService.setHttpServiceDelegate(this);
                this._httpServices.put(entry.getKey(), adobeNetworkHttpService);
            }
            this._endpoint = adobeCloudEndpoint;
        }
    }

    protected void setupOngoingConnectionTimer(long j, boolean z) {
        this._useOngoingTimer = true;
        this._checkIsAuthenticated = z;
        if (this._ongoingConnectionTimer == null) {
            AdobeLogger.log(Level.DEBUG, AdobeCloudServiceSession.class.getSimpleName(), "Set up " + getClass().getSimpleName() + " ongoing connection timer at " + j + " secs.");
            this._ongoingConnectionTimer = new Timer();
            this._ongoingConnectionTimer.scheduleAtFixedRate(new TimerTask() { // from class: com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudServiceSession.2
                @Override // java.util.TimerTask, java.lang.Runnable
                public void run() {
                    AdobeCloudServiceSession.this.ongoingCheckServiceConnection();
                }
            }, 0L, 1000 * j);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ongoingCheckServiceConnection() {
        if (this._checkIsAuthenticated && !AdobeUXAuthManager.getSharedAuthManager().isAuthenticated()) {
            stopOngoingConnectionTimer();
            return;
        }
        if (this._useOngoingTimer) {
            for (Map.Entry<String, AdobeNetworkHttpService> entry : this._httpServices.entrySet()) {
                AdobeNetworkHttpService value = entry.getValue();
                entry.getKey();
                if (value == null) {
                    AdobeLogger.log(Level.ERROR, AdobeCloudServiceSession.class.getSimpleName(), "Network service not set up for " + getClass().getSimpleName() + " timer");
                } else if (this._disconnectionNotifier == null) {
                    AdobeLogger.log(Level.ERROR, AdobeCloudServiceSession.class.getSimpleName(), "Disconnect notification not set up for " + getClass().getSimpleName() + " timer");
                } else if (!value.isConnected()) {
                    AdobeLogger.log(Level.ERROR, AdobeCloudServiceSession.class.getSimpleName(), "Ongoing timer.  Attempting to reconnect " + getClass().getSimpleName());
                    value.reconnect();
                }
            }
        }
    }

    protected synchronized void stopOngoingConnectionTimer() {
        if (this._ongoingConnectionTimer != null) {
            this._useOngoingTimer = false;
            AdobeLogger.log(Level.DEBUG, AdobeCloudServiceSession.class.getSimpleName(), "Stopping ongoing connection timer");
            this._ongoingConnectionTimer.cancel();
            this._ongoingConnectionTimer = null;
        }
    }

    public AdobeCloudEndpoint getCloudEndpoint() {
        return this._endpoint;
    }
}
