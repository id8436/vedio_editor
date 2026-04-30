package com.behance.sdk.asynctasks.result;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKAsyncTaskResultWrapper<T> {
    private Exception exception;
    private boolean exceptionOccurred;
    private T result;

    public boolean isExceptionOccurred() {
        return this.exceptionOccurred;
    }

    public void setExceptionOccurred(boolean z) {
        this.exceptionOccurred = z;
    }

    public Exception getException() {
        return this.exception;
    }

    public void setException(Exception exc) {
        this.exception = exc;
    }

    public T getResult() {
        return this.result;
    }

    public void setResult(T t) {
        this.result = t;
    }
}
