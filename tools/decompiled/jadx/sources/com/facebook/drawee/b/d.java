package com.facebook.drawee.b;

import java.util.Queue;
import java.util.concurrent.ArrayBlockingQueue;

/* JADX INFO: compiled from: DraweeEventTracker.java */
/* JADX INFO: loaded from: classes2.dex */
public class d {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final d f2034b = new d();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static boolean f2035c = true;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Queue<e> f2036a = new ArrayBlockingQueue(20);

    private d() {
    }

    public static d a() {
        return f2035c ? new d() : f2034b;
    }

    public void a(e eVar) {
        if (f2035c) {
            if (this.f2036a.size() + 1 > 20) {
                this.f2036a.poll();
            }
            this.f2036a.add(eVar);
        }
    }

    public String toString() {
        return this.f2036a.toString();
    }
}
