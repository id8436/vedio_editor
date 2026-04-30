package org.apache.http.client.methods;

import java.net.URI;
import org.apache.http.annotation.NotThreadSafe;

/* JADX INFO: loaded from: classes3.dex */
@NotThreadSafe
public class HttpTraceHC4 extends HttpRequestBaseHC4 {
    public static final String METHOD_NAME = "TRACE";

    public HttpTraceHC4() {
    }

    public HttpTraceHC4(URI uri) {
        setURI(uri);
    }

    public HttpTraceHC4(String str) {
        setURI(URI.create(str));
    }

    @Override // org.apache.http.client.methods.HttpRequestBaseHC4, org.apache.http.client.methods.HttpUriRequest
    public String getMethod() {
        return "TRACE";
    }
}
