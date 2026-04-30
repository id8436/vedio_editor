package javax.servlet;

import java.util.EventListener;

/* JADX INFO: loaded from: classes3.dex */
public interface ServletRequestListener extends EventListener {
    void requestDestroyed(ServletRequestEvent servletRequestEvent);

    void requestInitialized(ServletRequestEvent servletRequestEvent);
}
