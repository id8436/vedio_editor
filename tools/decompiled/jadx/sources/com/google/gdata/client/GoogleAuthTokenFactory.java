package com.google.gdata.client;

import android.support.v4.app.NotificationCompat;
import com.adobe.creativesdk.foundation.internal.notification.AdobeNotification;
import com.google.api.client.auth.oauth2.Credential;
import com.google.gdata.client.AuthTokenFactory;
import com.google.gdata.client.GoogleService;
import com.google.gdata.client.appsforyourdomain.AppsForYourDomainService;
import com.google.gdata.client.authn.oauth.GoogleOAuthHelper;
import com.google.gdata.client.authn.oauth.OAuthException;
import com.google.gdata.client.authn.oauth.OAuthParameters;
import com.google.gdata.client.authn.oauth.OAuthSigner;
import com.google.gdata.client.authn.oauth.TwoLeggedOAuthHelper;
import com.google.gdata.client.http.AuthSubUtil;
import com.google.gdata.client.http.HttpAuthToken;
import com.google.gdata.data.analytics.Engagement;
import com.google.gdata.util.AuthenticationException;
import com.google.gdata.util.common.base.CharEscapers;
import com.google.gdata.util.common.base.StringUtil;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.security.GeneralSecurityException;
import java.security.PrivateKey;
import java.util.HashMap;
import java.util.Map;
import org.apache.commons.io.IOUtils;

/* JADX INFO: loaded from: classes3.dex */
public class GoogleAuthTokenFactory implements AuthTokenFactory {
    public static final String GOOGLE_ACCOUNTS_PATH = "/accounts";
    public static final String GOOGLE_LOGIN_PATH = "/accounts/ClientLogin";
    private String applicationName;
    private HttpAuthToken authToken;
    private String domainName;
    private String loginProtocol;
    private String password;
    private String serviceName;
    private AuthTokenFactory.TokenListener tokenListener;
    private String username;

    public class UserToken implements HttpAuthToken {
        private String token;

        public UserToken(String str) {
            this.token = str;
        }

        public String getValue() {
            return this.token;
        }

        @Override // com.google.gdata.client.http.HttpAuthToken
        public String getAuthorizationHeader(URL url, String str) {
            return "GoogleLogin auth=" + this.token;
        }
    }

    public class AuthSubToken implements HttpAuthToken {
        private PrivateKey key;
        private String token;

        public AuthSubToken(String str, PrivateKey privateKey) {
            this.token = str;
            this.key = privateKey;
        }

        public String getValue() {
            return this.token;
        }

        @Override // com.google.gdata.client.http.HttpAuthToken
        public String getAuthorizationHeader(URL url, String str) {
            try {
                return AuthSubUtil.formAuthorizationHeader(this.token, this.key, url, str);
            } catch (GeneralSecurityException e2) {
                throw new RuntimeException(e2.getMessage());
            }
        }
    }

    public class OAuthToken implements HttpAuthToken {
        OAuthParameters parameters;
        final OAuthSigner signer;

        public OAuthToken(OAuthParameters oAuthParameters, OAuthSigner oAuthSigner) {
            this.parameters = oAuthParameters;
            this.signer = oAuthSigner;
        }

        @Override // com.google.gdata.client.http.HttpAuthToken
        public String getAuthorizationHeader(URL url, String str) {
            try {
                if (this.parameters.getOAuthType() == OAuthParameters.OAuthType.TWO_LEGGED_OAUTH) {
                    return new TwoLeggedOAuthHelper(this.signer, this.parameters).getAuthorizationHeader(url.toString(), str);
                }
                return new GoogleOAuthHelper(this.signer).getAuthorizationHeader(url.toString(), str, this.parameters);
            } catch (OAuthException e2) {
                throw new RuntimeException(e2);
            }
        }
    }

    public class OAuth2Token implements HttpAuthToken {
        static final String HEADER_PREFIX = "Bearer ";
        final Credential credential;

        public OAuth2Token(Credential credential) {
            this.credential = credential;
        }

        @Override // com.google.gdata.client.http.HttpAuthToken
        public String getAuthorizationHeader(URL url, String str) {
            return HEADER_PREFIX + this.credential.getAccessToken();
        }

