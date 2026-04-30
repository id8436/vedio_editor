package com.google.common.util.concurrent;

import com.google.common.annotations.Beta;
import com.google.common.base.Preconditions;
import com.google.common.base.Supplier;
import com.google.common.base.Throwables;
import com.google.common.util.concurrent.Service;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.locks.ReentrantLock;
import java.util.logging.Logger;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: loaded from: classes3.dex */
@Beta
public abstract class AbstractScheduledService implements Service {
    private static final Logger logger = Logger.getLogger(AbstractScheduledService.class.getName());
    private final AbstractService delegate = new AbstractService() { // from class: com.google.common.util.concurrent.AbstractScheduledService.1
        private volatile ScheduledExecutorService executorService;
        private volatile Future<?> runningTask;
        private final ReentrantLock lock = new ReentrantLock();
        private final Runnable task = new Runnable() { // from class: com.google.common.util.concurrent.AbstractScheduledService.1.1
            @Override // java.lang.Runnable
            public void run() {
                RuntimeException runtimeExceptionPropagate;
                AnonymousClass1.this.lock.lock();
                try {
                    try {
                        AbstractScheduledService.this.runOneIteration();
                    } finally {
                    }
                } finally {
                    AnonymousClass1.this.lock.unlock();
                }
            }
        };

        @Override // com.google.common.util.concurrent.AbstractService
        protected final void doStart() {
            this.executorService = MoreExecutors.renamingDecorator(AbstractScheduledService.this.executor(), new Supplier<String>() { // from class: com.google.common.util.concurrent.AbstractScheduledService.1.2
                @Override // com.google.common.base.Supplier
                public String get() {
                    return AbstractScheduledService.this.serviceName() + " " + state();
                }
            });
            this.executorService.execute(new Runnable() { // from class: com.google.common.util.concurrent.AbstractScheduledService.1.3
                @Override // java.lang.Runnable
                public void run() {
                    RuntimeException runtimeExceptionPropagate;
                    AnonymousClass1.this.lock.lock();
                    try {
                        try {
                            AbstractScheduledService.this.startUp();
                            AnonymousClass1.this.runningTask = AbstractScheduledService.this.scheduler().schedule(AbstractScheduledService.this.delegate, AnonymousClass1.this.executorService, AnonymousClass1.this.task);
                            notifyStarted();
                        } finally {
                        }
                    } finally {
                        AnonymousClass1.this.lock.unlock();
                    }
                }
            });
        }

        @Override // com.google.common.util.concurrent.AbstractService
        protected final void doStop() {
            this.runningTask.cancel(false);
            this.executorService.execute(new Runnable() { // from class: com.google.common.util.concurrent.AbstractScheduledService.1.4
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        AnonymousClass1.this.lock.lock();
                        try {
                            if (state() == Service.State.STOPPING) {
                                AbstractScheduledService.this.shutDown();
                                AnonymousClass1.this.lock.unlock();
                                notifyStopped();
                            }
                        } finally {
                            AnonymousClass1.this.lock.unlock();
                        }
                    } catch (Throwable th) {
                        notifyFailed(th);
                        throw Throwables.propagate(th);
                    }
                }
            });
        }
    };

    protected abstract void runOneIteration() throws Exception;

    protected abstract Scheduler scheduler();

    public abstract class Scheduler {
        abstract Future<?> schedule(AbstractService abstractService, ScheduledExecutorService scheduledExecutorService, Runnable runnable);

        public static Scheduler newFixedDelaySchedule(final long j, final long j2, final TimeUnit timeUnit) {
            return new Scheduler() { // from class: com.google.common.util.concurrent.AbstractScheduledService.Scheduler.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super();
                }

                @Override // com.google.common.util.concurrent.AbstractScheduledService.Scheduler
                public Future<?> schedule(AbstractService abstractService, ScheduledExecutorService scheduledExecutorService, Runnable runnable) {
                    return scheduledExecutorService.scheduleWithFixedDelay(runnable, j, j2, timeUnit);
                }
            };
        }

        public static Scheduler newFixedRateSchedule(final long j, final long j2, final TimeUnit timeUnit) {
            return new Scheduler() { // from class: com.google.common.util.concurrent.AbstractScheduledService.Scheduler.2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super();
                }

                @Override // com.google.common.util.concurrent.AbstractScheduledService.Scheduler
                public Future<?> schedule(AbstractService abstractService, ScheduledExecutorService scheduledExecutorService, Runnable runnable) {
                    return scheduledExecutorService.scheduleAtFixedRate(runnable, j, j2, timeUnit);
                }
            };
        }

        private Scheduler() {
        }
    }

    protected AbstractScheduledService() {
    }

    protected void startUp() throws Exception {
    }

    protected void shutDown() throws Exception {
    }

    protected ScheduledExecutorService executor() {
        final ScheduledExecutorService scheduledExecutorServiceNewSingleThreadScheduledExecutor = Executors.newSingleThreadScheduledExecutor(new ThreadFactory() { // from class: com.google.common.util.concurrent.AbstractScheduledService.2
            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(Runnable runnable) {
                return MoreExecutors.newThread(AbstractScheduledService.this.serviceName(), runnable);
            }
        });
        addListener(new Service.Listener() { // from class: com.google.common.util.concurrent.AbstractScheduledService.3
            @Override // com.google.common.util.concurrent.Service.Listener
            public void terminated(Service.State state) {
                scheduledExecutorServiceNewSingleThreadScheduledExecutor.shutdown();
            }

            @Override // com.google.common.util.concurrent.Service.Listener
            public void failed(Service.State state, Throwable th) {
                scheduledExecutorServiceNewSingleThreadScheduledExecutor.shutdown();
            }
        }, MoreExecutors.sameThreadExecutor());
        return scheduledExecutorServiceNewSingleThreadScheduledExecutor;
    }

    protected String serviceName() {
        return getClass().getSimpleName();
    }

    public String toString() {
        return serviceName() + " [" + state() + "]";
    }

    @Override // com.google.common.util.concurrent.Service
    public final boolean isRunning() {
        return this.delegate.isRunning();
    }

    @Override // com.google.common.util.concurrent.Service
    public final Service.State state() {
        return this.delegate.state();
    }

    @Override // com.google.common.util.concurrent.Service
    public final void addListener(Service.Listener listener, Executor executor) {
        this.delegate.addListener(listener, executor);
    }

    @Override // com.google.common.util.concurrent.Service
    public final Throwable failureCause() {
        return this.delegate.failureCause();
    }

    @Override // com.google.common.util.concurrent.Service
    public final Service startAsync() {
        this.delegate.startAsync();
        return this;
    }

    @Override // com.google.common.util.concurrent.Service
    public final Service stopAsync() {
        this.delegate.stopAsync();
        return this;
    }

    @Override // com.google.common.util.concurrent.Service
    public final void awaitRunning() {
        this.delegate.awaitRunning();
    }

    @Override // com.google.common.util.concurrent.Service
    public final void awaitRunning(long j, TimeUnit timeUnit) throws TimeoutException {
        this.delegate.awaitRunning(j, timeUnit);
    }

    @Override // com.google.common.util.concurrent.Service
    public final void awaitTerminated() {
        this.delegate.awaitTerminated();
    }

    @Override // com.google.common.util.concurrent.Service
    public final void awaitTerminated(long j, TimeUnit timeUnit) throws TimeoutException {
        this.delegate.awaitTerminated(j, timeUnit);
    }

    @Beta
    public abstract class CustomScheduler extends Scheduler {
        protected abstract Schedule getNextSchedule() throws Exception;

        public CustomScheduler() {
            super();
        }

        class ReschedulableCallable extends ForwardingFuture<Void> implements Callable<Void> {

            @GuardedBy("lock")
            private Future<Void> currentFuture;
            private final ScheduledExecutorService executor;
            private final ReentrantLock lock = new ReentrantLock();
            private final AbstractService service;
            private final Runnable wrappedRunnable;

            ReschedulableCallable(AbstractService abstractService, ScheduledExecutorService scheduledExecutorService, Runnable runnable) {
                this.wrappedRunnable = runnable;
                this.executor = scheduledExecutorService;
                this.service = abstractService;
            }

            @Override // java.util.concurrent.Callable
            public Void call() throws Exception {
                this.wrappedRunnable.run();
                reschedule();
                return null;
            }

            public void reschedule() {
                this.lock.lock();
                try {
                    if (this.currentFuture == null || !this.currentFuture.isCancelled()) {
                        Schedule nextSchedule = CustomScheduler.this.getNextSchedule();
                        this.currentFuture = this.executor.schedule(this, nextSchedule.delay, nextSchedule.unit);
                    }
                } catch (Throwable th) {
                    this.service.notifyFailed(th);
                } finally {
                    this.lock.unlock();
                }
            }

            @Override // com.google.common.util.concurrent.ForwardingFuture, java.util.concurrent.Future
            public boolean cancel(boolean z) {
                this.lock.lock();
                try {
                    return this.currentFuture.cancel(z);
                } finally {
                    this.lock.unlock();
                }
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.common.util.concurrent.ForwardingFuture, com.google.common.collect.ForwardingObject
            public Future<Void> delegate() {
                throw new UnsupportedOperationException("Only cancel is supported by this future");
            }
        }

        @Override // com.google.common.util.concurrent.AbstractScheduledService.Scheduler
        final Future<?> schedule(AbstractService abstractService, ScheduledExecutorService scheduledExecutorService, Runnable runnable) {
            ReschedulableCallable reschedulableCallable = new ReschedulableCallable(abstractService, scheduledExecutorService, runnable);
            reschedulableCallable.reschedule();
            return reschedulableCallable;
        }

        @Beta
        public final class Schedule {
            private final long delay;
            private final TimeUnit unit;

            public Schedule(long j, TimeUnit timeUnit) {
                this.delay = j;
                this.unit = (TimeUnit) Preconditions.checkNotNull(timeUnit);
            }
        }
    }
}
