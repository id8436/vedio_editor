package org.apache.http.client.params;

import java.net.InetAddress;
import org.apache.http.HttpHost;
import org.apache.http.client.config.RequestConfig;
import org.apache.http.params.HttpParams;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public final class HttpClientParamConfig {
    private HttpClientParamConfig() {
    }

    public static RequestConfig getRequestConfig(HttpParams httpParams) {
        return RequestConfig.custom().setSocketTimeout(httpParams.getIntParameter("http.socket.timeout", 0)).setStaleConnectionCheckEnabled(httpParams.getBooleanParameter("http.connection.stalecheck", true)).setConnectTimeout(httpParams.getIntParameter("http.connection.timeout", 0)).setExpectContinueEnabled(httpParams.getBooleanParameter("http.protocol.expect-continue", false)).setProxy((HttpHost) httpParams.getParameter("http.route.default-proxy")).setLocalAddress((InetAddress) httpParams.getParameter("http.route.local-address")).setAuthenticationEnabled(httpParams.getBooleanParameter("http.protocol.handle-authentication", true)).setCircularRedirectsAllowed(httpParams.getBooleanParameter("http.protocol.allow-circular-redirects", false)).setCookieSpec((String) httpParams.getParameter("http.protocol.cookie-policy")).setMaxRedirects(httpParams.getIntParameter("http.protocol.max-redirects", 50)).setRedirectsEnabled(httpParams.getBooleanParameter("http.protocol.handle-redirects", true)).setRelativeRedirectsAllowed(!httpParams.getBooleanParameter("http.protocol.reject-relative-redirect", false)).build();
    }
}
