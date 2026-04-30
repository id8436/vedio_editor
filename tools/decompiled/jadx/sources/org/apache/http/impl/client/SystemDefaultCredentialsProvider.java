package org.apache.http.impl.client;

import java.net.Authenticator;
import java.net.PasswordAuthentication;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.apache.http.annotation.ThreadSafe;
import org.apache.http.auth.AuthScope;
import org.apache.http.auth.Credentials;
import org.apache.http.auth.NTCredentials;
import org.apache.http.auth.UsernamePasswordCredentials;
import org.apache.http.client.CredentialsProvider;
import org.apache.http.client.config.AuthSchemes;
import org.apache.http.util.Args;

/* JADX INFO: loaded from: classes3.dex */
@ThreadSafe
public class SystemDefaultCredentialsProvider implements CredentialsProvider {
    private static final Map<String, String> SCHEME_MAP = new ConcurrentHashMap();
    private final BasicCredentialsProviderHC4 internal = new BasicCredentialsProviderHC4();

    static {
        SCHEME_MAP.put(AuthSchemes.BASIC.toUpperCase(Locale.ENGLISH), AuthSchemes.BASIC);
        SCHEME_MAP.put(AuthSchemes.DIGEST.toUpperCase(Locale.ENGLISH), AuthSchemes.DIGEST);
        SCHEME_MAP.put(AuthSchemes.NTLM.toUpperCase(Locale.ENGLISH), AuthSchemes.NTLM);
        SCHEME_MAP.put(AuthSchemes.SPNEGO.toUpperCase(Locale.ENGLISH), "SPNEGO");
        SCHEME_MAP.put(AuthSchemes.KERBEROS.toUpperCase(Locale.ENGLISH), AuthSchemes.KERBEROS);
    }

    private static String translateScheme(String str) {
        if (str == null) {
            return null;
        }
        String str2 = SCHEME_MAP.get(str);
        return str2 == null ? str : str2;
    }

    @Override // org.apache.http.client.CredentialsProvider
    public void setCredentials(AuthScope authScope, Credentials credentials) {
        this.internal.setCredentials(authScope, credentials);
    }

    private static PasswordAuthentication getSystemCreds(AuthScope authScope, Authenticator.RequestorType requestorType) {
        String host = authScope.getHost();
        int port = authScope.getPort();
        return Authenticator.requestPasswordAuthentication(host, null, port, port == 443 ? "https" : "http", null, translateScheme(authScope.getScheme()), null, requestorType);
    }

    @Override // org.apache.http.client.CredentialsProvider
    public Credentials getCredentials(AuthScope authScope) {
        Args.notNull(authScope, "Auth scope");
        Credentials credentials = this.internal.getCredentials(authScope);
        if (credentials == null) {
            if (authScope.getHost() != null) {
                PasswordAuthentication systemCreds = getSystemCreds(authScope, Authenticator.RequestorType.SERVER);
                PasswordAuthentication systemCreds2 = systemCreds == null ? getSystemCreds(authScope, Authenticator.RequestorType.PROXY) : systemCreds;
                if (systemCreds2 != null) {
                    String property = System.getProperty("http.auth.ntlm.domain");
                    if (property != null) {
                        return new NTCredentials(systemCreds2.getUserName(), new String(systemCreds2.getPassword()), null, property);
                    }
                    if (AuthSchemes.NTLM.equalsIgnoreCase(authScope.getScheme())) {
                        return new NTCredentials(systemCreds2.getUserName(), new String(systemCreds2.getPassword()), null, null);
                    }
                    return new UsernamePasswordCredentials(systemCreds2.getUserName(), new String(systemCreds2.getPassword()));
                }
            }
            return null;
        }
        return credentials;
    }

    @Override // org.apache.http.client.CredentialsProvider
    public void clear() {
        this.internal.clear();
    }
}
