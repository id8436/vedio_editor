package com.behance.sdk.network;

import java.net.URI;
import org.apache.http.client.methods.HttpEntityEnclosingRequestBase;

/* JADX INFO: loaded from: classes2.dex */
public class HttpPatch extends HttpEntityEnclosingRequestBase {
    public static final String NAME = "PATCH";

    public HttpPatch() {
    }

    public HttpPatch(String str) {
        setURI(URI.create(str));
    }

    @Override // org.apache.http.client.methods.HttpRequestBase, org.apache.http.client.methods.HttpUriRequest
    public String getMethod() {
        return "PATCH";
    }
}
