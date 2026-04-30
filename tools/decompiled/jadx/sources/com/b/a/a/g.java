package com.b.a.a;

import java.io.ByteArrayOutputStream;
import java.io.UnsupportedEncodingException;

/* JADX INFO: compiled from: StrictLineReader.java */
/* JADX INFO: loaded from: classes2.dex */
class g extends ByteArrayOutputStream {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ f f709a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    g(f fVar, int i) {
        super(i);
        this.f709a = fVar;
    }

    @Override // java.io.ByteArrayOutputStream
    public String toString() {
        try {
            return new String(this.buf, 0, (this.count <= 0 || this.buf[this.count + (-1)] != 13) ? this.count : this.count - 1, this.f709a.f705b.name());
        } catch (UnsupportedEncodingException e2) {
            throw new AssertionError(e2);
        }
    }
}
