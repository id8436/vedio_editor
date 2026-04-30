package com.facebook.drawee.b;

import android.os.Handler;
import android.os.Looper;
import com.facebook.d.d.k;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: compiled from: DeferredReleaser.java */
/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static a f2029a = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Runnable f2032d = new b(this);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Set<c> f2030b = new HashSet();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Handler f2031c = new Handler(Looper.getMainLooper());

    public static synchronized a a() {
        if (f2029a == null) {
            f2029a = new a();
        }
        return f2029a;
    }

    public void a(c cVar) {
        c();
        if (this.f2030b.add(cVar) && this.f2030b.size() == 1) {
            this.f2031c.post(this.f2032d);
        }
    }

    public void b(c cVar) {
        c();
        this.f2030b.remove(cVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void c() {
        k.b(Looper.getMainLooper().getThread() == Thread.currentThread());
    }
}
