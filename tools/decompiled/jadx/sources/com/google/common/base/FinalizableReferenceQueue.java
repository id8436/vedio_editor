package com.google.common.base;

import com.google.common.annotations.VisibleForTesting;
import java.io.Closeable;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.lang.ref.PhantomReference;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.reflect.Method;
import java.net.URL;
import java.net.URLClassLoader;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.apache.commons.io.IOUtils;

/* JADX INFO: loaded from: classes3.dex */
public class FinalizableReferenceQueue implements Closeable {
    private static final String FINALIZER_CLASS_NAME = "com.google.common.base.internal.Finalizer";
    private static final Logger logger = Logger.getLogger(FinalizableReferenceQueue.class.getName());
    private static final Method startFinalizer = getStartFinalizer(loadFinalizer(new SystemLoader(), new DecoupledLoader(), new DirectLoader()));
    final boolean threadStarted;
    final ReferenceQueue<Object> queue = new ReferenceQueue<>();
    final PhantomReference<Object> frqRef = new PhantomReference<>(this, this.queue);

    interface FinalizerLoader {
        Class<?> loadFinalizer();
    }

    public FinalizableReferenceQueue() {
        boolean z = true;
        try {
            startFinalizer.invoke(null, FinalizableReference.class, this.queue, this.frqRef);
        } catch (IllegalAccessException e2) {
            throw new AssertionError(e2);
        } catch (Throwable th) {
            logger.log(Level.INFO, "Failed to start reference finalizer thread. Reference cleanup will only occur when new references are created.", th);
            z = false;
        }
        this.threadStarted = z;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.frqRef.enqueue();
        cleanUp();
    }

    /* JADX WARN: Multi-variable type inference failed */
    void cleanUp() {
        if (this.threadStarted) {
            return;
        }
        while (true) {
            Reference<? extends Object> referencePoll = this.queue.poll();
            if (referencePoll != 0) {
                referencePoll.clear();
                try {
                    ((FinalizableReference) referencePoll).finalizeReferent();
                } catch (Throwable th) {
                    logger.log(Level.SEVERE, "Error cleaning up after reference.", th);
                }
            } else {
                return;
            }
        }
    }

    private static Class<?> loadFinalizer(FinalizerLoader... finalizerLoaderArr) {
        for (FinalizerLoader finalizerLoader : finalizerLoaderArr) {
            Class<?> clsLoadFinalizer = finalizerLoader.loadFinalizer();
            if (clsLoadFinalizer != null) {
                return clsLoadFinalizer;
            }
        }
        throw new AssertionError();
    }

    class SystemLoader implements FinalizerLoader {

        @VisibleForTesting
        static boolean disabled;

        SystemLoader() {
        }

        @Override // com.google.common.base.FinalizableReferenceQueue.FinalizerLoader
        public Class<?> loadFinalizer() {
            if (disabled) {
                return null;
            }
            try {
                ClassLoader systemClassLoader = ClassLoader.getSystemClassLoader();
                if (systemClassLoader == null) {
                    return null;
                }
                try {
                    return systemClassLoader.loadClass(FinalizableReferenceQueue.FINALIZER_CLASS_NAME);
                } catch (ClassNotFoundException e2) {
                    return null;
                }
            } catch (SecurityException e3) {
                FinalizableReferenceQueue.logger.info("Not allowed to access system class loader.");
                return null;
            }
        }
    }

    class DecoupledLoader implements FinalizerLoader {
        private static final String LOADING_ERROR = "Could not load Finalizer in its own class loader.Loading Finalizer in the current class loader instead. As a result, you will not be ableto garbage collect this class loader. To support reclaiming this class loader, eitherresolve the underlying issue, or move Google Collections to your system class path.";

        DecoupledLoader() {
        }

        @Override // com.google.common.base.FinalizableReferenceQueue.FinalizerLoader
        public Class<?> loadFinalizer() {
            try {
                return newLoader(getBaseUrl()).loadClass(FinalizableReferenceQueue.FINALIZER_CLASS_NAME);
            } catch (Exception e2) {
                FinalizableReferenceQueue.logger.log(Level.WARNING, LOADING_ERROR, (Throwable) e2);
                return null;
            }
        }

        URL getBaseUrl() throws IOException {
            String str = FinalizableReferenceQueue.FINALIZER_CLASS_NAME.replace('.', IOUtils.DIR_SEPARATOR_UNIX) + ".class";
            URL resource = getClass().getClassLoader().getResource(str);
            if (resource == null) {
                throw new FileNotFoundException(str);
            }
            String string = resource.toString();
            if (!string.endsWith(str)) {
                throw new IOException("Unsupported path style: " + string);
            }
            return new URL(resource, string.substring(0, string.length() - str.length()));
        }

        URLClassLoader newLoader(URL url) {
            return new URLClassLoader(new URL[]{url}, null);
        }
    }

    class DirectLoader implements FinalizerLoader {
        DirectLoader() {
        }

        @Override // com.google.common.base.FinalizableReferenceQueue.FinalizerLoader
        public Class<?> loadFinalizer() {
            try {
                return Class.forName(FinalizableReferenceQueue.FINALIZER_CLASS_NAME);
            } catch (ClassNotFoundException e2) {
                throw new AssertionError(e2);
            }
        }
    }

    static Method getStartFinalizer(Class<?> cls) {
        try {
            return cls.getMethod("startFinalizer", Class.class, ReferenceQueue.class, PhantomReference.class);
        } catch (NoSuchMethodException e2) {
            throw new AssertionError(e2);
        }
    }
}
