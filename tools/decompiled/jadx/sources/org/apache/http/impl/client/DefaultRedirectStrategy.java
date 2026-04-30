package org.apache.http.impl.client;

import android.util.Log;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.Locale;
import org.apache.http.Header;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.ProtocolException;
import org.apache.http.annotation.Immutable;
import org.apache.http.client.CircularRedirectException;
import org.apache.http.client.RedirectStrategy;
import org.apache.http.client.config.RequestConfig;
import org.apache.http.client.methods.HttpGetHC4;
import org.apache.http.client.methods.HttpHeadHC4;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.client.methods.RequestBuilder;
import org.apache.http.client.protocol.HttpClientContext;
import org.apache.http.client.utils.URIBuilder;
import org.apache.http.client.utils.URIUtilsHC4;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.Args;
import org.apache.http.util.Asserts;
import org.apache.http.util.TextUtils;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes.dex */
@Immutable
public class DefaultRedirectStrategy implements RedirectStrategy {

    @Deprecated
    public static final String REDIRECT_LOCATIONS = "http.protocol.redirect-locations";
    private static final String TAG = "HttpClient";
    public static final DefaultRedirectStrategy INSTANCE = new DefaultRedirectStrategy();
    private static final String[] REDIRECT_METHODS = {"GET", "HEAD"};

    @Override // org.apache.http.client.RedirectStrategy
    public boolean isRedirected(HttpRequest httpRequest, HttpResponse httpResponse, HttpContext httpContext) throws ProtocolException {
        Args.notNull(httpRequest, "HTTP request");
        Args.notNull(httpResponse, "HTTP response");
        int statusCode = httpResponse.getStatusLine().getStatusCode();
        String method = httpRequest.getRequestLine().getMethod();
        Header firstHeader = httpResponse.getFirstHeader("location");
        switch (statusCode) {
            case 301:
            case 307:
                return isRedirectable(method);
            case 302:
                return isRedirectable(method) && firstHeader != null;
            case 303:
                return true;
            case 304:
            case 305:
            case 306:
            default:
                return false;
        }
    }

    public URI getLocationURI(HttpRequest httpRequest, HttpResponse httpResponse, HttpContext httpContext) throws ProtocolException {
        URI uriResolve;
        Args.notNull(httpRequest, "HTTP request");
        Args.notNull(httpResponse, "HTTP response");
        Args.notNull(httpContext, "HTTP context");
        HttpClientContext httpClientContextAdapt = HttpClientContext.adapt(httpContext);
        Header firstHeader = httpResponse.getFirstHeader("location");
        if (firstHeader == null) {
            throw new ProtocolException("Received redirect response " + httpResponse.getStatusLine() + " but no location header");
        }
        String value = firstHeader.getValue();
        if (Log.isLoggable(TAG, 3)) {
            Log.d(TAG, "Redirect requested to location '" + value + "'");
        }
        RequestConfig requestConfig = httpClientContextAdapt.getRequestConfig();
        URI uriCreateLocationURI = createLocationURI(value);
        try {
            if (uriCreateLocationURI.isAbsolute()) {
                uriResolve = uriCreateLocationURI;
            } else {
                if (!requestConfig.isRelativeRedirectsAllowed()) {
                    throw new ProtocolException("Relative redirect location '" + uriCreateLocationURI + "' not allowed");
                }
                HttpHost targetHost = httpClientContextAdapt.getTargetHost();
                Asserts.notNull(targetHost, "Target host");
                uriResolve = URIUtilsHC4.resolve(URIUtilsHC4.rewriteURI(new URI(httpRequest.getRequestLine().getUri()), targetHost, false), uriCreateLocationURI);
            }
            RedirectLocationsHC4 redirectLocationsHC4 = (RedirectLocationsHC4) httpClientContextAdapt.getAttribute("http.protocol.redirect-locations");
            if (redirectLocationsHC4 == null) {
                redirectLocationsHC4 = new RedirectLocationsHC4();
                httpContext.setAttribute("http.protocol.redirect-locations", redirectLocationsHC4);
            }
            if (!requestConfig.isCircularRedirectsAllowed() && redirectLocationsHC4.contains(uriResolve)) {
                throw new CircularRedirectException("Circular redirect to '" + uriResolve + "'");
            }
            redirectLocationsHC4.add(uriResolve);
            return uriResolve;
        } catch (URISyntaxException e2) {
            throw new ProtocolException(e2.getMessage(), e2);
        }
    }

    protected URI createLocationURI(String str) throws ProtocolException {
        try {
            URIBuilder uRIBuilder = new URIBuilder(new URI(str).normalize());
            String host = uRIBuilder.getHost();
            if (host != null) {
                uRIBuilder.setHost(host.toLowerCase(Locale.US));
            }
            if (TextUtils.isEmpty(uRIBuilder.getPath())) {
                uRIBuilder.setPath(URIUtil.SLASH);
            }
            return uRIBuilder.build();
        } catch (URISyntaxException e2) {
            throw new ProtocolException("Invalid redirect URI: " + str, e2);
        }
    }

    protected boolean isRedirectable(String str) {
        for (String str2 : REDIRECT_METHODS) {
            if (str2.equalsIgnoreCase(str)) {
                return true;
            }
        }
        return false;
    }

    @Override // org.apache.http.client.RedirectStrategy
    public HttpUriRequest getRedirect(HttpRequest httpRequest, HttpResponse httpResponse, HttpContext httpContext) throws ProtocolException {
        URI locationURI = getLocationURI(httpRequest, httpResponse, httpContext);
        String method = httpRequest.getRequestLine().getMethod();
        if (method.equalsIgnoreCase("HEAD")) {
            return new HttpHeadHC4(locationURI);
        }
        if (method.equalsIgnoreCase("GET")) {
            return new HttpGetHC4(locationURI);
        }
        if (httpResponse.getStatusLine().getStatusCode() == 307) {
            return RequestBuilder.copy(httpRequest).setUri(locationURI).build();
        }
        return new HttpGetHC4(locationURI);
    }
}
