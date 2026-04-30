package com.adobe.creativesdk.foundation;

import android.content.Context;
import com.adobe.creativesdk.foundation.auth.IAdobeAuthClientCredentials;
import com.adobe.creativesdk.foundation.internal.auth.AdobeAuthManager;
import com.adobe.creativesdk.foundation.internal.common.AdobeCommonApplicationContextHolder;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import javax.crypto.NoSuchPaddingException;

/* JADX INFO: loaded from: classes.dex */
public class AdobeCSDKFoundation {
    private static final String TAG = "AdobeCSDKFoundation";
    private static final String _version = "0.9.2006-13-SNAPSHOT";
    private static String _clientID = null;
    private static String _clientSecret = null;
    private static String _appName = null;
    private static String _appVersion = null;
    private static String _redirectURI = null;
    private static String[] _additionalScopes = null;

    public static String getVersion() {
        return _version;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void initializeCSDKFoundation(Context context) {
        if (context instanceof IAdobeAuthClientCredentials) {
            IAdobeAuthClientCredentials iAdobeAuthClientCredentials = (IAdobeAuthClientCredentials) context;
            _clientID = iAdobeAuthClientCredentials.getClientID();
            _clientSecret = iAdobeAuthClientCredentials.getClientSecret();
            _redirectURI = iAdobeAuthClientCredentials.getRedirectURI();
            _additionalScopes = iAdobeAuthClientCredentials.getAdditionalScopesList();
            AdobeCommonApplicationContextHolder.getSharedApplicationContextHolder().setApplicationContext(context);
            try {
                AdobeAuthManager.sharedAuthManager().setAuthenticationParameters(_clientID, _clientSecret, _redirectURI, _additionalScopes, null);
                return;
            } catch (InvalidKeyException | NoSuchAlgorithmException | NoSuchPaddingException e2) {
                AdobeLogger.log(Level.DEBUG, TAG, e2.getMessage(), e2);
                return;
            }
        }
        AdobeLogger.log(Level.ERROR, TAG, "Context not instance of IAdobeAuthClientCredentials");
    }

    public static void initializeAppInfo(String str, String str2) {
        _appName = str;
        _appVersion = str2;
    }

    public static String getClientId() {
        return _clientID;
    }

    public static String getClientSecret() {
        return _clientSecret;
    }

    public static String getApplicationName() {
        return _appName;
    }

    public static String getApplicationVersion() {
        return _appVersion;
    }

    public static String getRedirectURI() {
        return _redirectURI;
    }

    public static String[] getAdditionalScopes() {
        return _additionalScopes;
    }
}
