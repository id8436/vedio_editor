package c.a.a.a.a.e;

import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.Proxy;
import java.net.URL;

/* JADX INFO: compiled from: HttpRequest.java */
/* JADX INFO: loaded from: classes.dex */
public interface h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final h f271a = new i();

    HttpURLConnection a(URL url) throws IOException;

    HttpURLConnection a(URL url, Proxy proxy) throws IOException;
}
