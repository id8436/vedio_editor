package com.b.a.d.a;

import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;

/* JADX INFO: compiled from: HttpUrlFetcher.java */
/* JADX INFO: loaded from: classes2.dex */
class h implements i {
    private h() {
    }

    @Override // com.b.a.d.a.i
    public HttpURLConnection a(URL url) throws IOException {
        return (HttpURLConnection) url.openConnection();
    }
}
