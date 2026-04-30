package com.b.a.a;

import java.io.File;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: compiled from: DiskLruCache.java */
/* JADX INFO: loaded from: classes2.dex */
final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    File[] f692a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    File[] f693b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ a f694c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f695d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final long[] f696e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f697f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private c f698g;
    private long h;

    /* synthetic */ d(a aVar, String str, b bVar) {
        this(aVar, str);
    }

    private d(a aVar, String str) {
        this.f694c = aVar;
        this.f695d = str;
        this.f696e = new long[aVar.h];
        this.f692a = new File[aVar.h];
        this.f693b = new File[aVar.h];
        StringBuilder sbAppend = new StringBuilder(str).append('.');
        int length = sbAppend.length();
        for (int i = 0; i < aVar.h; i++) {
            sbAppend.append(i);
            this.f692a[i] = new File(aVar.f681b, sbAppend.toString());
            sbAppend.append(".tmp");
            this.f693b[i] = new File(aVar.f681b, sbAppend.toString());
            sbAppend.setLength(length);
        }
    }

    public String a() throws IOException {
        StringBuilder sb = new StringBuilder();
        for (long j : this.f696e) {
            sb.append(' ').append(j);
        }
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String[] strArr) throws IOException {
        if (strArr.length != this.f694c.h) {
            throw b(strArr);
        }
        for (int i = 0; i < strArr.length; i++) {
            try {
                this.f696e[i] = Long.parseLong(strArr[i]);
            } catch (NumberFormatException e2) {
                throw b(strArr);
            }
        }
    }

    private IOException b(String[] strArr) throws IOException {
        throw new IOException("unexpected journal line: " + Arrays.toString(strArr));
    }

    public File a(int i) {
        return this.f692a[i];
    }

    public File b(int i) {
        return this.f693b[i];
    }
}
