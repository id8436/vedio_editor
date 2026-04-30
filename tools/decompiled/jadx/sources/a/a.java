package a;

import android.annotation.SuppressLint;
import android.os.Build;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: AndroidExecutors.java */
/* JADX INFO: loaded from: classes.dex */
final class a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Executor f4d = new c();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final a f2c = new a();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int f3e = Runtime.getRuntime().availableProcessors();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final int f0a = f3e + 1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final int f1b = (f3e * 2) + 1;

    private a() {
    }

    public static ExecutorService a() {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(f0a, f1b, 1L, TimeUnit.SECONDS, new LinkedBlockingQueue());
        a(threadPoolExecutor, true);
        return threadPoolExecutor;
    }

    @SuppressLint({"NewApi"})
    public static void a(ThreadPoolExecutor threadPoolExecutor, boolean z) {
        if (Build.VERSION.SDK_INT >= 9) {
            threadPoolExecutor.allowCoreThreadTimeOut(z);
        }
    }

    public static Executor b() {
        return f2c.f4d;
    }
}
