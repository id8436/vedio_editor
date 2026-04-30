package com.i.a.b;

import android.content.Context;
import java.io.File;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: DefaultConfigurationFactory.java */
/* JADX INFO: loaded from: classes3.dex */
public class a {
    public static Executor a(int i, int i2, com.i.a.b.a.h hVar) {
        return new ThreadPoolExecutor(i, i, 0L, TimeUnit.MILLISECONDS, (BlockingQueue<Runnable>) (hVar == com.i.a.b.a.h.LIFO ? new com.i.a.b.a.a.c() : new LinkedBlockingQueue()), a(i2, "uil-pool-"));
    }

    public static Executor a() {
        return Executors.newCachedThreadPool(a(5, "uil-pool-d-"));
    }

    public static com.i.a.a.a.b.a b() {
        return new com.i.a.a.a.b.b();
    }

    public static com.i.a.a.a.b a(Context context, com.i.a.a.a.b.a aVar, long j, int i) {
        File fileB = b(context);
        if (j > 0 || i > 0) {
            com.i.a.a.a.a.a.h hVar = new com.i.a.a.a.a.a.h(com.i.a.c.h.b(context), aVar, j, i);
            hVar.a(fileB);
            return hVar;
        }
        return new com.i.a.a.a.a.b(com.i.a.c.h.a(context), fileB, aVar);
    }

    private static File b(Context context) {
        File fileA = com.i.a.c.h.a(context, false);
        File file = new File(fileA, "uil-images");
        return (file.exists() || file.mkdir()) ? file : fileA;
    }

    public static com.i.a.a.b.a a(int i) {
        if (i == 0) {
            i = (int) (Runtime.getRuntime().maxMemory() / 8);
        }
        return new com.i.a.a.b.a.b(i);
    }

    public static com.i.a.b.d.c a(Context context) {
        return new com.i.a.b.d.a(context);
    }

    public static com.i.a.b.b.d a(boolean z) {
        return new com.i.a.b.b.a(z);
    }

    public static com.i.a.b.c.a c() {
        return new com.i.a.b.c.b();
    }

    private static ThreadFactory a(int i, String str) {
        return new b(i, str);
    }
}
