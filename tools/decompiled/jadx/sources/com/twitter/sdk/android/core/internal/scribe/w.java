package com.twitter.sdk.android.core.internal.scribe;

import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: QueueFile.java */
/* JADX INFO: loaded from: classes3.dex */
final class w extends InputStream {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ t f4074a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f4075b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f4076c;

    /* synthetic */ w(t tVar, v vVar, u uVar) {
        this(tVar, vVar);
    }

    private w(t tVar, v vVar) {
        this.f4074a = tVar;
        this.f4075b = tVar.b(vVar.f4072b + 4);
        this.f4076c = vVar.f4073c;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        t.b(bArr, "buffer");
        if ((i | i2) < 0 || i2 > bArr.length - i) {
            throw new ArrayIndexOutOfBoundsException();
        }
        if (this.f4076c <= 0) {
            return -1;
        }
        if (i2 > this.f4076c) {
            i2 = this.f4076c;
        }
        this.f4074a.b(this.f4075b, bArr, i, i2);
        this.f4075b = this.f4074a.b(this.f4075b + i2);
        this.f4076c -= i2;
        return i2;
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (this.f4076c != 0) {
            this.f4074a.f4063c.seek(this.f4075b);
            int i = this.f4074a.f4063c.read();
            this.f4075b = this.f4074a.b(this.f4075b + 1);
            this.f4076c--;
            return i;
        }
        return -1;
    }
}
