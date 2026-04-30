package com.google.common.util.concurrent;

import com.google.common.annotations.Beta;
import com.google.common.base.Function;
import com.google.common.base.Optional;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableCollection;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Lists;
import com.google.common.collect.Ordering;
import com.google.common.collect.Queues;
import com.google.common.collect.Sets;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.UndeclaredThrowableException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@Beta
public final class Futures {
    private static final AsyncFunction<ListenableFuture<Object>, Object> DEREFERENCER = new AsyncFunction<ListenableFuture<Object>, Object>() { // from class: com.google.common.util.concurrent.Futures.3
        @Override // com.google.common.util.concurrent.AsyncFunction
        public ListenableFuture<Object> apply(ListenableFuture<Object> listenableFuture) {
            return listenableFuture;
        }
    };
    private static final Ordering<Constructor<?>> WITH_STRING_PARAM_FIRST = Ordering.natural().onResultOf(new Function<Constructor<?>, Boolean>() { // from class: com.google.common.util.concurrent.Futures.6
        @Override // com.google.common.base.Function
        public Boolean apply(Constructor<?> constructor) {
            return Boolean.valueOf(Arrays.asList(constructor.getParameterTypes()).contains(String.class));
        }
    }).reverse();

    /* JADX INFO: loaded from: classes3.dex */
    interface FutureCombiner<V, C> {
        C combine(List<Optional<V>> list);
    }

    private Futures() {
    }

    public static <V, X extends Exception> CheckedFuture<V, X> makeChecked(ListenableFuture<V> listenableFuture, Function<Exception, X> function) {
        return new MappingCheckedFuture((ListenableFuture) Preconditions.checkNotNull(listenableFuture), function);
    }

    /* JADX INFO: loaded from: classes3.dex */
    abstract class ImmediateFuture<V> implements ListenableFuture<V> {
        private static final Logger log = Logger.getLogger(ImmediateFuture.class.getName());

        @Override // java.util.concurrent.Future
        public abstract V get() throws ExecutionException;

        private ImmediateFuture() {
        }

        @Override // com.google.common.util.concurrent.ListenableFuture
        public void addListener(Runnable runnable, Executor executor) {
            Preconditions.checkNotNull(runnable, "Runnable was null.");
            Preconditions.checkNotNull(executor, "Executor was null.");
            try {
                executor.execute(runnable);
            } catch (RuntimeException e2) {
                log.log(Level.SEVERE, "RuntimeException while executing runnable " + runnable + " with executor " + executor, (Throwable) e2);
            }
        }

        @Override // java.util.concurrent.Future
        public boolean cancel(boolean z) {
            return false;
        }

        @Override // java.util.concurrent.Future
        public V get(long j, TimeUnit timeUnit) throws ExecutionException {
            Preconditions.checkNotNull(timeUnit);
            return get();
        }

        @Override // java.util.concurrent.Future
        public boolean isCancelled() {
            return false;
        }

        @Override // java.util.concurrent.Future
        public boolean isDone() {
            return true;
        }
    }

    class ImmediateSuccessfulFuture<V> extends ImmediateFuture<V> {

        @Nullable
        private final V value;

        ImmediateSuccessfulFuture(@Nullable V v) {
            super();
            this.value = v;
        }

        @Override // com.google.common.util.concurrent.Futures.ImmediateFuture, java.util.concurrent.Future
        public V get() {
            return this.value;
        }
    }

    class ImmediateSuccessfulCheckedFuture<V, X extends Exception> extends ImmediateFuture<V> implements CheckedFuture<V, X> {

        @Nullable
        private final V value;

        ImmediateSuccessfulCheckedFuture(@Nullable V v) {
            super();
            this.value = v;
        }

        @Override // com.google.common.util.concurrent.Futures.ImmediateFuture, java.util.concurrent.Future
        public V get() {
            return this.value;
        }

        @Override // com.google.common.util.concurrent.CheckedFuture
        public V checkedGet() {
            return this.value;
        }

