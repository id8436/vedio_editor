package org.apache.http.client.methods;

import java.net.URI;
import org.apache.http.annotation.NotThreadSafe;

/* JADX INFO: loaded from: classes3.dex */
@NotThreadSafe
public class HttpPatch extends HttpEntityEnclosingRequestBaseHC4 {
    public static final String METHOD_NAME = "PATCH";

    public HttpPatch() {
    }

    public HttpPatch(URI uri) {
        setURI(uri);
    }

    public HttpPatch(String str) {
        setURI(URI.create(str));
    }

    @Override // org.apache.http.client.methods.HttpRequestBaseHC4, org.apache.http.client.methods.HttpUriRequest
    public String getMethod() {
        return "PATCH";
    }
}
