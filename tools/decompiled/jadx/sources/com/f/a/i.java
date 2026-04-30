package com.f.a;

import java.io.ByteArrayOutputStream;
import java.io.UnsupportedEncodingException;

/* JADX INFO: compiled from: StrictLineReader.java */
/* JADX INFO: loaded from: classes2.dex */
class i extends ByteArrayOutputStream {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ h f1665a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    i(h hVar, int i) {
        super(i);
        this.f1665a = hVar;
    }

    @Override // java.io.ByteArrayOutputStream
    public String toString() {
        try {
            return new String(this.buf, 0, (this.count <= 0 || this.buf[this.count + (-1)] != 13) ? this.count : this.count - 1, this.f1665a.f1661b.name());
        } catch (UnsupportedEncodingException e2) {
            throw new AssertionError(e2);
        }
    }
}
