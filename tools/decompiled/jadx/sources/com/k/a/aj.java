package com.k.a;

import android.content.Context;
import android.net.Uri;
import com.squareup.okhttp.Cache;
import com.squareup.okhttp.CacheControl;
import com.squareup.okhttp.OkHttpClient;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.Response;
import com.squareup.okhttp.ResponseBody;
import java.io.File;
import java.io.IOException;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: OkHttpDownloader.java */
/* JADX INFO: loaded from: classes3.dex */
public class aj implements w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final OkHttpClient f3450a;

    private static OkHttpClient a() {
        OkHttpClient okHttpClient = new OkHttpClient();
        okHttpClient.setConnectTimeout(15000L, TimeUnit.MILLISECONDS);
        okHttpClient.setReadTimeout(20000L, TimeUnit.MILLISECONDS);
        okHttpClient.setWriteTimeout(20000L, TimeUnit.MILLISECONDS);
        return okHttpClient;
    }

    public aj(Context context) {
        this(bm.b(context));
    }

    public aj(File file) {
        this(file, bm.a(file));
    }

    public aj(File file, long j) {
        this(a());
        try {
            this.f3450a.setCache(new Cache(file, j));
        } catch (IOException e2) {
        }
    }

    public aj(OkHttpClient okHttpClient) {
        this.f3450a = okHttpClient;
    }

    @Override // com.k.a.w
    public x a(Uri uri, int i) throws IOException {
        CacheControl cacheControlBuild = null;
        if (i != 0) {
            if (ag.c(i)) {
                cacheControlBuild = CacheControl.FORCE_CACHE;
            } else {
                CacheControl.Builder builder = new CacheControl.Builder();
                if (!ag.a(i)) {
                    builder.noCache();
                }
                if (!ag.b(i)) {
                    builder.noStore();
                }
                cacheControlBuild = builder.build();
            }
        }
        Request.Builder builderUrl = new Request.Builder().url(uri.toString());
        if (cacheControlBuild != null) {
            builderUrl.cacheControl(cacheControlBuild);
        }
        Response responseExecute = this.f3450a.newCall(builderUrl.build()).execute();
        int iCode = responseExecute.code();
        if (iCode >= 300) {
            responseExecute.body().close();
            throw new y(iCode + " " + responseExecute.message(), i, iCode);
        }
        boolean z = responseExecute.cacheResponse() != null;
        ResponseBody responseBodyBody = responseExecute.body();
        return new x(responseBodyBody.byteStream(), z, responseBodyBody.contentLength());
    }
}
