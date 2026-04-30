package com.f.a;

import java.io.File;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: compiled from: DiskLruCache.java */
/* JADX INFO: loaded from: classes2.dex */
final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ a f1649a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f1650b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final long[] f1651c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f1652d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private d f1653e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f1654f;

    /* synthetic */ f(a aVar, String str, b bVar) {
        this(aVar, str);
    }

    private f(a aVar, String str) {
        this.f1649a = aVar;
        this.f1650b = str;
        this.f1651c = new long[aVar.i];
    }

    public String a() throws IOException {
        StringBuilder sb = new StringBuilder();
        for (long j : this.f1651c) {
            sb.append(' ').append(j);
        }
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String[] strArr) throws IOException {
        if (strArr.length != this.f1649a.i) {
            throw b(strArr);
        }
        for (int i = 0; i < strArr.length; i++) {
            try {
                this.f1651c[i] = Long.parseLong(strArr[i]);
            } catch (NumberFormatException e2) {
                throw b(strArr);
            }
        }
    }

    private IOException b(String[] strArr) throws IOException {
        throw new IOException("unexpected journal line: " + Arrays.toString(strArr));
    }

    public File a(int i) {
        return new File(this.f1649a.f1637c, this.f1650b + "." + i);
    }

    public File b(int i) {
        return new File(this.f1649a.f1637c, this.f1650b + "." + i + ".tmp");
    }
}
