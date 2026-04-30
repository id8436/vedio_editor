package com.adobe.creativesdk.foundation.auth;

import com.adobe.creativesdk.foundation.adobeinternal.auth.AdobeUXAuthManagerRestricted;

/* JADX INFO: loaded from: classes.dex */
public final class AdobeUXAuthManager {
    private static AdobeUXAuthManager sharedInstance = null;
    private AdobeUXAuthManagerRestricted authManagerRestricted;

    private AdobeUXAuthManager() {
        this.authManagerRestricted = null;
        this.authManagerRestricted = AdobeUXAuthManagerRestricted.getSharedAuthManagerRestricted();
    }

    public static AdobeUXAuthManager getSharedAuthManager() {
        if (sharedInstance == null) {
            sharedInstance = new AdobeUXAuthManager();
        }
        return sharedInstance;
    }

    public void login(AdobeAuthSessionLauncher adobeAuthSessionLauncher) {
        this.authManagerRestricted.login(adobeAuthSessionLauncher);
    }

    public void logout() {
        this.authManagerRestricted.logout();
    }

    public AdobeAuthUserProfile getUserProfile() {
        return this.authManagerRestricted.getUserProfile();
    }

    public boolean isAuthenticated() {
        return this.authManagerRestricted.isAuthenticated();
    }

    public void openContinuableAuthenticationEvent(AdobeAuthSessionLauncher adobeAuthSessionLauncher) {
        this.authManagerRestricted.openContinuableAuthenticationEvent(adobeAuthSessionLauncher);
    }
}
