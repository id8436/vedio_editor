package com.k.a;

import android.graphics.Bitmap;
import java.io.InputStream;

/* JADX INFO: compiled from: Downloader.java */
/* JADX INFO: loaded from: classes.dex */
public class x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final InputStream f3568a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final Bitmap f3569b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final boolean f3570c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final long f3571d;

    public x(InputStream inputStream, boolean z, long j) {
        if (inputStream == null) {
            throw new IllegalArgumentException("Stream may not be null.");
        }
        this.f3568a = inputStream;
        this.f3569b = null;
        this.f3570c = z;
        this.f3571d = j;
    }

    public InputStream a() {
        return this.f3568a;
    }

    @Deprecated
    public Bitmap b() {
        return this.f3569b;
    }

    public long c() {
        return this.f3571d;
    }
}
