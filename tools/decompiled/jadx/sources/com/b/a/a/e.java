package com.b.a.a;

import java.io.File;

/* JADX INFO: compiled from: DiskLruCache.java */
/* JADX INFO: loaded from: classes2.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ a f699a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f700b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final long f701c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final long[] f702d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final File[] f703e;

    /* synthetic */ e(a aVar, String str, long j, File[] fileArr, long[] jArr, b bVar) {
        this(aVar, str, j, fileArr, jArr);
    }

    private e(a aVar, String str, long j, File[] fileArr, long[] jArr) {
        this.f699a = aVar;
        this.f700b = str;
        this.f701c = j;
        this.f703e = fileArr;
        this.f702d = jArr;
    }

    public File a(int i) {
        return this.f703e[i];
    }
}
