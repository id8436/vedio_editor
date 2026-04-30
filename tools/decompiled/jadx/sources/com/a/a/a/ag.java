package com.a.a.a;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.SortedSet;
import java.util.TreeSet;

/* JADX INFO: compiled from: RunningJobSet.java */
/* JADX INFO: loaded from: classes.dex */
public class ag {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ArrayList<String> f428a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final TreeSet<String> f429b = new TreeSet<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Map<String, Long> f430c = new HashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f431d = Long.MAX_VALUE;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final com.a.a.a.k.b f432e;

    public ag(com.a.a.a.k.b bVar) {
        this.f432e = bVar;
    }

    public synchronized void a(String str, long j) {
        com.a.a.a.f.b.a("add group delay to %s until %s", str, Long.valueOf(j));
        Long l = this.f430c.get(str);
        if (l == null || l.longValue() <= j) {
            this.f430c.put(str, Long.valueOf(j));
            this.f431d = c();
            this.f428a = null;
        }
    }

    public synchronized Collection<String> a() {
        long jA = this.f432e.a();
        if (this.f428a == null || jA > this.f431d) {
            if (this.f430c.isEmpty()) {
                this.f428a = new ArrayList<>(this.f429b);
                this.f431d = Long.MAX_VALUE;
            } else {
                TreeSet treeSet = new TreeSet((SortedSet) this.f429b);
                Iterator<Map.Entry<String, Long>> it = this.f430c.entrySet().iterator();
                while (it.hasNext()) {
                    Map.Entry<String, Long> next = it.next();
                    if (next.getValue().longValue() > jA) {
                        if (!treeSet.contains(next.getKey())) {
                            treeSet.add(next.getKey());
                        }
                    } else {
                        it.remove();
                    }
                }
                this.f428a = new ArrayList<>(treeSet);
                this.f431d = c();
            }
        }
        return this.f428a;
    }

    public Long b() {
        if (this.f431d == Long.MAX_VALUE) {
            return null;
        }
        return Long.valueOf(this.f431d);
    }

    private long c() {
        long jLongValue = Long.MAX_VALUE;
        Iterator<Long> it = this.f430c.values().iterator();
        while (true) {
            long j = jLongValue;
            if (it.hasNext()) {
                Long next = it.next();
                jLongValue = next.longValue() < j ? next.longValue() : j;
            } else {
                return j;
            }
        }
    }

    public synchronized void a(String str) {
        if (str != null) {
            if (this.f429b.add(str)) {
                this.f428a = null;
            }
        }
    }

    public synchronized void b(String str) {
        if (str != null) {
            if (this.f429b.remove(str)) {
                this.f428a = null;
            }
        }
    }
}
