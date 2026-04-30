package com.facebook.c.b;

import android.content.Context;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;
import javax.annotation.concurrent.ThreadSafe;

/* JADX INFO: compiled from: DiskStorageCache.java */
/* JADX INFO: loaded from: classes2.dex */
@ThreadSafe
public class s implements ab, com.facebook.d.a.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Class<?> f1896b = s.class;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final long f1897c = TimeUnit.HOURS.toMillis(2);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final long f1898d = TimeUnit.MINUTES.toMillis(30);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @GuardedBy("mLock")
    final Set<String> f1899a;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final long f1900e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final long f1901f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final CountDownLatch f1902g;
    private long h;
    private final com.facebook.c.a.d i;
    private final long k;
    private final p m;
    private final aa n;
    private final com.facebook.c.a.a o;
    private final boolean p;
    private final com.facebook.d.l.a r;
    private boolean t;
    private final Object s = new Object();
    private final com.facebook.d.j.a l = com.facebook.d.j.a.a();

    @GuardedBy("mLock")
    private long j = -1;
    private final v q = new v();

    public s(p pVar, aa aaVar, w wVar, com.facebook.c.a.d dVar, com.facebook.c.a.a aVar, @Nullable com.facebook.d.a.b bVar, Context context, Executor executor, boolean z) {
        this.f1900e = wVar.f1910b;
        this.f1901f = wVar.f1911c;
        this.h = wVar.f1911c;
        this.m = pVar;
        this.n = aaVar;
        this.i = dVar;
        this.k = wVar.f1909a;
        this.o = aVar;
        if (bVar != null) {
            bVar.a(this);
        }
        this.r = com.facebook.d.l.c.b();
        this.p = z;
        this.f1899a = new HashSet();
        if (this.p) {
            this.f1902g = new CountDownLatch(1);
            executor.execute(new t(this));
        } else {
            this.f1902g = new CountDownLatch(0);
        }
        executor.execute(new u(this, context));
    }

    @Override // com.facebook.c.b.ab
    public com.facebook.b.a a(com.facebook.c.a.f fVar) {
        com.facebook.b.a aVar;
        ac acVarA = ac.a().a(fVar);
        try {
            synchronized (this.s) {
                List<String> listA = com.facebook.c.a.g.a(fVar);
                int i = 0;
                String str = null;
                aVar = null;
                while (true) {
                    if (i >= listA.size()) {
                        break;
                    }
                    String str2 = listA.get(i);
                    acVarA.a(str2);
                    com.facebook.b.a aVarB = this.m.b(str2, fVar);
                    if (aVarB != null) {
                        str = str2;
                        aVar = aVarB;
                        break;
                    }
                    i++;
                    str = str2;
                    aVar = aVarB;
                }
                if (aVar == null) {
                    this.i.b(acVarA);
                    this.f1899a.remove(str);
                } else {
                    this.i.a(acVarA);
                    this.f1899a.add(str);
                }
            }
            return aVar;
        } catch (IOException e2) {
            this.o.a(com.facebook.c.a.b.GENERIC_IO, f1896b, "getResource", e2);
            acVarA.a(e2);
            this.i.e(acVarA);
            return null;
        } finally {
            acVarA.b();
        }
    }

    private r a(String str, com.facebook.c.a.f fVar) throws IOException {
        a();
        return this.m.a(str, fVar);
    }

    private com.facebook.b.a a(r rVar, com.facebook.c.a.f fVar, String str) throws IOException {
        com.facebook.b.a aVarA;
        synchronized (this.s) {
            aVarA = rVar.a(fVar);
            this.f1899a.add(str);
            this.q.b(aVarA.b(), 1L);
        }
        return aVarA;
    }

    @Override // com.facebook.c.b.ab
    public com.facebook.b.a a(com.facebook.c.a.f fVar, com.facebook.c.a.l lVar) throws IOException {
        String strB;
        ac acVarA = ac.a().a(fVar);
        this.i.c(acVarA);
        synchronized (this.s) {
            strB = com.facebook.c.a.g.b(fVar);
        }
        acVarA.a(strB);
        try {
            try {
                r rVarA = a(strB, fVar);
                try {
                    rVarA.a(lVar, fVar);
                    com.facebook.b.a aVarA = a(rVarA, fVar, strB);
                    acVarA.a(aVarA.b()).b(this.q.c());
                    this.i.d(acVarA);
                    return aVarA;
                } finally {
                    if (!rVarA.a()) {
                        com.facebook.d.e.a.d(f1896b, "Failed to delete temp file");
                    }
                }
            } catch (IOException e2) {
                acVarA.a(e2);
                this.i.f(acVarA);
                com.facebook.d.e.a.b(f1896b, "Failed inserting a file into the cache", (Throwable) e2);
                throw e2;
            }
        } finally {
            acVarA.b();
        }
    }

    private void a() throws IOException {
        synchronized (this.s) {
            boolean zC = c();
            b();
            long jC = this.q.c();
            if (jC > this.h && !zC) {
                this.q.b();
                c();
            }
            if (jC > this.h) {
                a((this.h * 9) / 10, com.facebook.c.a.e.CACHE_FULL);
            }
        }
    }

    @GuardedBy("mLock")
    private void a(long j, com.facebook.c.a.e eVar) throws IOException {
        int i;
        long j2;
        try {
            Collection<q> collectionA = a(this.m.e());
            long jC = this.q.c();
            long j3 = jC - j;
            int i2 = 0;
            long j4 = 0;
            Iterator<q> it = collectionA.iterator();
            while (true) {
                i = i2;
                j2 = j4;
                if (!it.hasNext()) {
                    break;
                }
                q next = it.next();
                if (j2 > j3) {
                    break;
                }
                long jA = this.m.a(next);
                this.f1899a.remove(next.a());
                if (jA > 0) {
                    i++;
                    j2 += jA;
                    ac acVarC = ac.a().a(next.a()).a(eVar).a(jA).b(jC - j2).c(j);
                    this.i.g(acVarC);
                    acVarC.b();
                }
                long j5 = j2;
                i2 = i;
                j4 = j5;
            }
            this.q.b(-j2, -i);
            this.m.c();
        } catch (IOException e2) {
            this.o.a(com.facebook.c.a.b.EVICTION, f1896b, "evictAboveSize: " + e2.getMessage(), e2);
            throw e2;
        }
    }

    private Collection<q> a(Collection<q> collection) {
        long jA = f1897c + this.r.a();
        ArrayList arrayList = new ArrayList(collection.size());
        ArrayList arrayList2 = new ArrayList(collection.size());
        for (q qVar : collection) {
            if (qVar.b() > jA) {
                arrayList.add(qVar);
            } else {
                arrayList2.add(qVar);
            }
        }
        Collections.sort(arrayList2, this.n.a());
        arrayList.addAll(arrayList2);
        return arrayList;
    }

    @GuardedBy("mLock")
    private void b() {
        if (this.l.a(this.m.a() ? com.facebook.d.j.b.EXTERNAL : com.facebook.d.j.b.INTERNAL, this.f1901f - this.q.c())) {
            this.h = this.f1900e;
        } else {
            this.h = this.f1901f;
        }
    }

    @Override // com.facebook.c.b.ab
    public boolean b(com.facebook.c.a.f fVar) {
        synchronized (this.s) {
            List<String> listA = com.facebook.c.a.g.a(fVar);
            for (int i = 0; i < listA.size(); i++) {
                if (this.f1899a.contains(listA.get(i))) {
                    return true;
                }
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @GuardedBy("mLock")
    public boolean c() {
        long jA = this.r.a();
        if (!this.q.a() || this.j == -1 || jA - this.j > f1898d) {
            return d();
        }
        return false;
    }

    @GuardedBy("mLock")
    private boolean d() {
        Set<String> hashSet;
        int i;
        int i2;
        long jMax;
        boolean z;
        boolean z2 = false;
        int i3 = 0;
        int i4 = 0;
        long j = -1;
        long jA = this.r.a();
        long j2 = jA + f1897c;
        if (this.p && this.f1899a.isEmpty()) {
            hashSet = this.f1899a;
        } else if (this.p) {
            hashSet = new HashSet();
        } else {
            hashSet = null;
        }
        try {
            long jD = 0;
            int i5 = 0;
            for (q qVar : this.m.e()) {
                int i6 = i5 + 1;
                jD += qVar.d();
                if (qVar.b() > j2) {
                    int i7 = i3 + 1;
                    int iD = (int) (((long) i4) + qVar.d());
                    jMax = Math.max(qVar.b() - jA, j);
                    i = iD;
                    i2 = i7;
                    z = true;
                } else {
                    if (this.p) {
                        hashSet.add(qVar.a());
                    }
                    long j3 = j;
                    i = i4;
                    i2 = i3;
                    jMax = j3;
                    z = z2;
                }
                z2 = z;
                i5 = i6;
                i3 = i2;
                i4 = i;
                j = jMax;
            }
            if (z2) {
                this.o.a(com.facebook.c.a.b.READ_INVALID_ENTRY, f1896b, "Future timestamp found in " + i3 + " files , with a total size of " + i4 + " bytes, and a maximum time delta of " + j + "ms", null);
            }
            if (this.q.d() != i5 || this.q.c() != jD) {
                if (this.p && this.f1899a != hashSet) {
                    this.t = true;
                } else if (this.p) {
                    this.f1899a.clear();
                    this.f1899a.addAll(hashSet);
                }
                this.q.a(jD, i5);
            }
            this.j = jA;
            return true;
        } catch (IOException e2) {
            this.o.a(com.facebook.c.a.b.GENERIC_IO, f1896b, "calcFileCacheSize: " + e2.getMessage(), e2);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(Context context, String str) {
        try {
            File file = new File((context.getApplicationContext().getFilesDir().getParent() + File.separator + "shared_prefs" + File.separator + "disk_entries_list" + str) + ".xml");
            if (file.exists()) {
                file.delete();
            }
        } catch (Exception e2) {
            com.facebook.d.e.a.d(f1896b, "Fail to delete SharedPreference from file system. ");
        }
    }
}
