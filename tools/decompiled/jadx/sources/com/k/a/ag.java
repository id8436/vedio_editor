package com.k.a;

/* JADX INFO: compiled from: NetworkPolicy.java */
/* JADX INFO: loaded from: classes3.dex */
public enum ag {
    NO_CACHE(1),
    NO_STORE(2),
    OFFLINE(4);


    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final int f3447d;

    public static boolean a(int i) {
        return (NO_CACHE.f3447d & i) == 0;
    }

    public static boolean b(int i) {
        return (NO_STORE.f3447d & i) == 0;
    }

    public static boolean c(int i) {
        return (OFFLINE.f3447d & i) != 0;
    }

    ag(int i) {
        this.f3447d = i;
    }
}
