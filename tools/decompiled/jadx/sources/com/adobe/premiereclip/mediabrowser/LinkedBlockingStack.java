package com.adobe.premiereclip.mediabrowser;

import java.util.Collection;
import java.util.Iterator;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public class LinkedBlockingStack<T> implements BlockingQueue<T> {
    private final LinkedBlockingDeque<T> stack = new LinkedBlockingDeque<>();

    @Override // java.util.Queue
    public T remove() {
        return this.stack.remove();
    }

    @Override // java.util.Queue
    public T poll() {
        return this.stack.poll();
    }

    @Override // java.util.Queue
    public T element() {
        return this.stack.element();
    }

    @Override // java.util.Queue
    public T peek() {
        return this.stack.peek();
    }

    @Override // java.util.Collection
    public int size() {
        return this.stack.size();
    }

    @Override // java.util.Collection
    public boolean isEmpty() {
        return this.stack.isEmpty();
    }

    @Override // java.util.Collection, java.lang.Iterable
    public Iterator<T> iterator() {
        return this.stack.iterator();
    }

    @Override // java.util.Collection
    public Object[] toArray() {
        return this.stack.toArray();
    }

    @Override // java.util.Collection
    public <S> S[] toArray(S[] sArr) {
        return (S[]) this.stack.toArray(sArr);
    }

    @Override // java.util.Collection
    public boolean containsAll(Collection<?> collection) {
        return this.stack.containsAll(collection);
    }

    @Override // java.util.Collection
    public boolean addAll(Collection<? extends T> collection) {
        return this.stack.addAll(collection);
    }

    @Override // java.util.Collection
    public boolean removeAll(Collection<?> collection) {
        return this.stack.removeAll(collection);
    }

    @Override // java.util.Collection
    public boolean retainAll(Collection<?> collection) {
        return this.stack.removeAll(collection);
    }

    @Override // java.util.Collection
    public void clear() {
        this.stack.clear();
    }

    @Override // java.util.concurrent.BlockingQueue, java.util.Queue, java.util.Collection
    public boolean add(T t) {
        return this.stack.add(t);
    }

    @Override // java.util.concurrent.BlockingQueue, java.util.Queue
    public boolean offer(T t) {
        return this.stack.offerFirst(t);
    }

    @Override // java.util.concurrent.BlockingQueue
    public void put(T t) throws InterruptedException {
        this.stack.put(t);
    }

    @Override // java.util.concurrent.BlockingQueue
    public boolean offer(T t, long j, TimeUnit timeUnit) throws InterruptedException {
        return this.stack.offerLast(t, j, timeUnit);
    }

    @Override // java.util.concurrent.BlockingQueue
    public T take() throws InterruptedException {
        return this.stack.take();
    }

    @Override // java.util.concurrent.BlockingQueue
    public T poll(long j, TimeUnit timeUnit) throws InterruptedException {
        return this.stack.poll();
    }

    @Override // java.util.concurrent.BlockingQueue
    public int remainingCapacity() {
        return this.stack.remainingCapacity();
    }

    @Override // java.util.concurrent.BlockingQueue, java.util.Collection
    public boolean remove(Object obj) {
        return this.stack.remove(obj);
    }

    @Override // java.util.concurrent.BlockingQueue, java.util.Collection
    public boolean contains(Object obj) {
        return this.stack.contains(obj);
    }

    @Override // java.util.concurrent.BlockingQueue
    public int drainTo(Collection<? super T> collection) {
        return this.stack.drainTo(collection);
    }

    @Override // java.util.concurrent.BlockingQueue
    public int drainTo(Collection<? super T> collection, int i) {
        return this.stack.drainTo(collection, i);
    }
}
