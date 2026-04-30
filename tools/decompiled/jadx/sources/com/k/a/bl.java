package com.k.a;

import android.content.Context;
import android.net.http.HttpResponseCache;
import java.io.File;
import java.io.IOException;

/* JADX INFO: compiled from: UrlConnectionDownloader.java */
/* JADX INFO: loaded from: classes3.dex */
class bl {
    static Object a(Context context) throws IOException {
        File fileB = bm.b(context);
        HttpResponseCache installed = HttpResponseCache.getInstalled();
        if (installed == null) {
            return HttpResponseCache.install(fileB, bm.a(fileB));
        }
        return installed;
    }
}
