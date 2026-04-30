package com.facebook.d.d;

import javax.annotation.Nullable;

/* JADX INFO: compiled from: Throwables.java */
/* JADX INFO: loaded from: classes2.dex */
public final class p {
    /* JADX INFO: Thrown type has an unknown type hierarchy: X extends java.lang.Throwable */
    public static <X extends Throwable> void a(@Nullable Throwable th, Class<X> cls) throws Throwable {
        if (th != null && cls.isInstance(th)) {
            throw cls.cast(th);
        }
    }

    public static void a(@Nullable Throwable th) throws Throwable {
        a(th, Error.class);
        a(th, RuntimeException.class);
    }

    public static RuntimeException b(Throwable th) {
        a((Throwable) k.a(th));
        throw new RuntimeException(th);
    }
}
