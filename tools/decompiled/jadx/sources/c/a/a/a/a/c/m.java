package c.a.a.a.a.c;

import c.a.a.a.a.c.l;
import c.a.a.a.a.c.u;
import c.a.a.a.a.c.y;
import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Queue;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: compiled from: DependencyPriorityBlockingQueue.java */
/* JADX INFO: loaded from: classes.dex */
public class m<E extends l & y & u> extends PriorityBlockingQueue<E> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Queue<E> f222a = new LinkedList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ReentrantLock f223b = new ReentrantLock();

    @Override // java.util.concurrent.PriorityBlockingQueue, java.util.concurrent.BlockingQueue
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public E take() throws InterruptedException {
        return (E) b(0, null, null);
    }

    @Override // java.util.concurrent.PriorityBlockingQueue, java.util.Queue
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public E peek() {
        try {
            return (E) b(1, null, null);
        } catch (InterruptedException e2) {
            return null;
        }
    }

    @Override // java.util.concurrent.PriorityBlockingQueue, java.util.concurrent.BlockingQueue
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public E poll(long j, TimeUnit timeUnit) throws InterruptedException {
        return (E) b(3, Long.valueOf(j), timeUnit);
    }

    @Override // java.util.concurrent.PriorityBlockingQueue, java.util.Queue
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public E poll() {
        try {
            return (E) b(2, null, null);
        } catch (InterruptedException e2) {
            return null;
        }
    }

    @Override // java.util.concurrent.PriorityBlockingQueue, java.util.AbstractCollection, java.util.Collection
    public int size() {
        try {
            this.f223b.lock();
            return this.f222a.size() + super.size();
        } finally {
            this.f223b.unlock();
        }
    }

    @Override // java.util.concurrent.PriorityBlockingQueue, java.util.AbstractCollection, java.util.Collection
    public <T> T[] toArray(T[] tArr) {
        try {
            this.f223b.lock();
            return (T[]) a(super.toArray(tArr), this.f222a.toArray(tArr));
        } finally {
            this.f223b.unlock();
        }
    }

    @Override // java.util.concurrent.PriorityBlockingQueue, java.util.AbstractCollection, java.util.Collection
    public Object[] toArray() {
        try {
            this.f223b.lock();
            return a(super.toArray(), this.f222a.toArray());
        } finally {
            this.f223b.unlock();
        }
    }

    @Override // java.util.concurrent.PriorityBlockingQueue, java.util.concurrent.BlockingQueue
    public int drainTo(Collection<? super E> collection) {
        try {
            this.f223b.lock();
            int iDrainTo = super.drainTo(collection) + this.f222a.size();
            while (!this.f222a.isEmpty()) {
                collection.add(this.f222a.poll());
            }
            return iDrainTo;
        } finally {
            this.f223b.unlock();
        }
    }

    @Override // java.util.concurrent.PriorityBlockingQueue, java.util.concurrent.BlockingQueue
    public int drainTo(Collection<? super E> collection, int i) {
        try {
            this.f223b.lock();
            int iDrainTo = super.drainTo(collection, i);
            while (!this.f222a.isEmpty() && iDrainTo <= i) {
                collection.add(this.f222a.poll());
                iDrainTo++;
            }
            return iDrainTo;
        } finally {
            this.f223b.unlock();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:6:0x0013  */
    @Override // java.util.concurrent.PriorityBlockingQueue, java.util.AbstractCollection, java.util.Collection, java.util.concurrent.BlockingQueue
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean contains(java.lang.Object r3) {
        /*
            r2 = this;
            java.util.concurrent.locks.ReentrantLock r0 = r2.f223b     // Catch: java.lang.Throwable -> L1c
            r0.lock()     // Catch: java.lang.Throwable -> L1c
            boolean r0 = super.contains(r3)     // Catch: java.lang.Throwable -> L1c
            if (r0 != 0) goto L13
            java.util.Queue<E extends c.a.a.a.a.c.l & c.a.a.a.a.c.y & c.a.a.a.a.c.u> r0 = r2.f222a     // Catch: java.lang.Throwable -> L1c
            boolean r0 = r0.contains(r3)     // Catch: java.lang.Throwable -> L1c
            if (r0 == 0) goto L1a
        L13:
            r0 = 1
        L14:
            java.util.concurrent.locks.ReentrantLock r1 = r2.f223b
            r1.unlock()
            return r0
        L1a:
            r0 = 0
            goto L14
        L1c:
            r0 = move-exception
            java.util.concurrent.locks.ReentrantLock r1 = r2.f223b
            r1.unlock()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: c.a.a.a.a.c.m.contains(java.lang.Object):boolean");
    }

    @Override // java.util.concurrent.PriorityBlockingQueue, java.util.AbstractQueue, java.util.AbstractCollection, java.util.Collection
    public void clear() {
        try {
            this.f223b.lock();
            this.f222a.clear();
            super.clear();
        } finally {
            this.f223b.unlock();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:6:0x0013  */
    @Override // java.util.concurrent.PriorityBlockingQueue, java.util.AbstractCollection, java.util.Collection, java.util.concurrent.BlockingQueue
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean remove(java.lang.Object r3) {
        /*
            r2 = this;
            java.util.concurrent.locks.ReentrantLock r0 = r2.f223b     // Catch: java.lang.Throwable -> L1c
            r0.lock()     // Catch: java.lang.Throwable -> L1c
            boolean r0 = super.remove(r3)     // Catch: java.lang.Throwable -> L1c
            if (r0 != 0) goto L13
            java.util.Queue<E extends c.a.a.a.a.c.l & c.a.a.a.a.c.y & c.a.a.a.a.c.u> r0 = r2.f222a     // Catch: java.lang.Throwable -> L1c
            boolean r0 = r0.remove(r3)     // Catch: java.lang.Throwable -> L1c
            if (r0 == 0) goto L1a
        L13:
            r0 = 1
        L14:
            java.util.concurrent.locks.ReentrantLock r1 = r2.f223b
            r1.unlock()
            return r0
        L1a:
            r0 = 0
            goto L14
        L1c:
            r0 = move-exception
            java.util.concurrent.locks.ReentrantLock r1 = r2.f223b
            r1.unlock()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: c.a.a.a.a.c.m.remove(java.lang.Object):boolean");
    }

    @Override // java.util.concurrent.PriorityBlockingQueue, java.util.AbstractCollection, java.util.Collection
    public boolean removeAll(Collection<?> collection) {
        try {
            this.f223b.lock();
            return super.removeAll(collection) | this.f222a.removeAll(collection);
        } finally {
            this.f223b.unlock();
        }
    }

    E a(int i, Long l, TimeUnit timeUnit) throws InterruptedException {
        switch (i) {
            case 0:
                return (E) ((l) super.take());
            case 1:
                return (E) ((l) super.peek());
            case 2:
                return (E) ((l) super.poll());
            case 3:
                return (E) ((l) super.poll(l.longValue(), timeUnit));
            default:
                return null;
        }
    }

    boolean a(int i, E e2) {
        try {
            this.f223b.lock();
            if (i == 1) {
                super.remove(e2);
            }
            return this.f222a.offer(e2);
        } finally {
            this.f223b.unlock();
        }
    }

    E b(int i, Long l, TimeUnit timeUnit) throws InterruptedException {
        E e2;
        while (true) {
            e2 = (E) a(i, l, timeUnit);
            if (e2 == null || a(e2)) {
                break;
            }
            a(i, e2);
        }
        return e2;
    }

    boolean a(E e2) {
        return e2.areDependenciesMet();
    }

    public void d() {
        try {
            this.f223b.lock();
            Iterator<E> it = this.f222a.iterator();
            while (it.hasNext()) {
                E next = it.next();
                if (a(next)) {
                    super.offer(next);
                    it.remove();
                }
            }
        } finally {
            this.f223b.unlock();
        }
    }

    <T> T[] a(T[] tArr, T[] tArr2) {
        int length = tArr.length;
        int length2 = tArr2.length;
        T[] tArr3 = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), length + length2));
        System.arraycopy(tArr, 0, tArr3, 0, length);
        System.arraycopy(tArr2, 0, tArr3, length, length2);
        return tArr3;
    }
}