        public boolean refreshToken() throws AuthenticationException {
            try {
                return this.credential.refreshToken();
            } catch (IOException e2) {
                AuthenticationException authenticationException = new AuthenticationException("Failed to refresh access token: " + e2.getMessage());
                authenticationException.initCause(e2);
                throw authenticationException;
            }
        }
    }

    public GoogleAuthTokenFactory(String str, String str2, AuthTokenFactory.TokenListener tokenListener) {
        this(str, str2, "https", AppsForYourDomainService.DOMAIN_NAME, tokenListener);
    }

    public GoogleAuthTokenFactory(String str, String str2, String str3, String str4, AuthTokenFactory.TokenListener tokenListener) {
        this.serviceName = str;
        this.applicationName = str2;
        this.domainName = str4;
        this.loginProtocol = str3;
        this.tokenListener = tokenListener;
    }

    public void setUserCredentials(String str, String str2) throws AuthenticationException {
        setUserCredentials(str, str2, ClientLoginAccountType.HOSTED_OR_GOOGLE);
    }

    public void setUserCredentials(String str, String str2, ClientLoginAccountType clientLoginAccountType) throws AuthenticationException {
        setUserCredentials(str, str2, null, null, clientLoginAccountType);
    }

    public void setUserCredentials(String str, String str2, String str3, String str4) throws AuthenticationException {
        setUserCredentials(str, str2, str3, str4, ClientLoginAccountType.HOSTED_OR_GOOGLE);
    }

    public void setUserCredentials(String str, String str2, String str3, String str4, ClientLoginAccountType clientLoginAccountType) throws AuthenticationException {
        this.username = str;
        this.password = str2;
        setUserToken(getAuthToken(str, str2, str3, str4, this.serviceName, this.applicationName, clientLoginAccountType));
    }

    public void setUserToken(String str) {
        setAuthToken(new UserToken(str));
    }

    public void setAuthSubToken(String str) {
        setAuthSubToken(str, null);
    }

    public void setAuthSubToken(String str, PrivateKey privateKey) {
        setAuthToken(new AuthSubToken(str, privateKey));
    }

    public void setOAuthCredentials(OAuthParameters oAuthParameters, OAuthSigner oAuthSigner) throws OAuthException {
        oAuthParameters.assertOAuthConsumerKeyExists();
        setAuthToken(new OAuthToken(oAuthParameters, oAuthSigner));
    }

    public void setOAuth2Credentials(Credential credential) {
        setAuthToken(new OAuth2Token(credential));
    }

    public void setAuthToken(HttpAuthToken httpAuthToken) {
        this.authToken = httpAuthToken;
        if (this.tokenListener != null) {
            this.tokenListener.tokenChanged(httpAuthToken);
        }
    }

    @Override // com.google.gdata.client.AuthTokenFactory
    public HttpAuthToken getAuthToken() {
        return this.authToken;
    }

    public String getAuthToken(String str, String str2, String str3, String str4, String str5, String str6) throws AuthenticationException {
        return getAuthToken(str, str2, str3, str4, str5, str6, ClientLoginAccountType.HOSTED_OR_GOOGLE);
    }

    public String getAuthToken(String str, String str2, String str3, String str4, String str5, String str6, ClientLoginAccountType clientLoginAccountType) throws AuthenticationException {
        HashMap map = new HashMap();
        map.put("Email", str);
        map.put("Passwd", str2);
        map.put("source", str6);
        map.put(NotificationCompat.CATEGORY_SERVICE, str5);
        map.put("accountType", clientLoginAccountType.getValue());
        if (str3 != null) {
            map.put("logintoken", str3);
        }
        if (str4 != null) {
            map.put("logincaptcha", str4);
        }
        try {
            HashMap<String, String> mapString2Map = StringUtil.string2Map(makePostRequest(new URL(this.loginProtocol + "://" + this.domainName + GOOGLE_LOGIN_PATH), map).trim(), IOUtils.LINE_SEPARATOR_UNIX, Engagement.Comparison.EQ, true);
            String str7 = mapString2Map.get("Auth");
            if (str7 == null) {
                throw getAuthException(mapString2Map);
            }
            return str7;
        } catch (IOException e2) {
            AuthenticationException authenticationException = new AuthenticationException("Error connecting with login URI");
            authenticationException.initCause(e2);
            throw authenticationException;
        }
    }

