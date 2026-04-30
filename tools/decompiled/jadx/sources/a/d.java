package a;

import java.util.Locale;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: compiled from: BoltsExecutors.java */
/* JADX INFO: loaded from: classes.dex */
final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final d f5a = new d();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ExecutorService f6b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ScheduledExecutorService f7c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Executor f8d;

    private static boolean c() {
        String property = System.getProperty("java.runtime.name");
        if (property == null) {
            return false;
        }
        return property.toLowerCase(Locale.US).contains(c.a.a.a.a.b.a.ANDROID_CLIENT_TYPE);
    }

    private d() {
        this.f6b = !c() ? Executors.newCachedThreadPool() : a.a();
        this.f7c = Executors.newSingleThreadScheduledExecutor();
        this.f8d = new f();
    }

    public static ExecutorService a() {
        return f5a.f6b;
    }

    static Executor b() {
        return f5a.f8d;
    }
}
