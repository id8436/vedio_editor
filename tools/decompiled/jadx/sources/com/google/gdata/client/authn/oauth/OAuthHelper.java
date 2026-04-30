package com.google.gdata.client.authn.oauth;

import com.google.gdata.data.analytics.Engagement;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class OAuthHelper {
    private String accessTokenUrl;
    private OAuthHttpClient httpClient;
    private String requestTokenUrl;
    private String revokeTokenUrl;
    private OAuthSigner signer;
    private String userAuthorizationUrl;

    /* JADX INFO: loaded from: classes3.dex */
    abstract class KeyValuePair {
        private String keyValueEndDelimiter;
        private String keyValueStartDelimiter;
        private String pairDelimiter;
        private List<String> keys = new ArrayList();
        private List<String> values = new ArrayList();

        protected KeyValuePair(String str, String str2, String str3) {
            this.keyValueStartDelimiter = str;
            this.keyValueEndDelimiter = str2;
            this.pairDelimiter = str3;
        }

        public void add(String str, String str2) {
            this.keys.add(str);
            this.values.add(str2);
        }

        public String getKey(int i) {
            return this.keys.get(i);
        }

        public String getValue(int i) {
            return this.values.get(i);
        }

        public int size() {
            return this.keys.size();
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            int size = size();
            for (int i = 0; i < size; i++) {
                if (i > 0) {
                    sb.append(this.pairDelimiter);
                }
                sb.append(OAuthUtil.encode(getKey(i))).append(this.keyValueStartDelimiter).append(OAuthUtil.encode(getValue(i))).append(this.keyValueEndDelimiter);
            }
            return sb.toString();
        }
    }

    /* JADX INFO: loaded from: classes3.dex */
    class QueryKeyValuePair extends KeyValuePair {
        public QueryKeyValuePair() {
            super(Engagement.Comparison.EQ, "", "&");
        }
    }

    /* JADX INFO: loaded from: classes3.dex */
    class HeaderKeyValuePair extends KeyValuePair {
        public HeaderKeyValuePair() {
            super("=\"", "\"", ", ");
        }
    }

    @Deprecated
    public OAuthHelper(String str, String str2, String str3, OAuthSigner oAuthSigner) {
        this(str, str2, str3, oAuthSigner, new OAuthHttpClient());
    }

    @Deprecated
    public OAuthHelper(String str, String str2, String str3, OAuthSigner oAuthSigner, OAuthHttpClient oAuthHttpClient) {
        this.requestTokenUrl = str;
        this.userAuthorizationUrl = str2;
        this.accessTokenUrl = str3;
        this.signer = oAuthSigner;
        this.httpClient = oAuthHttpClient;
    }

    public OAuthHelper(String str, String str2, String str3, String str4, OAuthSigner oAuthSigner) {
        this(str, str2, str3, str4, oAuthSigner, new OAuthHttpClient());
    }

    public OAuthHelper(String str, String str2, String str3, String str4, OAuthSigner oAuthSigner, OAuthHttpClient oAuthHttpClient) {
        this.requestTokenUrl = str;
        this.userAuthorizationUrl = str2;
        this.accessTokenUrl = str3;
        this.revokeTokenUrl = str4;
        this.signer = oAuthSigner;
        this.httpClient = oAuthHttpClient;
    }

    public String getAccessTokenUrl() {
        return this.accessTokenUrl;
    }

    public void setAccessTokenUrl(String str) {
        this.accessTokenUrl = str;
    }

    public String getRequestTokenUrl() {
        return this.requestTokenUrl;
    }

    public void setRequestTokenUrl(String str) {
        this.requestTokenUrl = str;
    }

    public String getUserAuthorizationUrl() {
        return this.userAuthorizationUrl;
    }

    public void setUserAuthorizationUrl(String str) {
        this.userAuthorizationUrl = str;
    }

    public String getRevokeTokenUrl() {
        return this.revokeTokenUrl;
    }

    public void setRevokeTokenUrl(String str) {
        this.revokeTokenUrl = str;
    }

    public void getUnauthorizedRequestToken(OAuthParameters oAuthParameters) throws OAuthException {
        boolean z;
        new TwoLeggedOAuthHelper(this.signer, oAuthParameters).validateInputParameters();
        if (!oAuthParameters.checkOAuthCallbackExists()) {
            z = false;
        } else {
            oAuthParameters.addCustomBaseParameter(OAuthParameters.OAUTH_CALLBACK_KEY, oAuthParameters.getOAuthCallback());
            z = true;
        }
        Map<String, String> querystring = OAuthUtil.parseQuerystring(this.httpClient.getResponse(getOAuthUrl(this.requestTokenUrl, "GET", oAuthParameters)));
        oAuthParameters.setOAuthToken(querystring.get(OAuthParameters.OAUTH_TOKEN_KEY));
        oAuthParameters.setOAuthTokenSecret(querystring.get(OAuthParameters.OAUTH_TOKEN_SECRET_KEY));
        if (z) {
            oAuthParameters.removeCustomBaseParameter(OAuthParameters.OAUTH_CALLBACK_KEY);
        }
        oAuthParameters.reset();
    }

    @Deprecated
    public String getUserAuthorizationUrl(OAuthParameters oAuthParameters) throws OAuthException {
        getUnauthorizedRequestToken(oAuthParameters);
        return createUserAuthorizationUrl(oAuthParameters);
    }

    public String createUserAuthorizationUrl(OAuthParameters oAuthParameters) {
        QueryKeyValuePair queryKeyValuePair = new QueryKeyValuePair();
        queryKeyValuePair.add(OAuthParameters.OAUTH_TOKEN_KEY, oAuthParameters.getOAuthToken());
        if (oAuthParameters.getOAuthCallback().length() > 0) {
            queryKeyValuePair.add(OAuthParameters.OAUTH_CALLBACK_KEY, oAuthParameters.getOAuthCallback());
        }
        return this.userAuthorizationUrl + "?" + queryKeyValuePair.toString();
    }

    public void getOAuthParametersFromCallback(URL url, OAuthParameters oAuthParameters) {
        getOAuthParametersFromCallback(url.getQuery(), oAuthParameters);
    }

    public void getOAuthParametersFromCallback(String str, OAuthParameters oAuthParameters) {
        Map<String, String> querystring = OAuthUtil.parseQuerystring(str);
        oAuthParameters.setOAuthToken(querystring.get(OAuthParameters.OAUTH_TOKEN_KEY));
        if (querystring.get(OAuthParameters.OAUTH_TOKEN_SECRET_KEY) != null) {
            oAuthParameters.setOAuthTokenSecret(querystring.get(OAuthParameters.OAUTH_TOKEN_SECRET_KEY));
        }
        if (querystring.get(OAuthParameters.OAUTH_VERIFIER_KEY) != null) {
            oAuthParameters.setOAuthVerifier(querystring.get(OAuthParameters.OAUTH_VERIFIER_KEY));
        }
    }

    public String getAccessToken(URL url, OAuthParameters oAuthParameters) throws OAuthException {
        return getAccessToken(url.getQuery(), oAuthParameters);
    }

    public String getAccessToken(String str, OAuthParameters oAuthParameters) throws OAuthException {
        getOAuthParametersFromCallback(str, oAuthParameters);
        return getAccessToken(oAuthParameters);
    }

    public String getAccessToken(OAuthParameters oAuthParameters) throws OAuthException {
        new TwoLeggedOAuthHelper(this.signer, oAuthParameters).validateInputParameters();
        oAuthParameters.assertOAuthTokenExists();
        if (this.signer instanceof OAuthHmacSha1Signer) {
            oAuthParameters.assertOAuthTokenSecretExists();
        }
        Map<String, String> querystring = OAuthUtil.parseQuerystring(this.httpClient.getResponse(getOAuthUrl(this.accessTokenUrl, "GET", oAuthParameters)));
        oAuthParameters.setOAuthToken(querystring.get(OAuthParameters.OAUTH_TOKEN_KEY));
        oAuthParameters.setOAuthTokenSecret(querystring.get(OAuthParameters.OAUTH_TOKEN_SECRET_KEY));
        oAuthParameters.reset();
        return oAuthParameters.getOAuthToken();
    }

    public String getAuthorizationHeader(String str, String str2, OAuthParameters oAuthParameters) throws OAuthException {
        TwoLeggedOAuthHelper twoLeggedOAuthHelper = new TwoLeggedOAuthHelper(this.signer, oAuthParameters);
        twoLeggedOAuthHelper.validateInputParameters();
        if (!containsUser(str)) {
            oAuthParameters.assertOAuthTokenExists();
            if (this.signer instanceof OAuthHmacSha1Signer) {
                oAuthParameters.assertOAuthTokenSecretExists();
            }
        }
        return twoLeggedOAuthHelper.addParametersAndRetrieveHeader(str, str2);
    }

    public void revokeToken(OAuthParameters oAuthParameters) throws OAuthException {
        HashMap map = new HashMap();
        map.put("Authorization", getAuthorizationHeader(this.revokeTokenUrl, "GET", oAuthParameters));
        try {
            this.httpClient.getResponse(new URL(this.revokeTokenUrl), map);
        } catch (MalformedURLException e2) {
            throw new OAuthException(e2);
        }
    }

    public URL getOAuthUrl(String str, String str2, OAuthParameters oAuthParameters) throws OAuthException {
        new TwoLeggedOAuthHelper(this.signer, oAuthParameters).addCommonRequestParameters(str, str2);
        QueryKeyValuePair queryKeyValuePair = new QueryKeyValuePair();
        for (Map.Entry<String, String> entry : oAuthParameters.getBaseParameters().entrySet()) {
            if (entry.getValue().length() > 0) {
                queryKeyValuePair.add(entry.getKey(), entry.getValue());
            }
        }
        queryKeyValuePair.add(OAuthParameters.OAUTH_SIGNATURE_KEY, oAuthParameters.getOAuthSignature());
        StringBuilder sb = new StringBuilder(str);
        sb.append(str.indexOf("?") > 0 ? "&" : "?");
        sb.append(queryKeyValuePair.toString());
        try {
            return new URL(sb.toString());
        } catch (MalformedURLException e2) {
            throw new OAuthException(e2);
        }
    }

    private boolean containsUser(String str) {
        return str.contains("xoauth_requestor_id");
    }
}
