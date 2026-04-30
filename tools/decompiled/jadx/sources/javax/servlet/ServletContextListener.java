package javax.servlet;

import java.util.EventListener;

/* JADX INFO: loaded from: classes3.dex */
public interface ServletContextListener extends EventListener {
    void contextDestroyed(ServletContextEvent servletContextEvent);

    void contextInitialized(ServletContextEvent servletContextEvent);
}
