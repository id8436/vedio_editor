package javax.servlet;

import java.io.IOException;

/* JADX INFO: loaded from: classes3.dex */
public interface RequestDispatcher {
    void forward(ServletRequest servletRequest, ServletResponse servletResponse) throws ServletException, IOException;

    void include(ServletRequest servletRequest, ServletResponse servletResponse) throws ServletException, IOException;
}
