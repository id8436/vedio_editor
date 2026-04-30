package org.apache.http.impl.client;

import android.util.Log;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Queue;
import org.apache.http.FormattedHeader;
import org.apache.http.Header;
import org.apache.http.HttpHost;
import org.apache.http.HttpResponse;
import org.apache.http.annotation.Immutable;
import org.apache.http.auth.AuthOption;
import org.apache.http.auth.AuthScheme;
import org.apache.http.auth.AuthSchemeProvider;
import org.apache.http.auth.AuthScope;
import org.apache.http.auth.Credentials;
import org.apache.http.auth.MalformedChallengeException;
import org.apache.http.client.AuthCache;
import org.apache.http.client.AuthenticationStrategy;
import org.apache.http.client.CredentialsProvider;
import org.apache.http.client.config.AuthSchemes;
import org.apache.http.client.config.RequestConfig;
import org.apache.http.client.protocol.HttpClientContext;
import org.apache.http.config.Lookup;
import org.apache.http.protocol.HTTP;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.Args;
import org.apache.http.util.CharArrayBuffer;

/* JADX INFO: loaded from: classes3.dex */
@Immutable
abstract class AuthenticationStrategyImpl implements AuthenticationStrategy {
    private static final List<String> DEFAULT_SCHEME_PRIORITY = Collections.unmodifiableList(Arrays.asList(AuthSchemes.SPNEGO, AuthSchemes.KERBEROS, AuthSchemes.NTLM, AuthSchemes.DIGEST, AuthSchemes.BASIC));
    private static final String TAG = "HttpClient";
    private final int challengeCode;
    private final String headerName;

    abstract Collection<String> getPreferredAuthSchemes(RequestConfig requestConfig);

    AuthenticationStrategyImpl(int i, String str) {
        this.challengeCode = i;
        this.headerName = str;
    }

    @Override // org.apache.http.client.AuthenticationStrategy
    public boolean isAuthenticationRequested(HttpHost httpHost, HttpResponse httpResponse, HttpContext httpContext) {
        Args.notNull(httpResponse, "HTTP response");
        return httpResponse.getStatusLine().getStatusCode() == this.challengeCode;
    }

    @Override // org.apache.http.client.AuthenticationStrategy
    public Map<String, Header> getChallenges(HttpHost httpHost, HttpResponse httpResponse, HttpContext httpContext) throws MalformedChallengeException {
        CharArrayBuffer buffer;
        int valuePos;
        Args.notNull(httpResponse, "HTTP response");
        Header[] headers = httpResponse.getHeaders(this.headerName);
        HashMap map = new HashMap(headers.length);
        for (Header header : headers) {
            if (header instanceof FormattedHeader) {
                buffer = ((FormattedHeader) header).getBuffer();
                valuePos = ((FormattedHeader) header).getValuePos();
            } else {
                String value = header.getValue();
                if (value == null) {
                    throw new MalformedChallengeException("Header value is null");
                }
                CharArrayBuffer charArrayBuffer = new CharArrayBuffer(value.length());
                charArrayBuffer.append(value);
                buffer = charArrayBuffer;
                valuePos = 0;
            }
            while (valuePos < buffer.length() && HTTP.isWhitespace(buffer.charAt(valuePos))) {
                valuePos++;
            }
            int i = valuePos;
            while (i < buffer.length() && !HTTP.isWhitespace(buffer.charAt(i))) {
                i++;
            }
            map.put(buffer.substring(valuePos, i).toLowerCase(Locale.US), header);
        }
        return map;
    }

