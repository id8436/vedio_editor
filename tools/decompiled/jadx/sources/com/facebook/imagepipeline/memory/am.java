package com.facebook.imagepipeline.memory;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: compiled from: PooledByteStreams.java */
/* JADX INFO: loaded from: classes2.dex */
public class am {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f2917a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final j f2918b;

    public am(j jVar) {
        this(jVar, 16384);
    }

    am(j jVar, int i) {
        com.facebook.d.d.k.a(i > 0);
        this.f2917a = i;
        this.f2918b = jVar;
    }

    public long a(InputStream inputStream, OutputStream outputStream) throws IOException {
        long j = 0;
        byte[] bArrA = this.f2918b.a(this.f2917a);
        while (true) {
            try {
                int i = inputStream.read(bArrA, 0, this.f2917a);
                if (i == -1) {
                    return j;
                }
                outputStream.write(bArrA, 0, i);
                j += (long) i;
            } finally {
                this.f2918b.a(bArrA);
            }
        }
    }
}
