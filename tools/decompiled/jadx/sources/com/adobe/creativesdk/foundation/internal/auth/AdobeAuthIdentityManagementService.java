package com.adobe.creativesdk.foundation.internal.auth;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Log;
import com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback;
import com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback;
import com.adobe.creativesdk.foundation.adobeinternal.analytics.AdobeAnalyticsEventParams;
import com.adobe.creativesdk.foundation.adobeinternal.auth.IAdobeAuthManagerCallback;
import com.adobe.creativesdk.foundation.adobeinternal.auth.IAuthPostLoginWorkCallback;
import com.adobe.creativesdk.foundation.adobeinternal.entitlement.AdobeEntitlementSession;
import com.adobe.creativesdk.foundation.auth.AdobeAuthErrorCode;
import com.adobe.creativesdk.foundation.auth.AdobeAuthException;
import com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsETSAuthEvent;
import com.adobe.creativesdk.foundation.internal.auth.authenticator.AdobeCSDKAdobeIDAccountType;
import com.adobe.creativesdk.foundation.internal.common.AdobeCommonApplicationContextHolder;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpRequest;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpRequestMethod;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpResponse;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpService;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkRequestPriority;
import com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkCompletionHandler;
import com.adobe.creativesdk.foundation.internal.utils.AdobeAuthHandler;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import com.adobe.creativesdk.foundation.internal.utils.AdobeJSONObject;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import com.adobe.creativesdk.foundation.network.AdobeNetworkException;
import com.behance.sdk.util.BehanceSDKConstants;
import com.google.gdata.data.analytics.Engagement;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class AdobeAuthIdentityManagementService {
    private static final String AdobeAuthIMSAgeVerificationError = "ride_AdobeID_acct_actreq";
    private static final String AdobeAuthIMSEmailVerificationError = "ride_AdobeID_acct_evs";
    private static final String AdobeAuthIMSTermsOfUseError = "ride_AdobeID_acct_terms";
    private static final String AdobeAuthKeychainEntitlements = "Entitlements";
    private static final int DEFAULT_ACCESS_TOKEN_EXPIRY = 86400;
    private static final int DEFAULT_DEVICE_TOKEN_EXPIRY = 15768000;
    private static final int DEFAULT_REFRESH_TOKEN_EXPIRY = 1209600;
    private static final String IMS_DEFAULT_REDIRECT_URI = "signin%3A%2F%2Fcomplete";
    private static final String IMS_ERROR_INVALID_CLIENT_ID = "Invalid Client Id";
    private static final String IMS_ERROR_INVALID_CLIENT_SECRET = "Invalid Client Secret";
    private static final String IMS_ERROR_INVALID_DEVICE_ID = "Invalid Device Id";
    private static final String IMS_ERROR_INVALID_SERVER_RESPONSE = "Invalid Server Response";
    private static final String IMS_ERROR_RECOVERABLE_SDK_TYPE = "recoverable_sdk";
    public static final String IMS_ERROR_RECOVERABLE_USER_TYPE = "recoverable_user";
    public static final String IMS_KEY_ACCESS_TOKEN = "access_token";
    private static final String IMS_KEY_ACCOUNT_TYPE = "account_type";
    private static final String IMS_KEY_ADOBE_ID = "userId";
    private static final String IMS_KEY_ADOBE_ID_WITH_OPENID = "sub";
    private static final String IMS_KEY_CLIENT_ID = "client_id";
    private static final String IMS_KEY_CLIENT_SECRET = "client_secret";
    private static final String IMS_KEY_CODE = "code";
    private static final String IMS_KEY_CONTINUATION_TOKEN = "continuation_token";
    private static final String IMS_KEY_COUNTRY_CODE = "countryCode";
    private static final String IMS_KEY_DC = "dc";
    private static final String IMS_KEY_DEVICE_ID = "device_id";
    private static final String IMS_KEY_DEVICE_NAME = "device_name";
    private static final String IMS_KEY_DEVICE_TOKEN = "device_token";
    private static final String IMS_KEY_DISPLAY_NAME = "displayName";
    private static final String IMS_KEY_EMAIL = "email";
    private static final String IMS_KEY_EMAIL_VERIFIED = "emailVerified";
    private static final String IMS_KEY_ERROR = "error";
    private static final String IMS_KEY_ERROR_DESCRIPTION = "error_description";
    private static final String IMS_KEY_ERROR_TYPE = "error_type";
    private static final String IMS_KEY_EXPIRES_AT = "expires_at";
    private static final String IMS_KEY_EXPIRES_IN = "expires_in";
    private static final String IMS_KEY_FALSE = "false";
    private static final String IMS_KEY_FIRST_NAME = "first_name";
    private static final String IMS_KEY_FORCE_MARKETING_PERMISSION = "force_marketing_permission";
    private static final String IMS_KEY_GRANT_TYPE = "grant_type";
    private static final String IMS_KEY_IDP_FLOW = "idp_flow";
    public static final String IMS_KEY_INGEST_IDP_FB = "facebook";
    public static final String IMS_KEY_INGEST_IDP_GOOGLE = "google";
    public static final String IMS_KEY_INGEST_IDP_IMS = "ims";
    private static final String IMS_KEY_JUMP = "jump";
    private static final String IMS_KEY_LAST_NAME = "last_name";
    private static final String IMS_KEY_LOCALE = "locale";
    public static final String IMS_KEY_OPENID_SCOPE = "openid";
    private static final String IMS_KEY_REDIRECT_URI = "redirect_uri";
    public static final String IMS_KEY_REFRESH_TOKEN = "refresh_token";
    private static final String IMS_KEY_RESPONSE_TYPE = "response_type";
    private static final String IMS_KEY_SCOPE = "scope";
    private static final String IMS_KEY_SERVICE_ACCOUNTS = "serviceAccounts";
    private static final String IMS_KEY_SERVICE_CODE = "serviceCode";
    private static final String IMS_KEY_SERVICE_CODE_CC = "creative_cloud";
    private static final String IMS_KEY_SERVICE_LEVEL = "serviceLevel";
    private static final String IMS_KEY_SOCIAL_IDP_TOKEN = "idp_token";
    private static final String IMS_KEY_SOCIAL_PROVIDER_ID = "provider_id";
    private static final String IMS_KEY_SOCIAL_PROVIDER_NAME = "providerName";
    private static final String IMS_KEY_STATE = "state";
    private static final String IMS_KEY_TOKEN = "token";
    private static final String IMS_KEY_TOKEN_TYPE = "token_type";
    private static final String IMS_KEY_TOKEN_TYPE_AUTH = "authorization_code";
    private static final String IMS_KEY_TOKEN_TYPE_DEVICE = "device";
    private static final String IMS_KEY_TRUE = "true";
    private static final String IMS_SIGN_IN_IDP_FLOW = "login";
    private static final String IMS_SIGN_UP_IDP_FLOW = "create_account";
    private static final String IMS_SOCIAL_SIGN_IN_IDP_FLOW = "social.native";
    public static final String SOCIAL_PROVIDER_FACEBOOK = "facebook";
    public static final String SOCIAL_PROVIDER_GOOGLE = "google";
    private static final String T = "AuthIMS";
    private static final String UTF_8 = "UTF-8";
    private volatile String accessToken;
    private volatile Date accessTokenExpirationTime;
    private volatile String accountType;
    private volatile String adobeID;
    private final AdobeAuthKeychain authKeychain;
    private AdobeCommonCipher cipher;
    private volatile String clientID;
    private volatile String clientScope;
    private volatile String clientSecret;
    private volatile String clientState;
    private volatile String continuationToken;
    private volatile String countryCode;
    private volatile String deviceID;
    private volatile String deviceName;
    private volatile String deviceToken;
    private volatile Date deviceTokenExpirationTime;
    private volatile String displayName;
    private volatile String emailAddress;
    private volatile String emailVerified;
    private volatile Set<String> entitlements;
    private AdobeAuthIMSEnvironment environment;
    private volatile String firstName;
    private AdobeAuthIMSGrantType grantType;
    private volatile String idpFlow;
    private volatile String imsHost;
    private volatile String isEnterPrise;
    private volatile String lastName;
    private volatile String licenseStatus;
    private AdobeNetworkHttpService networkService;
    private volatile IAuthPostLoginWorkCallback postLoginWorkCallback;
    private volatile String redirectURI = null;
    private volatile String refreshToken;
    private volatile Date refreshTokenExpirationTime;
    private volatile String serviceCodes;
    private volatile String serviceLevel;
    private volatile String sharedDeviceToken;
    private volatile String socialProvider;
    private volatile String socialProviderToken;
    private volatile HashMap<String, String> socialProviders;
    private static final String[] IMS_CREATIVE_SDK_SCOPES = {"creative_sdk", AdobeAuthKeychain.ADOBE_AUTH_KEYCHAIN_ADOBE_ID};
    private static volatile AdobeAuthIdentityManagementService sharedInstance = null;
    private static int simulationCount = 1;

    public enum TokenType {
        AccessToken,
        DeviceToken,
        RefreshToken
    }

    private AdobeAuthIdentityManagementService() {
        setCipherKey(AdobeCSDKAuthAESKeyMgr.getInstance().getFoundationAuthAESKey());
        this.authKeychain = new AdobeAuthKeychain(this);
        AdobeAuthKeychain.setSharedKeychain(this.authKeychain);
        setEnvironment(AdobeAuthKeychain.getSharedKeychain().getLastEnvironment());
        setAdditionalClientScopes(null);
    }

    public static AdobeAuthIdentityManagementService getSharedInstance() {
        if (sharedInstance == null) {
            synchronized (AdobeAuthIdentityManagementService.class) {
                if (sharedInstance == null) {
                    sharedInstance = new AdobeAuthIdentityManagementService();
                }
            }
        }
        return sharedInstance;
    }

    public void setAuthenticationParameters(String str, String str2, String str3, String str4, String str5) {
        setClientID(str);
        setClientSecret(str2);
        setClientState(str3);
        setDeviceID(str4);
        setDeviceName(str5);
    }

    public void setGrantType(AdobeAuthIMSGrantType adobeAuthIMSGrantType) {
        this.grantType = adobeAuthIMSGrantType;
    }

    public AdobeAuthIMSGrantType getGrantType() {
        return this.grantType;
    }

    private Map<String, String> createSocialLoginParams(String str, String str2) {
        HashMap map = new HashMap();
        map.put(IMS_KEY_SOCIAL_PROVIDER_ID, getUTFEncoding(str));
        map.put(IMS_KEY_SOCIAL_IDP_TOKEN, getUTFEncoding(str2));
        map.put("client_id", getUTFEncoding(getClientID()));
        map.put("scope", getUTFEncoding(getClientScope()));
        if (getDeviceID() != null) {
            map.put(IMS_KEY_RESPONSE_TYPE, "device");
            map.put(IMS_KEY_DEVICE_ID, getUTFEncoding(getDeviceID()));
        } else {
            map.put(IMS_KEY_RESPONSE_TYPE, "code");
        }
        if (getClientState() != null && !getClientState().equals("")) {
            map.put("state", getUTFEncoding(getClientState()));
        }
        map.put(IMS_KEY_CLIENT_SECRET, getUTFEncoding(getClientSecret()));
        map.put(IMS_KEY_REDIRECT_URI, getRedirectURI());
        return map;
    }

    private IAdobeNetworkCompletionHandler createSocialLoginCallback(final IAdobeAuthIMSSignInClient iAdobeAuthIMSSignInClient) {
        return new IAdobeNetworkCompletionHandler() { // from class: com.adobe.creativesdk.foundation.internal.auth.AdobeAuthIdentityManagementService.1
            @Override // com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkCompletionHandler
            public void onSuccess(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                if (adobeNetworkHttpResponse.getStatusCode() == 200) {
                    try {
                        AdobeAuthIdentityManagementService.this.setSocialProviderToken(null);
                        AdobeJSONObject adobeJSONObject = new AdobeJSONObject(adobeNetworkHttpResponse.getDataString());
                        String string = adobeJSONObject.getString(AdobeAuthIdentityManagementService.IMS_KEY_TOKEN_TYPE);
                        if (string == null) {
                            HashMap map = new HashMap();
                            map.put("error_description", AdobeAuthIdentityManagementService.IMS_ERROR_INVALID_SERVER_RESPONSE);
                            iAdobeAuthIMSSignInClient.onError(new AdobeAuthException(AdobeAuthErrorCode.ADOBE_AUTH_ERROR_CODE_UNKNOWN_ERROR, map));
                        } else if (string.equals("device")) {
                            AdobeAuthIdentityManagementService.this.signInWithDeviceToken(adobeJSONObject.getString(AdobeAuthIdentityManagementService.IMS_KEY_TOKEN), iAdobeAuthIMSSignInClient);
                        } else if (string.equals(AdobeAuthIdentityManagementService.IMS_KEY_TOKEN_TYPE_AUTH)) {
                            AdobeAuthIdentityManagementService.this.signInWithAuthCode(adobeJSONObject.getString(AdobeAuthIdentityManagementService.IMS_KEY_TOKEN), iAdobeAuthIMSSignInClient);
                        }
                        return;
                    } catch (JSONException e2) {
                        HashMap map2 = new HashMap();
                        map2.put("error_description", AdobeAuthIdentityManagementService.IMS_ERROR_INVALID_SERVER_RESPONSE);
                        iAdobeAuthIMSSignInClient.onError(new AdobeAuthException(AdobeAuthErrorCode.ADOBE_AUTH_ERROR_CODE_UNKNOWN_ERROR, map2));
                        AdobeAuthIdentityManagementService.this.onJSONException(e2, iAdobeAuthIMSSignInClient);
                        return;
                    }
                }
                HashMap map3 = new HashMap();
                map3.put("error_description", "Invalid Server Response with Network Code: " + adobeNetworkHttpResponse.getStatusCode());
                iAdobeAuthIMSSignInClient.onError(new AdobeAuthException(AdobeAuthErrorCode.ADOBE_AUTH_ERROR_CODE_UNKNOWN_ERROR, map3));
            }

            @Override // com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkCompletionHandler
            public void onError(AdobeNetworkException adobeNetworkException) {
                String dataString = ((AdobeNetworkHttpResponse) adobeNetworkException.getData().get(AdobeNetworkException.getKeyForResponse())).getDataString();
                HashMap map = new HashMap();
                if (dataString != null) {
                    try {
                        JSONObject jSONObject = new JSONObject(dataString);
                        map.put("error_description", dataString);
                        if (jSONObject.has(AdobeAuthIdentityManagementService.IMS_KEY_ERROR_TYPE)) {
                            switch (jSONObject.getString(AdobeAuthIdentityManagementService.IMS_KEY_ERROR_TYPE)) {
                                case "recoverable_sdk":
                                    AdobeAuthIdentityManagementService.this.setSocialProviderToken(null);
                                    iAdobeAuthIMSSignInClient.onError(new AdobeAuthException(AdobeAuthErrorCode.ADOBE_AUTH_ERROR_CODE_SOCIAL_LOGIN_RECOVERABLE_SDK, map));
                                    break;
                                case "recoverable_user":
                                    AdobeAuthIdentityManagementService.this.setSocialProviderToken(AdobeAuthIdentityManagementService.this.socialProviderToken);
                                    iAdobeAuthIMSSignInClient.onError(new AdobeAuthException(AdobeAuthErrorCode.ADOBE_AUTH_ERROR_CODE_SOCIAL_LOGIN_RECOVERABLE_USER, map));
                                    break;
                                default:
                                    iAdobeAuthIMSSignInClient.onError(new AdobeAuthException(AdobeAuthErrorCode.ADOBE_AUTH_ERROR_CODE_UNKNOWN_ERROR, map));
                                    break;
                            }
                            return;
                        }
                        return;
                    } catch (JSONException e2) {
                        AdobeAuthIdentityManagementService.this.onJSONException(e2, iAdobeAuthIMSSignInClient);
                        return;
                    }
                }
                map.put("error_description", AdobeAuthIdentityManagementService.IMS_ERROR_INVALID_SERVER_RESPONSE);
                iAdobeAuthIMSSignInClient.onError(new AdobeAuthException(AdobeAuthErrorCode.ADOBE_AUTH_ERROR_CODE_UNKNOWN_ERROR, map));
            }
        };
    }

    public void loginWithFacebookToken(String str, IAdobeAuthIMSSignInClient iAdobeAuthIMSSignInClient) {
        setSocialProvider("facebook");
        setSocialProviderToken(str);
        if (this.grantType == AdobeAuthIMSGrantType.AdobeAuthIMSGrantTypeDevice && getDeviceID() == null) {
            iAdobeAuthIMSSignInClient.onError(new AdobeAuthException(AdobeAuthErrorCode.ADOBE_AUTH_ERROR_CODE_DEVICE_ID_REQUIRED));
        } else {
            makeHTTPOperationForURL(getSocialLoginURL(), AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodPOST, createSocialLoginParams("facebook", str), "application/x-www-form-urlencoded", createSocialLoginCallback(iAdobeAuthIMSSignInClient), false);
        }
    }

    public void loginWithGoogleToken(String str, IAdobeAuthIMSSignInClient iAdobeAuthIMSSignInClient) {
        setSocialProvider("google");
        setSocialProviderToken(str);
        if (this.grantType == AdobeAuthIMSGrantType.AdobeAuthIMSGrantTypeDevice && getDeviceID() == null) {
            iAdobeAuthIMSSignInClient.onError(new AdobeAuthException(AdobeAuthErrorCode.ADOBE_AUTH_ERROR_CODE_DEVICE_ID_REQUIRED));
        } else {
            makeHTTPOperationForURL(getSocialLoginURL(), AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodPOST, createSocialLoginParams("google", str), "application/x-www-form-urlencoded", createSocialLoginCallback(iAdobeAuthIMSSignInClient), false);
        }
    }

    public void signIn(final IAdobeAuthIMSSignInClient iAdobeAuthIMSSignInClient) {
        this.deviceToken = getDeviceToken();
        this.refreshToken = getRefreshToken();
        if (getDeviceID() == null || (this.deviceToken != null && this.deviceToken.isEmpty())) {
            this.deviceToken = null;
        }
        if (getRefreshToken() == null || (this.refreshToken != null && this.refreshToken.isEmpty())) {
            this.refreshToken = null;
        }
        final AdobeAnalyticsETSAuthEvent adobeAnalyticsETSAuthEvent = new AdobeAnalyticsETSAuthEvent("access_token");
        if (this.refreshToken != null) {
            AdobeLogger.log(Level.DEBUG, T, "Trying to refresh the access token with refresh token");
            refreshAccessToken(this.refreshToken, new IAdobeAuthTokenCallback() { // from class: com.adobe.creativesdk.foundation.internal.auth.AdobeAuthIdentityManagementService.2
                @Override // com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkCompletionHandler
                public void onSuccess(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                    try {
                        AdobeJSONObject adobeJSONObject = new AdobeJSONObject(adobeNetworkHttpResponse.getDataString());
                        final String string = adobeJSONObject.getString("userId");
                        final String string2 = adobeJSONObject.getString("access_token");
                        AdobeAuthIdentityManagementService.this.setContiuableEventJumpURL(null);
                        if (string2 != null) {
                            AdobeAuthIdentityManagementService.this.parseResponse(adobeJSONObject, false);
                            AdobeAuthIdentityManagementService.this.profileFromServiceWithAccessToken(string2, new IAdobeGenericCompletionCallback<JSONObject>() { // from class: com.adobe.creativesdk.foundation.internal.auth.AdobeAuthIdentityManagementService.2.1
                                @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                                public void onCompletion(JSONObject jSONObject) {
                                    iAdobeAuthIMSSignInClient.onSuccess(string, string2);
                                }
                            }, new IAdobeGenericErrorCallback<AdobeCSDKException>() { // from class: com.adobe.creativesdk.foundation.internal.auth.AdobeAuthIdentityManagementService.2.2
                                @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                                public void onError(AdobeCSDKException adobeCSDKException) {
                                    iAdobeAuthIMSSignInClient.onSuccess(string, string2);
                                }
                            });
                        } else {
                            retry();
                        }
                    } catch (JSONException e2) {
                        AdobeAuthIdentityManagementService.this.onJSONException(e2, iAdobeAuthIMSSignInClient);
                        adobeAnalyticsETSAuthEvent.trackError(e2.getMessage(), e2.getMessage());
                    } finally {
                        adobeAnalyticsETSAuthEvent.endAndTrackEvent();
                    }
                }

                public void retry() {
                    AdobeAuthIdentityManagementService.this.setRefreshToken(null);
                    AdobeAuthIdentityManagementService.this.signIn(iAdobeAuthIMSSignInClient);
                }

                @Override // com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkCompletionHandler
                public void onError(AdobeNetworkException adobeNetworkException) {
                    AdobeLogger.log(Level.DEBUG, "AdobeAuthIdentityManagementService.signIn", String.format("IMS error using refresh token: %s", adobeNetworkException.getDescription()));
                    JSONObject userInteractionDataFor = AdobeAuthIdentityManagementService.this.getUserInteractionDataFor(adobeNetworkException);
                    adobeAnalyticsETSAuthEvent.trackError(adobeNetworkException.getErrorCode() != null ? adobeNetworkException.getErrorCode().toString() : "Network Error", adobeNetworkException.getDescription());
                    adobeAnalyticsETSAuthEvent.endAndTrackEvent();
                    if (adobeNetworkException.getStatusCode().intValue() == 400 && userInteractionDataFor != null) {
                        AdobeAuthException adobeAuthExceptionCreateAuthErrorForContinuableEvent = AdobeAuthIdentityManagementService.this.createAuthErrorForContinuableEvent(userInteractionDataFor);
                        AdobeAuthIdentityManagementService.this.setContiuableEventJumpURL(userInteractionDataFor.optString(AdobeAuthIdentityManagementService.IMS_KEY_JUMP));
                        AdobeAuthIdentityManagementService.this.setContiuableEventErrorCode(adobeAuthExceptionCreateAuthErrorForContinuableEvent.getErrorCode().toString());
                        iAdobeAuthIMSSignInClient.onError(adobeAuthExceptionCreateAuthErrorForContinuableEvent);
                        return;
                    }
                    if (adobeNetworkException.getStatusCode().intValue() == 400 || adobeNetworkException.getStatusCode().intValue() == 401) {
                        AdobeAuthIdentityManagementService.this.setContiuableEventJumpURL(null);
                        retry();
                    } else {
                        AdobeAuthIdentityManagementService.this.setContiuableEventJumpURL(null);
                        iAdobeAuthIMSSignInClient.onError(AdobeAuthIdentityManagementService.this.createAuthError(adobeNetworkException));
                    }
                }

                @Override // com.adobe.creativesdk.foundation.internal.auth.IAdobeAuthTokenCallback
                public void onInvalidDeviceId() {
                    adobeAnalyticsETSAuthEvent.trackError(AdobeAuthErrorCode.ADOBE_AUTH_ERROR_CODE_DEVICE_ID_REQUIRED, AdobeAuthIdentityManagementService.IMS_ERROR_INVALID_DEVICE_ID);
                    adobeAnalyticsETSAuthEvent.endAndTrackEvent();
                    iAdobeAuthIMSSignInClient.onError(new AdobeAuthException(AdobeAuthErrorCode.ADOBE_AUTH_ERROR_CODE_DEVICE_ID_REQUIRED));
                }

                @Override // com.adobe.creativesdk.foundation.internal.auth.IAdobeAuthTokenCallback
                public void onInvalidClientId() {
                    adobeAnalyticsETSAuthEvent.trackError(AdobeAuthErrorCode.ADOBE_AUTH_ERROR_CODE_CLIENT_ID_REQUIRED, AdobeAuthIdentityManagementService.IMS_ERROR_INVALID_CLIENT_ID);
                    adobeAnalyticsETSAuthEvent.endAndTrackEvent();
                    iAdobeAuthIMSSignInClient.onError(new AdobeAuthException(AdobeAuthErrorCode.ADOBE_AUTH_ERROR_CODE_CLIENT_ID_REQUIRED));
                }

                @Override // com.adobe.creativesdk.foundation.internal.auth.IAdobeAuthTokenCallback
                public void onInvalidClientSecret() {
                    adobeAnalyticsETSAuthEvent.trackError(AdobeAuthErrorCode.ADOBE_AUTH_ERROR_CODE_CLIENT_SECRET_REQUIRED, AdobeAuthIdentityManagementService.IMS_ERROR_INVALID_CLIENT_SECRET);
                    adobeAnalyticsETSAuthEvent.endAndTrackEvent();
                    iAdobeAuthIMSSignInClient.onError(new AdobeAuthException(AdobeAuthErrorCode.ADOBE_AUTH_ERROR_CODE_CLIENT_SECRET_REQUIRED));
                }
            });
        } else if (this.deviceToken != null) {
            AdobeLogger.log(Level.DEBUG, T, "Trying to refresh the access token with device token");
            getAccessTokenWithDeviceToken(this.deviceToken, new IAdobeAuthTokenCallback() { // from class: com.adobe.creativesdk.foundation.internal.auth.AdobeAuthIdentityManagementService.3
                @Override // com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkCompletionHandler
                public void onSuccess(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                    AdobeLogger.log(Level.DEBUG, AdobeAuthIdentityManagementService.T, "Inside getAccessTokenWithDeviceToken(), authTokenHandler onSuccess() callback" + new Date().toString());
                    try {
                        AdobeAuthIdentityManagementService.this.setContiuableEventJumpURL(null);
                        AdobeJSONObject adobeJSONObject = new AdobeJSONObject(adobeNetworkHttpResponse.getDataString());
                        final String string = adobeJSONObject.getString("userId");
                        final String string2 = adobeJSONObject.getString("access_token");
                        if (string2 != null) {
                            AdobeAuthIdentityManagementService.this.parseResponse(adobeJSONObject, true);
                            AdobeAuthIdentityManagementService.this.setDeviceToken(AdobeAuthIdentityManagementService.this.deviceToken);
                            AdobeAuthIdentityManagementService.this.setDeviceTokenExpiration(AdobeAuthIdentityManagementService.this.deviceToken);
                            AdobeAuthIdentityManagementService.this.profileFromServiceWithAccessToken(string2, new IAdobeGenericCompletionCallback<JSONObject>() { // from class: com.adobe.creativesdk.foundation.internal.auth.AdobeAuthIdentityManagementService.3.1
                                @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                                public void onCompletion(JSONObject jSONObject) {
                                    iAdobeAuthIMSSignInClient.onSuccess(string, string2);
                                }
                            }, new IAdobeGenericErrorCallback<AdobeCSDKException>() { // from class: com.adobe.creativesdk.foundation.internal.auth.AdobeAuthIdentityManagementService.3.2
                                @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                                public void onError(AdobeCSDKException adobeCSDKException) {
                                    iAdobeAuthIMSSignInClient.onSuccess(string, string2);
                                }
                            });
                        } else {
                            retry();
                        }
                    } catch (JSONException e2) {
                        AdobeAuthIdentityManagementService.this.onJSONException(e2, iAdobeAuthIMSSignInClient);
                        adobeAnalyticsETSAuthEvent.trackError(e2.getMessage(), e2.getMessage());
                    } finally {
                        adobeAnalyticsETSAuthEvent.endAndTrackEvent();
                    }
                }

                private void retry() {
                    AdobeAuthIdentityManagementService.this.setDeviceToken(null);
                    AdobeAuthIdentityManagementService.this.signIn(iAdobeAuthIMSSignInClient);
                }

                @Override // com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkCompletionHandler
                public void onError(AdobeNetworkException adobeNetworkException) {
                    AdobeLogger.log(Level.DEBUG, AdobeAuthIdentityManagementService.T, "Inside getAccessTokenWithDeviceToken(), authTokenHandler onError() callback" + new Date().toString());
                    adobeAnalyticsETSAuthEvent.trackError(adobeNetworkException.getErrorCode() != null ? adobeNetworkException.getErrorCode().toString() : "Network Error", adobeNetworkException.getDescription());
                    adobeAnalyticsETSAuthEvent.endAndTrackEvent();
                    JSONObject userInteractionDataFor = AdobeAuthIdentityManagementService.this.getUserInteractionDataFor(adobeNetworkException);
                    if (adobeNetworkException.getStatusCode().intValue() == 400 && userInteractionDataFor != null) {
                        AdobeAuthException adobeAuthExceptionCreateAuthErrorForContinuableEvent = AdobeAuthIdentityManagementService.this.createAuthErrorForContinuableEvent(userInteractionDataFor);
                        AdobeAuthIdentityManagementService.this.setContiuableEventJumpURL(userInteractionDataFor.optString(AdobeAuthIdentityManagementService.IMS_KEY_JUMP));
                        AdobeAuthIdentityManagementService.this.setContiuableEventErrorCode(adobeAuthExceptionCreateAuthErrorForContinuableEvent.getErrorCode().toString());
                        iAdobeAuthIMSSignInClient.onError(adobeAuthExceptionCreateAuthErrorForContinuableEvent);
                        return;
                    }
                    if (adobeNetworkException.getStatusCode().intValue() == 400 || adobeNetworkException.getStatusCode().intValue() == 401) {
                        AdobeAuthIdentityManagementService.this.setContiuableEventJumpURL(null);
                        retry();
                    } else {
                        AdobeAuthIdentityManagementService.this.setContiuableEventJumpURL(null);
                        iAdobeAuthIMSSignInClient.onError(AdobeAuthIdentityManagementService.this.createAuthError(adobeNetworkException));
                    }
                }

                @Override // com.adobe.creativesdk.foundation.internal.auth.IAdobeAuthTokenCallback
                public void onInvalidDeviceId() {
                    adobeAnalyticsETSAuthEvent.trackError(AdobeAuthErrorCode.ADOBE_AUTH_ERROR_CODE_DEVICE_ID_REQUIRED, AdobeAuthIdentityManagementService.IMS_ERROR_INVALID_DEVICE_ID);
                    adobeAnalyticsETSAuthEvent.endAndTrackEvent();
                    iAdobeAuthIMSSignInClient.onError(new AdobeAuthException(AdobeAuthErrorCode.ADOBE_AUTH_ERROR_CODE_DEVICE_ID_REQUIRED));
                }

                @Override // com.adobe.creativesdk.foundation.internal.auth.IAdobeAuthTokenCallback
                public void onInvalidClientId() {
                    adobeAnalyticsETSAuthEvent.trackError(AdobeAuthErrorCode.ADOBE_AUTH_ERROR_CODE_CLIENT_ID_REQUIRED, AdobeAuthIdentityManagementService.IMS_ERROR_INVALID_CLIENT_ID);
                    adobeAnalyticsETSAuthEvent.endAndTrackEvent();
                    iAdobeAuthIMSSignInClient.onError(new AdobeAuthException(AdobeAuthErrorCode.ADOBE_AUTH_ERROR_CODE_CLIENT_ID_REQUIRED));
                }

                @Override // com.adobe.creativesdk.foundation.internal.auth.IAdobeAuthTokenCallback
                public void onInvalidClientSecret() {
                    adobeAnalyticsETSAuthEvent.trackError(AdobeAuthErrorCode.ADOBE_AUTH_ERROR_CODE_CLIENT_SECRET_REQUIRED, AdobeAuthIdentityManagementService.IMS_ERROR_INVALID_CLIENT_SECRET);
                    adobeAnalyticsETSAuthEvent.endAndTrackEvent();
                    iAdobeAuthIMSSignInClient.onError(new AdobeAuthException(AdobeAuthErrorCode.ADOBE_AUTH_ERROR_CODE_CLIENT_SECRET_REQUIRED));
                }
            });
        } else {
            AdobeLogger.log(Level.DEBUG, T, "Show signin UI");
            iAdobeAuthIMSSignInClient.onInfoNeeded(AdobeAuthIMSInfoNeeded.AdobeAuthIMSInfoNeededUsernameAndPassword);
        }
    }

    private AdobeNetworkException handleSimulation() {
        if (simulationCount > 1) {
            return null;
        }
        simulationCount++;
        HashMap map = new HashMap();
        AdobeNetworkHttpResponse adobeNetworkHttpResponse = new AdobeNetworkHttpResponse();
        adobeNetworkHttpResponse.setStatusCode(400);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("error", AdobeAuthIMSEmailVerificationError);
            jSONObject.put(IMS_KEY_JUMP, "http://www.google.com");
        } catch (JSONException e2) {
        }
        adobeNetworkHttpResponse.setData(ByteBuffer.wrap(jSONObject.toString().getBytes()));
        map.put("Response", adobeNetworkHttpResponse);
        return new AdobeNetworkException(AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorBadRequest, map, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onJSONException(JSONException jSONException, IAdobeAuthIMSSignInClient iAdobeAuthIMSSignInClient) {
        AdobeLogger.log(Level.ERROR, T, "Error parsing JSON", jSONException);
        iAdobeAuthIMSSignInClient.onError(new AdobeAuthException(AdobeAuthErrorCode.ADOBE_AUTH_ERROR_CODE_UNKNOWN_ERROR));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public AdobeAuthException createAuthError(AdobeNetworkException adobeNetworkException) {
        return adobeNetworkException.getErrorCode() == AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorOffline ? new AdobeAuthException(AdobeAuthErrorCode.ADOBE_AUTH_ERROR_CODE_OFFLINE) : new AdobeAuthException(AdobeAuthErrorCode.ADOBE_AUTH_ERROR_CODE_NETWORK_ERROR);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public JSONObject getUserInteractionDataFor(AdobeNetworkException adobeNetworkException) {
        JSONObject jSONObject;
        Exception e2;
        String dataString = ((AdobeNetworkHttpResponse) adobeNetworkException.getData().get(AdobeNetworkException.getKeyForResponse())).getDataString();
        if (dataString == null) {
            return null;
        }
        try {
            jSONObject = new JSONObject(dataString);
            try {
                String strOptString = jSONObject.optString("error");
                String strOptString2 = jSONObject.optString(IMS_KEY_JUMP);
                if (strOptString != null && strOptString2 != null) {
                    if (strOptString != null && !strOptString.equals(AdobeAuthIMSEmailVerificationError) && !strOptString.equals(AdobeAuthIMSTermsOfUseError)) {
                        if (strOptString.equals(AdobeAuthIMSAgeVerificationError)) {
                            return jSONObject;
                        }
                    } else {
                        return jSONObject;
                    }
                }
                return null;
            } catch (Exception e3) {
                e2 = e3;
                AdobeLogger.log(Level.ERROR, T, "Error parsing JSON", e2);
                return jSONObject;
            }
        } catch (Exception e4) {
            jSONObject = null;
            e2 = e4;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public AdobeAuthException createAuthErrorForContinuableEvent(JSONObject jSONObject) {
        String strOptString;
        if (jSONObject == null || (strOptString = jSONObject.optString("error")) == null) {
            return null;
        }
        switch (strOptString) {
        }
        return null;
    }

    protected void getAccessTokenWithAuthCode(String str, final IAdobeAuthTokenCallback iAdobeAuthTokenCallback) {
        if (getClientID() == null) {
            iAdobeAuthTokenCallback.onInvalidClientId();
            return;
        }
        if (getClientSecret() == null) {
            iAdobeAuthTokenCallback.onInvalidClientSecret();
            return;
        }
        HashMap map = new HashMap();
        map.put(IMS_KEY_GRANT_TYPE, IMS_KEY_TOKEN_TYPE_AUTH);
        map.put("code", str);
        if (this.grantType == AdobeAuthIMSGrantType.AdobeAuthIMSGrantTypeDevice) {
            map.put(IMS_KEY_DEVICE_ID, getDeviceID());
        }
        map.put("client_id", getClientID());
        map.put(IMS_KEY_CLIENT_SECRET, getClientSecret());
        map.put(IMS_KEY_REDIRECT_URI, getRedirectURI());
        AdobeLogger.log(Level.DEBUG, T, "Inside getAccessTokenWithAuthCode() " + new Date().toString());
        makeHTTPOperationForURL(getTokenURL(), AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodPOST, map, "application/x-www-form-urlencoded", new IAdobeNetworkCompletionHandler() { // from class: com.adobe.creativesdk.foundation.internal.auth.AdobeAuthIdentityManagementService.4
            @Override // com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkCompletionHandler
            public void onSuccess(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                AdobeLogger.log(Level.DEBUG, AdobeAuthIdentityManagementService.T, "Inside getAccessTokenWithAuthCode(), onSuccess() callback" + new Date().toString());
                if (adobeNetworkHttpResponse.getStatusCode() == 200) {
                    iAdobeAuthTokenCallback.onSuccess(adobeNetworkHttpResponse);
                } else {
                    iAdobeAuthTokenCallback.onError(new AdobeNetworkException(AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorBadRequest));
                }
            }

            @Override // com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkCompletionHandler
            public void onError(AdobeNetworkException adobeNetworkException) {
                AdobeLogger.log(Level.DEBUG, AdobeAuthIdentityManagementService.T, "Inside getAccessTokenWithAuthCode(), onError() callback" + new Date().toString());
                iAdobeAuthTokenCallback.onError(adobeNetworkException);
            }
        }, false);
    }

    public void getAccessTokenWithDeviceToken(String str, final IAdobeAuthTokenCallback iAdobeAuthTokenCallback) {
        if (getDeviceID() == null) {
            iAdobeAuthTokenCallback.onInvalidDeviceId();
            return;
        }
        if (getClientID() == null) {
            iAdobeAuthTokenCallback.onInvalidClientId();
            return;
        }
        if (getClientSecret() == null) {
            iAdobeAuthTokenCallback.onInvalidClientSecret();
            return;
        }
        HashMap map = new HashMap();
        map.put(IMS_KEY_GRANT_TYPE, "device");
        map.put(IMS_KEY_DEVICE_TOKEN, str);
        map.put(IMS_KEY_DEVICE_ID, getDeviceID());
        map.put("client_id", getClientID());
        map.put(IMS_KEY_CLIENT_SECRET, getClientSecret());
        map.put(IMS_KEY_REDIRECT_URI, getRedirectURI());
        map.put("scope", getClientScope());
        AdobeLogger.log(Level.DEBUG, T, "Inside getAccessTokenWithDeviceToken() " + new Date().toString());
        makeHTTPOperationForURL(getTokenURL(), AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodPOST, map, "application/x-www-form-urlencoded", new IAdobeNetworkCompletionHandler() { // from class: com.adobe.creativesdk.foundation.internal.auth.AdobeAuthIdentityManagementService.5
            @Override // com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkCompletionHandler
            public void onSuccess(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                AdobeLogger.log(Level.DEBUG, AdobeAuthIdentityManagementService.T, "Inside getAccessTokenWithDeviceToken(), onSuccess() callback " + new Date().toString());
                iAdobeAuthTokenCallback.onSuccess(adobeNetworkHttpResponse);
            }

            @Override // com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkCompletionHandler
            public void onError(AdobeNetworkException adobeNetworkException) {
                AdobeLogger.log(Level.DEBUG, AdobeAuthIdentityManagementService.T, "Inside getAccessTokenWithDeviceToken(), onError() callback " + new Date().toString());
                iAdobeAuthTokenCallback.onError(adobeNetworkException);
            }
        }, false);
    }

    public void signInWithAuthCode(String str, final IAdobeAuthIMSSignInClient iAdobeAuthIMSSignInClient) {
        AdobeLogger.log(Level.DEBUG, T, "trying to sign in with authCode");
        final AdobeAnalyticsETSAuthEvent adobeAnalyticsETSAuthEvent = new AdobeAnalyticsETSAuthEvent("access_token");
        getAccessTokenWithAuthCode(str, new IAdobeAuthTokenCallback() { // from class: com.adobe.creativesdk.foundation.internal.auth.AdobeAuthIdentityManagementService.6
            @Override // com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkCompletionHandler
            public void onSuccess(AdobeNetworkHttpResponse adobeNetworkHttpResponse) throws JSONException {
                AdobeJSONObject adobeJSONObject;
                final String string;
                final String string2;
                String string3 = null;
                AdobeLogger.log(Level.DEBUG, AdobeAuthIdentityManagementService.T, "Inside getAccessTokenWithAuthCode(), authTokenHandler onSuccess() callback" + new Date().toString());
                adobeAnalyticsETSAuthEvent.endAndTrackEvent();
                if (adobeNetworkHttpResponse.getDataString() != null) {
                    try {
                        adobeJSONObject = new AdobeJSONObject(adobeNetworkHttpResponse.getDataString());
                        try {
                            string2 = adobeJSONObject.getString("userId");
                            try {
                                string = adobeJSONObject.getString("access_token");
                            } catch (JSONException e2) {
                                e = e2;
                                string = null;
                            }
                        } catch (JSONException e3) {
                            e = e3;
                            string = null;
                            string2 = null;
                        }
                    } catch (JSONException e4) {
                        e = e4;
                        adobeJSONObject = null;
                        string = null;
                        string2 = null;
                    }
                    try {
                        string3 = adobeJSONObject.getString("error");
                    } catch (JSONException e5) {
                        e = e5;
                        AdobeLogger.log(Level.ERROR, AdobeAuthIdentityManagementService.T, "JSON Error", e);
                    }
                } else {
                    adobeJSONObject = null;
                    string = null;
                    string2 = null;
                }
                if (string != null) {
                    AdobeAuthIdentityManagementService.this.parseResponse(adobeJSONObject, false);
                    AdobeAuthIdentityManagementService.this.profileFromServiceWithAccessToken(string, new IAdobeGenericCompletionCallback<JSONObject>() { // from class: com.adobe.creativesdk.foundation.internal.auth.AdobeAuthIdentityManagementService.6.1
                        @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                        public void onCompletion(JSONObject jSONObject) {
                            AdobeAuthIdentityManagementService.this.parseFromProfile(jSONObject);
                            iAdobeAuthIMSSignInClient.onSuccess(string2, string);
                        }
                    }, new IAdobeGenericErrorCallback<AdobeCSDKException>() { // from class: com.adobe.creativesdk.foundation.internal.auth.AdobeAuthIdentityManagementService.6.2
                        @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                        public void onError(AdobeCSDKException adobeCSDKException) {
                            iAdobeAuthIMSSignInClient.onSuccess(string2, string);
                        }
                    });
                } else if (string3 != null) {
                    AdobeAuthIMSInfoNeeded adobeAuthIMSInfoNeededValueOf = AdobeAuthIMSInfoNeeded.valueOf(string3);
                    if (adobeAuthIMSInfoNeededValueOf == AdobeAuthIMSInfoNeeded.AdobeAuthIMSInfoNeededUnknownError) {
                        iAdobeAuthIMSSignInClient.onError(new AdobeAuthException(AdobeAuthErrorCode.ADOBE_AUTH_ERROR_CODE_UNKNOWN_ERROR));
                    } else {
                        iAdobeAuthIMSSignInClient.onInfoNeeded(adobeAuthIMSInfoNeededValueOf);
                    }
                }
            }

            @Override // com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkCompletionHandler
            public void onError(AdobeNetworkException adobeNetworkException) {
                AdobeLogger.log(Level.DEBUG, AdobeAuthIdentityManagementService.T, "Inside getAccessTokenWithAuthCode(), authTokenHandler onError() callback" + new Date().toString());
                adobeAnalyticsETSAuthEvent.trackError(adobeNetworkException.getErrorCode() != null ? adobeNetworkException.getErrorCode().toString() : "Network Error", adobeNetworkException.getDescription());
                adobeAnalyticsETSAuthEvent.endAndTrackEvent();
                iAdobeAuthIMSSignInClient.onError(AdobeAuthIdentityManagementService.this.createAuthError(adobeNetworkException));
            }

            @Override // com.adobe.creativesdk.foundation.internal.auth.IAdobeAuthTokenCallback
            public void onInvalidDeviceId() {
                adobeAnalyticsETSAuthEvent.trackError(AdobeAuthErrorCode.ADOBE_AUTH_ERROR_CODE_DEVICE_ID_REQUIRED, AdobeAuthIdentityManagementService.IMS_ERROR_INVALID_DEVICE_ID);
                adobeAnalyticsETSAuthEvent.endAndTrackEvent();
                iAdobeAuthIMSSignInClient.onError(new AdobeAuthException(AdobeAuthErrorCode.ADOBE_AUTH_ERROR_CODE_DEVICE_ID_REQUIRED));
            }

            @Override // com.adobe.creativesdk.foundation.internal.auth.IAdobeAuthTokenCallback
            public void onInvalidClientId() {
                adobeAnalyticsETSAuthEvent.trackError(AdobeAuthErrorCode.ADOBE_AUTH_ERROR_CODE_CLIENT_ID_REQUIRED, AdobeAuthIdentityManagementService.IMS_ERROR_INVALID_CLIENT_ID);
                adobeAnalyticsETSAuthEvent.endAndTrackEvent();
                iAdobeAuthIMSSignInClient.onError(new AdobeAuthException(AdobeAuthErrorCode.ADOBE_AUTH_ERROR_CODE_CLIENT_ID_REQUIRED));
            }

            @Override // com.adobe.creativesdk.foundation.internal.auth.IAdobeAuthTokenCallback
            public void onInvalidClientSecret() {
                adobeAnalyticsETSAuthEvent.trackError(AdobeAuthErrorCode.ADOBE_AUTH_ERROR_CODE_CLIENT_SECRET_REQUIRED, AdobeAuthIdentityManagementService.IMS_ERROR_INVALID_CLIENT_SECRET);
                adobeAnalyticsETSAuthEvent.endAndTrackEvent();
                iAdobeAuthIMSSignInClient.onError(new AdobeAuthException(AdobeAuthErrorCode.ADOBE_AUTH_ERROR_CODE_CLIENT_SECRET_REQUIRED));
            }
        });
    }

    public void signInWithDeviceToken(final String str, final IAdobeAuthIMSSignInClient iAdobeAuthIMSSignInClient) {
        AdobeLogger.log(Level.DEBUG, T, "trying to sign in with authCode");
        setDeviceTokenExpiration(str);
        final AdobeAnalyticsETSAuthEvent adobeAnalyticsETSAuthEvent = new AdobeAnalyticsETSAuthEvent("access_token");
        getAccessTokenWithDeviceToken(str, new IAdobeAuthTokenCallback() { // from class: com.adobe.creativesdk.foundation.internal.auth.AdobeAuthIdentityManagementService.7
            @Override // com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkCompletionHandler
            public void onSuccess(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                AdobeLogger.log(Level.DEBUG, AdobeAuthIdentityManagementService.T, "Inside getAccessTokenWithDeviceToken(), authTokenHandler onSuccess() callback" + new Date().toString());
                adobeAnalyticsETSAuthEvent.endAndTrackEvent();
                try {
                    AdobeJSONObject adobeJSONObject = new AdobeJSONObject(adobeNetworkHttpResponse.getDataString());
                    final String string = adobeJSONObject.getString("userId");
                    final String string2 = adobeJSONObject.getString("access_token");
                    String string3 = null;
                    if (adobeJSONObject.has("error")) {
                        string3 = adobeJSONObject.getString("error");
                    }
                    if (string2 != null) {
                        AdobeAuthIdentityManagementService.this.parseResponse(adobeJSONObject, true);
                        AdobeAuthIdentityManagementService.this.setDeviceToken(str);
                        AdobeAuthIdentityManagementService.this.setDeviceTokenExpiration(str);
                        AdobeAuthIdentityManagementService.this.profileFromServiceWithAccessToken(string2, new IAdobeGenericCompletionCallback<JSONObject>() { // from class: com.adobe.creativesdk.foundation.internal.auth.AdobeAuthIdentityManagementService.7.1
                            @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                            public void onCompletion(JSONObject jSONObject) {
                                AdobeAuthIdentityManagementService.this.parseFromProfile(jSONObject);
                                iAdobeAuthIMSSignInClient.onSuccess(string, string2);
                            }
                        }, new IAdobeGenericErrorCallback<AdobeCSDKException>() { // from class: com.adobe.creativesdk.foundation.internal.auth.AdobeAuthIdentityManagementService.7.2
                            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                            public void onError(AdobeCSDKException adobeCSDKException) {
                                iAdobeAuthIMSSignInClient.onSuccess(string, string2);
                            }
                        });
                        return;
                    }
                    if (string3 != null) {
                        HashMap map = new HashMap();
                        map.put("info", Integer.valueOf(adobeNetworkHttpResponse.getStatusCode()));
                        iAdobeAuthIMSSignInClient.onError(new AdobeAuthException(AdobeAuthErrorCode.ADOBE_AUTH_ERROR_CODE_UNKNOWN_ERROR, map));
                    }
                } catch (JSONException e2) {
                    AdobeLogger.log(Level.ERROR, AdobeAuthIdentityManagementService.T, "Error in parsing response for access token", e2);
                    AdobeAuthIdentityManagementService.this.onJSONException(e2, iAdobeAuthIMSSignInClient);
                }
            }

            @Override // com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkCompletionHandler
            public void onError(AdobeNetworkException adobeNetworkException) {
                AdobeLogger.log(Level.DEBUG, AdobeAuthIdentityManagementService.T, "Inside getAccessTokenWithDeviceToken(), authTokenHandler onError() callback" + new Date().toString());
                adobeAnalyticsETSAuthEvent.trackError(adobeNetworkException.getErrorCode() != null ? adobeNetworkException.getErrorCode().toString() : "Network Error", adobeNetworkException.getDescription());
                adobeAnalyticsETSAuthEvent.endAndTrackEvent();
                iAdobeAuthIMSSignInClient.onError(AdobeAuthIdentityManagementService.this.createAuthError(adobeNetworkException));
            }

            @Override // com.adobe.creativesdk.foundation.internal.auth.IAdobeAuthTokenCallback
            public void onInvalidDeviceId() {
                adobeAnalyticsETSAuthEvent.trackError(AdobeAuthErrorCode.ADOBE_AUTH_ERROR_CODE_DEVICE_ID_REQUIRED, AdobeAuthIdentityManagementService.IMS_ERROR_INVALID_DEVICE_ID);
                adobeAnalyticsETSAuthEvent.endAndTrackEvent();
                iAdobeAuthIMSSignInClient.onError(new AdobeAuthException(AdobeAuthErrorCode.ADOBE_AUTH_ERROR_CODE_DEVICE_ID_REQUIRED));
            }

            @Override // com.adobe.creativesdk.foundation.internal.auth.IAdobeAuthTokenCallback
            public void onInvalidClientId() {
                adobeAnalyticsETSAuthEvent.trackError(AdobeAuthErrorCode.ADOBE_AUTH_ERROR_CODE_CLIENT_ID_REQUIRED, AdobeAuthIdentityManagementService.IMS_ERROR_INVALID_CLIENT_ID);
                adobeAnalyticsETSAuthEvent.endAndTrackEvent();
                iAdobeAuthIMSSignInClient.onError(new AdobeAuthException(AdobeAuthErrorCode.ADOBE_AUTH_ERROR_CODE_CLIENT_ID_REQUIRED));
            }

            @Override // com.adobe.creativesdk.foundation.internal.auth.IAdobeAuthTokenCallback
            public void onInvalidClientSecret() {
                adobeAnalyticsETSAuthEvent.trackError(AdobeAuthErrorCode.ADOBE_AUTH_ERROR_CODE_CLIENT_ID_REQUIRED, AdobeAuthIdentityManagementService.IMS_ERROR_INVALID_CLIENT_SECRET);
                adobeAnalyticsETSAuthEvent.endAndTrackEvent();
                iAdobeAuthIMSSignInClient.onError(new AdobeAuthException(AdobeAuthErrorCode.ADOBE_AUTH_ERROR_CODE_CLIENT_ID_REQUIRED));
            }
        });
    }

    public void stuffCredentialsWithAccessToken(String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        resetKeys();
        setAccessToken(str);
        setAdobeID(str2);
        setDisplayName(str3);
        setFirstName(str4);
        setLastName(str5);
        setEmailAddress(str6);
        setEmailVerified(str7);
        setAccessTokenExpiration(str);
        fetchEntitlements();
    }

    private void removeAnySharedSSOAcount() {
        if (getDeviceID() != null) {
            final String deviceToken = getDeviceToken();
            final AdobeAnalyticsETSAuthEvent adobeAnalyticsETSAuthEvent = new AdobeAnalyticsETSAuthEvent(AdobeAnalyticsETSAuthEvent.ADOBE_ETS_ENVIRONMENT_REMOVE_ACCOUNT);
            adobeAnalyticsETSAuthEvent.trackSSO();
            if (AdobeCSDKAdobeIDAccountType.getAccountType() == null) {
                Log.w(AdobeAnalyticsETSAuthEvent.ADOBE_ETS_ENVIRONMENT_REMOVE_ACCOUNT, "Account Type not set");
            } else {
                final Context applicationContext = AdobeCommonApplicationContextHolder.getSharedApplicationContextHolder().getApplicationContext();
                AdobeCSDKAdobeIdAuthenticatorHelper.getInstance().getSharedAdobeIdTokenFromAccountManager(applicationContext, (Bundle) null, new IAdobeAuthManagerCallback<String, AdobeAuthException>() { // from class: com.adobe.creativesdk.foundation.internal.auth.AdobeAuthIdentityManagementService.8
                    @Override // com.adobe.creativesdk.foundation.adobeinternal.auth.IAdobeAuthManagerCallback
                    public void onSuccess(String str) {
                        if (deviceToken == null) {
                            AdobeCSDKAdobeIdAuthenticatorHelper.removeCurrentSharedAdobeIDFromAccountManager(applicationContext);
                        } else if (str != null && str.equals(deviceToken)) {
                            AdobeCSDKAdobeIdAuthenticatorHelper.removeCurrentSharedAdobeIDFromAccountManager(applicationContext);
                        }
                        adobeAnalyticsETSAuthEvent.endAndTrackEvent();
                    }

                    @Override // com.adobe.creativesdk.foundation.adobeinternal.auth.IAdobeAuthManagerCallback
                    public void onError(AdobeAuthException adobeAuthException) {
                        Log.e("DeviceTokenFromAccount", "error in fetching device token from account");
                        adobeAnalyticsETSAuthEvent.trackError(adobeAuthException.getErrorCode(), adobeAuthException.getDescription());
                        adobeAnalyticsETSAuthEvent.endAndTrackEvent();
                    }
                });
            }
        }
    }

    public void signOut(final IAdobeAuthIMSSignOutClient iAdobeAuthIMSSignOutClient) {
        setContiuableEventJumpURL(null);
        final AdobeAnalyticsETSAuthEvent adobeAnalyticsETSAuthEvent = new AdobeAnalyticsETSAuthEvent(AdobeAnalyticsEventParams.Type.AdobeEventTypeAppLogout.getValue());
        if (getAccessToken() != null) {
            makeHTTPOperationForURL(getSignOutURL(), AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodGET, new HashMap(), null, new IAdobeNetworkCompletionHandler() { // from class: com.adobe.creativesdk.foundation.internal.auth.AdobeAuthIdentityManagementService.9
                @Override // com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkCompletionHandler
                public void onSuccess(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                    adobeAnalyticsETSAuthEvent.endAndTrackEvent();
                    iAdobeAuthIMSSignOutClient.onSuccess();
                }

                @Override // com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkCompletionHandler
                public void onError(AdobeNetworkException adobeNetworkException) {
                    adobeAnalyticsETSAuthEvent.trackError(adobeNetworkException.getErrorCode() != null ? adobeNetworkException.getErrorCode().toString() : "Network Error", adobeNetworkException.getDescription());
                    adobeAnalyticsETSAuthEvent.endAndTrackEvent();
                    iAdobeAuthIMSSignOutClient.onSuccess();
                }
            }, false);
            AdobeLogger.log(Level.DEBUG, T, "Trying to reset tokens from signOut()(accessToken is not null)");
            removeAnySharedSSOAcount();
            resetKeys();
            return;
        }
        AdobeLogger.log(Level.DEBUG, T, "Trying to reset tokens from signOut()(accessToken is null)");
        removeAnySharedSSOAcount();
        resetKeys();
        adobeAnalyticsETSAuthEvent.endAndTrackEvent();
        iAdobeAuthIMSSignOutClient.onSuccess();
    }

    public void switchAccount() {
        AdobeLogger.log(Level.DEBUG, T, "SWITCH Account");
        resetKeys();
    }

    public void setAdditionalClientScopes(String[] strArr) {
        LinkedHashSet linkedHashSet = new LinkedHashSet(Arrays.asList(IMS_CREATIVE_SDK_SCOPES));
        if (strArr != null) {
            for (String str : strArr) {
                String strReplaceAll = str.replaceAll("\\s", "");
                if (strReplaceAll.length() > 0) {
                    linkedHashSet.add(strReplaceAll);
                }
            }
        }
        StringBuilder sb = new StringBuilder();
        Iterator it = linkedHashSet.iterator();
        while (it.hasNext()) {
            sb.append((String) it.next()).append(BehanceSDKConstants.TAG_CLIENT_SIDE_SEPERATOR);
        }
        setClientScope(sb.substring(0, sb.length() - 1));
    }

    public String getContiuableEventJumpURL() {
        return this.authKeychain.getContiuableEventJumpURL();
    }

    void setContiuableEventJumpURL(String str) {
        if (str == null) {
            this.authKeychain.deleteKey(AdobeAuthKeychain.ADOBE_AUTH_KEYCHAIN_CONTINUABLE_EVENT_JUMP_URL);
        } else {
            this.authKeychain.updateOrAddKey(AdobeAuthKeychain.ADOBE_AUTH_KEYCHAIN_CONTINUABLE_EVENT_JUMP_URL, str);
        }
    }

    public String getContiuableEventErrorCode() {
        return this.authKeychain.getContiuableEventErrorCode();
    }

    protected AdobeAuthException getContinuableError() {
        switch (getContiuableEventErrorCode()) {
            case "ride_AdobeID_acct_evs":
                return new AdobeAuthException(AdobeAuthErrorCode.ADOBE_AUTH_ERROR_CODE_EMAIL_VERIFICATION);
            case "ride_AdobeID_acct_terms":
                return new AdobeAuthException(AdobeAuthErrorCode.ADOBE_AUTH_ERROR_CODE_UPDATED_TOU);
            case "ride_AdobeID_acct_actreq":
                return new AdobeAuthException(AdobeAuthErrorCode.ADOBE_AUTH_ERROR_CODE_AGE_VERIFICATION);
            default:
                return null;
        }
    }

    void setContiuableEventErrorCode(String str) {
        this.authKeychain.updateOrAddKey(AdobeAuthKeychain.ADOBE_AUTH_KEYCHAIN_CONTINUABLE_EVENT_ERROR_CODE, str);
    }

    public void clearContinuableEventInfo() {
        this.authKeychain.deleteKey(AdobeAuthKeychain.ADOBE_AUTH_KEYCHAIN_CONTINUABLE_EVENT_JUMP_URL);
        this.authKeychain.deleteKey(AdobeAuthKeychain.ADOBE_AUTH_KEYCHAIN_CONTINUABLE_EVENT_ERROR_CODE);
    }

    public String getAdobeID() {
        if (TextUtils.isEmpty(this.adobeID)) {
            this.adobeID = this.authKeychain.getAdobeID();
        }
        return this.adobeID;
    }

    void setAdobeID(String str) {
        if (TextUtils.isEmpty(str)) {
            AdobeLogger.log(Level.ERROR, T, "adobeID empty.");
        }
        this.adobeID = str;
        this.authKeychain.updateOrAddKey(AdobeAuthKeychain.ADOBE_AUTH_KEYCHAIN_ADOBE_ID, str);
    }

    public String getClientScope() {
        if (TextUtils.isEmpty(this.clientScope)) {
            this.clientScope = this.authKeychain.getClientScope();
        }
        return this.clientScope;
    }

    private void setClientScope(String str) {
        this.clientScope = str;
        this.authKeychain.updateOrAddKey(AdobeAuthKeychain.ADOBE_AUTH_KEYCHAIN_CLIENT_SCOPE, str);
    }

    public String getAccessToken() {
        if (this.accessToken == null) {
            Date accessTokenExpiration = this.authKeychain.getAccessTokenExpiration();
            if (accessTokenExpiration != null && accessTokenExpiration.getTime() - new Date().getTime() > 0) {
                this.accessToken = this.authKeychain.getAccessToken();
                AdobeLogger.log(Level.DEBUG, T, "Getting Access Token; (inside if)ExpirationDate : " + accessTokenExpiration);
            } else {
                AdobeLogger.log(Level.DEBUG, T, "Getting Access Token; (inside else)ExpirationDate : " + accessTokenExpiration);
            }
        }
        return this.accessToken;
    }

    void setAccessToken(String str) {
        this.accessToken = str;
        addToKeychain(AdobeAuthKeychain.ADOBE_AUTH_KEYCHAIN_ACCESS_TOKEN, str);
        AdobeLogger.log(Level.DEBUG, T, "Setting the access token " + new Date().toString());
    }

    public String getDisplayName() {
        if (this.displayName == null) {
            this.displayName = this.authKeychain.getDisplayName();
        }
        return this.displayName;
    }

    void setDisplayName(String str) {
        this.displayName = str;
        addToKeychain(AdobeAuthKeychain.ADOBE_AUTH_KEYCHAIN_DISPLAY_NAME, str);
    }

    public String getIsEnterPrise() {
        if (this.isEnterPrise == null) {
            this.isEnterPrise = this.authKeychain.getEnterpriseInfo();
        }
        return this.isEnterPrise;
    }

    public void setIsEnterPrise(String str) {
        this.isEnterPrise = str;
        addToKeychain(AdobeAuthKeychain.ADOBE_AUTH_KEYCHAIN_ENTERPRISE_INFO, str);
    }

    public String getFirstName() {
        if (this.firstName == null) {
            this.firstName = this.authKeychain.getFirstName();
        }
        return this.firstName;
    }

    void setFirstName(String str) {
        this.firstName = str;
        addToKeychain(AdobeAuthKeychain.ADOBE_AUTH_KEYCHAIN_FIRST_NAME, str);
    }

    String getLastName() {
        if (this.lastName == null) {
            this.lastName = this.authKeychain.getLastName();
        }
        return this.lastName;
    }

    void setLastName(String str) {
        this.lastName = str;
        addToKeychain(AdobeAuthKeychain.ADOBE_AUTH_KEYCHAIN_LAST_NAME, str);
    }

    public String getAccountType() {
        if (this.accountType == null) {
            this.accountType = this.authKeychain.getAccountType();
        }
        return this.accountType;
    }

    void setAccountType(String str) {
        this.accountType = str;
        addToKeychain(AdobeAuthKeychain.ADOBE_AUTH_KEYCHAIN_ACCOUNT_TYPE, str);
    }

    public String getEmailAddress() {
        if (this.emailAddress == null) {
            this.emailAddress = this.authKeychain.getEmailAddress();
        }
        return this.emailAddress;
    }

    void setEmailAddress(String str) {
        this.emailAddress = str;
        addToKeychain("Email", str);
    }

    public String getEmailVerified() {
        if (this.emailVerified == null) {
            this.emailVerified = this.authKeychain.getEmailVerified();
        }
        return this.emailVerified;
    }

    void setEmailVerified(String str) {
        this.emailVerified = str;
        addToKeychain(AdobeAuthKeychain.ADOBE_AUTH_KEYCHAIN_EMAIL_VERIFIED, str);
    }

    public String getCountryCode() {
        if (this.countryCode == null) {
            this.countryCode = this.authKeychain.getCountrycode();
        }
        return this.countryCode;
    }

    void setCountrycode(String str) {
        this.countryCode = str;
        addToKeychain(AdobeAuthKeychain.ADOBE_AUTH_KEYCHAIN_COUNTRY_CODE, str);
    }

    public String getLicenseStatus() {
        if (this.licenseStatus == null) {
            this.licenseStatus = this.authKeychain.getLicenseStatus();
        }
        return this.licenseStatus;
    }

    void setLicenceStatus(String str) {
        this.licenseStatus = str;
        addToKeychain(AdobeAuthKeychain.ADOBE_AUTH_KEYCHAIN_LICENSE_STATUS, this.licenseStatus);
    }

    public String getDeviceToken() {
        if (this.deviceToken == null) {
            Date deviceTokenExpiration = this.authKeychain.getDeviceTokenExpiration();
            if (deviceTokenExpiration != null && deviceTokenExpiration.getTime() - new Date().getTime() > 0) {
                this.deviceToken = this.authKeychain.getDeviceToken();
                AdobeLogger.log(Level.DEBUG, T, "Getting Device Token; (inside if)ExpirationDate : " + deviceTokenExpiration);
            } else {
                AdobeLogger.log(Level.DEBUG, T, "Getting Device Token; (inside else)ExpirationDate : " + deviceTokenExpiration);
            }
        }
        return this.deviceToken;
    }

    void setDeviceToken(String str) {
        this.deviceToken = str;
        AdobeLogger.log(Level.DEBUG, T, "Setting Device Token " + new Date().toString());
        addToKeychain("DeviceToken", str);
    }

    public String getRefreshToken() {
        if (this.refreshToken == null) {
            Date refreshTokenExpiration = this.authKeychain.getRefreshTokenExpiration();
            if (refreshTokenExpiration != null && refreshTokenExpiration.getTime() - new Date().getTime() > 0) {
                this.refreshToken = this.authKeychain.getRefreshToken();
                AdobeLogger.log(Level.DEBUG, T, "Getting Refresh Token; (inside if)ExpirationDate : " + refreshTokenExpiration);
            } else {
                AdobeLogger.log(Level.DEBUG, T, "Getting Refresh Token; (inside else)ExpirationDate : " + refreshTokenExpiration);
            }
        }
        return this.refreshToken;
    }

    void setRefreshToken(String str) {
        this.refreshToken = str;
        AdobeLogger.log(Level.DEBUG, T, "Setting Refresh Token " + new Date().toString());
        addToKeychain("RefreshToken", str);
    }

    void resetRefreshToken() {
        this.refreshToken = null;
        this.refreshTokenExpirationTime = null;
        this.authKeychain.deleteKey("RefreshToken");
        this.authKeychain.deleteKey(AdobeAuthKeychain.ADOBE_AUTH_KEYCHAIN_REFRESH_TOKEN_EXPIRATION);
    }

    public String getContinuationToken() {
        if (this.continuationToken == null) {
            this.continuationToken = this.authKeychain.getContinuationToken();
        }
        return this.continuationToken;
    }

    void setContinuationToken(String str) {
        this.continuationToken = str;
        addToKeychain("ContinuationToken", str);
    }

    public String getServiceLevel() {
        if (this.serviceLevel == null) {
            this.serviceLevel = this.authKeychain.getServiceLevel();
        }
        return this.serviceLevel;
    }

    private void setServiceLevel(String str) {
        this.serviceLevel = str;
        addToKeychain(AdobeAuthKeychain.ADOBE_AUTH_KEYCHAIN_SERVICE_LEVEL, str);
    }

    public String getServiceCodes() {
        if (this.serviceCodes == null) {
            this.serviceCodes = this.authKeychain.getServiceCodes();
        }
        return this.serviceCodes;
    }

    private void setServiceCodes(String str) {
        this.serviceCodes = str;
        addToKeychain(AdobeAuthKeychain.ADOBE_AUTH_KEYCHAIN_SERVICE_CODE, str);
    }

    public String getImsHost() {
        return this.imsHost;
    }

    protected void setImsHost(String str) {
        this.imsHost = str;
    }

    public String getDeviceName() {
        if (this.deviceName == null) {
            this.deviceName = this.authKeychain.findKey(AdobeAuthKeychain.DEVICE_NAME);
        }
        return this.deviceName;
    }

    void setDeviceName(String str) {
        this.deviceName = str;
        addToKeychain(AdobeAuthKeychain.DEVICE_NAME, str);
    }

    public String getClientID() {
        if (this.clientID == null) {
            this.clientID = this.authKeychain.findKey(AdobeAuthKeychain.CLIENT_ID);
        }
        return this.clientID;
    }

    void setClientID(String str) {
        this.clientID = str;
        addToKeychain(AdobeAuthKeychain.CLIENT_ID, str);
    }

    public String getClientSecret() {
        if (this.clientSecret == null) {
            this.clientSecret = this.authKeychain.findKey(AdobeAuthKeychain.CLIENT_SECRET);
        }
        return this.clientSecret;
    }

    void setClientSecret(String str) {
        this.clientSecret = str;
        addToKeychain(AdobeAuthKeychain.CLIENT_SECRET, str);
    }

    public String getClientState() {
        if (this.clientState == null) {
            this.clientState = this.authKeychain.findKey(AdobeAuthKeychain.CLIENT_STATE);
        }
        return this.clientState;
    }

    public void setClientState(String str) {
        this.clientState = str;
        addToKeychain(AdobeAuthKeychain.CLIENT_STATE, str);
    }

    public String getDeviceID() {
        if (this.deviceID == null) {
            this.deviceID = this.authKeychain.findKey(AdobeAuthKeychain.DEVICE_ID);
        }
        return this.deviceID;
    }

    protected void setDeviceID(String str) {
        this.deviceID = str;
        addToKeychain(AdobeAuthKeychain.DEVICE_ID, str);
    }

    public String getIDPFlow() {
        if (this.idpFlow == null) {
            this.idpFlow = this.authKeychain.findKey(AdobeAuthKeychain.IDP_FLOW);
        }
        return this.idpFlow;
    }

    protected void setIDPFlow(String str) {
        this.idpFlow = str;
        addToKeychain(AdobeAuthKeychain.IDP_FLOW, str);
    }

    public Date getAccessTokenExpirationTime() {
        if (this.accessTokenExpirationTime == null) {
            this.accessTokenExpirationTime = this.authKeychain.getAccessTokenExpiration();
        }
        if (this.accessTokenExpirationTime == null) {
            return null;
        }
        Date date = new Date(this.accessTokenExpirationTime.getTime());
        AdobeLogger.log(Level.DEBUG, T, "Getting the access token expiration time : " + date);
        return date;
    }

    public void setAccessTokenExpirationTime(Date date) {
        this.accessTokenExpirationTime = date;
        addToKeychain(AdobeAuthKeychain.ADOBE_AUTH_KEYCHAIN_ACCESS_TOKEN_EXPIRATION, date);
        AdobeLogger.log(Level.DEBUG, T, "Setting the expiration time of access token : " + date);
    }

    public Date getDeviceTokenExpirationTime() {
        if (this.deviceTokenExpirationTime == null) {
            this.deviceTokenExpirationTime = this.authKeychain.getDeviceTokenExpiration();
        }
        if (this.deviceTokenExpirationTime == null) {
            return null;
        }
        Date date = new Date(this.deviceTokenExpirationTime.getTime());
        AdobeLogger.log(Level.DEBUG, T, "Getting DeviceTokenExpirationTime : " + date);
        return date;
    }

    public void setDeviceTokenDefaultExpiration() {
        Calendar calendar = Calendar.getInstance();
        calendar.add(13, DEFAULT_DEVICE_TOKEN_EXPIRY);
        setDeviceTokenExpirationTime(calendar.getTime());
    }

    public void setDeviceTokenExpirationTime(Date date) {
        this.deviceTokenExpirationTime = date;
        addToKeychain(AdobeAuthKeychain.ADOBE_AUTH_KEYCHAIN_DEVICE_TOKEN_EXPIRATION, date);
        AdobeLogger.log(Level.DEBUG, T, "Setting DeviceTokenExpirationTime : " + date);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setTokenExpirationTime(TokenType tokenType, Date date) {
        switch (tokenType) {
            case DeviceToken:
                setDeviceTokenExpirationTime(date);
                break;
            case AccessToken:
                setAccessTokenExpirationTime(date);
                break;
            case RefreshToken:
                setRefreshTokenExpirationTime(date);
                break;
            default:
                AdobeLogger.log(Level.ERROR, T, "unknown token type " + tokenType);
                break;
        }
    }

    private void setTokenExpiration(final TokenType tokenType, String str, int i) {
        Calendar calendar = Calendar.getInstance();
        calendar.add(13, i);
        setTokenExpirationTime(tokenType, calendar.getTime());
        getTokenExpirationTime(str, new IAdobeAuthTokenCallback() { // from class: com.adobe.creativesdk.foundation.internal.auth.AdobeAuthIdentityManagementService.10
            @Override // com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkCompletionHandler
            public void onSuccess(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                try {
                    String string = new AdobeJSONObject(adobeNetworkHttpResponse.getDataString()).getString(AdobeAuthIdentityManagementService.IMS_KEY_EXPIRES_AT);
                    if (string == null) {
                        AdobeLogger.log(Level.ERROR, AdobeAuthIdentityManagementService.T, tokenType + " Expiry time is null");
                    } else {
                        long j = Long.parseLong(string);
                        Calendar calendar2 = Calendar.getInstance();
                        calendar2.add(13, (int) (j / 1000));
                        calendar2.add(14, (int) (j % 1000));
                        AdobeAuthIdentityManagementService.this.setTokenExpirationTime(tokenType, calendar2.getTime());
                    }
                } catch (Exception e2) {
                    AdobeLogger.log(Level.DEBUG, AdobeAuthIdentityManagementService.T, tokenType + " Error parsing expiration date", e2);
                }
            }

            @Override // com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkCompletionHandler
            public void onError(AdobeNetworkException adobeNetworkException) {
                AdobeLogger.log(Level.ERROR, AdobeAuthIdentityManagementService.T, tokenType + " Network error while getting token expiration time.");
            }

            @Override // com.adobe.creativesdk.foundation.internal.auth.IAdobeAuthTokenCallback
            public void onInvalidDeviceId() {
                AdobeLogger.log(Level.ERROR, AdobeAuthIdentityManagementService.T, tokenType + " " + AdobeAuthIdentityManagementService.IMS_ERROR_INVALID_DEVICE_ID);
            }

            @Override // com.adobe.creativesdk.foundation.internal.auth.IAdobeAuthTokenCallback
            public void onInvalidClientId() {
                AdobeLogger.log(Level.ERROR, AdobeAuthIdentityManagementService.T, tokenType + " " + AdobeAuthIdentityManagementService.IMS_ERROR_INVALID_CLIENT_ID);
            }

            @Override // com.adobe.creativesdk.foundation.internal.auth.IAdobeAuthTokenCallback
            public void onInvalidClientSecret() {
                AdobeLogger.log(Level.ERROR, AdobeAuthIdentityManagementService.T, tokenType + " " + AdobeAuthIdentityManagementService.IMS_ERROR_INVALID_CLIENT_SECRET);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setDeviceTokenExpiration(String str) {
        setTokenExpiration(TokenType.DeviceToken, str, DEFAULT_DEVICE_TOKEN_EXPIRY);
    }

    private void setAccessTokenExpiration(String str) {
        setTokenExpiration(TokenType.AccessToken, str, 86400);
    }

    public Date getRefreshTokenExpirationTime() {
        if (this.refreshTokenExpirationTime == null) {
            this.refreshTokenExpirationTime = this.authKeychain.getRefreshTokenExpiration();
        }
        if (this.refreshTokenExpirationTime == null) {
            return null;
        }
        Date date = new Date(this.refreshTokenExpirationTime.getTime());
        AdobeLogger.log(Level.DEBUG, T, "Getting Refresh Token Expiration Time : " + date);
        return date;
    }

    private void setRefreshTokenExpirationTime(Date date) {
        this.refreshTokenExpirationTime = date;
        AdobeLogger.log(Level.DEBUG, T, "Setting Refresh Token Expiration Time " + date);
        addToKeychain(AdobeAuthKeychain.ADOBE_AUTH_KEYCHAIN_REFRESH_TOKEN_EXPIRATION, date);
    }

    void invalidateAccessToken() {
        setAccessTokenExpirationTime(new Date());
    }

    private void setRefreshTokenExpiration(String str) {
        setTokenExpiration(TokenType.RefreshToken, str, DEFAULT_REFRESH_TOKEN_EXPIRY);
    }

    public void getTokenExpirationTime(String str, final IAdobeNetworkCompletionHandler iAdobeNetworkCompletionHandler) {
        if (getClientID() == null || getClientSecret() == null) {
            iAdobeNetworkCompletionHandler.onError(new AdobeNetworkException(AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorBadRequest));
            return;
        }
        HashMap map = new HashMap();
        map.put(IMS_KEY_TOKEN, str);
        map.put("client_id", getClientID());
        makeHTTPOperationForURL(getValidateTokenURL(), AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodGET, map, "application/x-www-form-urlencoded", new IAdobeNetworkCompletionHandler() { // from class: com.adobe.creativesdk.foundation.internal.auth.AdobeAuthIdentityManagementService.11
            @Override // com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkCompletionHandler
            public void onSuccess(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                if (adobeNetworkHttpResponse.getStatusCode() == 200) {
                    iAdobeNetworkCompletionHandler.onSuccess(adobeNetworkHttpResponse);
                } else {
                    AdobeLogger.log(Level.ERROR, AdobeAuthIdentityManagementService.T, "");
                    iAdobeNetworkCompletionHandler.onError(new AdobeNetworkException(AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorBadRequest));
                }
            }

            @Override // com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkCompletionHandler
            public void onError(AdobeNetworkException adobeNetworkException) {
                iAdobeNetworkCompletionHandler.onError(adobeNetworkException);
            }
        }, true);
    }

    public AdobeAuthIMSEnvironment getEnvironment() {
        return this.environment;
    }

    public void setEnvironment(AdobeAuthIMSEnvironment adobeAuthIMSEnvironment) {
        switch (adobeAuthIMSEnvironment) {
            case AdobeAuthIMSEnvironmentStageUS:
                this.imsHost = "https://ims-na1-stg1.adobelogin.com";
                break;
            case AdobeAuthIMSEnvironmentTestUS:
                this.imsHost = "https://ims-na1-qa1.adobelogin.com";
                break;
            case AdobeAuthIMSEnvironmentTestUS2:
                this.imsHost = "https://ims-na1-qa2.adobelogin.com";
                break;
            case AdobeAuthIdentityManagementServiceUndefined:
                throw new AdobeInvalidIMSHostException();
            default:
                this.imsHost = "https://ims-na1.adobelogin.com";
                break;
        }
        this.networkService = new AdobeNetworkHttpService(this.imsHost, "Adobe Creative SDK", null);
        this.environment = adobeAuthIMSEnvironment;
    }

    public Set<String> getEntitlements() {
        if (this.entitlements == null) {
            this.entitlements = this.authKeychain.getEntitlements();
        }
        return this.entitlements;
    }

    private void setEntitlements(Set<String> set) {
        this.entitlements = set;
        StringBuilder sb = new StringBuilder();
        Iterator<String> it = set.iterator();
        while (it.hasNext()) {
            sb.append(it.next()).append(BehanceSDKConstants.TAG_CLIENT_SIDE_SEPERATOR);
        }
        addToKeychain("Entitlements", sb.substring(0, sb.length() - 1));
    }

    void addToKeychain(String str, Object obj) {
        if (str != null && obj != null) {
            this.authKeychain.updateOrAddKey(str, obj);
        } else if (str != null) {
            this.authKeychain.deleteKey(str);
        }
    }

    String getLoginAPIVersion() {
        return "v1";
    }

    String getLoginAPI() {
        return "/ims/authorize/" + getLoginAPIVersion();
    }

    String getSocialLoginAPI() {
        return "/ims/social/v1/native";
    }

    URL getSocialLoginURL() {
        try {
            return new URL(this.imsHost + getSocialLoginAPI());
        } catch (MalformedURLException e2) {
            AdobeLogger.log(Level.ERROR, T, "Invalid SOCIAL-login URL", e2);
            return null;
        }
    }

    URL getAuthURL() {
        try {
            return new URL(this.imsHost + getLoginAPI());
        } catch (MalformedURLException e2) {
            AdobeLogger.log(Level.ERROR, T, "Invalid auth URL", e2);
            return null;
        }
    }

    URL getDeviceURL() {
        try {
            return new URL(this.imsHost + "/ims/login/v1/device");
        } catch (MalformedURLException e2) {
            AdobeLogger.log(Level.ERROR, T, "Invalid device url", e2);
            return null;
        }
    }

    URL getTokenURL() {
        try {
            return new URL(this.imsHost + "/ims/token/v1");
        } catch (MalformedURLException e2) {
            AdobeLogger.log(Level.ERROR, T, "Invalid token url", e2);
            return null;
        }
    }

    URL getSocialProviderURL() {
        try {
            return new URL(this.imsHost + "/ims/social/providers/");
        } catch (MalformedURLException e2) {
            AdobeLogger.log(Level.ERROR, T, "Invalid social-provider url", e2);
            return null;
        }
    }

    URL getValidateTokenURL() {
        try {
            return new URL(this.imsHost + "/ims/validate_token/v1");
        } catch (MalformedURLException e2) {
            AdobeLogger.log(Level.ERROR, T, "Invalid validate token url");
            return null;
        }
    }

    String getCurrentLocale() {
        return Locale.getDefault().toString();
    }

    String getLogoutAPIVersion() {
        return "v1";
    }

    String getLogoutAPI() {
        return "/ims/logout/" + getLogoutAPIVersion();
    }

    URL getSignOutURL() {
        try {
            return new URL((this.imsHost + getLogoutAPI()) + "?access_token" + Engagement.Comparison.EQ + this.accessToken + "&client_id" + Engagement.Comparison.EQ + getClientID() + "&" + IMS_KEY_CLIENT_SECRET + Engagement.Comparison.EQ + getClientSecret());
        } catch (MalformedURLException e2) {
            AdobeLogger.log(Level.ERROR, T, "Malformed exception", e2);
            return null;
        }
    }

    private String getUTFEncoding(String str) {
        if (str != null) {
            try {
                if (!str.equals("")) {
                    return URLEncoder.encode(str, "UTF-8");
                }
            } catch (UnsupportedEncodingException e2) {
                AdobeLogger.log(Level.ERROR, T, "Error during encode", e2);
                return "";
            }
        }
        return "";
    }

    private String addClientState(String str) {
        if (getClientState() != null && !getClientState().equals("")) {
            return str + "&state" + Engagement.Comparison.EQ + getUTFEncoding(getClientState());
        }
        return str;
    }

    private String addDeviceData(String str) {
        return str + "&" + IMS_KEY_RESPONSE_TYPE + Engagement.Comparison.EQ + "device&" + IMS_KEY_DEVICE_ID + Engagement.Comparison.EQ + getUTFEncoding(getDeviceID()) + "&" + IMS_KEY_DEVICE_NAME + Engagement.Comparison.EQ + getUTFEncoding(getDeviceName());
    }

    public URL getSignInURL() {
        String strAddDeviceData = getAuthURL().toString() + "?" + IMS_KEY_REDIRECT_URI + Engagement.Comparison.EQ + IMS_DEFAULT_REDIRECT_URI + "&scope" + Engagement.Comparison.EQ + getUTFEncoding(getClientScope()) + "&" + IMS_KEY_IDP_FLOW + Engagement.Comparison.EQ + "login&" + IMS_KEY_FORCE_MARKETING_PERMISSION + Engagement.Comparison.EQ + IMS_KEY_TRUE + "&client_id" + Engagement.Comparison.EQ + getClientID() + "&dc" + Engagement.Comparison.EQ + IMS_KEY_FALSE + "&" + IMS_KEY_LOCALE + Engagement.Comparison.EQ + getCurrentLocale();
        if (this.grantType != AdobeAuthIMSGrantType.AdobeAuthIMSGrantTypeAuthorization) {
            strAddDeviceData = addDeviceData(strAddDeviceData);
        }
        try {
            return new URL(addClientState(strAddDeviceData));
        } catch (MalformedURLException e2) {
            AdobeLogger.log(Level.ERROR, T, "Sign in url is malformed", e2);
            return null;
        }
    }

    public String getSocialSignInData() {
        String strAddDeviceData = "redirect_uri=signin%3A%2F%2Fcomplete&scope=" + getUTFEncoding(getClientScope()) + "&" + IMS_KEY_IDP_FLOW + Engagement.Comparison.EQ + IMS_SOCIAL_SIGN_IN_IDP_FLOW + "&" + IMS_KEY_FORCE_MARKETING_PERMISSION + Engagement.Comparison.EQ + IMS_KEY_TRUE + "&client_id" + Engagement.Comparison.EQ + getClientID() + "&" + IMS_KEY_SOCIAL_PROVIDER_ID + Engagement.Comparison.EQ + getUTFEncoding(getSocialProvider()) + "&" + IMS_KEY_SOCIAL_IDP_TOKEN + Engagement.Comparison.EQ + getUTFEncoding(getSocialProviderToken()) + "&" + IMS_KEY_LOCALE + Engagement.Comparison.EQ + getCurrentLocale();
        if (this.grantType != AdobeAuthIMSGrantType.AdobeAuthIMSGrantTypeAuthorization) {
            strAddDeviceData = addDeviceData(strAddDeviceData);
        }
        return addClientState(strAddDeviceData);
    }

    public URL getSignUpURL() {
        String strAddDeviceData = getAuthURL().toString() + "?" + IMS_KEY_REDIRECT_URI + Engagement.Comparison.EQ + IMS_DEFAULT_REDIRECT_URI + "&scope" + Engagement.Comparison.EQ + getUTFEncoding(getClientScope()) + "&" + IMS_KEY_IDP_FLOW + Engagement.Comparison.EQ + IMS_SIGN_UP_IDP_FLOW + "&" + IMS_KEY_FORCE_MARKETING_PERMISSION + Engagement.Comparison.EQ + IMS_KEY_TRUE + "&client_id" + Engagement.Comparison.EQ + getClientID() + "&" + IMS_KEY_LOCALE + Engagement.Comparison.EQ + getCurrentLocale();
        if (this.grantType != AdobeAuthIMSGrantType.AdobeAuthIMSGrantTypeAuthorization) {
            strAddDeviceData = addDeviceData(strAddDeviceData);
        }
        try {
            return new URL(addClientState(strAddDeviceData));
        } catch (MalformedURLException e2) {
            AdobeLogger.log(Level.ERROR, T, "Malformed url", e2);
            return null;
        }
    }

    public boolean isProviderEnabled(String str) {
        return (this.socialProviders == null || this.socialProviders.get(str.toLowerCase()) == null) ? false : true;
    }

    public void getListOfSocialProviders(final IAdobeGetProvidersCallback iAdobeGetProvidersCallback) {
        if (getClientID() == null) {
            iAdobeGetProvidersCallback.onInvalidClientId();
            return;
        }
        if (getDeviceID() == null) {
            iAdobeGetProvidersCallback.onInvalidDeviceId();
            return;
        }
        HashMap map = new HashMap();
        map.put("client_id", getClientID());
        map.put(IMS_KEY_DEVICE_ID, getDeviceID());
        makeHTTPOperationForURL(getSocialProviderURL(), AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodGET, map, "application/x-www-form-urlencoded", new IAdobeNetworkCompletionHandler() { // from class: com.adobe.creativesdk.foundation.internal.auth.AdobeAuthIdentityManagementService.12
            @Override // com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkCompletionHandler
            public void onSuccess(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                String dataString = adobeNetworkHttpResponse.getDataString();
                if (!TextUtils.isEmpty(dataString)) {
                    try {
                        AdobeAuthIdentityManagementService.this.socialProviders = new HashMap();
                        JSONArray jSONArray = new JSONArray(dataString);
                        for (int i = 0; i < jSONArray.length(); i++) {
                            JSONObject jSONObject = jSONArray.getJSONObject(i);
                            if (jSONObject != null) {
                                AdobeAuthIdentityManagementService.this.socialProviders.put(jSONObject.getString(AdobeAuthIdentityManagementService.IMS_KEY_SOCIAL_PROVIDER_NAME).toLowerCase(), jSONObject.getString(AdobeAuthIdentityManagementService.IMS_KEY_SOCIAL_PROVIDER_NAME).toLowerCase());
                            }
                        }
                        iAdobeGetProvidersCallback.onSuccess();
                    } catch (Exception e2) {
                        AdobeLogger.log(Level.ERROR, AdobeAuthIdentityManagementService.T, "Json-parse error", e2);
                        iAdobeGetProvidersCallback.onFailure(new AdobeAuthException(AdobeAuthErrorCode.ADOBE_AUTH_ERROR_CODE_UNKNOWN_ERROR));
                    }
                }
            }

            @Override // com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkCompletionHandler
            public void onError(AdobeNetworkException adobeNetworkException) {
                if (adobeNetworkException != null && adobeNetworkException.getErrorCode() == AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorOffline) {
                    iAdobeGetProvidersCallback.onFailure(new AdobeAuthException(AdobeAuthErrorCode.ADOBE_AUTH_ERROR_CODE_OFFLINE));
                } else {
                    iAdobeGetProvidersCallback.onFailure(new AdobeAuthException(AdobeAuthErrorCode.ADOBE_AUTH_ERROR_CODE_UNKNOWN_ERROR));
                }
            }
        }, true);
    }

    void refreshAccessToken(String str, final IAdobeAuthTokenCallback iAdobeAuthTokenCallback) {
        if (getClientID() == null) {
            iAdobeAuthTokenCallback.onInvalidClientId();
            return;
        }
        if (getClientSecret() == null) {
            iAdobeAuthTokenCallback.onInvalidClientSecret();
            return;
        }
        HashMap map = new HashMap();
        map.put(IMS_KEY_GRANT_TYPE, IMS_KEY_REFRESH_TOKEN);
        map.put(IMS_KEY_REFRESH_TOKEN, str);
        map.put("client_id", getClientID());
        map.put(IMS_KEY_CLIENT_SECRET, getClientSecret());
        AdobeLogger.log(Level.DEBUG, T, "Refreshing Access Token " + new Date().toString());
        makeHTTPOperationForURL(getTokenURL(), AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodPOST, map, "application/x-www-form-urlencoded", new IAdobeNetworkCompletionHandler() { // from class: com.adobe.creativesdk.foundation.internal.auth.AdobeAuthIdentityManagementService.13
            @Override // com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkCompletionHandler
            public void onSuccess(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                if (adobeNetworkHttpResponse.getStatusCode() == 200) {
                    iAdobeAuthTokenCallback.onSuccess(adobeNetworkHttpResponse);
                } else {
                    iAdobeAuthTokenCallback.onError(new AdobeNetworkException(AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorBadRequest));
                }
            }

            @Override // com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkCompletionHandler
            public void onError(AdobeNetworkException adobeNetworkException) {
                AdobeLogger.log(Level.ERROR, AdobeAuthIdentityManagementService.T, "Network error during refresh access token ", adobeNetworkException);
                iAdobeAuthTokenCallback.onError(adobeNetworkException);
            }
        }, false);
    }

    private void makeHTTPOperationForURL(URL url, AdobeNetworkHttpRequestMethod adobeNetworkHttpRequestMethod, Map<String, String> map, String str, IAdobeNetworkCompletionHandler iAdobeNetworkCompletionHandler, boolean z) {
        Handler handlerCreateHandlerForAuthOps;
        AdobeNetworkHttpRequest adobeNetworkHttpRequest = new AdobeNetworkHttpRequest(url, adobeNetworkHttpRequestMethod, map);
        if (adobeNetworkHttpRequestMethod == AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodGET && !map.isEmpty()) {
            this.adobeID = this.authKeychain.getAdobeID();
            adobeNetworkHttpRequest.setQueryParams(map);
        }
        if (adobeNetworkHttpRequestMethod == AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodPOST && !map.isEmpty()) {
            adobeNetworkHttpRequest.setQueryParams(null);
            try {
                String str2 = "";
                for (Map.Entry<String, String> entry : map.entrySet()) {
                    str2 = str2 + entry.getKey() + Engagement.Comparison.EQ + entry.getValue() + "&";
                }
                adobeNetworkHttpRequest.setBody(str2.substring(0, str2.length() - 1).toString().getBytes("UTF-8"));
            } catch (Exception e2) {
                AdobeLogger.log(Level.ERROR, T, "Error in forming request body - " + e2.getMessage());
            }
        }
        if (str != null) {
            adobeNetworkHttpRequest.setRequestProperty("Content-Type", str);
        }
        adobeNetworkHttpRequest.setShouldAddClientId(z);
        try {
            handlerCreateHandlerForAuthOps = AdobeAuthHandler.createHandlerForAuthOps();
        } catch (Exception e3) {
            AdobeLogger.log(Level.ERROR, getClass().getSimpleName(), e3.getMessage(), e3);
            handlerCreateHandlerForAuthOps = null;
        }
        this.networkService.getResponseForDataRequest(adobeNetworkHttpRequest, AdobeNetworkRequestPriority.NORMAL, iAdobeNetworkCompletionHandler, handlerCreateHandlerForAuthOps);
    }

    protected void parseFromProfile(JSONObject jSONObject) {
    }

    protected void parseResponse(AdobeJSONObject adobeJSONObject, boolean z) throws JSONException {
        String string;
        AdobeLogger.log(Level.INFO, T, "parseResponse..");
        if (!adobeJSONObject.has(IMS_KEY_ADOBE_ID_WITH_OPENID) || (string = adobeJSONObject.getString(IMS_KEY_ADOBE_ID_WITH_OPENID)) == null) {
            string = adobeJSONObject.getString("userId");
        }
        if (TextUtils.isEmpty(string)) {
            AdobeLogger.log(Level.ERROR, T, "Adobe ID missing : response " + adobeJSONObject.toString());
            AdobeAnalyticsETSAuthEvent adobeAnalyticsETSAuthEvent = new AdobeAnalyticsETSAuthEvent("access_token");
            adobeAnalyticsETSAuthEvent.trackError(AdobeAuthErrorCode.ADOBE_AUTH_ERROR_CODE_USER_ID_REQUIRED, "Empty user id returned from response");
            adobeAnalyticsETSAuthEvent.endAndTrackEvent();
        }
        setAdobeID(string);
        setAccessToken(adobeJSONObject.getString("access_token"));
        if (adobeJSONObject.has(IMS_KEY_DEVICE_TOKEN)) {
            setDeviceToken(adobeJSONObject.getString(IMS_KEY_DEVICE_TOKEN));
            setDeviceTokenExpiration(adobeJSONObject.getString(IMS_KEY_DEVICE_TOKEN));
        }
        if (adobeJSONObject.has(IMS_KEY_REFRESH_TOKEN)) {
            setRefreshToken(adobeJSONObject.getString(IMS_KEY_REFRESH_TOKEN));
            setRefreshTokenExpiration(adobeJSONObject.getString(IMS_KEY_REFRESH_TOKEN));
        }
        setContinuationToken(adobeJSONObject.getString(IMS_KEY_CONTINUATION_TOKEN));
        setDisplayName(adobeJSONObject.getString("displayName"));
        setFirstName(adobeJSONObject.getString("first_name"));
        setLastName(adobeJSONObject.getString("last_name"));
        setEmailAddress(adobeJSONObject.getString("email"));
        setEmailVerified(adobeJSONObject.getString("emailVerified"));
        setCountrycode(adobeJSONObject.getString("countryCode"));
        setAccountType(adobeJSONObject.getString(IMS_KEY_ACCOUNT_TYPE));
        ServiceAccountInfo serviceInfoFromServiceAccounts = getServiceInfoFromServiceAccounts(adobeJSONObject.getJSONArray(IMS_KEY_SERVICE_ACCOUNTS));
        String serviceLevel = serviceInfoFromServiceAccounts.getServiceLevel();
        String combinedServiceCodes = serviceInfoFromServiceAccounts.getCombinedServiceCodes();
        if (!TextUtils.isEmpty(serviceLevel)) {
            setServiceLevel(serviceLevel);
        }
        if (!TextUtils.isEmpty(combinedServiceCodes)) {
            setServiceCodes(combinedServiceCodes);
        }
        String string2 = adobeJSONObject.getString(IMS_KEY_EXPIRES_IN);
        if (string2 != null) {
            Long lValueOf = Long.valueOf(Long.parseLong(string2) / 1000);
            Calendar calendar = Calendar.getInstance();
            calendar.add(13, lValueOf.intValue());
            setAccessTokenExpirationTime(calendar.getTime());
        } else {
            setAccessTokenExpirationTime(null);
        }
        fetchEntitlements();
    }

    void fetchEntitlements() {
        fetchEntitlements(null);
    }

    public void fetchEntitlements(IAdobeNetworkCompletionHandler iAdobeNetworkCompletionHandler) {
    }

    private ServiceAccountInfo getServiceInfoFromServiceAccounts(JSONArray jSONArray) throws JSONException {
        String string;
        JSONObject jSONObject;
        String string2;
        ArrayList arrayList = new ArrayList();
        if (jSONArray != null) {
            string = null;
            for (int i = 0; i < jSONArray.length(); i++) {
                try {
                    jSONObject = jSONArray.getJSONObject(i);
                } catch (JSONException e2) {
                    e2.printStackTrace();
                    jSONObject = null;
                }
                if (jSONObject != null) {
                    try {
                        string2 = jSONObject.getString(IMS_KEY_SERVICE_CODE);
                    } catch (JSONException e3) {
                        e3.printStackTrace();
                        string2 = null;
                    }
                    if (string2 != null) {
                        arrayList.add(string2);
                        if (string2.equals(IMS_KEY_SERVICE_CODE_CC)) {
                            try {
                                string = jSONObject.getString(IMS_KEY_SERVICE_LEVEL);
                            } catch (JSONException e4) {
                                e4.printStackTrace();
                            }
                        }
                    }
                }
            }
        } else {
            string = null;
        }
        return new ServiceAccountInfo(arrayList, string);
    }

    private void updateEntitlements(Set<String> set) {
        this.entitlements = set;
        if (set == null || set.isEmpty()) {
            addToKeychain("Entitlements", "");
            return;
        }
        StringBuilder sb = new StringBuilder();
        Iterator<String> it = set.iterator();
        while (it.hasNext()) {
            sb.append(it.next()).append(BehanceSDKConstants.TAG_CLIENT_SIDE_SEPERATOR);
        }
        addToKeychain("Entitlements", sb.substring(0, sb.length() - 1));
    }

    private void resetKeys() {
        AdobeLogger.log(Level.WARN, T, "resetKeys");
        this.authKeychain.resetTokens();
        this.adobeID = null;
        this.accessToken = null;
        this.deviceToken = null;
        this.sharedDeviceToken = null;
        this.refreshToken = null;
        this.continuationToken = null;
        this.accessTokenExpirationTime = null;
        this.deviceTokenExpirationTime = null;
        this.refreshTokenExpirationTime = null;
        this.displayName = null;
        this.firstName = null;
        this.lastName = null;
        this.entitlements = null;
        this.emailAddress = null;
        this.emailVerified = null;
        this.isEnterPrise = null;
        this.socialProviderToken = null;
        this.socialProvider = null;
        this.idpFlow = null;
        this.serviceLevel = null;
        this.serviceCodes = null;
        this.countryCode = null;
        this.licenseStatus = null;
    }

    public AdobeCommonCipher getCipher() {
        return this.cipher;
    }

    public void setCipherKey(byte[] bArr) {
        if (bArr != null) {
            byte[] bArr2 = new byte[bArr.length];
            System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
            try {
                this.cipher = AdobeCommonCipher.createInstance(bArr2);
            } catch (Exception e2) {
                AdobeLogger.log(Level.ERROR, getClass().getSimpleName(), e2.getMessage(), e2);
                throw new IllegalArgumentException("CSDK Foundation Auth : Cannot create Cipher Instance !");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void profileFromServiceWithAccessToken(String str, final IAdobeGenericCompletionCallback<JSONObject> iAdobeGenericCompletionCallback, final IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback) {
        Handler handlerCreateHandlerForAuthOps;
        AdobeEntitlementSession sharedSession = AdobeEntitlementSession.getSharedSession();
        sharedSession.refreshEndpoint();
        try {
            handlerCreateHandlerForAuthOps = AdobeAuthHandler.createHandlerForAuthOps();
        } catch (Exception e2) {
            handlerCreateHandlerForAuthOps = null;
            AdobeLogger.log(Level.ERROR, getClass().getSimpleName(), e2.getMessage(), e2);
        }
        sharedSession.getUserProfileForToken(str, new IAdobeGenericCompletionCallback<JSONObject>() { // from class: com.adobe.creativesdk.foundation.internal.auth.AdobeAuthIdentityManagementService.14
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
            public void onCompletion(JSONObject jSONObject) {
                if (jSONObject.optString("userId", null) != null) {
                    AdobeAuthIdentityManagementService.this.setAdobeID(jSONObject.optString("userId"));
                    AdobeAuthIdentityManagementService.this.setIsEnterPrise(jSONObject.optBoolean(AdobeEntitlementSession.AdobeEntitlementUserProfileIsEnterprise) ? AdobeAuthIdentityManagementService.IMS_KEY_TRUE : AdobeAuthIdentityManagementService.IMS_KEY_FALSE);
                    if (jSONObject.optString("displayName", null) != null) {
                        AdobeAuthIdentityManagementService.this.setDisplayName(jSONObject.optString("displayName"));
                    }
                    if (jSONObject.optString("first_name", null) != null) {
                        AdobeAuthIdentityManagementService.this.setFirstName(jSONObject.optString("first_name"));
                    }
                    if (jSONObject.optString("last_name", null) != null) {
                        AdobeAuthIdentityManagementService.this.setLastName(jSONObject.optString("last_name"));
                    }
                    if (jSONObject.optString("email", null) != null) {
                        AdobeAuthIdentityManagementService.this.setEmailAddress(jSONObject.optString("email"));
                    }
                    if (jSONObject.optString("emailVerified", null) != null) {
                        AdobeAuthIdentityManagementService.this.setEmailVerified(jSONObject.optString("emailVerified"));
                    }
                    if (jSONObject.optString("countryCode") != null) {
                        AdobeAuthIdentityManagementService.this.setCountrycode(jSONObject.optString("countryCode"));
                    }
                    if (jSONObject.optString(AdobeEntitlementSession.AdobeEntitlementUserProfileLicenseStatus) != null) {
                        AdobeAuthIdentityManagementService.this.setLicenceStatus(jSONObject.optString(AdobeEntitlementSession.AdobeEntitlementUserProfileLicenseStatus));
                    }
                    if (iAdobeGenericCompletionCallback != null) {
                        iAdobeGenericCompletionCallback.onCompletion(jSONObject);
                        return;
                    }
                    return;
                }
                throw new RuntimeException("User profile information not properly constructed from CC\n" + AdobeLogger.getJSONObjectDump(jSONObject));
            }
        }, new IAdobeGenericErrorCallback<AdobeCSDKException>() { // from class: com.adobe.creativesdk.foundation.internal.auth.AdobeAuthIdentityManagementService.15
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(AdobeCSDKException adobeCSDKException) {
                if (iAdobeGenericErrorCallback != null) {
                    iAdobeGenericErrorCallback.onError(adobeCSDKException);
                } else {
                    AdobeLogger.log(Level.ERROR, AdobeAuthIdentityManagementService.T, "Could not get profile date from service", adobeCSDKException);
                }
            }
        }, handlerCreateHandlerForAuthOps);
    }

    public String getSocialProviderToken() {
        return this.socialProviderToken;
    }

    public void setSocialProviderToken(String str) {
        this.socialProviderToken = str;
    }

    public String getSocialProvider() {
        return this.socialProvider;
    }

    public void setSocialProvider(String str) {
        this.socialProvider = str;
    }

    public IAuthPostLoginWorkCallback getPostLoginWorkCallback() {
        return this.postLoginWorkCallback;
    }

    public void setPostLoginWorkCallback(IAuthPostLoginWorkCallback iAuthPostLoginWorkCallback) {
        this.postLoginWorkCallback = iAuthPostLoginWorkCallback;
    }

    public String getRedirectURI() {
        if (this.redirectURI == null) {
            this.redirectURI = "https://adobe.com";
        }
        return this.redirectURI;
    }

    public void setRedirectURI(String str) {
        this.redirectURI = str;
    }

    class ServiceAccountInfo {
        private ArrayList<String> serviceCodes;
        private String serviceLevel;

        private ServiceAccountInfo(ArrayList<String> arrayList, String str) {
            this.serviceCodes = arrayList;
            this.serviceLevel = str;
        }

        String getCombinedServiceCodes() {
            String str = "";
            for (int i = 0; i < this.serviceCodes.size(); i++) {
                if (i == 0) {
                    str = str + this.serviceCodes.get(i);
                } else {
                    str = str + BehanceSDKConstants.TAG_CLIENT_SIDE_SEPERATOR + this.serviceCodes.get(i);
                }
            }
            return str;
        }

        String getServiceLevel() {
            return this.serviceLevel;
        }
    }
}
