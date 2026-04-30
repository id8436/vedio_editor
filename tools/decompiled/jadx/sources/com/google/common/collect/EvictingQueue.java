package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Preconditions;
import java.io.Serializable;
import java.util.Collection;
import java.util.LinkedList;
import java.util.Queue;

/* JADX INFO: loaded from: classes3.dex */
@Beta
@GwtIncompatible("java.util.ArrayDeque")
public final class EvictingQueue<E> extends ForwardingQueue<E> implements Serializable {
    private static final long serialVersionUID = 0;
    private final Queue<E> delegate;

    @VisibleForTesting
    final int maxSize;

    private EvictingQueue(int i) {
        Preconditions.checkArgument(i >= 0, "maxSize (%s) must >= 0", Integer.valueOf(i));
        this.delegate = new LinkedList();
        this.maxSize = i;
    }

    public static <E> EvictingQueue<E> create(int i) {
        return new EvictingQueue<>(i);
    }

    public int remainingCapacity() {
        return this.maxSize - size();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.collect.ForwardingQueue, com.google.common.collect.ForwardingCollection, com.google.common.collect.ForwardingObject
    public Queue<E> delegate() {
        return this.delegate;
    }

    @Override // com.google.common.collect.ForwardingQueue, java.util.Queue
    public boolean offer(E e2) {
        return add(e2);
    }

    @Override // com.google.common.collect.ForwardingCollection, java.util.Collection
    public boolean add(E e2) {
        Preconditions.checkNotNull(e2);
        if (this.maxSize != 0) {
            if (size() == this.maxSize) {
                this.delegate.remove();
            }
            this.delegate.add(e2);
        }
        return true;
    }

    @Override // com.google.common.collect.ForwardingCollection, java.util.Collection
    public boolean addAll(Collection<? extends E> collection) {
        return standardAddAll(collection);
    }

    @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        return delegate().contains(Preconditions.checkNotNull(obj));
    }

    @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Set
    public boolean remove(Object obj) {
        return delegate().remove(Preconditions.checkNotNull(obj));
    }
}
