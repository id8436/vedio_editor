package com.google.api.client.auth.oauth;

import com.google.api.client.http.GenericUrl;
import com.google.api.client.http.HttpExecuteInterceptor;
import com.google.api.client.http.HttpRequest;
import com.google.api.client.http.HttpRequestInitializer;
import com.google.api.client.util.Beta;
import com.google.api.client.util.escape.PercentEscaper;
import java.io.IOException;
import java.security.GeneralSecurityException;
import java.security.SecureRandom;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes3.dex */
@Beta
public final class OAuthParameters implements HttpExecuteInterceptor, HttpRequestInitializer {
    public String callback;
    public String consumerKey;
    public String nonce;
    public String realm;
    public String signature;
    public String signatureMethod;
    public OAuthSigner signer;
    public String timestamp;
    public String token;
    public String verifier;
    public String version;
    private static final SecureRandom RANDOM = new SecureRandom();
    private static final PercentEscaper ESCAPER = new PercentEscaper("-_.~", false);

    public void computeNonce() {
        this.nonce = Long.toHexString(Math.abs(RANDOM.nextLong()));
    }

    public void computeTimestamp() {
        this.timestamp = Long.toString(System.currentTimeMillis() / 1000);
    }

    public void computeSignature(String str, GenericUrl genericUrl) throws GeneralSecurityException {
        boolean z;
        OAuthSigner oAuthSigner = this.signer;
        String signatureMethod = oAuthSigner.getSignatureMethod();
        this.signatureMethod = signatureMethod;
        TreeMap<String, String> treeMap = new TreeMap<>();
        putParameterIfValueNotNull(treeMap, com.google.gdata.client.authn.oauth.OAuthParameters.OAUTH_CALLBACK_KEY, this.callback);
        putParameterIfValueNotNull(treeMap, com.google.gdata.client.authn.oauth.OAuthParameters.OAUTH_CONSUMER_KEY, this.consumerKey);
        putParameterIfValueNotNull(treeMap, com.google.gdata.client.authn.oauth.OAuthParameters.OAUTH_NONCE_KEY, this.nonce);
        putParameterIfValueNotNull(treeMap, com.google.gdata.client.authn.oauth.OAuthParameters.OAUTH_SIGNATURE_METHOD_KEY, signatureMethod);
        putParameterIfValueNotNull(treeMap, com.google.gdata.client.authn.oauth.OAuthParameters.OAUTH_TIMESTAMP_KEY, this.timestamp);
        putParameterIfValueNotNull(treeMap, com.google.gdata.client.authn.oauth.OAuthParameters.OAUTH_TOKEN_KEY, this.token);
        putParameterIfValueNotNull(treeMap, com.google.gdata.client.authn.oauth.OAuthParameters.OAUTH_VERIFIER_KEY, this.verifier);
        putParameterIfValueNotNull(treeMap, "oauth_version", this.version);
        for (Map.Entry<String, Object> entry : genericUrl.entrySet()) {
            Object value = entry.getValue();
            if (value != null) {
                String key = entry.getKey();
                if (value instanceof Collection) {
                    Iterator it = ((Collection) value).iterator();
                    while (it.hasNext()) {
                        putParameter(treeMap, key, it.next());
                    }
                } else {
                    putParameter(treeMap, key, value);
                }
            }
        }
        StringBuilder sb = new StringBuilder();
        boolean z2 = true;
        for (Map.Entry<String, String> entry2 : treeMap.entrySet()) {
            if (z2) {
                z = false;
            } else {
                sb.append('&');
                z = z2;
            }
            sb.append(entry2.getKey());
            String value2 = entry2.getValue();
            if (value2 != null) {
                sb.append('=').append(value2);
            }
            z2 = z;
        }
        String string = sb.toString();
        GenericUrl genericUrl2 = new GenericUrl();
        String scheme = genericUrl.getScheme();
        genericUrl2.setScheme(scheme);
        genericUrl2.setHost(genericUrl.getHost());
        genericUrl2.setPathParts(genericUrl.getPathParts());
        int port = genericUrl.getPort();
        if (("http".equals(scheme) && port == 80) || ("https".equals(scheme) && port == 443)) {
            port = -1;
        }
        genericUrl2.setPort(port);
        String strBuild = genericUrl2.build();
        StringBuilder sb2 = new StringBuilder();
        sb2.append(escape(str)).append('&');
        sb2.append(escape(strBuild)).append('&');
        sb2.append(escape(string));
        this.signature = oAuthSigner.computeSignature(sb2.toString());
    }

    public String getAuthorizationHeader() {
        StringBuilder sb = new StringBuilder(com.google.gdata.client.authn.oauth.OAuthParameters.OAUTH_KEY);
        appendParameter(sb, com.google.gdata.client.authn.oauth.OAuthParameters.REALM_KEY, this.realm);
        appendParameter(sb, com.google.gdata.client.authn.oauth.OAuthParameters.OAUTH_CALLBACK_KEY, this.callback);
        appendParameter(sb, com.google.gdata.client.authn.oauth.OAuthParameters.OAUTH_CONSUMER_KEY, this.consumerKey);
        appendParameter(sb, com.google.gdata.client.authn.oauth.OAuthParameters.OAUTH_NONCE_KEY, this.nonce);
        appendParameter(sb, com.google.gdata.client.authn.oauth.OAuthParameters.OAUTH_SIGNATURE_KEY, this.signature);
        appendParameter(sb, com.google.gdata.client.authn.oauth.OAuthParameters.OAUTH_SIGNATURE_METHOD_KEY, this.signatureMethod);
        appendParameter(sb, com.google.gdata.client.authn.oauth.OAuthParameters.OAUTH_TIMESTAMP_KEY, this.timestamp);
        appendParameter(sb, com.google.gdata.client.authn.oauth.OAuthParameters.OAUTH_TOKEN_KEY, this.token);
        appendParameter(sb, com.google.gdata.client.authn.oauth.OAuthParameters.OAUTH_VERIFIER_KEY, this.verifier);
        appendParameter(sb, "oauth_version", this.version);
        return sb.substring(0, sb.length() - 1);
    }

    private void appendParameter(StringBuilder sb, String str, String str2) {
        if (str2 != null) {
            sb.append(' ').append(escape(str)).append("=\"").append(escape(str2)).append("\",");
        }
    }

    private void putParameterIfValueNotNull(TreeMap<String, String> treeMap, String str, String str2) {
        if (str2 != null) {
            putParameter(treeMap, str, str2);
        }
    }

    private void putParameter(TreeMap<String, String> treeMap, String str, Object obj) {
        treeMap.put(escape(str), obj == null ? null : escape(obj.toString()));
    }

    public static String escape(String str) {
        return ESCAPER.escape(str);
    }

    @Override // com.google.api.client.http.HttpRequestInitializer
    public void initialize(HttpRequest httpRequest) throws IOException {
        httpRequest.setInterceptor(this);
    }

    @Override // com.google.api.client.http.HttpExecuteInterceptor
    public void intercept(HttpRequest httpRequest) throws IOException {
        computeNonce();
        computeTimestamp();
        try {
            computeSignature(httpRequest.getRequestMethod(), httpRequest.getUrl());
            httpRequest.getHeaders().setAuthorization(getAuthorizationHeader());
        } catch (GeneralSecurityException e2) {
            IOException iOException = new IOException();
            iOException.initCause(e2);
            throw iOException;
        }
    }
}
