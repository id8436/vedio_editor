package com.facebook.c.a;

import javax.annotation.Nullable;

/* JADX INFO: compiled from: NoOpCacheErrorLogger.java */
/* JADX INFO: loaded from: classes2.dex */
public class i implements a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static i f1844a = null;

    private i() {
    }

    public static synchronized i a() {
        if (f1844a == null) {
            f1844a = new i();
        }
        return f1844a;
    }

    @Override // com.facebook.c.a.a
    public void a(b bVar, Class<?> cls, String str, @Nullable Throwable th) {
    }
}
