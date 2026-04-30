package com.b.a.d.b.b;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: DiskCacheWriteLocker.java */
/* JADX INFO: loaded from: classes2.dex */
final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map<com.b.a.d.c, g> f820a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final h f821b = new h();

    e() {
    }

    void a(com.b.a.d.c cVar) {
        g gVarA;
        synchronized (this) {
            gVarA = this.f820a.get(cVar);
            if (gVarA == null) {
                gVarA = this.f821b.a();
                this.f820a.put(cVar, gVarA);
            }
            gVarA.f823b++;
        }
        gVarA.f822a.lock();
    }

    void b(com.b.a.d.c cVar) {
        g gVar;
        synchronized (this) {
            gVar = this.f820a.get(cVar);
            if (gVar == null || gVar.f823b <= 0) {
                throw new IllegalArgumentException("Cannot release a lock that is not held, key: " + cVar + ", interestedThreads: " + (gVar == null ? 0 : gVar.f823b));
            }
            int i = gVar.f823b - 1;
            gVar.f823b = i;
            if (i == 0) {
                g gVarRemove = this.f820a.remove(cVar);
                if (!gVarRemove.equals(gVar)) {
                    throw new IllegalStateException("Removed the wrong lock, expected to remove: " + gVar + ", but actually removed: " + gVarRemove + ", key: " + cVar);
                }
                this.f821b.a(gVarRemove);
            }
        }
        gVar.f822a.unlock();
    }
}
