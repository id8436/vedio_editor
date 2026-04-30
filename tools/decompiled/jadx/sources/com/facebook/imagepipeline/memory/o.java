package com.facebook.imagepipeline.memory;

import javax.annotation.concurrent.ThreadSafe;

/* JADX INFO: compiled from: FlexByteArrayPool.java */
/* JADX INFO: loaded from: classes2.dex */
@ThreadSafe
public class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final q f2935a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.facebook.d.h.i<byte[]> f2936b;

    public o(com.facebook.d.g.b bVar, ae aeVar) {
        com.facebook.d.d.k.a(aeVar.f2907f > 0);
        this.f2935a = new q(bVar, aeVar, x.a());
        this.f2936b = new p(this);
    }

    public com.facebook.d.h.a<byte[]> a(int i) {
        return com.facebook.d.h.a.a(this.f2935a.a(i), this.f2936b);
    }

    public void a(byte[] bArr) {
        this.f2935a.a(bArr);
    }
}
