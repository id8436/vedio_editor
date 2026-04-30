package com.google.gdata.client.http;

import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;

/* JADX INFO: loaded from: classes3.dex */
public class JdkHttpUrlConnectionSource implements HttpUrlConnectionSource {
    public static final JdkHttpUrlConnectionSource INSTANCE = new JdkHttpUrlConnectionSource();

    @Override // com.google.gdata.client.http.HttpUrlConnectionSource
    public HttpURLConnection openConnection(URL url) throws IOException {
        if (!url.getProtocol().startsWith("http")) {
            throw new IllegalArgumentException("Not an HTTP url: " + url);
        }
        return (HttpURLConnection) url.openConnection();
    }
}
