package com.google.gdata.util.common.io;

import java.io.Closeable;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes3.dex */
public final class Closeables {
    private static final Logger logger = Logger.getLogger(Closeables.class.getName());

    private Closeables() {
    }

    public static void close(Closeable closeable, boolean z) throws IOException {
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

    public static void closeQuietly(Closeable closeable) {
        try {
            close(closeable, true);
        } catch (IOException e2) {
            logger.log(Level.SEVERE, "IOException should not have been thrown.", (Throwable) e2);
        }
    }
}
