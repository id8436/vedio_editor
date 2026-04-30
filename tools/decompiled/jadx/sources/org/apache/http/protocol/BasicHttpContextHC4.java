package org.apache.http.protocol;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.apache.http.annotation.ThreadSafe;
import org.apache.http.util.Args;

/* JADX INFO: loaded from: classes3.dex */
@ThreadSafe
public class BasicHttpContextHC4 implements HttpContext {
    private final Map<String, Object> map;
    private final HttpContext parentContext;

    public BasicHttpContextHC4() {
        this(null);
    }

    public BasicHttpContextHC4(HttpContext httpContext) {
        this.map = new ConcurrentHashMap();
        this.parentContext = httpContext;
    }

    @Override // org.apache.http.protocol.HttpContext
    public Object getAttribute(String str) {
        Args.notNull(str, "Id");
        Object obj = this.map.get(str);
        if (obj == null && this.parentContext != null) {
            return this.parentContext.getAttribute(str);
        }
        return obj;
    }

    @Override // org.apache.http.protocol.HttpContext
    public void setAttribute(String str, Object obj) {
        Args.notNull(str, "Id");
        if (obj != null) {
            this.map.put(str, obj);
        } else {
            this.map.remove(str);
        }
    }

    @Override // org.apache.http.protocol.HttpContext
    public Object removeAttribute(String str) {
        Args.notNull(str, "Id");
        return this.map.remove(str);
    }

    public void clear() {
        this.map.clear();
    }

    public String toString() {
        return this.map.toString();
    }
}
