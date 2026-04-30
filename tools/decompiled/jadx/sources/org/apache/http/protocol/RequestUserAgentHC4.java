package org.apache.http.protocol;

import java.io.IOException;
import org.apache.http.HttpException;
import org.apache.http.HttpRequest;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.annotation.Immutable;
import org.apache.http.params.HttpParams;
import org.apache.http.util.Args;

/* JADX INFO: loaded from: classes3.dex */
@Immutable
public class RequestUserAgentHC4 implements HttpRequestInterceptor {
    private final String userAgent;

    public RequestUserAgentHC4(String str) {
        this.userAgent = str;
    }

    public RequestUserAgentHC4() {
        this(null);
    }

    @Override // org.apache.http.HttpRequestInterceptor
    public void process(HttpRequest httpRequest, HttpContext httpContext) throws HttpException, IOException {
        Args.notNull(httpRequest, "HTTP request");
        if (!httpRequest.containsHeader("User-Agent")) {
            String str = null;
            HttpParams params = httpRequest.getParams();
            if (params != null) {
                str = (String) params.getParameter("http.useragent");
            }
            if (str == null) {
                str = this.userAgent;
            }
            if (str != null) {
                httpRequest.addHeader("User-Agent", str);
            }
        }
    }
}
