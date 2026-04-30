package c.a.a.a.a.e;

import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.Proxy;
import java.net.URL;

/* JADX INFO: compiled from: HttpRequest.java */
/* JADX INFO: loaded from: classes.dex */
final class i implements h {
    i() {
    }

    @Override // c.a.a.a.a.e.h
    public HttpURLConnection a(URL url) throws IOException {
        return (HttpURLConnection) url.openConnection();
    }

    @Override // c.a.a.a.a.e.h
    public HttpURLConnection a(URL url, Proxy proxy) throws IOException {
        return (HttpURLConnection) url.openConnection(proxy);
    }
}
