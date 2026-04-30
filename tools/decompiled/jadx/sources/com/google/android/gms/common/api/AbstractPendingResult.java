package com.google.android.gms.common.api;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.util.Log;
import android.util.Pair;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.internal.ICancelToken;
import com.google.android.gms.common.internal.zzv;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractPendingResult<R extends Result> implements PendingResult<R> {
    protected final CallbackHandler<R> mHandler;
    private ResultCallback<R> zzPf;
    private volatile R zzPg;
    private volatile boolean zzPh;
    private boolean zzPi;
    private boolean zzPj;
    private ICancelToken zzPk;
    private final Object zzPd = new Object();
    private final CountDownLatch zzns = new CountDownLatch(1);
    private final ArrayList<PendingResult.BatchCallback> zzPe = new ArrayList<>();

    public class CallbackHandler<R extends Result> extends Handler {
        public static final int CALLBACK_ON_COMPLETE = 1;
        public static final int CALLBACK_ON_TIMEOUT = 2;

        public CallbackHandler() {
            this(Looper.getMainLooper());
        }

        public CallbackHandler(Looper looper) {
            super(looper);
        }

        protected void deliverResultCallback(ResultCallback<R> resultCallback, R r) {
            try {
                resultCallback.onResult(r);
            } catch (RuntimeException e2) {
                AbstractPendingResult.zzb(r);
                throw e2;
            }
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            switch (message.what) {
                case 1:
                    Pair pair = (Pair) message.obj;
                    deliverResultCallback((ResultCallback) pair.first, (Result) pair.second);
                    break;
                case 2:
                    ((AbstractPendingResult) message.obj).forceFailureUnlessReady(Status.zzQX);
                    break;
                default:
                    Log.wtf("AbstractPendingResult", "Don't know how to handle this message.");
                    break;
            }
        }

        public void removeTimeoutMessages() {
            removeMessages(2);
        }

        public void sendResultCallback(ResultCallback<R> resultCallback, R r) {
            sendMessage(obtainMessage(1, new Pair(resultCallback, r)));
        }

        public void sendTimeoutResultCallback(AbstractPendingResult<R> abstractPendingResult, long j) {
            sendMessageDelayed(obtainMessage(2, abstractPendingResult), j);
        }
    }

    protected AbstractPendingResult(Looper looper) {
        this.mHandler = new CallbackHandler<>(looper);
    }

    protected AbstractPendingResult(CallbackHandler<R> callbackHandler) {
        this.mHandler = callbackHandler;
    }

    private void zza(R r) {
        this.zzPg = r;
        this.zzPk = null;
        this.zzns.countDown();
        Status status = this.zzPg.getStatus();
        if (this.zzPf != null) {
            this.mHandler.removeTimeoutMessages();
            if (!this.zzPi) {
                this.mHandler.sendResultCallback(this.zzPf, zzkB());
            }
        }
        Iterator<PendingResult.BatchCallback> it = this.zzPe.iterator();
        while (it.hasNext()) {
            it.next().zzl(status);
        }
        this.zzPe.clear();
    }

    static void zzb(Result result) {
        if (result instanceof Releasable) {
            try {
                ((Releasable) result).release();
            } catch (RuntimeException e2) {
                Log.w("AbstractPendingResult", "Unable to release " + result, e2);
            }
        }
    }

    private R zzkB() {
        R r;
        synchronized (this.zzPd) {
            zzv.zza(this.zzPh ? false : true, "Result has already been consumed.");
            zzv.zza(isReady(), "Result is not ready.");
            r = this.zzPg;
            this.zzPg = null;
            this.zzPf = null;
            this.zzPh = true;
        }
        onResultConsumed();
        return r;
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public final void addBatchCallback(PendingResult.BatchCallback batchCallback) {
        zzv.zza(!this.zzPh, "Result has already been consumed.");
        synchronized (this.zzPd) {
            if (isReady()) {
                batchCallback.zzl(this.zzPg.getStatus());
            } else {
                this.zzPe.add(batchCallback);
            }
        }
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public final R await() {
        zzv.zza(Looper.myLooper() != Looper.getMainLooper(), "await must not be called on the UI thread");
        zzv.zza(this.zzPh ? false : true, "Result has already been consumed");
        try {
            this.zzns.await();
        } catch (InterruptedException e2) {
            forceFailureUnlessReady(Status.zzQV);
        }
        zzv.zza(isReady(), "Result is not ready.");
        return (R) zzkB();
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public final R await(long j, TimeUnit timeUnit) {
        zzv.zza(j <= 0 || Looper.myLooper() != Looper.getMainLooper(), "await must not be called on the UI thread when time is greater than zero.");
        zzv.zza(this.zzPh ? false : true, "Result has already been consumed.");
        try {
            if (!this.zzns.await(j, timeUnit)) {
                forceFailureUnlessReady(Status.zzQX);
            }
        } catch (InterruptedException e2) {
            forceFailureUnlessReady(Status.zzQV);
        }
        zzv.zza(isReady(), "Result is not ready.");
        return (R) zzkB();
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public void cancel() {
        synchronized (this.zzPd) {
            if (this.zzPi || this.zzPh) {
                return;
            }
            if (this.zzPk != null) {
                try {
                    this.zzPk.cancel();
                } catch (RemoteException e2) {
                }
            }
            zzb(this.zzPg);
            this.zzPf = null;
            this.zzPi = true;
            zza(createFailedResult(Status.zzQY));
        }
    }

    protected abstract R createFailedResult(Status status);

    public final void forceFailureUnlessReady(Status status) {
        synchronized (this.zzPd) {
            if (!isReady()) {
                setResult(createFailedResult(status));
                this.zzPj = true;
            }
        }
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public boolean isCanceled() {
        boolean z;
        synchronized (this.zzPd) {
            z = this.zzPi;
        }
        return z;
    }

    public final boolean isReady() {
        return this.zzns.getCount() == 0;
    }

    protected void onResultConsumed() {
    }

    protected final void setCancelToken(ICancelToken iCancelToken) {
        synchronized (this.zzPd) {
            this.zzPk = iCancelToken;
        }
    }

    public final void setResult(R r) {
        synchronized (this.zzPd) {
            if (this.zzPj || this.zzPi) {
                zzb(r);
                return;
            }
            zzv.zza(!isReady(), "Results have already been set");
            zzv.zza(this.zzPh ? false : true, "Result has already been consumed");
            zza(r);
        }
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public final void setResultCallback(ResultCallback<R> resultCallback) {
        zzv.zza(!this.zzPh, "Result has already been consumed.");
        synchronized (this.zzPd) {
            if (isCanceled()) {
                return;
            }
            if (isReady()) {
                this.mHandler.sendResultCallback(resultCallback, zzkB());
            } else {
                this.zzPf = resultCallback;
            }
        }
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public final void setResultCallback(ResultCallback<R> resultCallback, long j, TimeUnit timeUnit) {
        zzv.zza(!this.zzPh, "Result has already been consumed.");
        zzv.zza(this.mHandler != null, "CallbackHandler has not been set before calling setResultCallback.");
        synchronized (this.zzPd) {
            if (isCanceled()) {
                return;
            }
            if (isReady()) {
                this.mHandler.sendResultCallback(resultCallback, zzkB());
            } else {
                this.zzPf = resultCallback;
                this.mHandler.sendTimeoutResultCallback(this, timeUnit.toMillis(j));
            }
        }
    }
}
