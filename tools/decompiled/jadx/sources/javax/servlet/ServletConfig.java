package javax.servlet;

import java.util.Enumeration;

/* JADX INFO: loaded from: classes3.dex */
public interface ServletConfig {
    String getInitParameter(String str);

    Enumeration getInitParameterNames();

    ServletContext getServletContext();

    String getServletName();
}
