package com.dropbox.core.v2.callbacks;

/* JADX INFO: loaded from: classes2.dex */
public abstract class DbxRouteErrorCallback<T> implements Runnable {
    private T routeError = null;

    public T getRouteError() {
        return this.routeError;
    }

    public void setRouteError(T t) {
        this.routeError = t;
    }
}
