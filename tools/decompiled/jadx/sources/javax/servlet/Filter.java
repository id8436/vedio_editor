package javax.servlet;

import java.io.IOException;

/* JADX INFO: loaded from: classes3.dex */
public interface Filter {
    void destroy();

    void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws ServletException, IOException;

    void init(FilterConfig filterConfig) throws ServletException;
}
