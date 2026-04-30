package com.b.a.d.d.d;

import java.util.Queue;

/* JADX INFO: compiled from: GifResourceDecoder.java */
/* JADX INFO: loaded from: classes2.dex */
class r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Queue<com.b.a.b.e> f1077a = com.b.a.j.h.a(0);

    r() {
    }

    public synchronized com.b.a.b.e a(byte[] bArr) {
        com.b.a.b.e eVarPoll;
        eVarPoll = this.f1077a.poll();
        if (eVarPoll == null) {
            eVarPoll = new com.b.a.b.e();
        }
        return eVarPoll.a(bArr);
    }

    public synchronized void a(com.b.a.b.e eVar) {
        eVar.a();
        this.f1077a.offer(eVar);
    }
}
