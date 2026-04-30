package javax.servlet;

import java.io.IOException;

/* JADX INFO: loaded from: classes3.dex */
public interface FilterChain {
    void doFilter(ServletRequest servletRequest, ServletResponse servletResponse) throws ServletException, IOException;
}
