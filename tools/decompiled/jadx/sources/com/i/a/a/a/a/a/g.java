package com.i.a.a.a.a.a;

import java.io.Closeable;
import java.io.File;
import java.io.InputStream;

/* JADX INFO: compiled from: DiskLruCache.java */
/* JADX INFO: loaded from: classes3.dex */
public final class g implements Closeable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ a f3214a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f3215b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final long f3216c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private File[] f3217d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final InputStream[] f3218e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final long[] f3219f;

    /* synthetic */ g(a aVar, String str, long j, File[] fileArr, InputStream[] inputStreamArr, long[] jArr, b bVar) {
        this(aVar, str, j, fileArr, inputStreamArr, jArr);
    }

    private g(a aVar, String str, long j, File[] fileArr, InputStream[] inputStreamArr, long[] jArr) {
        this.f3214a = aVar;
        this.f3215b = str;
        this.f3216c = j;
        this.f3217d = fileArr;
        this.f3218e = inputStreamArr;
        this.f3219f = jArr;
    }

    public File a(int i) {
        return this.f3217d[i];
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        for (InputStream inputStream : this.f3218e) {
            k.a(inputStream);
        }
    }
}
