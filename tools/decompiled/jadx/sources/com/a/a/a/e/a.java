package com.a.a.a.e;

import android.support.annotation.NonNull;
import com.a.a.a.aa;
import com.a.a.a.j;
import com.a.a.a.s;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: compiled from: SimpleInMemoryPriorityQueue.java */
/* JADX INFO: loaded from: classes.dex */
public class a implements aa {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final TreeSet<s> f456a = new TreeSet<>(new b(this));

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map<String, s> f457b = new HashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final AtomicLong f458c = new AtomicLong(0);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final List<String> f459d = new ArrayList();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final long f460e;

    public a(com.a.a.a.c.a aVar, long j) {
        this.f460e = j;
    }

    @Override // com.a.a.a.aa
    public boolean a(@NonNull s sVar) {
        sVar.a(this.f458c.incrementAndGet());
        if (this.f457b.get(sVar.a()) != null) {
            throw new IllegalArgumentException("cannot add a job with the same id twice");
        }
        this.f457b.put(sVar.a(), sVar);
        this.f456a.add(sVar);
        return true;
    }

    @Override // com.a.a.a.aa
    public boolean b(@NonNull s sVar) {
        if (sVar.c() == null) {
            return a(sVar);
        }
        s sVar2 = this.f457b.get(sVar.a());
        if (sVar2 != null) {
            c(sVar2);
        }
        this.f457b.put(sVar.a(), sVar);
        this.f456a.add(sVar);
        return true;
    }

    @Override // com.a.a.a.aa
    public void a(@NonNull s sVar, @NonNull s sVar2) {
        c(sVar2);
        a(sVar);
    }

    @Override // com.a.a.a.aa
    public void c(@NonNull s sVar) {
        this.f457b.remove(sVar.a());
        this.f456a.remove(sVar);
    }

    @Override // com.a.a.a.aa
    public int a() {
        return this.f456a.size();
    }

    @Override // com.a.a.a.aa
    public int a(@NonNull j jVar) {
        this.f459d.clear();
        int i = 0;
        for (s sVar : this.f456a) {
            String strK = sVar.k();
            if ((strK == null || !this.f459d.contains(strK)) && a(sVar, jVar, false)) {
                i++;
                if (strK != null) {
                    this.f459d.add(strK);
                }
            }
            i = i;
        }
        this.f459d.clear();
        return i;
    }

    @Override // com.a.a.a.aa
    public s b(@NonNull j jVar) {
        for (s sVar : this.f456a) {
            if (a(sVar, jVar, false)) {
                c(sVar);
                sVar.b(sVar.d() + 1);
                sVar.c(this.f460e);
                return sVar;
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0059  */
    @Override // com.a.a.a.aa
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Long c(@android.support.annotation.NonNull com.a.a.a.j r11) {
        /*
            r10 = this;
            r3 = 1
            r4 = 0
            r1 = 0
            java.util.TreeSet<com.a.a.a.s> r0 = r10.f456a
            java.util.Iterator r5 = r0.iterator()
        L9:
            boolean r0 = r5.hasNext()
            if (r0 == 0) goto L58
            java.lang.Object r0 = r5.next()
            com.a.a.a.s r0 = (com.a.a.a.s) r0
            boolean r2 = a(r0, r11, r3)
            if (r2 == 0) goto L59
            boolean r2 = r0.s()
            if (r2 == 0) goto L4a
            boolean r2 = a(r0, r11, r4)
            if (r2 == 0) goto L4a
            r2 = r3
        L28:
            boolean r6 = r0.r()
            if (r6 != r2) goto L4c
            long r6 = r0.g()
            long r8 = r0.i()
            long r6 = java.lang.Math.min(r6, r8)
        L3a:
            if (r1 == 0) goto L44
            long r8 = r1.longValue()
            int r0 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
            if (r0 >= 0) goto L59
        L44:
            java.lang.Long r0 = java.lang.Long.valueOf(r6)
        L48:
            r1 = r0
            goto L9
        L4a:
            r2 = r4
            goto L28
        L4c:
            if (r6 == 0) goto L53
            long r6 = r0.g()
            goto L3a
        L53:
            long r6 = r0.i()
            goto L3a
        L58:
            return r1
        L59:
            r0 = r1
            goto L48
        */
        throw new UnsupportedOperationException("Method not decompiled: com.a.a.a.e.a.c(com.a.a.a.j):java.lang.Long");
    }

    @Override // com.a.a.a.aa
    public void b() {
        this.f456a.clear();
        this.f457b.clear();
    }

    @Override // com.a.a.a.aa
    public s a(@NonNull String str) {
        return this.f457b.get(str);
    }

    @Override // com.a.a.a.aa
    @NonNull
    public Set<s> d(@NonNull j jVar) {
        HashSet hashSet = new HashSet();
        for (s sVar : this.f456a) {
            if (a(sVar, jVar, false)) {
                hashSet.add(sVar);
            }
        }
        return hashSet;
    }

    @Override // com.a.a.a.aa
    public void d(s sVar) {
        c(sVar);
    }

    private static boolean a(s sVar, j jVar, boolean z) {
        if (!(jVar.h() >= sVar.g() || (z && sVar.r())) && jVar.a() < sVar.v()) {
            return false;
        }
        if (jVar.f() != null && sVar.i() > jVar.f().longValue()) {
            return false;
        }
        if ((sVar.k() == null || !jVar.d().contains(sVar.k())) && !jVar.g().contains(sVar.a())) {
            return jVar.b() == null || !(sVar.l() == null || jVar.c().isEmpty() || !jVar.b().a(jVar.c(), sVar.l()));
        }
        return false;
    }
}
