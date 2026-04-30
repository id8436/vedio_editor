package com.b.a.d.b.a;

import com.b.a.d.b.a.n;
import java.util.Queue;

/* JADX INFO: compiled from: BaseKeyPool.java */
/* JADX INFO: loaded from: classes2.dex */
abstract class d<T extends n> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Queue<T> f793a = com.b.a.j.h.a(20);

    protected abstract T b();

    d() {
    }

    protected T c() {
        T tPoll = this.f793a.poll();
        if (tPoll == null) {
            return (T) b();
        }
        return tPoll;
    }

    public void a(T t) {
        if (this.f793a.size() < 20) {
            this.f793a.offer(t);
        }
    }
}
