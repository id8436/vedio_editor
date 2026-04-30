package com.b.a.d.a;

import android.text.TextUtils;
import android.util.Log;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.Map;

/* JADX INFO: compiled from: HttpUrlFetcher.java */
/* JADX INFO: loaded from: classes2.dex */
public class f implements c<InputStream> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final i f770a = new h();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.b.a.d.c.e f771b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final i f772c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private HttpURLConnection f773d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private InputStream f774e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private volatile boolean f775f;

    public f(com.b.a.d.c.e eVar) {
        this(eVar, f770a);
    }

    f(com.b.a.d.c.e eVar, i iVar) {
        this.f771b = eVar;
        this.f772c = iVar;
    }

    @Override // com.b.a.d.a.c
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public InputStream a(com.b.a.k kVar) throws Exception {
        return a(this.f771b.a(), 0, null, this.f771b.b());
    }

    private InputStream a(URL url, int i, URL url2, Map<String, String> map) throws IOException {
        if (i >= 5) {
            throw new IOException("Too many (> 5) redirects!");
        }
        if (url2 != null) {
            try {
                if (url.toURI().equals(url2.toURI())) {
                    throw new IOException("In re-direct loop");
                }
            } catch (URISyntaxException e2) {
            }
        }
        this.f773d = this.f772c.a(url);
        for (Map.Entry<String, String> entry : map.entrySet()) {
            this.f773d.addRequestProperty(entry.getKey(), entry.getValue());
        }
        this.f773d.setConnectTimeout(2500);
        this.f773d.setReadTimeout(2500);
        this.f773d.setUseCaches(false);
        this.f773d.setDoInput(true);
        this.f773d.connect();
        if (this.f775f) {
            return null;
        }
        int responseCode = this.f773d.getResponseCode();
        if (responseCode / 100 == 2) {
            return a(this.f773d);
        }
        if (responseCode / 100 == 3) {
            String headerField = this.f773d.getHeaderField("Location");
            if (TextUtils.isEmpty(headerField)) {
                throw new IOException("Received empty or null redirect url");
            }
            return a(new URL(url, headerField), i + 1, url, map);
        }
        if (responseCode == -1) {
            throw new IOException("Unable to retrieve response code from HttpUrlConnection.");
        }
        throw new IOException("Request failed " + responseCode + ": " + this.f773d.getResponseMessage());
    }

    private InputStream a(HttpURLConnection httpURLConnection) throws IOException {
        if (TextUtils.isEmpty(httpURLConnection.getContentEncoding())) {
            this.f774e = com.b.a.j.b.a(httpURLConnection.getInputStream(), httpURLConnection.getContentLength());
        } else {
            if (Log.isLoggable("HttpUrlFetcher", 3)) {
                Log.d("HttpUrlFetcher", "Got non empty content encoding: " + httpURLConnection.getContentEncoding());
            }
            this.f774e = httpURLConnection.getInputStream();
        }
        return this.f774e;
    }

    @Override // com.b.a.d.a.c
    public void a() {
        if (this.f774e != null) {
            try {
                this.f774e.close();
            } catch (IOException e2) {
            }
        }
        if (this.f773d != null) {
            this.f773d.disconnect();
        }
    }

    @Override // com.b.a.d.a.c
    public String b() {
        return this.f771b.c();
    }

    @Override // com.b.a.d.a.c
    public void c() {
        this.f775f = true;
    }
}
