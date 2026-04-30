package com.google.common.io;

import com.google.common.annotations.Beta;
import com.google.common.annotations.VisibleForTesting;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes3.dex */
@Beta
public final class Closeables {

    @VisibleForTesting
    static final Logger logger = Logger.getLogger(Closeables.class.getName());

    private Closeables() {
    }

    public static void close(@Nullable Closeable closeable, boolean z) throws IOException {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e2) {
                if (z) {
                    logger.log(Level.WARNING, "IOException thrown while closing Closeable.", (Throwable) e2);
                    return;
                }
                throw e2;
            }
        }
    }

    public static void closeQuietly(@Nullable InputStream inputStream) {
        try {
            close(inputStream, true);
        } catch (IOException e2) {
            throw new AssertionError(e2);
        }
    }

    public static void closeQuietly(@Nullable Reader reader) {
        try {
            close(reader, true);
        } catch (IOException e2) {
            throw new AssertionError(e2);
        }
    }
}
