package com.f.a;

import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: DiskLruCache.java */
/* JADX INFO: loaded from: classes2.dex */
public final class g implements Closeable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ a f1655a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f1656b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final long f1657c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final InputStream[] f1658d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final long[] f1659e;

    /* synthetic */ g(a aVar, String str, long j, InputStream[] inputStreamArr, long[] jArr, b bVar) {
        this(aVar, str, j, inputStreamArr, jArr);
    }

    private g(a aVar, String str, long j, InputStream[] inputStreamArr, long[] jArr) {
        this.f1655a = aVar;
        this.f1656b = str;
        this.f1657c = j;
        this.f1658d = inputStreamArr;
        this.f1659e = jArr;
    }

    public InputStream a(int i) {
        return this.f1658d[i];
    }

    public String b(int i) throws IOException {
        return a.b(a(i));
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        for (InputStream inputStream : this.f1658d) {
            j.a(inputStream);
        }
    }
}
