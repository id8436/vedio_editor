package com.k.a;

/* JADX INFO: compiled from: MemoryPolicy.java */
/* JADX INFO: loaded from: classes3.dex */
public enum af {
    NO_CACHE(1),
    NO_STORE(2);


    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final int f3442c;

    static boolean a(int i) {
        return (NO_CACHE.f3442c & i) == 0;
    }

    static boolean b(int i) {
        return (NO_STORE.f3442c & i) == 0;
    }

    af(int i) {
        this.f3442c = i;
    }
}