        @Override // com.google.common.util.concurrent.CheckedFuture
        public V checkedGet(long j, TimeUnit timeUnit) {
            Preconditions.checkNotNull(timeUnit);
            return this.value;
        }
    }

    /* JADX INFO: loaded from: classes3.dex */
    class ImmediateFailedFuture<V> extends ImmediateFuture<V> {
        private final Throwable thrown;

        ImmediateFailedFuture(Throwable th) {
            super();
            this.thrown = th;
        }

        @Override // com.google.common.util.concurrent.Futures.ImmediateFuture, java.util.concurrent.Future
        public V get() throws ExecutionException {
            throw new ExecutionException(this.thrown);
        }
    }

    /* JADX INFO: loaded from: classes3.dex */
    class ImmediateCancelledFuture<V> extends ImmediateFuture<V> {
        private final CancellationException thrown;

        ImmediateCancelledFuture() {
            super();
            this.thrown = new CancellationException("Immediate cancelled future.");
        }

        @Override // com.google.common.util.concurrent.Futures.ImmediateFuture, java.util.concurrent.Future
        public boolean isCancelled() {
            return true;
        }

        @Override // com.google.common.util.concurrent.Futures.ImmediateFuture, java.util.concurrent.Future
        public V get() {
            throw AbstractFuture.cancellationExceptionWithCause("Task was cancelled.", this.thrown);
        }
    }

    /* JADX INFO: loaded from: classes3.dex */
    class ImmediateFailedCheckedFuture<V, X extends Exception> extends ImmediateFuture<V> implements CheckedFuture<V, X> {
        private final X thrown;

        ImmediateFailedCheckedFuture(X x) {
            super();
            this.thrown = x;
        }

        @Override // com.google.common.util.concurrent.Futures.ImmediateFuture, java.util.concurrent.Future
        public V get() throws ExecutionException {
            throw new ExecutionException(this.thrown);
        }

        /* JADX INFO: Thrown type has an unknown type hierarchy: X extends java.lang.Exception */
        @Override // com.google.common.util.concurrent.CheckedFuture
        public V checkedGet() throws Exception {
            throw this.thrown;
        }

        /* JADX INFO: Thrown type has an unknown type hierarchy: X extends java.lang.Exception */
        @Override // com.google.common.util.concurrent.CheckedFuture
        public V checkedGet(long j, TimeUnit timeUnit) throws Exception {
            Preconditions.checkNotNull(timeUnit);
            throw this.thrown;
        }
    }

    public static <V> ListenableFuture<V> immediateFuture(@Nullable V v) {
        return new ImmediateSuccessfulFuture(v);
    }

    public static <V, X extends Exception> CheckedFuture<V, X> immediateCheckedFuture(@Nullable V v) {
        return new ImmediateSuccessfulCheckedFuture(v);
    }

    public static <V> ListenableFuture<V> immediateFailedFuture(Throwable th) {
        Preconditions.checkNotNull(th);
        return new ImmediateFailedFuture(th);
    }

    public static <V> ListenableFuture<V> immediateCancelledFuture() {
        return new ImmediateCancelledFuture();
    }

    public static <V, X extends Exception> CheckedFuture<V, X> immediateFailedCheckedFuture(X x) {
        Preconditions.checkNotNull(x);
        return new ImmediateFailedCheckedFuture(x);
    }

    public static <V> ListenableFuture<V> withFallback(ListenableFuture<? extends V> listenableFuture, FutureFallback<? extends V> futureFallback) {
        return withFallback(listenableFuture, futureFallback, MoreExecutors.sameThreadExecutor());
    }

    public static <V> ListenableFuture<V> withFallback(ListenableFuture<? extends V> listenableFuture, FutureFallback<? extends V> futureFallback, Executor executor) {
        Preconditions.checkNotNull(futureFallback);
        return new FallbackFuture(listenableFuture, futureFallback, executor);
    }

    /* JADX INFO: loaded from: classes3.dex */
    class FallbackFuture<V> extends AbstractFuture<V> {
        private volatile ListenableFuture<? extends V> running;

