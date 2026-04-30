package com.google.common.util.concurrent;

import com.google.common.annotations.Beta;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes3.dex */
@Beta
public abstract class AbstractListeningExecutorService implements ListeningExecutorService {
    @Override // java.util.concurrent.ExecutorService
    public ListenableFuture<?> submit(Runnable runnable) {
        ListenableFutureTask listenableFutureTaskCreate = ListenableFutureTask.create(runnable, null);
        execute(listenableFutureTaskCreate);
        return listenableFutureTaskCreate;
    }

    @Override // java.util.concurrent.ExecutorService
    public <T> ListenableFuture<T> submit(Runnable runnable, @Nullable T t) {
        ListenableFutureTask listenableFutureTaskCreate = ListenableFutureTask.create(runnable, t);
        execute(listenableFutureTaskCreate);
        return listenableFutureTaskCreate;
    }

    @Override // java.util.concurrent.ExecutorService
    public <T> ListenableFuture<T> submit(Callable<T> callable) {
        ListenableFutureTask listenableFutureTaskCreate = ListenableFutureTask.create(callable);
        execute(listenableFutureTaskCreate);
        return listenableFutureTaskCreate;
    }

    @Override // java.util.concurrent.ExecutorService
    public <T> T invokeAny(Collection<? extends Callable<T>> collection) throws ExecutionException, InterruptedException {
        try {
            return (T) MoreExecutors.invokeAnyImpl(this, collection, false, 0L);
        } catch (TimeoutException e2) {
            throw new AssertionError();
        }
    }

    @Override // java.util.concurrent.ExecutorService
    public <T> T invokeAny(Collection<? extends Callable<T>> collection, long j, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        return (T) MoreExecutors.invokeAnyImpl(this, collection, true, timeUnit.toNanos(j));
    }

    @Override // com.google.common.util.concurrent.ListeningExecutorService, java.util.concurrent.ExecutorService
    public <T> List<Future<T>> invokeAll(Collection<? extends Callable<T>> collection) throws InterruptedException {
        if (collection == null) {
            throw new NullPointerException();
        }
        ArrayList<Future> arrayList = new ArrayList(collection.size());
        try {
            Iterator<? extends Callable<T>> it = collection.iterator();
            while (it.hasNext()) {
                ListenableFutureTask listenableFutureTaskCreate = ListenableFutureTask.create(it.next());
                arrayList.add(listenableFutureTaskCreate);
                execute(listenableFutureTaskCreate);
            }
            for (Future future : arrayList) {
                if (!future.isDone()) {
                    try {
                        future.get();
                    } catch (CancellationException e2) {
                    } catch (ExecutionException e3) {
                    }
                }
            }
            return arrayList;
        } catch (Throwable th) {
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                ((Future) it2.next()).cancel(true);
            }
            throw th;
        }
    }

    @Override // com.google.common.util.concurrent.ListeningExecutorService, java.util.concurrent.ExecutorService
    public <T> List<Future<T>> invokeAll(Collection<? extends Callable<T>> collection, long j, TimeUnit timeUnit) throws InterruptedException {
        long jNanoTime;
        long j2;
        if (collection == null || timeUnit == null) {
            throw new NullPointerException();
        }
        long nanos = timeUnit.toNanos(j);
        ArrayList<Future> arrayList = new ArrayList(collection.size());
        try {
            Iterator<? extends Callable<T>> it = collection.iterator();
            while (it.hasNext()) {
                arrayList.add(ListenableFutureTask.create(it.next()));
            }
            long jNanoTime2 = System.nanoTime();
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                execute((Runnable) it2.next());
                long jNanoTime3 = System.nanoTime();
                nanos -= jNanoTime3 - jNanoTime2;
                if (nanos <= 0) {
                    return arrayList;
                }
                jNanoTime2 = jNanoTime3;
            }
            for (Future future : arrayList) {
                if (future.isDone()) {
                    jNanoTime = jNanoTime2;
                    j2 = nanos;
                } else {
                    if (nanos <= 0) {
                        Iterator it3 = arrayList.iterator();
                        while (it3.hasNext()) {
                            ((Future) it3.next()).cancel(true);
                        }
                        return arrayList;
                    }
                    try {
                        future.get(nanos, TimeUnit.NANOSECONDS);
                    } catch (CancellationException e2) {
                    } catch (ExecutionException e3) {
                    } catch (TimeoutException e4) {
                        Iterator it4 = arrayList.iterator();
                        while (it4.hasNext()) {
                            ((Future) it4.next()).cancel(true);
                        }
                        return arrayList;
                    }
                    jNanoTime = System.nanoTime();
                    j2 = nanos - (jNanoTime - jNanoTime2);
                }
                nanos = j2;
                jNanoTime2 = jNanoTime;
            }
            return arrayList;
        } finally {
            Iterator it5 = arrayList.iterator();
            while (it5.hasNext()) {
                ((Future) it5.next()).cancel(true);
            }
        }
    }
}
