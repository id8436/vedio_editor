package com.google.common.util.concurrent;

import com.google.common.annotations.Beta;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Preconditions;
import com.google.common.base.Supplier;
import com.google.common.base.Throwables;
import com.google.common.collect.Lists;
import com.google.common.collect.Queues;
import com.google.common.util.concurrent.ForwardingListenableFuture;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.Delayed;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: loaded from: classes3.dex */
public final class MoreExecutors {
    private MoreExecutors() {
    }

    @Beta
    public static ExecutorService getExitingExecutorService(ThreadPoolExecutor threadPoolExecutor, long j, TimeUnit timeUnit) {
        return new Application().getExitingExecutorService(threadPoolExecutor, j, timeUnit);
    }

    @Beta
    public static ScheduledExecutorService getExitingScheduledExecutorService(ScheduledThreadPoolExecutor scheduledThreadPoolExecutor, long j, TimeUnit timeUnit) {
        return new Application().getExitingScheduledExecutorService(scheduledThreadPoolExecutor, j, timeUnit);
    }

    @Beta
    public static void addDelayedShutdownHook(ExecutorService executorService, long j, TimeUnit timeUnit) {
        new Application().addDelayedShutdownHook(executorService, j, timeUnit);
    }

    @Beta
    public static ExecutorService getExitingExecutorService(ThreadPoolExecutor threadPoolExecutor) {
        return new Application().getExitingExecutorService(threadPoolExecutor);
    }

    @Beta
    public static ScheduledExecutorService getExitingScheduledExecutorService(ScheduledThreadPoolExecutor scheduledThreadPoolExecutor) {
        return new Application().getExitingScheduledExecutorService(scheduledThreadPoolExecutor);
    }

    @VisibleForTesting
    class Application {
        Application() {
        }

        final ExecutorService getExitingExecutorService(ThreadPoolExecutor threadPoolExecutor, long j, TimeUnit timeUnit) {
            MoreExecutors.useDaemonThreadFactory(threadPoolExecutor);
            ExecutorService executorServiceUnconfigurableExecutorService = Executors.unconfigurableExecutorService(threadPoolExecutor);
            addDelayedShutdownHook(executorServiceUnconfigurableExecutorService, j, timeUnit);
            return executorServiceUnconfigurableExecutorService;
        }

        final ScheduledExecutorService getExitingScheduledExecutorService(ScheduledThreadPoolExecutor scheduledThreadPoolExecutor, long j, TimeUnit timeUnit) {
            MoreExecutors.useDaemonThreadFactory(scheduledThreadPoolExecutor);
            ScheduledExecutorService scheduledExecutorServiceUnconfigurableScheduledExecutorService = Executors.unconfigurableScheduledExecutorService(scheduledThreadPoolExecutor);
            addDelayedShutdownHook(scheduledExecutorServiceUnconfigurableScheduledExecutorService, j, timeUnit);
            return scheduledExecutorServiceUnconfigurableScheduledExecutorService;
        }