        FallbackFuture(ListenableFuture<? extends V> listenableFuture, final FutureFallback<? extends V> futureFallback, Executor executor) {
            this.running = listenableFuture;
            Futures.addCallback(this.running, new FutureCallback<V>() { // from class: com.google.common.util.concurrent.Futures.FallbackFuture.1
                @Override // com.google.common.util.concurrent.FutureCallback
                public void onSuccess(V v) {
                    FallbackFuture.this.set(v);
                }

                @Override // com.google.common.util.concurrent.FutureCallback
                public void onFailure(Throwable th) {
                    if (!FallbackFuture.this.isCancelled()) {
                        try {
                            FallbackFuture.this.running = futureFallback.create(th);
                            if (FallbackFuture.this.isCancelled()) {
                                FallbackFuture.this.running.cancel(FallbackFuture.this.wasInterrupted());
                            } else {
                                Futures.addCallback(FallbackFuture.this.running, new FutureCallback<V>() { // from class: com.google.common.util.concurrent.Futures.FallbackFuture.1.1
                                    @Override // com.google.common.util.concurrent.FutureCallback
                                    public void onSuccess(V v) {
                                        FallbackFuture.this.set(v);
                                    }

                                    @Override // com.google.common.util.concurrent.FutureCallback
                                    public void onFailure(Throwable th2) {
                                        if (FallbackFuture.this.running.isCancelled()) {
                                            FallbackFuture.this.cancel(false);
                                        } else {
                                            FallbackFuture.this.setException(th2);
                                        }
                                    }
                                }, MoreExecutors.sameThreadExecutor());
                            }
                        } catch (Throwable th2) {
                            FallbackFuture.this.setException(th2);
                        }
                    }
                }
            }, executor);
        }

        @Override // com.google.common.util.concurrent.AbstractFuture, java.util.concurrent.Future
        public boolean cancel(boolean z) {
            if (!super.cancel(z)) {
                return false;
            }
            this.running.cancel(z);
            return true;
        }
    }

    public static <I, O> ListenableFuture<O> transform(ListenableFuture<I> listenableFuture, AsyncFunction<? super I, ? extends O> asyncFunction) {
        return transform(listenableFuture, asyncFunction, MoreExecutors.sameThreadExecutor());
    }

    public static <I, O> ListenableFuture<O> transform(ListenableFuture<I> listenableFuture, AsyncFunction<? super I, ? extends O> asyncFunction, Executor executor) {
        ChainingListenableFuture chainingListenableFuture = new ChainingListenableFuture(asyncFunction, listenableFuture);
        listenableFuture.addListener(chainingListenableFuture, executor);
        return chainingListenableFuture;
    }

    public static <I, O> ListenableFuture<O> transform(ListenableFuture<I> listenableFuture, Function<? super I, ? extends O> function) {
        return transform(listenableFuture, function, MoreExecutors.sameThreadExecutor());
    }

    public static <I, O> ListenableFuture<O> transform(ListenableFuture<I> listenableFuture, final Function<? super I, ? extends O> function, Executor executor) {
        Preconditions.checkNotNull(function);
        return transform(listenableFuture, new AsyncFunction<I, O>() { // from class: com.google.common.util.concurrent.Futures.1
            @Override // com.google.common.util.concurrent.AsyncFunction
            public ListenableFuture<O> apply(I i) {
                return Futures.immediateFuture(function.apply(i));
            }
        }, executor);
    }

    public static <I, O> Future<O> lazyTransform(final Future<I> future, final Function<? super I, ? extends O> function) {
        Preconditions.checkNotNull(future);
        Preconditions.checkNotNull(function);
        return new Future<O>() { // from class: com.google.common.util.concurrent.Futures.2
            @Override // java.util.concurrent.Future
            public boolean cancel(boolean z) {
                return future.cancel(z);
            }

            @Override // java.util.concurrent.Future
            public boolean isCancelled() {
                return future.isCancelled();
            }

            @Override // java.util.concurrent.Future
            public boolean isDone() {
                return future.isDone();
            }

            @Override // java.util.concurrent.Future
            public O get() throws ExecutionException, InterruptedException {
                return applyTransformation(future.get());
            }

            @Override // java.util.concurrent.Future
            public O get(long j, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
                return applyTransformation(future.get(j, timeUnit));
            }

            private O applyTransformation(I i) throws ExecutionException {
                try {
                    return (O) function.apply(i);
                } catch (Throwable th) {
                    throw new ExecutionException(th);
                }
            }
        };
    }

