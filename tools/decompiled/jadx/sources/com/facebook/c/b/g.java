package com.facebook.c.b;

import java.io.IOException;

/* JADX INFO: compiled from: DefaultDiskStorage.java */
/* JADX INFO: loaded from: classes2.dex */
class g extends IOException {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f1873a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f1874b;

    public g(long j, long j2) {
        super("File was not written completely. Expected: " + j + ", found: " + j2);
        this.f1873a = j;
        this.f1874b = j2;
    }
}
