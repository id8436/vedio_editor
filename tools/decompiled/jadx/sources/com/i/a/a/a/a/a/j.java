package com.i.a.a.a.a.a;

import java.io.ByteArrayOutputStream;
import java.io.UnsupportedEncodingException;

/* JADX INFO: compiled from: StrictLineReader.java */
/* JADX INFO: loaded from: classes3.dex */
class j extends ByteArrayOutputStream {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ i f3232a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    j(i iVar, int i) {
        super(i);
        this.f3232a = iVar;
    }

    @Override // java.io.ByteArrayOutputStream
    public String toString() {
        try {
            return new String(this.buf, 0, (this.count <= 0 || this.buf[this.count + (-1)] != 13) ? this.count : this.count - 1, this.f3232a.f3228b.name());
        } catch (UnsupportedEncodingException e2) {
            throw new AssertionError(e2);
        }
    }
}
