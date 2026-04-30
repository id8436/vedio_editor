package com.b.a.d.d.d;

import java.util.Queue;

/* JADX INFO: compiled from: GifResourceDecoder.java */
/* JADX INFO: loaded from: classes2.dex */
class q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Queue<com.b.a.b.a> f1076a = com.b.a.j.h.a(0);

    q() {
    }

    public synchronized com.b.a.b.a a(com.b.a.b.b bVar) {
        com.b.a.b.a aVarPoll;
        aVarPoll = this.f1076a.poll();
        if (aVarPoll == null) {
            aVarPoll = new com.b.a.b.a(bVar);
        }
        return aVarPoll;
    }

    public synchronized void a(com.b.a.b.a aVar) {
        aVar.g();
        this.f1076a.offer(aVar);
    }
}
