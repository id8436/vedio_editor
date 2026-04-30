package com.behance.sdk.managers;

import com.adobe.creativesdk.foundation.adobeinternal.auth.AdobeUXAuthManagerRestricted;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloud;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudManager;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeEntitlementServices;
import com.adobe.creativesdk.foundation.auth.AdobeAuthUserProfile;
import com.adobe.creativesdk.foundation.internal.auth.AdobeAuthIdentityManagementService;
import com.behance.sdk.dto.search.BehanceSDKUserDTO;
import com.behance.sdk.exception.BehanceSDKUserNotAuthenticatedException;
import com.behance.sdk.logger.ILogger;
import com.behance.sdk.logger.LoggerFactory;

/* JADX INFO: loaded from: classes.dex */
public class BehanceSDKUserManager {
    private static BehanceSDKUserManager instance;
    private static final ILogger logger = LoggerFactory.getLogger(BehanceSDKUserManager.class);
    private BehanceSDKUserDTO userDTO;

    public static BehanceSDKUserManager getInstance() {
        if (instance == null) {
            instance = new BehanceSDKUserManager();
        }
        return instance;
    }

    private BehanceSDKUserManager() {
    }

    public boolean isUserAuthenticatedWithAdobe() {
        return AdobeUXAuthManagerRestricted.getSharedAuthManagerRestricted().isAuthenticated();
    }

    public boolean isUserLoggedIn() {
        return isUserAuthenticatedWithAdobe() && AdobeUXAuthManagerRestricted.getSharedAuthManagerRestricted().getUserProfile() != null;
    }

    public BehanceSDKUserDTO getUserDTO() {
        return this.userDTO;
    }

    public void setUserDTO(BehanceSDKUserDTO behanceSDKUserDTO) {
        this.userDTO = behanceSDKUserDTO;
    }

    public String getAdobeUserId() {
        return AdobeUXAuthManagerRestricted.getSharedAuthManagerRestricted().getAdobeID();
    }

    public String getAccessToken() {
        return AdobeAuthIdentityManagementService.getSharedInstance().getAccessToken();
    }

    public boolean isUserEntitledToUseBehance() {
        AdobeEntitlementServices sharedServices = AdobeEntitlementServices.getSharedServices();
        return sharedServices != null && sharedServices.isEntitledToService(AdobeEntitlementServices.AdobeEntitlementServiceBehance, null);
    }

    public boolean isUserAnEnterpriseUser() {
        AdobeAuthUserProfile userProfile = AdobeUXAuthManagerRestricted.getSharedAuthManagerRestricted().getUserProfile();
        return userProfile != null && userProfile.isEnterpriseUser();
    }

    public AdobeCloud getUserDefaultCloud() {
        return AdobeCloudManager.getSharedCloudManager().getDefaultCloud();
    }

    public String checkExpiryAndGetAccessToken() throws BehanceSDKUserNotAuthenticatedException {
        AdobeUXAuthManagerRestricted sharedAuthManagerRestricted = AdobeUXAuthManagerRestricted.getSharedAuthManagerRestricted();
        AdobeAuthIdentityManagementService sharedInstance = AdobeAuthIdentityManagementService.getSharedInstance();
        if (!sharedAuthManagerRestricted.hasValidAccessToken()) {
            try {
                logger.debug("Access token expired. Trying to get new access token.", new Object[0]);
                boolean zReAuthenticate = sharedAuthManagerRestricted.reAuthenticate();
                logger.debug("Refreshed Access token status [%s].", Boolean.valueOf(zReAuthenticate));
                if (!zReAuthenticate) {
                    throw new BehanceSDKUserNotAuthenticatedException("Problem refreshing access token");
                }
            } catch (Exception e2) {
                logger.warn("Device token expired.", new Object[0]);
                throw new BehanceSDKUserNotAuthenticatedException("Problem refreshing access token");
            }
        }
        logger.debug("Access token is valid. Using the existing one.", new Object[0]);
        return sharedInstance.getAccessToken();
    }
}
