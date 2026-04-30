package com.facebook.imagepipeline.memory;

import javax.annotation.concurrent.NotThreadSafe;

/* JADX INFO: compiled from: BasePool.java */
/* JADX INFO: loaded from: classes2.dex */
@NotThreadSafe
class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    int f2919a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f2920b;

    b() {
    }

    public void a(int i) {
        this.f2919a++;
        this.f2920b += i;
    }

    public void b(int i) {
        if (this.f2920b >= i && this.f2919a > 0) {
            this.f2919a--;
            this.f2920b -= i;
        } else {
            com.facebook.d.e.a.c("com.facebook.imagepipeline.memory.BasePool.Counter", "Unexpected decrement of %d. Current numBytes = %d, count = %d", Integer.valueOf(i), Integer.valueOf(this.f2920b), Integer.valueOf(this.f2919a));
        }
    }
}
