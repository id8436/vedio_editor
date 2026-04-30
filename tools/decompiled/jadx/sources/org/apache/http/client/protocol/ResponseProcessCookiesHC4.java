package org.apache.http.client.protocol;

import android.util.Log;
import java.io.IOException;
import org.apache.http.Header;
import org.apache.http.HeaderIterator;
import org.apache.http.HttpException;
import org.apache.http.HttpResponse;
import org.apache.http.HttpResponseInterceptor;
import org.apache.http.annotation.Immutable;
import org.apache.http.client.CookieStore;
import org.apache.http.cookie.Cookie;
import org.apache.http.cookie.CookieOrigin;
import org.apache.http.cookie.CookieSpec;
import org.apache.http.cookie.MalformedCookieException;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.Args;

/* JADX INFO: loaded from: classes3.dex */
@Immutable
public class ResponseProcessCookiesHC4 implements HttpResponseInterceptor {
    private static final String TAG = "HttpClient";

    @Override // org.apache.http.HttpResponseInterceptor
    public void process(HttpResponse httpResponse, HttpContext httpContext) throws HttpException, IOException {
        Args.notNull(httpResponse, "HTTP request");
        Args.notNull(httpContext, "HTTP context");
        HttpClientContext httpClientContextAdapt = HttpClientContext.adapt(httpContext);
        CookieSpec cookieSpec = httpClientContextAdapt.getCookieSpec();
        if (cookieSpec == null) {
            if (Log.isLoggable(TAG, 3)) {
                Log.d(TAG, "Cookie spec not specified in HTTP context");
                return;
            }
            return;
        }
        CookieStore cookieStore = httpClientContextAdapt.getCookieStore();
        if (cookieStore == null) {
            if (Log.isLoggable(TAG, 3)) {
                Log.d(TAG, "Cookie store not specified in HTTP context");
                return;
            }
            return;
        }
        CookieOrigin cookieOrigin = httpClientContextAdapt.getCookieOrigin();
        if (cookieOrigin == null) {
            if (Log.isLoggable(TAG, 3)) {
                Log.d(TAG, "Cookie origin not specified in HTTP context");
            }
        } else {
            processCookies(httpResponse.headerIterator("Set-Cookie"), cookieSpec, cookieOrigin, cookieStore);
            if (cookieSpec.getVersion() > 0) {
                processCookies(httpResponse.headerIterator("Set-Cookie2"), cookieSpec, cookieOrigin, cookieStore);
            }
        }
    }

    private void processCookies(HeaderIterator headerIterator, CookieSpec cookieSpec, CookieOrigin cookieOrigin, CookieStore cookieStore) {
        while (headerIterator.hasNext()) {
            Header headerNextHeader = headerIterator.nextHeader();
            try {
                for (Cookie cookie : cookieSpec.parse(headerNextHeader, cookieOrigin)) {
                    try {
                        cookieSpec.validate(cookie, cookieOrigin);
                        cookieStore.addCookie(cookie);
                        if (Log.isLoggable(TAG, 3)) {
                            Log.d(TAG, "Cookie accepted [" + formatCooke(cookie) + "]");
                        }
                    } catch (MalformedCookieException e2) {
                        if (Log.isLoggable(TAG, 5)) {
                            Log.w(TAG, "Cookie rejected [" + formatCooke(cookie) + "] " + e2.getMessage());
                        }
                    }
                }
            } catch (MalformedCookieException e3) {
                if (Log.isLoggable(TAG, 5)) {
                    Log.w(TAG, "Invalid cookie header: \"" + headerNextHeader + "\". " + e3.getMessage());
                }
            }
        }
    }

    private static String formatCooke(Cookie cookie) {
        StringBuilder sb = new StringBuilder();
        sb.append(cookie.getName());
        sb.append("=\"");
        String value = cookie.getValue();
        if (value.length() > 100) {
            value = value.substring(0, 100) + "...";
        }
        sb.append(value);
        sb.append("\"");
        sb.append(", version:");
        sb.append(Integer.toString(cookie.getVersion()));
        sb.append(", domain:");
        sb.append(cookie.getDomain());
        sb.append(", path:");
        sb.append(cookie.getPath());
        sb.append(", expiry:");
        sb.append(cookie.getExpiryDate());
        return sb.toString();
    }
}
