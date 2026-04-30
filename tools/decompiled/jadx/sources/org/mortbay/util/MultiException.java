package org.mortbay.util;

import java.io.PrintStream;
import java.io.PrintWriter;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class MultiException extends Exception {
    private Object nested;

    public MultiException() {
        super("Multiple exceptions");
    }

    public void add(Throwable th) {
        if (th instanceof MultiException) {
            MultiException multiException = (MultiException) th;
            for (int i = 0; i < LazyList.size(multiException.nested); i++) {
                this.nested = LazyList.add(this.nested, LazyList.get(multiException.nested, i));
            }
            return;
        }
        this.nested = LazyList.add(this.nested, th);
    }

    public int size() {
        return LazyList.size(this.nested);
    }

    public List getThrowables() {
        return LazyList.getList(this.nested);
    }

    public Throwable getThrowable(int i) {
        return (Throwable) LazyList.get(this.nested, i);
    }

    public void ifExceptionThrow() throws Exception {
        switch (LazyList.size(this.nested)) {
            case 0:
                return;
            case 1:
                Throwable th = (Throwable) LazyList.get(this.nested, 0);
                if (th instanceof Error) {
                    throw ((Error) th);
                }
                if (th instanceof Exception) {
                    throw ((Exception) th);
                }
                throw this;
            default:
                throw this;
        }
    }

    public void ifExceptionThrowRuntime() throws Error {
        switch (LazyList.size(this.nested)) {
            case 0:
                return;
            case 1:
                Throwable th = (Throwable) LazyList.get(this.nested, 0);
                if (th instanceof Error) {
                    throw ((Error) th);
                }
                if (th instanceof RuntimeException) {
                    throw ((RuntimeException) th);
                }
                throw new RuntimeException(th);
            default:
                throw new RuntimeException(this);
        }
    }

    public void ifExceptionThrowMulti() throws MultiException {
        if (LazyList.size(this.nested) > 0) {
            throw this;
        }
    }

    @Override // java.lang.Throwable
    public String toString() {
        return LazyList.size(this.nested) > 0 ? new StringBuffer().append("org.mortbay.util.MultiException").append(LazyList.getList(this.nested)).toString() : "org.mortbay.util.MultiException[]";
    }

    @Override // java.lang.Throwable
    public void printStackTrace() {
        super.printStackTrace();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < LazyList.size(this.nested)) {
                ((Throwable) LazyList.get(this.nested, i2)).printStackTrace();
                i = i2 + 1;
            } else {
                return;
            }
        }
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintStream printStream) {
        super.printStackTrace(printStream);
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < LazyList.size(this.nested)) {
                ((Throwable) LazyList.get(this.nested, i2)).printStackTrace(printStream);
                i = i2 + 1;
            } else {
                return;
            }
        }
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintWriter printWriter) {
        super.printStackTrace(printWriter);
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < LazyList.size(this.nested)) {
                ((Throwable) LazyList.get(this.nested, i2)).printStackTrace(printWriter);
                i = i2 + 1;
            } else {
                return;
            }
        }
    }
}