    @Override // org.apache.http.client.AuthenticationStrategy
    public Queue<AuthOption> select(Map<String, Header> map, HttpHost httpHost, HttpResponse httpResponse, HttpContext httpContext) throws MalformedChallengeException {
        Args.notNull(map, "Map of auth challenges");
        Args.notNull(httpHost, "Host");
        Args.notNull(httpResponse, "HTTP response");
        Args.notNull(httpContext, "HTTP context");
        HttpClientContext httpClientContextAdapt = HttpClientContext.adapt(httpContext);
        LinkedList linkedList = new LinkedList();
        Lookup<AuthSchemeProvider> authSchemeRegistry = httpClientContextAdapt.getAuthSchemeRegistry();
        if (authSchemeRegistry == null) {
            if (Log.isLoggable(TAG, 3)) {
                Log.d(TAG, "Auth scheme registry not set in the context");
            }
            return linkedList;
        }
        CredentialsProvider credentialsProvider = httpClientContextAdapt.getCredentialsProvider();
        if (credentialsProvider == null) {
            if (Log.isLoggable(TAG, 3)) {
                Log.d(TAG, "Credentials provider not set in the context");
            }
            return linkedList;
        }
        Collection<String> preferredAuthSchemes = getPreferredAuthSchemes(httpClientContextAdapt.getRequestConfig());
        if (preferredAuthSchemes == null) {
            preferredAuthSchemes = DEFAULT_SCHEME_PRIORITY;
        }
        if (Log.isLoggable(TAG, 3)) {
            Log.d(TAG, "Authentication schemes in the order of preference: " + preferredAuthSchemes);
        }
        for (String str : preferredAuthSchemes) {
            Header header = map.get(str.toLowerCase(Locale.US));
            if (header != null) {
                AuthSchemeProvider authSchemeProviderLookup = authSchemeRegistry.lookup(str);
                if (authSchemeProviderLookup == null) {
                    if (Log.isLoggable(TAG, 5)) {
                        Log.w(TAG, "Authentication scheme " + str + " not supported");
                    }
                } else {
                    AuthScheme authSchemeCreate = authSchemeProviderLookup.create(httpContext);
                    authSchemeCreate.processChallenge(header);
                    Credentials credentials = credentialsProvider.getCredentials(new AuthScope(httpHost.getHostName(), httpHost.getPort(), authSchemeCreate.getRealm(), authSchemeCreate.getSchemeName()));
                    if (credentials != null) {
                        linkedList.add(new AuthOption(authSchemeCreate, credentials));
                    }
                }
            } else if (Log.isLoggable(TAG, 3)) {
                Log.d(TAG, "Challenge for " + str + " authentication scheme not available");
            }
        }
        return linkedList;
    }

    @Override // org.apache.http.client.AuthenticationStrategy
    public void authSucceeded(HttpHost httpHost, AuthScheme authScheme, HttpContext httpContext) {
        Args.notNull(httpHost, "Host");
        Args.notNull(authScheme, "Auth scheme");
        Args.notNull(httpContext, "HTTP context");
        HttpClientContext httpClientContextAdapt = HttpClientContext.adapt(httpContext);
        if (isCachable(authScheme)) {
            AuthCache authCache = httpClientContextAdapt.getAuthCache();
            if (authCache == null) {
                authCache = new BasicAuthCache();
                httpClientContextAdapt.setAuthCache(authCache);
            }
            if (Log.isLoggable(TAG, 3)) {
                Log.d(TAG, "Caching '" + authScheme.getSchemeName() + "' auth scheme for " + httpHost);
            }
            authCache.put(httpHost, authScheme);
        }
    }

    protected boolean isCachable(AuthScheme authScheme) {
        if (authScheme == null || !authScheme.isComplete()) {
            return false;
        }
        String schemeName = authScheme.getSchemeName();
        return schemeName.equalsIgnoreCase(AuthSchemes.BASIC) || schemeName.equalsIgnoreCase(AuthSchemes.DIGEST);
    }

    @Override // org.apache.http.client.AuthenticationStrategy
    public void authFailed(HttpHost httpHost, AuthScheme authScheme, HttpContext httpContext) {
        Args.notNull(httpHost, "Host");
        Args.notNull(httpContext, "HTTP context");
        AuthCache authCache = HttpClientContext.adapt(httpContext).getAuthCache();
        if (authCache != null) {
            if (Log.isLoggable(TAG, 3)) {
                Log.d(TAG, "Clearing cached auth scheme for " + httpHost);
            }
            authCache.remove(httpHost);
        }
    }
}
