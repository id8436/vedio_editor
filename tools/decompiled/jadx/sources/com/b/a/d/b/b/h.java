package com.b.a.d.b.b;

import java.util.ArrayDeque;
import java.util.Queue;

/* JADX INFO: compiled from: DiskCacheWriteLocker.java */
/* JADX INFO: loaded from: classes2.dex */
class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Queue<g> f824a;

    private h() {
        this.f824a = new ArrayDeque();
    }

    g a() {
        g gVarPoll;
        synchronized (this.f824a) {
            gVarPoll = this.f824a.poll();
        }
        if (gVarPoll == null) {
            return new g();
        }
        return gVarPoll;
    }

    void a(g gVar) {
        synchronized (this.f824a) {
            if (this.f824a.size() < 10) {
                this.f824a.offer(gVar);
            }
        }
    }
}
