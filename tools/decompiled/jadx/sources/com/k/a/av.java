package com.k.a;

import android.net.NetworkInfo;
import java.util.concurrent.Future;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: PicassoExecutorService.java */
/* JADX INFO: loaded from: classes3.dex */
class av extends ThreadPoolExecutor {
    av() {
        super(3, 3, 0L, TimeUnit.MILLISECONDS, new PriorityBlockingQueue(), new bs());
    }

    void a(NetworkInfo networkInfo) {
        if (networkInfo == null || !networkInfo.isConnectedOrConnecting()) {
            a(3);
        }
        switch (networkInfo.getType()) {
            case 0:
                switch (networkInfo.getSubtype()) {
                    case 1:
                    case 2:
                        a(1);
                        break;
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                    case 12:
                        a(2);
                        break;
                    case 7:
                    case 8:
                    case 9:
                    case 10:
                    case 11:
                    default:
                        a(3);
                        break;
                    case 13:
                    case 14:
                    case 15:
                        a(3);
                        break;
                }
                break;
            case 1:
            case 6:
            case 9:
                a(4);
                break;
            default:
                a(3);
                break;
        }
    }

    private void a(int i) {
        setCorePoolSize(i);
        setMaximumPoolSize(i);
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
    public Future<?> submit(Runnable runnable) {
        aw awVar = new aw((d) runnable);
        execute(awVar);
        return awVar;
    }
}
