package com.k.a;

import android.content.Context;
import android.net.Uri;
import android.os.Build;
import com.google.android.exoplayer.DefaultLoadControl;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import org.mortbay.jetty.HttpHeaderValues;

/* JADX INFO: compiled from: UrlConnectionDownloader.java */
/* JADX INFO: loaded from: classes3.dex */
public class bj implements w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static volatile Object f3531a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Object f3532b = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final ThreadLocal<StringBuilder> f3533c = new bk();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Context f3534d;

    public bj(Context context) {
        this.f3534d = context.getApplicationContext();
    }

    protected HttpURLConnection a(Uri uri) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(uri.toString()).openConnection();
        httpURLConnection.setConnectTimeout(DefaultLoadControl.DEFAULT_LOW_WATERMARK_MS);
        httpURLConnection.setReadTimeout(20000);
        return httpURLConnection;
    }

    @Override // com.k.a.w
    public x a(Uri uri, int i) throws IOException {
        String string;
        if (Build.VERSION.SDK_INT >= 14) {
            a(this.f3534d);
        }
        HttpURLConnection httpURLConnectionA = a(uri);
        httpURLConnectionA.setUseCaches(true);
        if (i != 0) {
            if (ag.c(i)) {
                string = "only-if-cached,max-age=2147483647";
            } else {
                StringBuilder sb = f3533c.get();
                sb.setLength(0);
                if (!ag.a(i)) {
                    sb.append(HttpHeaderValues.NO_CACHE);
                }
                if (!ag.b(i)) {
                    if (sb.length() > 0) {
                        sb.append(',');
                    }
                    sb.append("no-store");
                }
                string = sb.toString();
            }
            httpURLConnectionA.setRequestProperty("Cache-Control", string);
        }
        int responseCode = httpURLConnectionA.getResponseCode();
        if (responseCode >= 300) {
            httpURLConnectionA.disconnect();
            throw new y(responseCode + " " + httpURLConnectionA.getResponseMessage(), i, responseCode);
        }
        return new x(httpURLConnectionA.getInputStream(), bm.a(httpURLConnectionA.getHeaderField("X-Android-Response-Source")), httpURLConnectionA.getHeaderFieldInt("Content-Length", -1));
    }

    private static void a(Context context) {
        if (f3531a == null) {
            try {
                synchronized (f3532b) {
                    if (f3531a == null) {
                        f3531a = bl.a(context);
                    }
                }
            } catch (IOException e2) {
            }
        }
    }
}
