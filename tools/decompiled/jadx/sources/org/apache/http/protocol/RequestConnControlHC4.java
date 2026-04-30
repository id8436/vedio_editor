package org.apache.http.protocol;

import java.io.IOException;
import org.apache.http.HttpException;
import org.apache.http.HttpRequest;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.annotation.Immutable;
import org.apache.http.util.Args;
import org.mortbay.jetty.HttpHeaders;

/* JADX INFO: loaded from: classes3.dex */
@Immutable
public class RequestConnControlHC4 implements HttpRequestInterceptor {
    @Override // org.apache.http.HttpRequestInterceptor
    public void process(HttpRequest httpRequest, HttpContext httpContext) throws HttpException, IOException {
        Args.notNull(httpRequest, "HTTP request");
        if (!httpRequest.getRequestLine().getMethod().equalsIgnoreCase("CONNECT") && !httpRequest.containsHeader("Connection")) {
            httpRequest.addHeader("Connection", HttpHeaders.KEEP_ALIVE);
        }
    }
}
