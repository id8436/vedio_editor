package com.a.a.a;

import android.support.annotation.Nullable;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: JobManager.java */
/* JADX INFO: loaded from: classes.dex */
public class v {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final long f625a = TimeUnit.MILLISECONDS.toNanos(10000);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final x f626b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.a.a.a.g.g f627c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.a.a.a.g.c f628d = new com.a.a.a.g.c();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Thread f629e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Nullable
    private com.a.a.a.j.a f630f;

    public v(com.a.a.a.c.a aVar) {
        this.f627c = new com.a.a.a.g.g(aVar.m(), this.f628d);
        this.f626b = new x(aVar, this.f627c, this.f628d);
        this.f629e = new Thread(this.f626b, "job-manager");
        if (aVar.o() != null) {
            this.f630f = aVar.o();
            aVar.o().a(aVar.a(), a());
        }
        this.f629e.start();
    }

    private com.a.a.a.j.b a() {
        return new w(this);
    }

    public void a(r rVar) {
        com.a.a.a.g.a.a aVar = (com.a.a.a.g.a.a) this.f628d.a(com.a.a.a.g.a.a.class);
        aVar.a(rVar);
        this.f627c.a(aVar);
    }
}
