package com.b.a.d.b.c;

import java.util.concurrent.FutureTask;

/* JADX INFO: compiled from: FifoPriorityThreadPoolExecutor.java */
/* JADX INFO: loaded from: classes2.dex */
class e<T> extends FutureTask<T> implements Comparable<e<?>> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f845a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f846b;

    public e(Runnable runnable, T t, int i) {
        super(runnable, t);
        if (!(runnable instanceof i)) {
            throw new IllegalArgumentException("FifoPriorityThreadPoolExecutor must be given Runnables that implement Prioritized");
        }
        this.f845a = ((i) runnable).b();
        this.f846b = i;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        return this.f846b == eVar.f846b && this.f845a == eVar.f845a;
    }

    public int hashCode() {
        return (this.f845a * 31) + this.f846b;
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compareTo(e<?> eVar) {
        int i = this.f845a - eVar.f845a;
        if (i == 0) {
            return this.f846b - eVar.f846b;
        }
        return i;
    }
}