    /* JADX INFO: loaded from: classes3.dex */
    class ChainingListenableFuture<I, O> extends AbstractFuture<O> implements Runnable {
        private AsyncFunction<? super I, ? extends O> function;
        private ListenableFuture<? extends I> inputFuture;
        private final CountDownLatch outputCreated;
        private volatile ListenableFuture<? extends O> outputFuture;

        private ChainingListenableFuture(AsyncFunction<? super I, ? extends O> asyncFunction, ListenableFuture<? extends I> listenableFuture) {
            this.outputCreated = new CountDownLatch(1);
            this.function = (AsyncFunction) Preconditions.checkNotNull(asyncFunction);
            this.inputFuture = (ListenableFuture) Preconditions.checkNotNull(listenableFuture);
        }

        @Override // com.google.common.util.concurrent.AbstractFuture, java.util.concurrent.Future
        public boolean cancel(boolean z) {
            if (!super.cancel(z)) {
                return false;
            }
            cancel(this.inputFuture, z);
            cancel(this.outputFuture, z);
            return true;
        }

        private void cancel(@Nullable Future<?> future, boolean z) {
            if (future != null) {
                future.cancel(z);
            }
        }

        /* JADX WARN: Type inference failed for: r3v0, types: [com.google.common.util.concurrent.AsyncFunction<? super I, ? extends O>, com.google.common.util.concurrent.ListenableFuture<? extends I>] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0071 -> B:27:0x0031). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x007f -> B:27:0x0031). Please report as a decompilation issue!!! */
        @Override // java.lang.Runnable
        public void run() {
            ?? r3 = (AsyncFunction<? super I, ? extends O>) null;
            try {
                try {
                    final ListenableFuture<? extends O> listenableFuture = (ListenableFuture) Preconditions.checkNotNull(this.function.apply(Uninterruptibles.getUninterruptibly(this.inputFuture)), "AsyncFunction may not return null.");
                    this.outputFuture = listenableFuture;
                    if (isCancelled()) {
                        listenableFuture.cancel(wasInterrupted());
                        this.outputFuture = null;
                    } else {
                        listenableFuture.addListener(new Runnable() { // from class: com.google.common.util.concurrent.Futures.ChainingListenableFuture.1
                            @Override // java.lang.Runnable
                            public void run() {
                                try {
                                    ChainingListenableFuture.this.set(Uninterruptibles.getUninterruptibly(listenableFuture));
                                } catch (CancellationException e2) {
                                    ChainingListenableFuture.this.cancel(false);
                                } catch (ExecutionException e3) {
                                    ChainingListenableFuture.this.setException(e3.getCause());
                                } finally {
                                    ChainingListenableFuture.this.outputFuture = null;
                                }
                            }
                        }, MoreExecutors.sameThreadExecutor());
                        this.function = null;
                        this.inputFuture = null;
                        this.outputCreated.countDown();
                    }
                } catch (UndeclaredThrowableException e2) {
                    setException(e2.getCause());
                } catch (Throwable th) {
                    setException(th);
                } finally {
                    this.function = null;
                    this.inputFuture = null;
                    this.outputCreated.countDown();
                }
            } catch (CancellationException e3) {
                cancel(false);
                this.function = null;
                this.inputFuture = null;
                this.outputCreated.countDown();
            } catch (ExecutionException e4) {
                setException(e4.getCause());
                this.function = null;
                this.inputFuture = null;
                this.outputCreated.countDown();
            }
        }
    }