        final void addDelayedShutdownHook(final ExecutorService executorService, final long j, final TimeUnit timeUnit) {
            Preconditions.checkNotNull(executorService);
            Preconditions.checkNotNull(timeUnit);
            addShutdownHook(MoreExecutors.newThread("DelayedShutdownHook-for-" + executorService, new Runnable() { // from class: com.google.common.util.concurrent.MoreExecutors.Application.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        executorService.shutdown();
                        executorService.awaitTermination(j, timeUnit);
                    } catch (InterruptedException e2) {
                    }
                }
            }));
        }

        final ExecutorService getExitingExecutorService(ThreadPoolExecutor threadPoolExecutor) {
            return getExitingExecutorService(threadPoolExecutor, 120L, TimeUnit.SECONDS);
        }

        final ScheduledExecutorService getExitingScheduledExecutorService(ScheduledThreadPoolExecutor scheduledThreadPoolExecutor) {
            return getExitingScheduledExecutorService(scheduledThreadPoolExecutor, 120L, TimeUnit.SECONDS);
        }

        @VisibleForTesting
        void addShutdownHook(Thread thread) {
            Runtime.getRuntime().addShutdownHook(thread);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void useDaemonThreadFactory(ThreadPoolExecutor threadPoolExecutor) {
        threadPoolExecutor.setThreadFactory(new ThreadFactoryBuilder().setDaemon(true).setThreadFactory(threadPoolExecutor.getThreadFactory()).build());
    }

    public static ListeningExecutorService sameThreadExecutor() {
        return new SameThreadExecutorService();
    }

    class SameThreadExecutorService extends AbstractListeningExecutorService {
        private final Lock lock;
        private int runningTasks;
        private boolean shutdown;
        private final Condition termination;

        private SameThreadExecutorService() {
            this.lock = new ReentrantLock();
            this.termination = this.lock.newCondition();
            this.runningTasks = 0;
            this.shutdown = false;
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            startTask();
            try {
                runnable.run();
            } finally {
                endTask();
            }
        }

        @Override // java.util.concurrent.ExecutorService
        public boolean isShutdown() {
            this.lock.lock();
            try {
                return this.shutdown;
            } finally {
                this.lock.unlock();
            }
        }

        @Override // java.util.concurrent.ExecutorService
        public void shutdown() {
            this.lock.lock();
            try {
                this.shutdown = true;
            } finally {
                this.lock.unlock();
            }
        }

        @Override // java.util.concurrent.ExecutorService
        public List<Runnable> shutdownNow() {
            shutdown();
            return Collections.emptyList();
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x0014  */
        @Override // java.util.concurrent.ExecutorService
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean isTerminated() {
            /*
                r2 = this;
                java.util.concurrent.locks.Lock r0 = r2.lock
                r0.lock()
                boolean r0 = r2.shutdown     // Catch: java.lang.Throwable -> L16
                if (r0 == 0) goto L14
                int r0 = r2.runningTasks     // Catch: java.lang.Throwable -> L16
                if (r0 != 0) goto L14
                r0 = 1
            Le:
                java.util.concurrent.locks.Lock r1 = r2.lock
                r1.unlock()
                return r0
            L14:
                r0 = 0
                goto Le
            L16:
                r0 = move-exception
                java.util.concurrent.locks.Lock r1 = r2.lock
                r1.unlock()
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.common.util.concurrent.MoreExecutors.SameThreadExecutorService.isTerminated():boolean");
        }

        @Override // java.util.concurrent.ExecutorService
        public boolean awaitTermination(long j, TimeUnit timeUnit) throws InterruptedException {
            Lock lock;
            long nanos = timeUnit.toNanos(j);
            this.lock.lock();
            while (!isTerminated()) {
                try {
                    if (nanos > 0) {
                        nanos = this.termination.awaitNanos(nanos);
                    } else {
                        return false;
                    }
                } finally {
                    this.lock.unlock();
                }
            }
            return true;
        }

        private void startTask() {
            this.lock.lock();
            try {
                if (isShutdown()) {
                    throw new RejectedExecutionException("Executor already shutdown");
                }
                this.runningTasks++;
            } finally {
                this.lock.unlock();
            }
        }

        private void endTask() {
            this.lock.lock();
            try {
                this.runningTasks--;
                if (isTerminated()) {
                    this.termination.signalAll();
                }
            } finally {
                this.lock.unlock();
            }
        }
    }

    public static ListeningExecutorService listeningDecorator(ExecutorService executorService) {
        return executorService instanceof ListeningExecutorService ? (ListeningExecutorService) executorService : executorService instanceof ScheduledExecutorService ? new ScheduledListeningDecorator((ScheduledExecutorService) executorService) : new ListeningDecorator(executorService);
    }

    public static ListeningScheduledExecutorService listeningDecorator(ScheduledExecutorService scheduledExecutorService) {
        return scheduledExecutorService instanceof ListeningScheduledExecutorService ? (ListeningScheduledExecutorService) scheduledExecutorService : new ScheduledListeningDecorator(scheduledExecutorService);
    }

    class ListeningDecorator extends AbstractListeningExecutorService {
        private final ExecutorService delegate;

        ListeningDecorator(ExecutorService executorService) {
            this.delegate = (ExecutorService) Preconditions.checkNotNull(executorService);
        }

        @Override // java.util.concurrent.ExecutorService
        public boolean awaitTermination(long j, TimeUnit timeUnit) throws InterruptedException {
            return this.delegate.awaitTermination(j, timeUnit);
        }

        @Override // java.util.concurrent.ExecutorService
        public boolean isShutdown() {
            return this.delegate.isShutdown();
        }

        @Override // java.util.concurrent.ExecutorService
        public boolean isTerminated() {
            return this.delegate.isTerminated();
        }

        @Override // java.util.concurrent.ExecutorService
        public void shutdown() {
            this.delegate.shutdown();
        }

        @Override // java.util.concurrent.ExecutorService
        public List<Runnable> shutdownNow() {
            return this.delegate.shutdownNow();
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            this.delegate.execute(runnable);
        }
    }

    class ScheduledListeningDecorator extends ListeningDecorator implements ListeningScheduledExecutorService {
        final ScheduledExecutorService delegate;

        ScheduledListeningDecorator(ScheduledExecutorService scheduledExecutorService) {
            super(scheduledExecutorService);
            this.delegate = (ScheduledExecutorService) Preconditions.checkNotNull(scheduledExecutorService);
        }

        @Override // java.util.concurrent.ScheduledExecutorService
        public ListenableScheduledFuture<?> schedule(Runnable runnable, long j, TimeUnit timeUnit) {
            ListenableFutureTask listenableFutureTaskCreate = ListenableFutureTask.create(runnable, null);
            return new ListenableScheduledTask(listenableFutureTaskCreate, this.delegate.schedule(listenableFutureTaskCreate, j, timeUnit));
        }

        @Override // java.util.concurrent.ScheduledExecutorService
        public <V> ListenableScheduledFuture<V> schedule(Callable<V> callable, long j, TimeUnit timeUnit) {
            ListenableFutureTask listenableFutureTaskCreate = ListenableFutureTask.create(callable);
            return new ListenableScheduledTask(listenableFutureTaskCreate, this.delegate.schedule(listenableFutureTaskCreate, j, timeUnit));
        }

        @Override // java.util.concurrent.ScheduledExecutorService
        public ListenableScheduledFuture<?> scheduleAtFixedRate(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
            NeverSuccessfulListenableFutureTask neverSuccessfulListenableFutureTask = new NeverSuccessfulListenableFutureTask(runnable);
            return new ListenableScheduledTask(neverSuccessfulListenableFutureTask, this.delegate.scheduleAtFixedRate(neverSuccessfulListenableFutureTask, j, j2, timeUnit));
        }

        @Override // java.util.concurrent.ScheduledExecutorService
        public ListenableScheduledFuture<?> scheduleWithFixedDelay(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
            NeverSuccessfulListenableFutureTask neverSuccessfulListenableFutureTask = new NeverSuccessfulListenableFutureTask(runnable);
            return new ListenableScheduledTask(neverSuccessfulListenableFutureTask, this.delegate.scheduleWithFixedDelay(neverSuccessfulListenableFutureTask, j, j2, timeUnit));
        }

        final class ListenableScheduledTask<V> extends ForwardingListenableFuture.SimpleForwardingListenableFuture<V> implements ListenableScheduledFuture<V> {
            private final ScheduledFuture<?> scheduledDelegate;

            public ListenableScheduledTask(ListenableFuture<V> listenableFuture, ScheduledFuture<?> scheduledFuture) {
                super(listenableFuture);
                this.scheduledDelegate = scheduledFuture;
            }

            @Override // com.google.common.util.concurrent.ForwardingFuture, java.util.concurrent.Future
            public boolean cancel(boolean z) {
                boolean zCancel = super.cancel(z);
                if (zCancel) {
                    this.scheduledDelegate.cancel(z);
                }
                return zCancel;
            }

            @Override // java.util.concurrent.Delayed
            public long getDelay(TimeUnit timeUnit) {
                return this.scheduledDelegate.getDelay(timeUnit);
            }

            @Override // java.lang.Comparable
            public int compareTo(Delayed delayed) {
                return this.scheduledDelegate.compareTo(delayed);
            }
        }

        final class NeverSuccessfulListenableFutureTask extends AbstractFuture<Void> implements Runnable {
            private final Runnable delegate;

            public NeverSuccessfulListenableFutureTask(Runnable runnable) {
                this.delegate = (Runnable) Preconditions.checkNotNull(runnable);
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    this.delegate.run();
                } catch (Throwable th) {
                    setException(th);
                    throw Throwables.propagate(th);
                }
            }
        }
    }

    static <T> T invokeAnyImpl(ListeningExecutorService listeningExecutorService, Collection<? extends Callable<T>> collection, boolean z, long j) throws ExecutionException, InterruptedException, TimeoutException {
        long jNanoTime;
        long j2;
        int i;
        Future future;
        int i2;
        ExecutionException e2;
        Preconditions.checkNotNull(listeningExecutorService);
        int size = collection.size();
        Preconditions.checkArgument(size > 0);
        ArrayList arrayListNewArrayListWithCapacity = Lists.newArrayListWithCapacity(size);
        LinkedBlockingQueue linkedBlockingQueueNewLinkedBlockingQueue = Queues.newLinkedBlockingQueue();
        ExecutionException executionException = null;
        if (!z) {
            jNanoTime = 0;
        } else {
            try {
                jNanoTime = System.nanoTime();
            } finally {
                Iterator it = arrayListNewArrayListWithCapacity.iterator();
                while (it.hasNext()) {
                    ((Future) it.next()).cancel(true);
                }
            }
        }
        Iterator<? extends Callable<T>> it2 = collection.iterator();
        arrayListNewArrayListWithCapacity.add(submitAndAddQueueListener(listeningExecutorService, it2.next(), linkedBlockingQueueNewLinkedBlockingQueue));
        int i3 = size - 1;
        int i4 = 1;
        long j3 = j;
        while (true) {
            Future future2 = (Future) linkedBlockingQueueNewLinkedBlockingQueue.poll();
            if (future2 != null) {
                j2 = j3;
                int i5 = i4;
                i = i3;
                future = future2;
                i2 = i5;
            } else if (i3 > 0) {
                int i6 = i3 - 1;
                arrayListNewArrayListWithCapacity.add(submitAndAddQueueListener(listeningExecutorService, it2.next(), linkedBlockingQueueNewLinkedBlockingQueue));
                int i7 = i4 + 1;
                i = i6;
                j2 = j3;
                i2 = i7;
                future = future2;
            } else if (i4 != 0) {
                if (z) {
                    Future future3 = (Future) linkedBlockingQueueNewLinkedBlockingQueue.poll(j3, TimeUnit.NANOSECONDS);
                    if (future3 == null) {
                        throw new TimeoutException();
                    }
                    long jNanoTime2 = System.nanoTime();
                    i2 = i4;
                    i = i3;
                    future = future3;
                    j2 = j3 - (jNanoTime2 - jNanoTime);
                    jNanoTime = jNanoTime2;
                } else {
                    j2 = j3;
                    int i8 = i4;
                    i = i3;
                    future = (Future) linkedBlockingQueueNewLinkedBlockingQueue.take();
                    i2 = i8;
                }
            } else {
                if (executionException == null) {
                    throw new ExecutionException((Throwable) null);
                }
                throw executionException;
            }
            if (future != null) {
                i2--;
                try {
                    return (T) future.get();
                } catch (RuntimeException e3) {
                    e2 = new ExecutionException(e3);
                    executionException = e2;
                    j3 = j2;
                    i3 = i;
                    i4 = i2;
                } catch (ExecutionException e4) {
                    e2 = e4;
                    executionException = e2;
                    j3 = j2;
                    i3 = i;
                    i4 = i2;
                }
            } else {
                e2 = executionException;
            }
            executionException = e2;
            j3 = j2;
            i3 = i;
            i4 = i2;
        }
    }

    private static <T> ListenableFuture<T> submitAndAddQueueListener(ListeningExecutorService listeningExecutorService, Callable<T> callable, final BlockingQueue<Future<T>> blockingQueue) {
        final ListenableFuture<T> listenableFutureSubmit = listeningExecutorService.submit((Callable) callable);
        listenableFutureSubmit.addListener(new Runnable() { // from class: com.google.common.util.concurrent.MoreExecutors.1
            @Override // java.lang.Runnable
            public void run() {
                blockingQueue.add(listenableFutureSubmit);
            }
        }, sameThreadExecutor());
        return listenableFutureSubmit;
    }

    @Beta
    public static ThreadFactory platformThreadFactory() {
        if (!isAppEngine()) {
            return Executors.defaultThreadFactory();
        }
        try {
            return (ThreadFactory) Class.forName("com.google.appengine.api.ThreadManager").getMethod("currentRequestThreadFactory", new Class[0]).invoke(null, new Object[0]);
        } catch (ClassNotFoundException e2) {
            throw new RuntimeException("Couldn't invoke ThreadManager.currentRequestThreadFactory", e2);
        } catch (IllegalAccessException e3) {
            throw new RuntimeException("Couldn't invoke ThreadManager.currentRequestThreadFactory", e3);
        } catch (NoSuchMethodException e4) {
            throw new RuntimeException("Couldn't invoke ThreadManager.currentRequestThreadFactory", e4);
        } catch (InvocationTargetException e5) {
            throw Throwables.propagate(e5.getCause());
        }
    }

    private static boolean isAppEngine() {
        if (System.getProperty("com.google.appengine.runtime.environment") == null) {
            return false;
        }
        try {
            return Class.forName("com.google.apphosting.api.ApiProxy").getMethod("getCurrentEnvironment", new Class[0]).invoke(null, new Object[0]) != null;
        } catch (ClassNotFoundException e2) {
            return false;
        } catch (IllegalAccessException e3) {
            return false;
        } catch (NoSuchMethodException e4) {
            return false;
        } catch (InvocationTargetException e5) {
            return false;
        }
    }

    static Thread newThread(String str, Runnable runnable) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(runnable);
        Thread threadNewThread = platformThreadFactory().newThread(runnable);
        try {
            threadNewThread.setName(str);
        } catch (SecurityException e2) {
        }
        return threadNewThread;
    }

    static Executor renamingDecorator(final Executor executor, final Supplier<String> supplier) {
        Preconditions.checkNotNull(executor);
        Preconditions.checkNotNull(supplier);
        return isAppEngine() ? executor : new Executor() { // from class: com.google.common.util.concurrent.MoreExecutors.2
            @Override // java.util.concurrent.Executor
            public void execute(Runnable runnable) {
                executor.execute(Callables.threadRenaming(runnable, (Supplier<String>) supplier));
            }
        };
    }

    static ExecutorService renamingDecorator(ExecutorService executorService, final Supplier<String> supplier) {
        Preconditions.checkNotNull(executorService);
        Preconditions.checkNotNull(supplier);
        return isAppEngine() ? executorService : new WrappingExecutorService(executorService) { // from class: com.google.common.util.concurrent.MoreExecutors.3
            @Override // com.google.common.util.concurrent.WrappingExecutorService
            protected <T> Callable<T> wrapTask(Callable<T> callable) {
                return Callables.threadRenaming(callable, (Supplier<String>) supplier);
            }

            @Override // com.google.common.util.concurrent.WrappingExecutorService
            protected Runnable wrapTask(Runnable runnable) {
                return Callables.threadRenaming(runnable, (Supplier<String>) supplier);
            }
        };
    }

    static ScheduledExecutorService renamingDecorator(ScheduledExecutorService scheduledExecutorService, final Supplier<String> supplier) {
        Preconditions.checkNotNull(scheduledExecutorService);
        Preconditions.checkNotNull(supplier);
        return isAppEngine() ? scheduledExecutorService : new WrappingScheduledExecutorService(scheduledExecutorService) { // from class: com.google.common.util.concurrent.MoreExecutors.4
            @Override // com.google.common.util.concurrent.WrappingExecutorService
            protected <T> Callable<T> wrapTask(Callable<T> callable) {
                return Callables.threadRenaming(callable, (Supplier<String>) supplier);
            }

            @Override // com.google.common.util.concurrent.WrappingExecutorService
            protected Runnable wrapTask(Runnable runnable) {
                return Callables.threadRenaming(runnable, (Supplier<String>) supplier);
            }
        };
    }

    @Beta
    public static boolean shutdownAndAwaitTermination(ExecutorService executorService, long j, TimeUnit timeUnit) {
        Preconditions.checkNotNull(timeUnit);
        executorService.shutdown();
        try {
            long jConvert = TimeUnit.NANOSECONDS.convert(j, timeUnit) / 2;
            if (!executorService.awaitTermination(jConvert, TimeUnit.NANOSECONDS)) {
                executorService.shutdownNow();
                executorService.awaitTermination(jConvert, TimeUnit.NANOSECONDS);
            }
        } catch (InterruptedException e2) {
            Thread.currentThread().interrupt();
            executorService.shutdownNow();
        }
        return executorService.isTerminated();
    }
}
