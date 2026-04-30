package com.dropbox.core.http;

import e.i;
import e.q;
import java.io.Closeable;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PipedInputStream;
import java.io.PipedOutputStream;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
final class OkHttpUtil {
    OkHttpUtil() {
    }

    public static void assertNotSameThreadExecutor(ExecutorService executorService) {
        Thread threadCurrentThread = Thread.currentThread();
        try {
            if (threadCurrentThread.equals((Thread) executorService.submit(new Callable<Thread>() { // from class: com.dropbox.core.http.OkHttpUtil.1
                @Override // java.util.concurrent.Callable
                public Thread call() {
                    return Thread.currentThread();
                }
            }).get(2L, TimeUnit.MINUTES))) {
                throw new IllegalArgumentException("OkHttp dispatcher uses same-thread executor. This is not supported by the SDK and may result in dead-locks. Please configure your Dispatcher to use an ExecutorService that runs tasks on separate threads.");
            }
        } catch (InterruptedException e2) {
            threadCurrentThread.interrupt();
            throw new IllegalArgumentException("Unable to verify OkHttp dispatcher executor.", e2);
        } catch (Exception e3) {
            throw new IllegalArgumentException("Unable to verify OkHttp dispatcher executor.", e3);
        }
    }

    public final class PipedStream implements Closeable {
        private static final int BUFFER_SIZE = 5242880;
        private final PipedInputStream in = new PipedInputStream(BUFFER_SIZE);
        private final PipedOutputStream out;

        public PipedStream() {
            try {
                this.out = new PipedOutputStream(this.in);
            } catch (IOException e2) {
                throw new IllegalStateException("Unable to create piped stream for async upload request.");
            }
        }

        public OutputStream getOutputStream() {
            return this.out;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            try {
                this.out.close();
            } catch (IOException e2) {
            }
            try {
                this.in.close();
            } catch (IOException e3) {
            }
        }

        public void writeTo(i iVar) throws IOException {
            iVar.a(q.a(this.in));
        }
    }
}
