package org.apache.http.impl.cookie;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.cookie.CookieAttributeHandler;
import org.apache.http.cookie.CookieSpec;
import org.apache.http.util.Args;

/* JADX INFO: loaded from: classes3.dex */
@NotThreadSafe
public abstract class AbstractCookieSpecHC4 implements CookieSpec {
    private final Map<String, CookieAttributeHandler> attribHandlerMap = new HashMap(10);

    public void registerAttribHandler(String str, CookieAttributeHandler cookieAttributeHandler) {
        Args.notNull(str, "Attribute name");
        Args.notNull(cookieAttributeHandler, "Attribute handler");
        this.attribHandlerMap.put(str, cookieAttributeHandler);
    }

    protected CookieAttributeHandler findAttribHandler(String str) {
        return this.attribHandlerMap.get(str);
    }

    protected CookieAttributeHandler getAttribHandler(String str) {
        CookieAttributeHandler cookieAttributeHandlerFindAttribHandler = findAttribHandler(str);
        if (cookieAttributeHandlerFindAttribHandler == null) {
            throw new IllegalStateException("Handler not registered for " + str + " attribute.");
        }
        return cookieAttributeHandlerFindAttribHandler;
    }

    protected Collection<CookieAttributeHandler> getAttribHandlers() {
        return this.attribHandlerMap.values();
    }
}
