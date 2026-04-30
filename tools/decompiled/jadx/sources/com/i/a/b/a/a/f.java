package com.i.a.b.a.a;

import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: Add missing generic type declarations: [E] */
/* JADX INFO: compiled from: LinkedBlockingDeque.java */
/* JADX INFO: loaded from: classes3.dex */
abstract class f<E> implements Iterator<E> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    h<E> f3249a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    E f3250b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ d f3251c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private h<E> f3252d;

    abstract h<E> a();

    abstract h<E> a(h<E> hVar);

    f(d dVar) {
        this.f3251c = dVar;
        ReentrantLock reentrantLock = dVar.f3244c;
        reentrantLock.lock();
        try {
            this.f3249a = a();
            this.f3250b = this.f3249a == null ? null : this.f3249a.f3254a;
        } finally {
            reentrantLock.unlock();
        }
    }

    private h<E> b(h<E> hVar) {
        while (true) {
            h<E> hVarA = a(hVar);
            if (hVarA == null) {
                return null;
            }
            if (hVarA.f3254a == null) {
                if (hVarA == hVar) {
                    return a();
                }
                hVar = hVarA;
            } else {
                return hVarA;
            }
        }
    }

    void b() {
        ReentrantLock reentrantLock = this.f3251c.f3244c;
        reentrantLock.lock();
        try {
            this.f3249a = b(this.f3249a);
            this.f3250b = this.f3249a == null ? null : this.f3249a.f3254a;
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f3249a != null;
    }

    @Override // java.util.Iterator
    public E next() {
        if (this.f3249a == null) {
            throw new NoSuchElementException();
        }
        this.f3252d = this.f3249a;
        E e2 = this.f3250b;
        b();
        return e2;
    }

    @Override // java.util.Iterator
    public void remove() {
        h<E> hVar = this.f3252d;
        if (hVar == null) {
            throw new IllegalStateException();
        }
        this.f3252d = null;
        ReentrantLock reentrantLock = this.f3251c.f3244c;
        reentrantLock.lock();
        try {
            if (hVar.f3254a != null) {
                this.f3251c.a((h) hVar);
            }
        } finally {
            reentrantLock.unlock();
        }
    }
}