    public static <V> ListenableFuture<V> dereference(ListenableFuture<? extends ListenableFuture<? extends V>> listenableFuture) {
        return transform(listenableFuture, DEREFERENCER);
    }

    @Beta
    public static <V> ListenableFuture<List<V>> allAsList(ListenableFuture<? extends V>... listenableFutureArr) {
        return listFuture(ImmutableList.copyOf(listenableFutureArr), true, MoreExecutors.sameThreadExecutor());
    }

    @Beta
    public static <V> ListenableFuture<List<V>> allAsList(Iterable<? extends ListenableFuture<? extends V>> iterable) {
        return listFuture(ImmutableList.copyOf(iterable), true, MoreExecutors.sameThreadExecutor());
    }

    public static <V> ListenableFuture<V> nonCancellationPropagating(ListenableFuture<V> listenableFuture) {
        return new NonCancellationPropagatingFuture(listenableFuture);
    }

    /* JADX INFO: loaded from: classes3.dex */
    class NonCancellationPropagatingFuture<V> extends AbstractFuture<V> {
        NonCancellationPropagatingFuture(final ListenableFuture<V> listenableFuture) {
            Preconditions.checkNotNull(listenableFuture);
            Futures.addCallback(listenableFuture, new FutureCallback<V>() { // from class: com.google.common.util.concurrent.Futures.NonCancellationPropagatingFuture.1
                @Override // com.google.common.util.concurrent.FutureCallback
                public void onSuccess(V v) {
                    NonCancellationPropagatingFuture.this.set(v);
                }

                @Override // com.google.common.util.concurrent.FutureCallback
                public void onFailure(Throwable th) {
                    if (listenableFuture.isCancelled()) {
                        NonCancellationPropagatingFuture.this.cancel(false);
                    } else {
                        NonCancellationPropagatingFuture.this.setException(th);
                    }
                }
            }, MoreExecutors.sameThreadExecutor());
        }
    }

    @Beta
    public static <V> ListenableFuture<List<V>> successfulAsList(ListenableFuture<? extends V>... listenableFutureArr) {
        return listFuture(ImmutableList.copyOf(listenableFutureArr), false, MoreExecutors.sameThreadExecutor());
    }

    @Beta
    public static <V> ListenableFuture<List<V>> successfulAsList(Iterable<? extends ListenableFuture<? extends V>> iterable) {
        return listFuture(ImmutableList.copyOf(iterable), false, MoreExecutors.sameThreadExecutor());
    }

    @Beta
    public static <T> ImmutableList<ListenableFuture<T>> inCompletionOrder(Iterable<? extends ListenableFuture<? extends T>> iterable) {
        final ConcurrentLinkedQueue concurrentLinkedQueueNewConcurrentLinkedQueue = Queues.newConcurrentLinkedQueue();
        ImmutableList.Builder builder = ImmutableList.builder();
        SerializingExecutor serializingExecutor = new SerializingExecutor(MoreExecutors.sameThreadExecutor());
        for (final ListenableFuture<? extends T> listenableFuture : iterable) {
            AsyncSettableFuture asyncSettableFutureCreate = AsyncSettableFuture.create();
            concurrentLinkedQueueNewConcurrentLinkedQueue.add(asyncSettableFutureCreate);
            listenableFuture.addListener(new Runnable() { // from class: com.google.common.util.concurrent.Futures.4
                @Override // java.lang.Runnable
                public void run() {
                    ((AsyncSettableFuture) concurrentLinkedQueueNewConcurrentLinkedQueue.remove()).setFuture(listenableFuture);
                }
            }, serializingExecutor);
            builder.add(asyncSettableFutureCreate);
        }
        return builder.build();
    }

    public static <V> void addCallback(ListenableFuture<V> listenableFuture, FutureCallback<? super V> futureCallback) {
        addCallback(listenableFuture, futureCallback, MoreExecutors.sameThreadExecutor());
    }

