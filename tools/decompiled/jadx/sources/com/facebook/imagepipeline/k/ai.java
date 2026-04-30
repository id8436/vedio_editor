package com.facebook.imagepipeline.k;

import android.net.Uri;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Locale;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: compiled from: HttpUrlConnectionNetworkFetcher.java */
/* JADX INFO: loaded from: classes2.dex */
public class ai extends e<ah> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ExecutorService f2611a;

    public ai() {
        this(Executors.newFixedThreadPool(3));
    }

    ai(ExecutorService executorService) {
        this.f2611a = executorService;
    }

    @Override // com.facebook.imagepipeline.k.by
    public ah a(o<com.facebook.imagepipeline.h.d> oVar, cm cmVar) {
        return new ah(oVar, cmVar);
    }

    @Override // com.facebook.imagepipeline.k.by
    public void a(ah ahVar, bz bzVar) {
        ahVar.b().a(new ak(this, this.f2611a.submit(new aj(this, ahVar, bzVar)), bzVar));
    }

    void b(ah ahVar, bz bzVar) {
        HttpURLConnection httpURLConnectionA = null;
        try {
            try {
                httpURLConnectionA = a(ahVar.e(), 5);
                if (httpURLConnectionA != null) {
                    bzVar.a(httpURLConnectionA.getInputStream(), -1);
                }
                if (httpURLConnectionA != null) {
                    httpURLConnectionA.disconnect();
                }
            } catch (IOException e2) {
                bzVar.a(e2);
                if (httpURLConnectionA != null) {
                    httpURLConnectionA.disconnect();
                }
            }
        } catch (Throwable th) {
            if (httpURLConnectionA != null) {
                httpURLConnectionA.disconnect();
            }
            throw th;
        }
    }

    private HttpURLConnection a(Uri uri, int i) throws IOException {
        HttpURLConnection httpURLConnectionA = a(uri);
        int responseCode = httpURLConnectionA.getResponseCode();
        if (!a(responseCode)) {
            if (b(responseCode)) {
                String headerField = httpURLConnectionA.getHeaderField("Location");
                httpURLConnectionA.disconnect();
                Uri uri2 = headerField == null ? null : Uri.parse(headerField);
                String scheme = uri.getScheme();
                if (i > 0 && uri2 != null && !uri2.getScheme().equals(scheme)) {
                    return a(uri2, i - 1);
                }
                throw new IOException(i == 0 ? a("URL %s follows too many redirects", uri.toString()) : a("URL %s returned %d without a valid redirect", uri.toString(), Integer.valueOf(responseCode)));
            }
            httpURLConnectionA.disconnect();
            throw new IOException(String.format("Image URL %s returned HTTP code %d", uri.toString(), Integer.valueOf(responseCode)));
        }
        return httpURLConnectionA;
    }

    static HttpURLConnection a(Uri uri) throws IOException {
        return (HttpURLConnection) new URL(uri.toString()).openConnection();
    }

    private static boolean a(int i) {
        return i >= 200 && i < 300;
    }

    private static boolean b(int i) {
        switch (i) {
            case 300:
            case 301:
            case 302:
            case 303:
            case 307:
            case 308:
                return true;
            case 304:
            case 305:
            case 306:
            default:
                return false;
        }
    }

    private static String a(String str, Object... objArr) {
        return String.format(Locale.getDefault(), str, objArr);
    }
}
