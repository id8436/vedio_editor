package org.apache.commons.lang3.concurrent;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes3.dex */
public abstract class AtomicInitializer<T> implements ConcurrentInitializer<T> {
    private final AtomicReference<T> reference = new AtomicReference<>();

    protected abstract T initialize() throws ConcurrentException;

    @Override // org.apache.commons.lang3.concurrent.ConcurrentInitializer
    public T get() throws ConcurrentException {
        T t = this.reference.get();
        if (t == null) {
            T tInitialize = initialize();
            if (!this.reference.compareAndSet(null, tInitialize)) {
                return this.reference.get();
            }
            return tInitialize;
        }
        return t;
    }
}
