package com.i.a.b.a.a;

/* JADX INFO: compiled from: LIFOLinkedBlockingDeque.java */
/* JADX INFO: loaded from: classes3.dex */
public class c<T> extends d<T> {
    @Override // com.i.a.b.a.a.d, java.util.Queue, java.util.concurrent.BlockingQueue
    public boolean offer(T t) {
        return super.b(t);
    }

    @Override // com.i.a.b.a.a.d, java.util.AbstractQueue, java.util.Queue
    public T remove() {
        return (T) super.a();
    }
}
