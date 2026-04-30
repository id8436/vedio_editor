package com.adobe.premiereclip.util;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import android.util.Log;
import java.util.ArrayDeque;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes2.dex */
public abstract class PriorityAsyncTask<Params, Progress, Result> {
    private static final int KEEP_ALIVE = 1;
    private static final String LOG_TAG = "AsyncTask";
    private static final int MESSAGE_POST_PROGRESS = 2;
    private static final int MESSAGE_POST_RESULT = 1;
    private static InternalHandler sHandler;
    private final FutureTask<Result> mFuture;
    private static final int CPU_COUNT = Runtime.getRuntime().availableProcessors();
    private static final int CORE_POOL_SIZE = CPU_COUNT + 1;
    private static final int MAXIMUM_POOL_SIZE = (CPU_COUNT * 2) + 1;
    private static final ThreadFactory sThreadFactory = new ThreadFactory() { // from class: com.adobe.premiereclip.util.PriorityAsyncTask.1
        private final AtomicInteger mCount = new AtomicInteger(1);

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, "AsyncTask #" + this.mCount.getAndIncrement());
        }
    };
    private static final BlockingQueue<Runnable> sPoolWorkQueue = new LinkedBlockingQueue(128);
    public static final Executor THREAD_POOL_EXECUTOR = new ThreadPoolExecutor(CORE_POOL_SIZE, MAXIMUM_POOL_SIZE, 1, TimeUnit.SECONDS, sPoolWorkQueue, sThreadFactory);
    public static final Executor SERIAL_EXECUTOR = new SerialExecutor();
    private static volatile Executor sDefaultExecutor = SERIAL_EXECUTOR;
    private volatile Status mStatus = Status.PENDING;
    private final AtomicBoolean mCancelled = new AtomicBoolean();
    private final AtomicBoolean mTaskInvoked = new AtomicBoolean();
    private final WorkerRunnable<Params, Result> mWorker = new WorkerRunnable<Params, Result>() { // from class: com.adobe.premiereclip.util.PriorityAsyncTask.2
        @Override // java.util.concurrent.Callable
        public Result call() throws Exception {
            PriorityAsyncTask.this.mTaskInvoked.set(true);
            Process.setThreadPriority(10);
            return (Result) PriorityAsyncTask.this.postResult(PriorityAsyncTask.this.doInBackground(this.mParams));
        }
    };

    public enum Status {
        PENDING,
        RUNNING,
        FINISHED
    }

    protected abstract Result doInBackground(Params... paramsArr);

    class SerialExecutor implements Executor {
        Runnable mActive;
        final ArrayDeque<Runnable> mTasks;

        private SerialExecutor() {
            this.mTasks = new ArrayDeque<>();
        }

        @Override // java.util.concurrent.Executor
        public synchronized void execute(final Runnable runnable) {
            this.mTasks.offer(new Runnable() { // from class: com.adobe.premiereclip.util.PriorityAsyncTask.SerialExecutor.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        runnable.run();
                    } finally {
                        SerialExecutor.this.scheduleNext();
                    }
                }
            });
            if (this.mActive == null) {
                scheduleNext();
            }
        }

        protected synchronized void scheduleNext() {
            Runnable runnablePoll = this.mTasks.poll();
            this.mActive = runnablePoll;
            if (runnablePoll != null) {
                PriorityAsyncTask.THREAD_POOL_EXECUTOR.execute(this.mActive);
            }
        }
    }

    private static Handler getHandler() {
        InternalHandler internalHandler;
        synchronized (PriorityAsyncTask.class) {
            if (sHandler == null) {
                sHandler = new InternalHandler();
            }
            internalHandler = sHandler;
        }
        return internalHandler;
    }

    public static void setDefaultExecutor(Executor executor) {
        sDefaultExecutor = executor;
    }

    public PriorityAsyncTask(long j) {
        this.mFuture = new PriorityFutureTask<Result>(this.mWorker, j) { // from class: com.adobe.premiereclip.util.PriorityAsyncTask.3
            @Override // java.util.concurrent.FutureTask
            protected void done() {
                try {
                    PriorityAsyncTask.this.postResultIfNotInvoked(get());
                } catch (InterruptedException e2) {
                    Log.w(PriorityAsyncTask.LOG_TAG, e2);
                } catch (CancellationException e3) {
                    PriorityAsyncTask.this.postResultIfNotInvoked(null);
                } catch (ExecutionException e4) {
                    throw new RuntimeException("An error occured while executing doInBackground()", e4.getCause());
                }
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void postResultIfNotInvoked(Result result) {
        if (!this.mTaskInvoked.get()) {
            postResult(result);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Result postResult(Result result) {
        getHandler().obtainMessage(1, new AsyncTaskResult(this, result)).sendToTarget();
        return result;
    }

    public final Status getStatus() {
        return this.mStatus;
    }

    protected void onPreExecute() {
    }

    protected void onPostExecute(Result result) {
    }

    protected void onProgressUpdate(Progress... progressArr) {
    }

    protected void onCancelled(Result result) {
        onCancelled();
    }

    protected void onCancelled() {
    }

    public final boolean isCancelled() {
        return this.mCancelled.get();
    }

    public final boolean cancel(boolean z) {
        this.mCancelled.set(true);
        return this.mFuture.cancel(z);
    }

    public final Result get() throws ExecutionException, InterruptedException {
        return this.mFuture.get();
    }

    public final Result get(long j, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        return this.mFuture.get(j, timeUnit);
    }

    public final PriorityAsyncTask<Params, Progress, Result> execute(Params... paramsArr) {
        return executeOnExecutor(sDefaultExecutor, paramsArr);
    }

    public final PriorityAsyncTask<Params, Progress, Result> executeOnExecutor(Executor executor, Params... paramsArr) {
        if (this.mStatus != Status.PENDING) {
            switch (this.mStatus) {
                case RUNNING:
                    throw new IllegalStateException("Cannot execute task: the task is already running.");
                case FINISHED:
                    throw new IllegalStateException("Cannot execute task: the task has already been executed (a task can be executed only once)");
            }
        }
        this.mStatus = Status.RUNNING;
        onPreExecute();
        this.mWorker.mParams = paramsArr;
        executor.execute(this.mFuture);
        return this;
    }

    public static void execute(Runnable runnable) {
        sDefaultExecutor.execute(runnable);
    }

    protected final void publishProgress(Progress... progressArr) {
        if (!isCancelled()) {
            getHandler().obtainMessage(2, new AsyncTaskResult(this, progressArr)).sendToTarget();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void finish(Result result) {
        if (isCancelled()) {
            onCancelled(result);
        } else {
            onPostExecute(result);
        }
        this.mStatus = Status.FINISHED;
    }

    class InternalHandler extends Handler {
        public InternalHandler() {
            super(Looper.getMainLooper());
        }

        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            AsyncTaskResult asyncTaskResult = (AsyncTaskResult) message.obj;
            switch (message.what) {
                case 1:
                    asyncTaskResult.mTask.finish(asyncTaskResult.mData[0]);
                    break;
                case 2:
                    asyncTaskResult.mTask.onProgressUpdate(asyncTaskResult.mData);
                    break;
            }
        }
    }

    abstract class WorkerRunnable<Params, Result> implements Callable<Result> {
        Params[] mParams;

        private WorkerRunnable() {
        }
    }

    class AsyncTaskResult<Data> {
        final Data[] mData;
        final PriorityAsyncTask mTask;

        AsyncTaskResult(PriorityAsyncTask priorityAsyncTask, Data... dataArr) {
            this.mTask = priorityAsyncTask;
            this.mData = dataArr;
        }
    }
}