    public static <V> void addCallback(final ListenableFuture<V> listenableFuture, final FutureCallback<? super V> futureCallback, Executor executor) {
        Preconditions.checkNotNull(futureCallback);
        listenableFuture.addListener(new Runnable() { // from class: com.google.common.util.concurrent.Futures.5
            @Override // java.lang.Runnable
            public void run() {
                try {
                    futureCallback.onSuccess(Uninterruptibles.getUninterruptibly(listenableFuture));
                } catch (Error e2) {
                    futureCallback.onFailure(e2);
                } catch (RuntimeException e3) {
                    futureCallback.onFailure(e3);
                } catch (ExecutionException e4) {
                    futureCallback.onFailure(e4.getCause());
                }
            }
        }, executor);
    }

    public static <V, X extends Exception> V get(Future<V> future, Class<X> cls) throws Exception {
        Preconditions.checkNotNull(future);
        Preconditions.checkArgument(!RuntimeException.class.isAssignableFrom(cls), "Futures.get exception type (%s) must not be a RuntimeException", cls);
        try {
            return future.get();
        } catch (InterruptedException e2) {
            Thread.currentThread().interrupt();
            throw newWithCause(cls, e2);
        } catch (ExecutionException e3) {
            wrapAndThrowExceptionOrError(e3.getCause(), cls);
            throw new AssertionError();
        }
    }

    public static <V, X extends Exception> V get(Future<V> future, long j, TimeUnit timeUnit, Class<X> cls) throws Exception {
        Preconditions.checkNotNull(future);
        Preconditions.checkNotNull(timeUnit);
        Preconditions.checkArgument(!RuntimeException.class.isAssignableFrom(cls), "Futures.get exception type (%s) must not be a RuntimeException", cls);
        try {
            return future.get(j, timeUnit);
        } catch (InterruptedException e2) {
            Thread.currentThread().interrupt();
            throw newWithCause(cls, e2);
        } catch (ExecutionException e3) {
            wrapAndThrowExceptionOrError(e3.getCause(), cls);
            throw new AssertionError();
        } catch (TimeoutException e4) {
            throw newWithCause(cls, e4);
        }
    }

    private static <X extends Exception> void wrapAndThrowExceptionOrError(Throwable th, Class<X> cls) throws Exception {
        if (th instanceof Error) {
            throw new ExecutionError((Error) th);
        }
        if (th instanceof RuntimeException) {
            throw new UncheckedExecutionException(th);
        }
        throw newWithCause(cls, th);
    }

    public static <V> V getUnchecked(Future<V> future) {
        Preconditions.checkNotNull(future);
        try {
            return (V) Uninterruptibles.getUninterruptibly(future);
        } catch (ExecutionException e2) {
            wrapAndThrowUnchecked(e2.getCause());
            throw new AssertionError();
        }
    }

    private static void wrapAndThrowUnchecked(Throwable th) {
        if (th instanceof Error) {
            throw new ExecutionError((Error) th);
        }
        throw new UncheckedExecutionException(th);
    }

    private static <X extends Exception> X newWithCause(Class<X> cls, Throwable th) {
        Iterator it = preferringStrings(Arrays.asList(cls.getConstructors())).iterator();
        while (it.hasNext()) {
            X x = (X) newFromConstructor((Constructor) it.next(), th);
            if (x != null) {
                if (x.getCause() == null) {
                    x.initCause(th);
                }
                return x;
            }
        }
        throw new IllegalArgumentException("No appropriate constructor for exception of type " + cls + " in response to chained exception", th);
    }

    private static <X extends Exception> List<Constructor<X>> preferringStrings(List<Constructor<X>> list) {
        return (List<Constructor<X>>) WITH_STRING_PARAM_FIRST.sortedCopy(list);
    }

    @Nullable
    private static <X> X newFromConstructor(Constructor<X> constructor, Throwable th) {
        Class<?>[] parameterTypes = constructor.getParameterTypes();
        Object[] objArr = new Object[parameterTypes.length];
        for (int i = 0; i < parameterTypes.length; i++) {
            Class<?> cls = parameterTypes[i];
            if (cls.equals(String.class)) {
                objArr[i] = th.toString();
            } else {
                if (!cls.equals(Throwable.class)) {
                    return null;
                }
                objArr[i] = th;
            }
        }
        try {
            return constructor.newInstance(objArr);
        } catch (IllegalAccessException e2) {
            return null;
        } catch (IllegalArgumentException e3) {
            return null;
        } catch (InstantiationException e4) {
            return null;
        } catch (InvocationTargetException e5) {
            return null;
        }
    }

