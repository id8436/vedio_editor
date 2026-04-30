package com.facebook.d.d;

import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: Closeables.java */
/* JADX INFO: loaded from: classes2.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final Logger f1933a = Logger.getLogger(b.class.getName());

    private b() {
    }

    public static void a(@Nullable Closeable closeable, boolean z) throws IOException {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e2) {
                if (z) {
                    f1933a.log(Level.WARNING, "IOException thrown while closing Closeable.", (Throwable) e2);
                    return;
                }
                throw e2;
            }
        }
    }

    public static void a(@Nullable InputStream inputStream) {
        try {
            a(inputStream, true);
        } catch (IOException e2) {
            throw new AssertionError(e2);
        }
    }
}
