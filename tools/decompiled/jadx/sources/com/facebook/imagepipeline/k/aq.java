package com.facebook.imagepipeline.k;

import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: compiled from: JobScheduler.java */
/* JADX INFO: loaded from: classes2.dex */
class aq {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static ScheduledExecutorService f2628a;

    static ScheduledExecutorService a() {
        if (f2628a == null) {
            f2628a = Executors.newSingleThreadScheduledExecutor();
        }
        return f2628a;
    }
}
