package com.google.common.util.concurrent;

import com.google.common.base.Preconditions;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes3.dex */
final class AsyncSettableFuture<V> extends ForwardingListenableFuture<V> {
    private final NestedFuture<V> nested = new NestedFuture<>();
    private final ListenableFuture<V> dereferenced = Futures.dereference(this.nested);

    public static <V> AsyncSettableFuture<V> create() {
        return new AsyncSettableFuture<>();
    }

    private AsyncSettableFuture() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.util.concurrent.ForwardingListenableFuture, com.google.common.util.concurrent.ForwardingFuture, com.google.common.collect.ForwardingObject
    public ListenableFuture<V> delegate() {
        return this.dereferenced;
    }

    public boolean setFuture(ListenableFuture<? extends V> listenableFuture) {
        return this.nested.setFuture((ListenableFuture) Preconditions.checkNotNull(listenableFuture));
    }

    public boolean setValue(@Nullable V v) {
        return setFuture(Futures.immediateFuture(v));
    }

    public boolean setException(Throwable th) {
        return setFuture(Futures.immediateFailedFuture(th));
    }

    public boolean isSet() {
        return this.nested.isDone();
    }

    final class NestedFuture<V> extends AbstractFuture<ListenableFuture<? extends V>> {
        private NestedFuture() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        boolean setFuture(ListenableFuture<? extends V> listenableFuture) {
            boolean z = set(listenableFuture);
            if (isCancelled()) {
                listenableFuture.cancel(wasInterrupted());
            }
            return z;
        }
    }
}
