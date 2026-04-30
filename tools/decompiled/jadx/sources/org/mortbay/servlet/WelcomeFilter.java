package org.mortbay.servlet;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes3.dex */
public class WelcomeFilter implements Filter {
    private String welcome;

    @Override // javax.servlet.Filter
    public void init(FilterConfig filterConfig) {
        this.welcome = filterConfig.getInitParameter("welcome");
        if (this.welcome == null) {
            this.welcome = "index.html";
        }
    }

    @Override // javax.servlet.Filter
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws ServletException, IOException {
        String servletPath = ((HttpServletRequest) servletRequest).getServletPath();
        if (this.welcome != null && servletPath.endsWith(URIUtil.SLASH)) {
            servletRequest.getRequestDispatcher(new StringBuffer().append(servletPath).append(this.welcome).toString()).forward(servletRequest, servletResponse);
        } else {
            filterChain.doFilter(servletRequest, servletResponse);
        }
    }

    @Override // javax.servlet.Filter
    public void destroy() {
    }
}
