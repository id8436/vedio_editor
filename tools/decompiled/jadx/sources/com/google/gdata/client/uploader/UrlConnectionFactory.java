package com.google.gdata.client.uploader;

import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;

/* JADX INFO: loaded from: classes3.dex */
interface UrlConnectionFactory {
    public static final UrlConnectionFactory DEFAULT = new UrlConnectionFactory() { // from class: com.google.gdata.client.uploader.UrlConnectionFactory.1
        @Override // com.google.gdata.client.uploader.UrlConnectionFactory
        public HttpURLConnection create(URL url) throws IOException {
            return (HttpURLConnection) url.openConnection();
        }
    };

    HttpURLConnection create(URL url) throws IOException;
}
