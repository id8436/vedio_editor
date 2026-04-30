package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes3.dex */
@GwtCompatible
public abstract class AbstractIterator<T> extends UnmodifiableIterator<T> {
    private T next;
    private State state = State.NOT_READY;

    enum State {
        READY,
        NOT_READY,
        DONE,
        FAILED
    }

    protected abstract T computeNext();

    protected AbstractIterator() {
    }

    protected final T endOfData() {
        this.state = State.DONE;
        return null;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        Preconditions.checkState(this.state != State.FAILED);
        switch (this.state) {
            case DONE:
                return false;
            case READY:
                return true;
            default:
                return tryToComputeNext();
        }
    }

    private boolean tryToComputeNext() {
        this.state = State.FAILED;
        this.next = computeNext();
        if (this.state == State.DONE) {
            return false;
        }
        this.state = State.READY;
        return true;
    }

    @Override // java.util.Iterator
    public final T next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        this.state = State.NOT_READY;
        T t = this.next;
        this.next = null;
        return t;
    }

    public final T peek() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        return this.next;
    }
}
