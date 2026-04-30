package com.i.a.b.a.a;

import android.support.v7.widget.ActivityChooserView;
import com.adobe.xmp.XMPConst;
import java.io.Serializable;
import java.lang.reflect.Array;
import java.util.AbstractQueue;
import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: compiled from: LinkedBlockingDeque.java */
/* JADX INFO: loaded from: classes3.dex */
public class d<E> extends AbstractQueue<E> implements a<E>, Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    transient h<E> f3242a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    transient h<E> f3243b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final ReentrantLock f3244c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private transient int f3245d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f3246e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Condition f3247f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Condition f3248g;

    public d() {
        this(ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);
    }

    public d(int i) {
        this.f3244c = new ReentrantLock();
        this.f3247f = this.f3244c.newCondition();
        this.f3248g = this.f3244c.newCondition();
        if (i <= 0) {
            throw new IllegalArgumentException();
        }
        this.f3246e = i;
    }

    private boolean b(h<E> hVar) {
        if (this.f3245d >= this.f3246e) {
            return false;
        }
        h<E> hVar2 = this.f3242a;
        hVar.f3256c = hVar2;
        this.f3242a = hVar;
        if (this.f3243b == null) {
            this.f3243b = hVar;
        } else {
            hVar2.f3255b = hVar;
        }
        this.f3245d++;
        this.f3247f.signal();
        return true;
    }

    private boolean c(h<E> hVar) {
        if (this.f3245d >= this.f3246e) {
            return false;
        }
        h<E> hVar2 = this.f3243b;
        hVar.f3255b = hVar2;
        this.f3243b = hVar;
        if (this.f3242a == null) {
            this.f3242a = hVar;
        } else {
            hVar2.f3256c = hVar;
        }
        this.f3245d++;
        this.f3247f.signal();
        return true;
    }

    private E f() {
        h<E> hVar = this.f3242a;
        if (hVar == null) {
            return null;
        }
        h<E> hVar2 = hVar.f3256c;
        E e2 = hVar.f3254a;
        hVar.f3254a = null;
        hVar.f3256c = hVar;
        this.f3242a = hVar2;
        if (hVar2 == null) {
            this.f3243b = null;
        } else {
            hVar2.f3255b = null;
        }
        this.f3245d--;
        this.f3248g.signal();
        return e2;
    }

    private E g() {
        h<E> hVar = this.f3243b;
        if (hVar == null) {
            return null;
        }
        h<E> hVar2 = hVar.f3255b;
        E e2 = hVar.f3254a;
        hVar.f3254a = null;
        hVar.f3255b = hVar;
        this.f3243b = hVar2;
        if (hVar2 == null) {
            this.f3242a = null;
        } else {
            hVar2.f3256c = null;
        }
        this.f3245d--;
        this.f3248g.signal();
        return e2;
    }

    void a(h<E> hVar) {
        h<E> hVar2 = hVar.f3255b;
        h<E> hVar3 = hVar.f3256c;
        if (hVar2 == null) {
            f();
            return;
        }
        if (hVar3 == null) {
            g();
            return;
        }
        hVar2.f3256c = hVar3;
        hVar3.f3255b = hVar2;
        hVar.f3254a = null;
        this.f3245d--;
        this.f3248g.signal();
    }

    public void a(E e2) {
        if (!c(e2)) {
            throw new IllegalStateException("Deque full");
        }
    }

    public boolean b(E e2) {
        if (e2 == null) {
            throw new NullPointerException();
        }
        h<E> hVar = new h<>(e2);
        ReentrantLock reentrantLock = this.f3244c;
        reentrantLock.lock();
        try {
            return b((h) hVar);
        } finally {
            reentrantLock.unlock();
        }
    }

    public boolean c(E e2) {
        if (e2 == null) {
            throw new NullPointerException();
        }
        h<E> hVar = new h<>(e2);
        ReentrantLock reentrantLock = this.f3244c;
        reentrantLock.lock();
        try {
            return c((h) hVar);
        } finally {
            reentrantLock.unlock();
        }
    }

    public void d(E e2) throws InterruptedException {
        if (e2 == null) {
            throw new NullPointerException();
        }
        h<E> hVar = new h<>(e2);
        ReentrantLock reentrantLock = this.f3244c;
        reentrantLock.lock();
        while (!c((h) hVar)) {
            try {
                this.f3248g.await();
            } finally {
                reentrantLock.unlock();
            }
        }
    }

    public boolean a(E e2, long j, TimeUnit timeUnit) throws InterruptedException {
        if (e2 == null) {
            throw new NullPointerException();
        }
        h<E> hVar = new h<>(e2);
        long nanos = timeUnit.toNanos(j);
        ReentrantLock reentrantLock = this.f3244c;
        reentrantLock.lockInterruptibly();
        while (!c((h) hVar)) {
            try {
                if (nanos > 0) {
                    nanos = this.f3248g.awaitNanos(nanos);
                } else {
                    return false;
                }
            } finally {
                reentrantLock.unlock();
            }
        }
        return true;
    }

    public E a() {
        E eB = b();
        if (eB == null) {
            throw new NoSuchElementException();
        }
        return eB;
    }

    public E b() {
        ReentrantLock reentrantLock = this.f3244c;
        reentrantLock.lock();
        try {
            return f();
        } finally {
            reentrantLock.unlock();
        }
    }

    public E c() throws InterruptedException {
        ReentrantLock reentrantLock = this.f3244c;
        reentrantLock.lock();
        while (true) {
            try {
                E eF = f();
                if (eF != null) {
                    return eF;
                }
                this.f3247f.await();
            } finally {
                reentrantLock.unlock();
            }
        }
    }

    public E a(long j, TimeUnit timeUnit) throws InterruptedException {
        long nanos = timeUnit.toNanos(j);
        ReentrantLock reentrantLock = this.f3244c;
        reentrantLock.lockInterruptibly();
        while (true) {
            try {
                long j2 = nanos;
                E eF = f();
                if (eF != null) {
                    return eF;
                }
                if (j2 > 0) {
                    nanos = this.f3247f.awaitNanos(j2);
                } else {
                    return null;
                }
            } finally {
                reentrantLock.unlock();
            }
        }
    }

    public E d() {
        E e2 = e();
        if (e2 == null) {
            throw new NoSuchElementException();
        }
        return e2;
    }

    public E e() {
        ReentrantLock reentrantLock = this.f3244c;
        reentrantLock.lock();
        try {
            return this.f3242a == null ? null : this.f3242a.f3254a;
        } finally {
            reentrantLock.unlock();
        }
    }

    public boolean e(Object obj) {
        if (obj == null) {
            return false;
        }
        ReentrantLock reentrantLock = this.f3244c;
        reentrantLock.lock();
        try {
            for (h<E> hVar = this.f3242a; hVar != null; hVar = hVar.f3256c) {
                if (obj.equals(hVar.f3254a)) {
                    a((h) hVar);
                    return true;
                }
            }
            return false;
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // java.util.AbstractQueue, java.util.AbstractCollection, java.util.Collection, java.util.Queue, java.util.concurrent.BlockingQueue
    public boolean add(E e2) {
        a(e2);
        return true;
    }

    public boolean offer(E e2) {
        return c(e2);
    }

    @Override // java.util.concurrent.BlockingQueue
    public void put(E e2) throws InterruptedException {
        d(e2);
    }

    @Override // java.util.concurrent.BlockingQueue
    public boolean offer(E e2, long j, TimeUnit timeUnit) throws InterruptedException {
        return a(e2, j, timeUnit);
    }

    @Override // java.util.AbstractQueue, java.util.Queue
    public E remove() {
        return a();
    }

    @Override // java.util.Queue
    public E poll() {
        return b();
    }

    @Override // java.util.concurrent.BlockingQueue
    public E take() throws InterruptedException {
        return c();
    }

    @Override // java.util.concurrent.BlockingQueue
    public E poll(long j, TimeUnit timeUnit) throws InterruptedException {
        return a(j, timeUnit);
    }

    @Override // java.util.AbstractQueue, java.util.Queue
    public E element() {
        return d();
    }

    @Override // java.util.Queue
    public E peek() {
        return e();
    }

    @Override // java.util.concurrent.BlockingQueue
    public int remainingCapacity() {
        ReentrantLock reentrantLock = this.f3244c;
        reentrantLock.lock();
        try {
            return this.f3246e - this.f3245d;
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // java.util.concurrent.BlockingQueue
    public int drainTo(Collection<? super E> collection) {
        return drainTo(collection, ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);
    }

    @Override // java.util.concurrent.BlockingQueue
    public int drainTo(Collection<? super E> collection, int i) {
        if (collection == null) {
            throw new NullPointerException();
        }
        if (collection == this) {
            throw new IllegalArgumentException();
        }
        ReentrantLock reentrantLock = this.f3244c;
        reentrantLock.lock();
        try {
            int iMin = Math.min(i, this.f3245d);
            for (int i2 = 0; i2 < iMin; i2++) {
                collection.add(this.f3242a.f3254a);
                f();
            }
            return iMin;
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.concurrent.BlockingQueue
    public boolean remove(Object obj) {
        return e(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public int size() {
        ReentrantLock reentrantLock = this.f3244c;
        reentrantLock.lock();
        try {
            return this.f3245d;
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.concurrent.BlockingQueue
    public boolean contains(Object obj) {
        if (obj == null) {
            return false;
        }
        ReentrantLock reentrantLock = this.f3244c;
        reentrantLock.lock();
        try {
            for (h<E> hVar = this.f3242a; hVar != null; hVar = hVar.f3256c) {
                if (obj.equals(hVar.f3254a)) {
                    return true;
                }
            }
            return false;
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public Object[] toArray() {
        ReentrantLock reentrantLock = this.f3244c;
        reentrantLock.lock();
        try {
            Object[] objArr = new Object[this.f3245d];
            int i = 0;
            h<E> hVar = this.f3242a;
            while (hVar != null) {
                int i2 = i + 1;
                objArr[i] = hVar.f3254a;
                hVar = hVar.f3256c;
                i = i2;
            }
            return objArr;
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public <T> T[] toArray(T[] tArr) {
        ReentrantLock reentrantLock = this.f3244c;
        reentrantLock.lock();
        try {
            if (tArr.length < this.f3245d) {
                tArr = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), this.f3245d));
            }
            int i = 0;
            h<E> hVar = this.f3242a;
            while (hVar != null) {
                tArr[i] = hVar.f3254a;
                hVar = hVar.f3256c;
                i++;
            }
            if (tArr.length > i) {
                tArr[i] = null;
            }
            return tArr;
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // java.util.AbstractCollection
    public String toString() {
        String string;
        ReentrantLock reentrantLock = this.f3244c;
        reentrantLock.lock();
        try {
            h<E> hVar = this.f3242a;
            if (hVar == null) {
                string = XMPConst.ARRAY_ITEM_NAME;
            } else {
                StringBuilder sb = new StringBuilder();
                sb.append('[');
                while (true) {
                    h<E> hVar2 = hVar;
                    Object obj = hVar2.f3254a;
                    if (obj == this) {
                        obj = "(this Collection)";
                    }
                    sb.append(obj);
                    hVar = hVar2.f3256c;
                    if (hVar == null) {
                        break;
                    }
                    sb.append(',').append(' ');
                }
                string = sb.append(']').toString();
            }
            return string;
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // java.util.AbstractQueue, java.util.AbstractCollection, java.util.Collection
    public void clear() {
        ReentrantLock reentrantLock = this.f3244c;
        reentrantLock.lock();
        try {
            h<E> hVar = this.f3242a;
            while (hVar != null) {
                hVar.f3254a = null;
                h<E> hVar2 = hVar.f3256c;
                hVar.f3255b = null;
                hVar.f3256c = null;
                hVar = hVar2;
            }
            this.f3243b = null;
            this.f3242a = null;
            this.f3245d = 0;
            this.f3248g.signalAll();
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public Iterator<E> iterator() {
        return new g(this);
    }
}
