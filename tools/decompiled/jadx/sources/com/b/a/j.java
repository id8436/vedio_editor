package com.b.a;

import android.content.Context;
import android.os.Build;
import java.util.concurrent.ExecutorService;

/* JADX INFO: compiled from: GlideBuilder.java */
/* JADX INFO: loaded from: classes2.dex */
public class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f1212a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.b.a.d.b.f f1213b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private com.b.a.d.b.a.e f1214c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.b.a.d.b.b.o f1215d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ExecutorService f1216e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ExecutorService f1217f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private com.b.a.d.a f1218g;
    private com.b.a.d.b.b.b h;

    public j(Context context) {
        this.f1212a = context.getApplicationContext();
    }

    h a() {
        if (this.f1216e == null) {
            this.f1216e = new com.b.a.d.b.c.a(Math.max(1, Runtime.getRuntime().availableProcessors()));
        }
        if (this.f1217f == null) {
            this.f1217f = new com.b.a.d.b.c.a(1);
        }
        com.b.a.d.b.b.q qVar = new com.b.a.d.b.b.q(this.f1212a);
        if (this.f1214c == null) {
            if (Build.VERSION.SDK_INT >= 11) {
                this.f1214c = new com.b.a.d.b.a.i(qVar.b());
            } else {
                this.f1214c = new com.b.a.d.b.a.f();
            }
        }
        if (this.f1215d == null) {
            this.f1215d = new com.b.a.d.b.b.n(qVar.a());
        }
        if (this.h == null) {
            this.h = new com.b.a.d.b.b.l(this.f1212a);
        }
        if (this.f1213b == null) {
            this.f1213b = new com.b.a.d.b.f(this.f1215d, this.h, this.f1217f, this.f1216e);
        }
        if (this.f1218g == null) {
            this.f1218g = com.b.a.d.a.f763d;
        }
        return new h(this.f1213b, this.f1215d, this.f1214c, this.f1212a, this.f1218g);
    }
}