    public static String makePostRequest(URL url, Map<String, String> map) throws Throwable {
        OutputStream outputStream;
        InputStream errorStream = null;
        boolean z = true;
        HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
        httpURLConnection.setDoInput(true);
        httpURLConnection.setDoOutput(true);
        httpURLConnection.setUseCaches(false);
        httpURLConnection.setRequestMethod("POST");
        httpURLConnection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
        httpURLConnection.setRequestProperty("User-Agent", map.get(NotificationCompat.CATEGORY_SERVICE) + " GData-Java/" + GoogleAuthTokenFactory.class.getPackage().getImplementationVersion());
        StringBuilder sb = new StringBuilder();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            if (!z) {
                sb.append("&");
            }
            sb.append(CharEscapers.uriEscaper().escape(entry.getKey())).append(Engagement.Comparison.EQ);
            sb.append(CharEscapers.uriEscaper().escape(entry.getValue()));
            z = false;
        }
        try {
            outputStream = httpURLConnection.getOutputStream();
            try {
                outputStream.write(sb.toString().getBytes("utf-8"));
                outputStream.flush();
                if (outputStream != null) {
                    outputStream.close();
                }
                StringBuilder sb2 = new StringBuilder();
                try {
                    if (httpURLConnection.getResponseCode() == 200) {
                        errorStream = httpURLConnection.getInputStream();
                    } else {
                        errorStream = httpURLConnection.getErrorStream();
                    }
                    if (errorStream != null) {
                        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(errorStream));
                        while (true) {
                            String line = bufferedReader.readLine();
                            if (line == null) {
                                break;
                            }
                            sb2.append(line).append('\n');
                        }
                    }
                    return sb2.toString();
                } finally {
                    if (errorStream != null) {
                        errorStream.close();
                    }
                }
            } catch (Throwable th) {
                th = th;
                if (outputStream != null) {
                    outputStream.close();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            outputStream = null;
        }
    }

    private AuthenticationException getAuthException(Map<String, String> map) {
        String str = map.get(AdobeNotification.Error);
        if ("BadAuthentication".equals(str)) {
            return new GoogleService.InvalidCredentialsException("Invalid credentials");
        }
        if ("AccountDeleted".equals(str)) {
            return new GoogleService.AccountDeletedException("Account deleted");
        }
        if ("AccountDisabled".equals(str)) {
            return new GoogleService.AccountDisabledException("Account disabled");
        }
        if ("NotVerified".equals(str)) {
            return new GoogleService.NotVerifiedException("Not verified");
        }
        if ("TermsNotAgreed".equals(str)) {
            return new GoogleService.TermsNotAgreedException("Terms not agreed");
        }
        if ("ServiceUnavailable".equals(str)) {
            return new GoogleService.ServiceUnavailableException("Service unavailable");
        }
        if ("CaptchaRequired".equals(str)) {
            String str2 = map.get("CaptchaUrl");
            StringBuilder sb = new StringBuilder();
            sb.append(this.loginProtocol).append("://").append(this.domainName).append(GOOGLE_ACCOUNTS_PATH).append(IOUtils.DIR_SEPARATOR_UNIX).append(str2);
            return new GoogleService.CaptchaRequiredException("Captcha required", sb.toString(), map.get("CaptchaToken"));
        }
        return new AuthenticationException("Error authenticating (check service name)");
    }

    @Override // com.google.gdata.client.AuthTokenFactory
    public void handleSessionExpiredException(GoogleService.SessionExpiredException sessionExpiredException) throws AuthenticationException {
        if (this.username != null && this.password != null) {
            setUserToken(getAuthToken(this.username, this.password, null, null, this.serviceName, this.applicationName));
        } else if (!(this.authToken instanceof OAuth2Token) || !((OAuth2Token) this.authToken).refreshToken()) {
            throw sessionExpiredException;
        }
    }
}
