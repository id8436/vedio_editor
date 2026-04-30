package com.k.a;

import android.graphics.Bitmap;
import java.io.InputStream;

/* JADX INFO: compiled from: RequestHandler.java */
/* JADX INFO: loaded from: classes3.dex */
public final class bc {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final aq f3509a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Bitmap f3510b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final InputStream f3511c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f3512d;

    public bc(Bitmap bitmap, aq aqVar) {
        this((Bitmap) bm.a(bitmap, "bitmap == null"), null, aqVar, 0);
    }

    public bc(InputStream inputStream, aq aqVar) {
        this(null, (InputStream) bm.a(inputStream, "stream == null"), aqVar, 0);
    }

    bc(Bitmap bitmap, InputStream inputStream, aq aqVar, int i) {
        if (!((inputStream != null) ^ (bitmap != null))) {
            throw new AssertionError();
        }
        this.f3510b = bitmap;
        this.f3511c = inputStream;
        this.f3509a = (aq) bm.a(aqVar, "loadedFrom == null");
        this.f3512d = i;
    }

    public Bitmap a() {
        return this.f3510b;
    }

    public InputStream b() {
        return this.f3511c;
    }

    public aq c() {
        return this.f3509a;
    }

    int d() {
        return this.f3512d;
    }
}
