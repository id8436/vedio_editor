package com.i.a.b.d;

import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;
import android.provider.ContactsContract;
import com.google.android.exoplayer.ExoPlayer;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;

/* JADX INFO: compiled from: BaseImageDownloader.java */
/* JADX INFO: loaded from: classes3.dex */
public class a implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final Context f3315a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected final int f3316b = ExoPlayer.Factory.DEFAULT_MIN_REBUFFER_MS;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected final int f3317c = 20000;

    public a(Context context) {
        this.f3315a = context.getApplicationContext();
    }

    @Override // com.i.a.b.d.c
    public InputStream a(String str, Object obj) throws IOException {
        switch (d.a(str)) {
            case HTTP:
            case HTTPS:
                return b(str, obj);
            case FILE:
                return d(str, obj);
            case CONTENT:
                return e(str, obj);
            case ASSETS:
                return f(str, obj);
            case DRAWABLE:
                return g(str, obj);
            default:
                return h(str, obj);
        }
    }

    protected InputStream b(String str, Object obj) throws IOException {
        HttpURLConnection httpURLConnectionC = c(str, obj);
        for (int i = 0; httpURLConnectionC.getResponseCode() / 100 == 3 && i < 5; i++) {
            httpURLConnectionC = c(httpURLConnectionC.getHeaderField("Location"), obj);
        }
        try {
            return new com.i.a.b.a.a(new BufferedInputStream(httpURLConnectionC.getInputStream(), 32768), httpURLConnectionC.getContentLength());
        } catch (IOException e2) {
            com.i.a.c.c.a(httpURLConnectionC.getErrorStream());
            throw e2;
        }
    }

    protected HttpURLConnection c(String str, Object obj) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(Uri.encode(str, "@#&=*+-_.,:!?()/~'%")).openConnection();
        httpURLConnection.setConnectTimeout(this.f3316b);
        httpURLConnection.setReadTimeout(this.f3317c);
        return httpURLConnection;
    }

    protected InputStream d(String str, Object obj) throws IOException {
        String strC = d.FILE.c(str);
        return new com.i.a.b.a.a(new BufferedInputStream(new FileInputStream(strC), 32768), (int) new File(strC).length());
    }

    protected InputStream e(String str, Object obj) throws FileNotFoundException {
        ContentResolver contentResolver = this.f3315a.getContentResolver();
        Uri uri = Uri.parse(str);
        return str.startsWith("content://com.android.contacts/") ? ContactsContract.Contacts.openContactPhotoInputStream(contentResolver, uri) : contentResolver.openInputStream(uri);
    }

    protected InputStream f(String str, Object obj) throws IOException {
        return this.f3315a.getAssets().open(d.ASSETS.c(str));
    }

    protected InputStream g(String str, Object obj) {
        return this.f3315a.getResources().openRawResource(Integer.parseInt(d.DRAWABLE.c(str)));
    }

    protected InputStream h(String str, Object obj) throws IOException {
        throw new UnsupportedOperationException(String.format("UIL doesn't support scheme(protocol) by default [%s]. You should implement this support yourself (BaseImageDownloader.getStreamFromOtherSource(...))", str));
    }
}