    /* JADX INFO: loaded from: classes3.dex */
    class CombinedFuture<V, C> extends AbstractFuture<C> {
        private static final Logger logger = Logger.getLogger(CombinedFuture.class.getName());
        final boolean allMustSucceed;
        FutureCombiner<V, C> combiner;
        ImmutableCollection<? extends ListenableFuture<? extends V>> futures;
        final AtomicInteger remaining;
        Set<Throwable> seenExceptions;
        final Object seenExceptionsLock = new Object();
        List<Optional<V>> values;

        CombinedFuture(ImmutableCollection<? extends ListenableFuture<? extends V>> immutableCollection, boolean z, Executor executor, FutureCombiner<V, C> futureCombiner) {
            this.futures = immutableCollection;
            this.allMustSucceed = z;
            this.remaining = new AtomicInteger(immutableCollection.size());
            this.combiner = futureCombiner;
            this.values = Lists.newArrayListWithCapacity(immutableCollection.size());
            init(executor);
        }

        protected void init(Executor executor) {
            final int i = 0;
            addListener(new Runnable() { // from class: com.google.common.util.concurrent.Futures.CombinedFuture.1
                @Override // java.lang.Runnable
                public void run() {
                    if (CombinedFuture.this.isCancelled()) {
                        Iterator it = CombinedFuture.this.futures.iterator();
                        while (it.hasNext()) {
                            ((ListenableFuture) it.next()).cancel(CombinedFuture.this.wasInterrupted());
                        }
                    }
                    CombinedFuture.this.futures = null;
                    CombinedFuture.this.values = null;
                    CombinedFuture.this.combiner = null;
                }
            }, MoreExecutors.sameThreadExecutor());
            if (this.futures.isEmpty()) {
                set(this.combiner.combine(ImmutableList.of()));
                return;
            }
            for (int i2 = 0; i2 < this.futures.size(); i2++) {
                this.values.add(null);
            }
            Iterator it = this.futures.iterator();
            while (it.hasNext()) {
                final ListenableFuture listenableFuture = (ListenableFuture) it.next();
                listenableFuture.addListener(new Runnable() { // from class: com.google.common.util.concurrent.Futures.CombinedFuture.2
                    @Override // java.lang.Runnable
                    public void run() {
                        CombinedFuture.this.setOneValue(i, listenableFuture);
                    }
                }, executor);
                i++;
            }
        }

