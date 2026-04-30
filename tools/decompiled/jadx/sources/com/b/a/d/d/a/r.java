package com.b.a.d.d.a;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: compiled from: ImageHeaderParser.java */
/* JADX INFO: loaded from: classes2.dex */
class r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ByteBuffer f1002a;

    public r(byte[] bArr) {
        this.f1002a = ByteBuffer.wrap(bArr);
        this.f1002a.order(ByteOrder.BIG_ENDIAN);
    }

    public void a(ByteOrder byteOrder) {
        this.f1002a.order(byteOrder);
    }

    public int a() {
        return this.f1002a.array().length;
    }

    public int a(int i) {
        return this.f1002a.getInt(i);
    }

    public short b(int i) {
        return this.f1002a.getShort(i);
    }
}
