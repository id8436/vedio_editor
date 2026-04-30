package com.facebook.d.b;

import android.os.Handler;
import android.os.Looper;

/* JADX INFO: compiled from: UiThreadImmediateExecutorService.java */
/* JADX INFO: loaded from: classes2.dex */
public class f extends c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static f f1932a = null;

    private f() {
        super(new Handler(Looper.getMainLooper()));
    }

    public static f b() {
        if (f1932a == null) {
            f1932a = new f();
        }
        return f1932a;
    }

    @Override // com.facebook.d.b.c, java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        if (a()) {
            runnable.run();
        } else {
            super.execute(runnable);
        }
    }
}
