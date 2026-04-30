package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import java.util.ListIterator;

/* JADX INFO: loaded from: classes3.dex */
@GwtCompatible
public abstract class ForwardingListIterator<E> extends ForwardingIterator<E> implements ListIterator<E> {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.collect.ForwardingIterator, com.google.common.collect.ForwardingObject
    public abstract ListIterator<E> delegate();

    protected ForwardingListIterator() {
    }

    public void add(E e2) {
        delegate().add(e2);
    }

    @Override // java.util.ListIterator
    public boolean hasPrevious() {
        return delegate().hasPrevious();
    }

    @Override // java.util.ListIterator
    public int nextIndex() {
        return delegate().nextIndex();
    }

    @Override // java.util.ListIterator
    public E previous() {
        return delegate().previous();
    }

    @Override // java.util.ListIterator
    public int previousIndex() {
        return delegate().previousIndex();
    }

    public void set(E e2) {
        delegate().set(e2);
    }
}
