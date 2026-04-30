package com.b.a.d.c;

import android.net.Uri;
import java.io.File;

/* JADX INFO: compiled from: FileLoader.java */
/* JADX INFO: loaded from: classes2.dex */
public class b<T> implements s<File, T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final s<Uri, T> f913a;

    public b(s<Uri, T> sVar) {
        this.f913a = sVar;
    }

    @Override // com.b.a.d.c.s
    public com.b.a.d.a.c<T> a(File file, int i, int i2) {
        return this.f913a.a(Uri.fromFile(file), i, i2);
    }
}
