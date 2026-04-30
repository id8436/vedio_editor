package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.base.Preconditions;
import java.util.Collection;
import java.util.PriorityQueue;
import java.util.Queue;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes3.dex */
public final class Queues {
    private Queues() {
    }

    public static <E> ArrayBlockingQueue<E> newArrayBlockingQueue(int i) {
        return new ArrayBlockingQueue<>(i);
    }

    public static <E> ConcurrentLinkedQueue<E> newConcurrentLinkedQueue() {
        return new ConcurrentLinkedQueue<>();
    }

    public static <E> ConcurrentLinkedQueue<E> newConcurrentLinkedQueue(Iterable<? extends E> iterable) {
        if (iterable instanceof Collection) {
            return new ConcurrentLinkedQueue<>(Collections2.cast(iterable));
        }
        ConcurrentLinkedQueue<E> concurrentLinkedQueue = new ConcurrentLinkedQueue<>();
        Iterables.addAll(concurrentLinkedQueue, iterable);
        return concurrentLinkedQueue;
    }

    public static <E> LinkedBlockingQueue<E> newLinkedBlockingQueue() {
        return new LinkedBlockingQueue<>();
    }

    public static <E> LinkedBlockingQueue<E> newLinkedBlockingQueue(int i) {
        return new LinkedBlockingQueue<>(i);
    }

    public static <E> LinkedBlockingQueue<E> newLinkedBlockingQueue(Iterable<? extends E> iterable) {
        if (iterable instanceof Collection) {
            return new LinkedBlockingQueue<>(Collections2.cast(iterable));
        }
        LinkedBlockingQueue<E> linkedBlockingQueue = new LinkedBlockingQueue<>();
        Iterables.addAll(linkedBlockingQueue, iterable);
        return linkedBlockingQueue;
    }

    public static <E extends Comparable> PriorityBlockingQueue<E> newPriorityBlockingQueue() {
        return new PriorityBlockingQueue<>();
    }

    public static <E extends Comparable> PriorityBlockingQueue<E> newPriorityBlockingQueue(Iterable<? extends E> iterable) {
        if (iterable instanceof Collection) {
            return new PriorityBlockingQueue<>(Collections2.cast(iterable));
        }
        PriorityBlockingQueue<E> priorityBlockingQueue = new PriorityBlockingQueue<>();
        Iterables.addAll(priorityBlockingQueue, iterable);
        return priorityBlockingQueue;
    }

    public static <E extends Comparable> PriorityQueue<E> newPriorityQueue() {
        return new PriorityQueue<>();
    }

    public static <E extends Comparable> PriorityQueue<E> newPriorityQueue(Iterable<? extends E> iterable) {
        if (iterable instanceof Collection) {
            return new PriorityQueue<>(Collections2.cast(iterable));
        }
        PriorityQueue<E> priorityQueue = new PriorityQueue<>();
        Iterables.addAll(priorityQueue, iterable);
        return priorityQueue;
    }

    public static <E> SynchronousQueue<E> newSynchronousQueue() {
        return new SynchronousQueue<>();
    }

    @Beta
    public static <E> int drain(BlockingQueue<E> blockingQueue, Collection<? super E> collection, int i, long j, TimeUnit timeUnit) throws InterruptedException {
        Preconditions.checkNotNull(collection);
        long nanos = timeUnit.toNanos(j) + System.nanoTime();
        int iDrainTo = 0;
        while (iDrainTo < i) {
            iDrainTo += blockingQueue.drainTo(collection, i - iDrainTo);
            if (iDrainTo < i) {
                E ePoll = blockingQueue.poll(nanos - System.nanoTime(), TimeUnit.NANOSECONDS);
                if (ePoll == null) {
                    break;
                }
                collection.add(ePoll);
                iDrainTo++;
            }
        }
        return iDrainTo;
    }

    @Beta
    public static <E> int drainUninterruptibly(BlockingQueue<E> blockingQueue, Collection<? super E> collection, int i, long j, TimeUnit timeUnit) {
        E ePoll;
        boolean z = false;
        Preconditions.checkNotNull(collection);
        long jNanoTime = System.nanoTime() + timeUnit.toNanos(j);
        int iDrainTo = 0;
        while (iDrainTo < i) {
            try {
                iDrainTo += blockingQueue.drainTo(collection, i - iDrainTo);
                if (iDrainTo < i) {
                    while (true) {
                        try {
                            ePoll = blockingQueue.poll(jNanoTime - System.nanoTime(), TimeUnit.NANOSECONDS);
                            break;
                        } catch (InterruptedException e2) {
                            z = true;
                        }
                    }
                    if (ePoll == null) {
                        break;
                    }
                    collection.add(ePoll);
                    iDrainTo++;
                }
            } finally {
                if (z) {
                    Thread.currentThread().interrupt();
                }
            }
        }
        return iDrainTo;
    }

    @Beta
    public static <E> Queue<E> synchronizedQueue(Queue<E> queue) {
        return Synchronized.queue(queue, null);
    }
}