        private void setExceptionAndMaybeLog(Throwable th) {
            boolean exception = false;
            boolean zAdd = true;
            if (this.allMustSucceed) {
                exception = super.setException(th);
                synchronized (this.seenExceptionsLock) {
                    if (this.seenExceptions == null) {
                        this.seenExceptions = Sets.newHashSet();
                    }
                    zAdd = this.seenExceptions.add(th);
                }
            }
            if ((th instanceof Error) || (this.allMustSucceed && !exception && zAdd)) {
                logger.log(Level.SEVERE, "input future failed.", th);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setOneValue(int i, Future<? extends V> future) {
            List<Optional<V>> list = this.values;
            if (isDone() || list == null) {
                Preconditions.checkState(this.allMustSucceed || isCancelled(), "Future was done before all dependencies completed");
            }
            try {
                try {
                    Preconditions.checkState(future.isDone(), "Tried to set value from future which is not done");
                    Object uninterruptibly = Uninterruptibles.getUninterruptibly(future);
                    if (list != null) {
                        list.set(i, Optional.fromNullable(uninterruptibly));
                    }
                    int iDecrementAndGet = this.remaining.decrementAndGet();
                    Preconditions.checkState(iDecrementAndGet >= 0, "Less than 0 remaining futures");
                    if (iDecrementAndGet == 0) {
                        FutureCombiner<V, C> futureCombiner = this.combiner;
                        if (futureCombiner == null || list == null) {
                            Preconditions.checkState(isDone());
                        } else {
                            set(futureCombiner.combine(list));
                        }
                    }
                } catch (CancellationException e2) {
                    if (this.allMustSucceed) {
                        cancel(false);
                    }
                    int iDecrementAndGet2 = this.remaining.decrementAndGet();
                    Preconditions.checkState(iDecrementAndGet2 >= 0, "Less than 0 remaining futures");
                    if (iDecrementAndGet2 == 0) {
                        FutureCombiner<V, C> futureCombiner2 = this.combiner;
                        if (futureCombiner2 == null || list == null) {
                            Preconditions.checkState(isDone());
                        } else {
                            set(futureCombiner2.combine(list));
                        }
                    }
                } catch (ExecutionException e3) {
                    setExceptionAndMaybeLog(e3.getCause());
                    int iDecrementAndGet3 = this.remaining.decrementAndGet();
                    Preconditions.checkState(iDecrementAndGet3 >= 0, "Less than 0 remaining futures");
                    if (iDecrementAndGet3 == 0) {
                        FutureCombiner<V, C> futureCombiner3 = this.combiner;
                        if (futureCombiner3 == null || list == null) {
                            Preconditions.checkState(isDone());
                        } else {
                            set(futureCombiner3.combine(list));
                        }
                    }
                } catch (Throwable th) {
                    setExceptionAndMaybeLog(th);
                    int iDecrementAndGet4 = this.remaining.decrementAndGet();
                    Preconditions.checkState(iDecrementAndGet4 >= 0, "Less than 0 remaining futures");
                    if (iDecrementAndGet4 == 0) {
                        FutureCombiner<V, C> futureCombiner4 = this.combiner;
                        if (futureCombiner4 == null || list == null) {
                            Preconditions.checkState(isDone());
                        } else {
                            set(futureCombiner4.combine(list));
                        }
                    }
                }
            } catch (Throwable th2) {
                int iDecrementAndGet5 = this.remaining.decrementAndGet();
                Preconditions.checkState(iDecrementAndGet5 >= 0, "Less than 0 remaining futures");
                if (iDecrementAndGet5 == 0) {
                    FutureCombiner<V, C> futureCombiner5 = this.combiner;
                    if (futureCombiner5 == null || list == null) {
                        Preconditions.checkState(isDone());
                    } else {
                        set(futureCombiner5.combine(list));
                    }
                }
                throw th2;
            }
        }
    }

    private static <V> ListenableFuture<List<V>> listFuture(ImmutableList<ListenableFuture<? extends V>> immutableList, boolean z, Executor executor) {
        return new CombinedFuture(immutableList, z, executor, new FutureCombiner<V, List<V>>() { // from class: com.google.common.util.concurrent.Futures.7
            @Override // com.google.common.util.concurrent.Futures.FutureCombiner
            public List<V> combine(List<Optional<V>> list) {
                ArrayList arrayListNewArrayList = Lists.newArrayList();
                Iterator<Optional<V>> it = list.iterator();
                while (it.hasNext()) {
                    Optional<V> next = it.next();
                    arrayListNewArrayList.add(next != null ? next.orNull() : null);
                }
                return Collections.unmodifiableList(arrayListNewArrayList);
            }
        });
    }

    /* JADX INFO: loaded from: classes3.dex */
    class MappingCheckedFuture<V, X extends Exception> extends AbstractCheckedFuture<V, X> {
        final Function<Exception, X> mapper;

        MappingCheckedFuture(ListenableFuture<V> listenableFuture, Function<Exception, X> function) {
            super(listenableFuture);
            this.mapper = (Function) Preconditions.checkNotNull(function);
        }

        @Override // com.google.common.util.concurrent.AbstractCheckedFuture
        protected X mapException(Exception exc) {
            return this.mapper.apply(exc);
        }
    }
}
