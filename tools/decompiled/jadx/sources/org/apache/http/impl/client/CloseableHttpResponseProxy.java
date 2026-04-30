package org.apache.http.impl.client;

import java.io.IOException;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import org.apache.http.HttpResponse;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.util.EntityUtilsHC4;
import org.mortbay.jetty.HttpHeaderValues;

/* JADX INFO: loaded from: classes3.dex */
@NotThreadSafe
class CloseableHttpResponseProxy implements InvocationHandler {
    private final HttpResponse original;

    CloseableHttpResponseProxy(HttpResponse httpResponse) {
        this.original = httpResponse;
    }

    public void close() throws IOException {
        EntityUtilsHC4.consume(this.original.getEntity());
    }

    @Override // java.lang.reflect.InvocationHandler
    public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
        if (method.getName().equals(HttpHeaderValues.CLOSE)) {
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

    public static CloseableHttpResponse newProxy(HttpResponse httpResponse) {
        return (CloseableHttpResponse) Proxy.newProxyInstance(CloseableHttpResponseProxy.class.getClassLoader(), new Class[]{CloseableHttpResponse.class}, new CloseableHttpResponseProxy(httpResponse));
    }
}
