package com.twitter.sdk.android.core.internal.scribe;

import android.content.Context;
import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: EnabledEventsStrategy.java */
/* JADX INFO: loaded from: classes3.dex */
public abstract class c<T> implements q<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final Context f4026a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected final h<T> f4027b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final ScheduledExecutorService f4028c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    volatile int f4030e = -1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final AtomicReference<ScheduledFuture<?>> f4029d = new AtomicReference<>();

    public c(Context context, ScheduledExecutorService scheduledExecutorService, h<T> hVar) {
        this.f4026a = context;
        this.f4028c = scheduledExecutorService;
        this.f4027b = hVar;
    }

    public void e() {
        if (this.f4030e != -1) {
            a(this.f4030e, this.f4030e);
        }
    }

    @Override // com.twitter.sdk.android.core.internal.scribe.n
    public void a() {
        f();
    }

    @Override // com.twitter.sdk.android.core.internal.scribe.r
    public void b() {
        if (this.f4029d.get() != null) {
            com.twitter.sdk.android.core.internal.n.a(this.f4026a, "Cancelling time-based rollover because no events are currently being generated.");
            this.f4029d.get().cancel(false);
            this.f4029d.set(null);
        }
    }

    @Override // com.twitter.sdk.android.core.internal.scribe.n
    public void a(T t) {
        com.twitter.sdk.android.core.internal.n.a(this.f4026a, t.toString());
        try {
            this.f4027b.a(t);
        } catch (IOException e2) {
            com.twitter.sdk.android.core.internal.n.a(this.f4026a, "Failed to write event.", e2);
        }
        e();
    }

    @Override // com.twitter.sdk.android.core.internal.scribe.r
    public boolean c() {
        try {
            return this.f4027b.a();
        } catch (IOException e2) {
            com.twitter.sdk.android.core.internal.n.a(this.f4026a, "Failed to roll file over.", e2);
            return false;
        }
    }

    protected void a(int i) {
        this.f4030e = i;
        a(0L, this.f4030e);
    }

    void a(long j, long j2) {
        if (this.f4029d.get() == null) {
            am amVar = new am(this.f4026a, this);
            com.twitter.sdk.android.core.internal.n.a(this.f4026a, "Scheduling time based file roll over every " + j2 + " seconds");
            try {
                this.f4029d.set(this.f4028c.scheduleAtFixedRate(amVar, j, j2, TimeUnit.SECONDS));
            } catch (RejectedExecutionException e2) {
                com.twitter.sdk.android.core.internal.n.a(this.f4026a, "Failed to schedule time based file roll over", e2);
            }
        }
    }

    void f() {
        int size;
        Exception e2;
        s sVarD = d();
        if (sVarD == null) {
            com.twitter.sdk.android.core.internal.n.a(this.f4026a, "skipping files send because we don't yet know the target endpoint");
            return;
        }
        com.twitter.sdk.android.core.internal.n.a(this.f4026a, "Sending all files");
        List<File> listE = this.f4027b.e();
        int i = 0;
        while (listE.size() > 0) {
            try {
                com.twitter.sdk.android.core.internal.n.a(this.f4026a, String.format(Locale.US, "attempt to send batch of %d files", Integer.valueOf(listE.size())));
                boolean zA = sVarD.a(listE);
                if (zA) {
                    size = listE.size() + i;
                    try {
                        this.f4027b.a(listE);
                        i = size;
                    } catch (Exception e3) {
                        e2 = e3;
                        com.twitter.sdk.android.core.internal.n.a(this.f4026a, "Failed to send batch of analytics files to server: " + e2.getMessage(), e2);
                        i = size;
                    }
                }
                if (!zA) {
                    break;
                } else {
                    listE = this.f4027b.e();
                }
            } catch (Exception e4) {
                size = i;
                e2 = e4;
            }
        }
        if (i == 0) {
            this.f4027b.f();
        }
    }
}
