package com.facebook.imagepipeline.memory;

/* JADX INFO: compiled from: FlexByteArrayPool.java */
/* JADX INFO: loaded from: classes2.dex */
class q extends r {
    public q(com.facebook.d.g.b bVar, ae aeVar, af afVar) {
        super(bVar, aeVar, afVar);
    }

    @Override // com.facebook.imagepipeline.memory.a
    i<byte[]> g(int i) {
        return new y(d(i), this.f2875b.f2907f, 0);
    }
}
