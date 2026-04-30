package org.mortbay.util.ajax;

/* JADX INFO: loaded from: classes3.dex */
public interface Continuation {
    Object getObject();

    boolean isNew();

    boolean isPending();

    boolean isResumed();

    void reset();

    void resume();

    void setObject(Object obj);

    boolean suspend(long j);
}
