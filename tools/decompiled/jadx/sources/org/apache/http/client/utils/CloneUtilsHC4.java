package org.apache.http.client.utils;

import java.lang.reflect.InvocationTargetException;
import org.apache.http.annotation.Immutable;

/* JADX INFO: loaded from: classes3.dex */
@Immutable
public class CloneUtilsHC4 {
    public static <T> T cloneObject(T t) throws CloneNotSupportedException {
        if (t == null) {
            return null;
        }
        if (t instanceof Cloneable) {
            try {
                try {
                    return (T) t.getClass().getMethod("clone", (Class[]) null).invoke(t, (Object[]) null);
                } catch (IllegalAccessException e2) {
                    throw new IllegalAccessError(e2.getMessage());
                } catch (InvocationTargetException e3) {
                    Throwable cause = e3.getCause();
                    if (cause instanceof CloneNotSupportedException) {
                        throw ((CloneNotSupportedException) cause);
                    }
                    throw new Error("Unexpected exception", cause);
                }
            } catch (NoSuchMethodException e4) {
                throw new NoSuchMethodError(e4.getMessage());
            }
        }
        throw new CloneNotSupportedException();
    }

    public static Object clone(Object obj) throws CloneNotSupportedException {
        return cloneObject(obj);
    }

    private CloneUtilsHC4() {
    }
}
