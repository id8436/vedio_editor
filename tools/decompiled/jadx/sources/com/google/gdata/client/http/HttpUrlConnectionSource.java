package com.google.gdata.client.http;

import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;

/* JADX INFO: loaded from: classes3.dex */
public interface HttpUrlConnectionSource {
    HttpURLConnection openConnection(URL url) throws IOException;
}
