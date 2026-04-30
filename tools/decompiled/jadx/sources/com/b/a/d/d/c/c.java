package com.b.a.d.d.c;

import com.b.a.d.b.z;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: FileToStreamDecoder.java */
/* JADX INFO: loaded from: classes2.dex */
public class c<T> implements com.b.a.d.e<File, T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final d f1026a = new d();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.b.a.d.e<InputStream, T> f1027b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final d f1028c;

    public c(com.b.a.d.e<InputStream, T> eVar) {
        this(eVar, f1026a);
    }

    c(com.b.a.d.e<InputStream, T> eVar, d dVar) {
        this.f1027b = eVar;
        this.f1028c = dVar;
    }

    @Override // com.b.a.d.e
    public z<T> a(File file, int i, int i2) throws IOException {
        InputStream inputStreamA = null;
        try {
            inputStreamA = this.f1028c.a(file);
            return this.f1027b.a(inputStreamA, i, i2);
        } finally {
            if (inputStreamA != null) {
                try {
                    inputStreamA.close();
                } catch (IOException e2) {
                }
            }
        }
    }

    @Override // com.b.a.d.e
    public String a() {
        return "";
    }
}
