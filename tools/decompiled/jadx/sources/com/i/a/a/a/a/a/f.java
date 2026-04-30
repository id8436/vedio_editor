package com.i.a.a.a.a.a;

import java.io.File;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: compiled from: DiskLruCache.java */
/* JADX INFO: loaded from: classes3.dex */
final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ a f3208a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f3209b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final long[] f3210c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f3211d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private d f3212e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f3213f;

    /* synthetic */ f(a aVar, String str, b bVar) {
        this(aVar, str);
    }

    private f(a aVar, String str) {
        this.f3208a = aVar;
        this.f3209b = str;
        this.f3210c = new long[aVar.j];
    }

    public String a() throws IOException {
        StringBuilder sb = new StringBuilder();
        for (long j : this.f3210c) {
            sb.append(' ').append(j);
        }
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String[] strArr) throws IOException {
        if (strArr.length != this.f3208a.j) {
            throw b(strArr);
        }
        for (int i = 0; i < strArr.length; i++) {
            try {
                this.f3210c[i] = Long.parseLong(strArr[i]);
            } catch (NumberFormatException e2) {
                throw b(strArr);
            }
        }
    }

    private IOException b(String[] strArr) throws IOException {
        throw new IOException("unexpected journal line: " + Arrays.toString(strArr));
    }

    public File a(int i) {
        return new File(this.f3208a.f3196c, this.f3209b + "." + i);
    }

    public File b(int i) {
        return new File(this.f3208a.f3196c, this.f3209b + "." + i + ".tmp");
    }
}
