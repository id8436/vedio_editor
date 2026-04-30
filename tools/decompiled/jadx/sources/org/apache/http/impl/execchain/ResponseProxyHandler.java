package org.apache.http.impl.execchain;

import java.io.Closeable;
import java.io.IOException;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.annotation.NotThreadSafe;
import org.mortbay.jetty.HttpHeaderValues;

/* JADX INFO: loaded from: classes3.dex */
@NotThreadSafe
class ResponseProxyHandler implements InvocationHandler {
    private static final Method CLOSE_METHOD;
    private final ConnectionHolder connHolder;
    private final HttpResponse original;

    static {
        try {
            CLOSE_METHOD = Closeable.class.getMethod(HttpHeaderValues.CLOSE, new Class[0]);
        } catch (NoSuchMethodException e2) {
            throw new Error(e2);
        }
    }

    ResponseProxyHandler(HttpResponse httpResponse, ConnectionHolder connectionHolder) {
        this.original = httpResponse;
        this.connHolder = connectionHolder;
        HttpEntity entity = httpResponse.getEntity();
        if (entity != null && entity.isStreaming() && connectionHolder != null) {
            this.original.setEntity(new ResponseEntityWrapper(entity, connectionHolder));
        }
    }

    public void close() throws IOException {
        if (this.connHolder != null) {
            this.connHolder.abortConnection();
        }
    }

    @Override // java.lang.reflect.InvocationHandler
    public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
        if (method.equals(CLOSE_METHOD)) {
            close();
            return null;
        }
        try {
            return method.invoke(this.original, objArr);
        } catch (InvocationTargetException e2) {
            Throwable cause = e2.getCause();
            if (cause != null) {
                throw cause;
            }
            throw e2;
        }
    }
}
