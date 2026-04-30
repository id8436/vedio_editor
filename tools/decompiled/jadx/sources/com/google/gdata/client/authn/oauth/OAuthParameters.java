package com.google.gdata.client.authn.oauth;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class OAuthParameters {
    public static final String OAUTH_CALLBACK_KEY = "oauth_callback";
    public static final String OAUTH_CONSUMER_KEY = "oauth_consumer_key";
    public static final String OAUTH_CONSUMER_SECRET = "oauth_consumer_secret";
    public static final String OAUTH_KEY = "OAuth";
    public static final String OAUTH_NONCE_KEY = "oauth_nonce";
    public static final String OAUTH_SIGNATURE_KEY = "oauth_signature";
    public static final String OAUTH_SIGNATURE_METHOD_KEY = "oauth_signature_method";
    public static final String OAUTH_TIMESTAMP_KEY = "oauth_timestamp";
    public static final String OAUTH_TOKEN_KEY = "oauth_token";
    public static final String OAUTH_TOKEN_SECRET_KEY = "oauth_token_secret";
    public static final String OAUTH_VERIFIER_KEY = "oauth_verifier";
    public static final String REALM_KEY = "realm";
    public static final String XOAUTH_REQUESTOR_ID_KEY = "xoauth_requestor_id";
    private OAuthType oauthType = OAuthType.THREE_LEGGED_OAUTH;
    protected Map<String, String> baseParameters = new HashMap();
    protected Map<String, String> extraParameters = new HashMap();

    public enum OAuthType {
        TWO_LEGGED_OAUTH,
        THREE_LEGGED_OAUTH
    }

    public Map<String, String> getBaseParameters() {
        return Collections.unmodifiableMap(this.baseParameters);
    }

    public Map<String, String> getExtraParameters() {
        return Collections.unmodifiableMap(this.extraParameters);
    }

    public void addCustomBaseParameter(String str, String str2) {
        put(str, str2, this.baseParameters);
    }

    public void removeCustomBaseParameter(String str) {
        remove(str, this.baseParameters);
    }

    public void addExtraParameter(String str, String str2) {
        put(str, str2, this.extraParameters);
    }

    public void reset() {
        remove(OAUTH_NONCE_KEY, this.baseParameters);
        remove(OAUTH_TIMESTAMP_KEY, this.baseParameters);
        remove(OAUTH_VERIFIER_KEY, this.baseParameters);
        remove(OAUTH_SIGNATURE_KEY, this.extraParameters);
    }

    public String getOAuthConsumerKey() {
        return get(OAUTH_CONSUMER_KEY, this.baseParameters);
    }

    public void setOAuthConsumerKey(String str) {
        put(OAUTH_CONSUMER_KEY, str, this.baseParameters);
    }

    public boolean checkOAuthConsumerKeyExists() {
        return checkExists(OAUTH_CONSUMER_KEY, this.baseParameters);
    }

    public void assertOAuthConsumerKeyExists() throws OAuthException {
        assertExists(OAUTH_CONSUMER_KEY, this.baseParameters);
    }

    public String getOAuthConsumerSecret() {
        return get(OAUTH_CONSUMER_SECRET, this.extraParameters);
    }

    public void setOAuthConsumerSecret(String str) {
        put(OAUTH_CONSUMER_SECRET, str, this.extraParameters);
    }

    public boolean checkOAuthConsumerSecretExists() {
        return checkExists(OAUTH_CONSUMER_SECRET, this.extraParameters);
    }

    public void assertOAuthConsumerSecretExists() throws OAuthException {
        assertExists(OAUTH_CONSUMER_SECRET, this.extraParameters);
    }

    public String getOAuthNonce() {
        return get(OAUTH_NONCE_KEY, this.baseParameters);
    }

    public void setOAuthNonce(String str) {
        put(OAUTH_NONCE_KEY, str, this.baseParameters);
    }

    public boolean checkOAuthNonceExists() {
        return checkExists(OAUTH_NONCE_KEY, this.baseParameters);
    }

    public void assertOAuthNonceExists() throws OAuthException {
        assertExists(OAUTH_NONCE_KEY, this.baseParameters);
    }

    public String getOAuthSignature() {
        return get(OAUTH_SIGNATURE_KEY, this.extraParameters);
    }

    public void setOAuthSignature(String str) {
        put(OAUTH_SIGNATURE_KEY, str, this.extraParameters);
    }

    public boolean checkOAuthSignatureExists() {
        return checkExists(OAUTH_SIGNATURE_KEY, this.extraParameters);
    }

    public void assertOAuthSignatureExists() throws OAuthException {
        assertExists(OAUTH_SIGNATURE_KEY, this.extraParameters);
    }

    public String getOAuthSignatureMethod() {
        return get(OAUTH_SIGNATURE_METHOD_KEY, this.baseParameters);
    }

    public void setOAuthSignatureMethod(String str) {
        put(OAUTH_SIGNATURE_METHOD_KEY, str, this.baseParameters);
    }

    public boolean checkOAuthSignatureMethodExists() {
        return checkExists(OAUTH_SIGNATURE_METHOD_KEY, this.baseParameters);
    }

    public void assertOAuthSignatureMethodExists() throws OAuthException {
        assertExists(OAUTH_SIGNATURE_METHOD_KEY, this.baseParameters);
    }

    public String getOAuthTimestamp() {
        return get(OAUTH_TIMESTAMP_KEY, this.baseParameters);
    }

    public void setOAuthTimestamp(String str) {
        put(OAUTH_TIMESTAMP_KEY, str, this.baseParameters);
    }

    public boolean checkOAuthTimestampExists() {
        return checkExists(OAUTH_TIMESTAMP_KEY, this.baseParameters);
    }

    public void assertOAuthTimestampExists() throws OAuthException {
        assertExists(OAUTH_TIMESTAMP_KEY, this.baseParameters);
    }

    public String getOAuthToken() {
        return get(OAUTH_TOKEN_KEY, this.baseParameters);
    }

    public void setOAuthToken(String str) {
        put(OAUTH_TOKEN_KEY, str, this.baseParameters);
    }

    public boolean checkOAuthTokenExists() {
        return checkExists(OAUTH_TOKEN_KEY, this.baseParameters);
    }

    public void assertOAuthTokenExists() throws OAuthException {
        assertExists(OAUTH_TOKEN_KEY, this.baseParameters);
    }

    public String getOAuthTokenSecret() {
        return get(OAUTH_TOKEN_SECRET_KEY, this.extraParameters);
    }

    public void setOAuthTokenSecret(String str) {
        put(OAUTH_TOKEN_SECRET_KEY, str, this.extraParameters);
    }

    public boolean checkOAuthTokenSecretExists() {
        return checkExists(OAUTH_TOKEN_SECRET_KEY, this.extraParameters);
    }

    public void assertOAuthTokenSecretExists() throws OAuthException {
        assertExists(OAUTH_TOKEN_SECRET_KEY, this.extraParameters);
    }

    public OAuthType getOAuthType() {
        return this.oauthType;
    }

    public void setOAuthType(OAuthType oAuthType) {
        this.oauthType = oAuthType;
    }

    public String getOAuthVerifier() {
        return get(OAUTH_VERIFIER_KEY, this.baseParameters);
    }

    public void setOAuthVerifier(String str) {
        put(OAUTH_VERIFIER_KEY, str, this.baseParameters);
    }

    public boolean checkOAuthVerifierExists() {
        return checkExists(OAUTH_VERIFIER_KEY, this.baseParameters);
    }

    public void assertOAuthVerifierExists() throws OAuthException {
        assertExists(OAUTH_VERIFIER_KEY, this.baseParameters);
    }

    public String getOAuthCallback() {
        return get(OAUTH_CALLBACK_KEY, this.extraParameters);
    }

    public void setOAuthCallback(String str) {
        put(OAUTH_CALLBACK_KEY, str, this.extraParameters);
    }

    public boolean checkOAuthCallbackExists() {
        return checkExists(OAUTH_CALLBACK_KEY, this.extraParameters);
    }

    public void assertOAuthCallbackExists() throws OAuthException {
        assertExists(OAUTH_CALLBACK_KEY, this.extraParameters);
    }

    public String getRealm() {
        return get(REALM_KEY, this.extraParameters);
    }

    public void setRealm(String str) {
        put(REALM_KEY, str, this.extraParameters);
    }

    public boolean checkRealmExists() {
        return checkExists(REALM_KEY, this.extraParameters);
    }

    public void assertRealmExists() throws OAuthException {
        assertExists(REALM_KEY, this.extraParameters);
    }

    protected String get(String str, Map<String, String> map) {
        String str2 = map.get(str);
        return str2 == null ? "" : str2;
    }

    protected void put(String str, String str2, Map<String, String> map) {
        map.put(str, str2);
    }

    protected void remove(String str, Map<String, String> map) {
        map.remove(str);
    }

    protected boolean checkExists(String str, Map<String, String> map) {
        return get(str, map).length() > 0;
    }

    protected void assertExists(String str, Map<String, String> map) throws OAuthException {
        if (!checkExists(str, map)) {
            throw new OAuthException(str + " does not exist.");
        }
    }
}
