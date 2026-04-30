package javax.servlet.http;

import java.io.IOException;
import java.io.Serializable;
import java.lang.reflect.Method;
import java.text.MessageFormat;
import java.util.Enumeration;
import java.util.ResourceBundle;
import javax.servlet.GenericServlet;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import org.mortbay.jetty.MimeTypes;

/* JADX INFO: loaded from: classes3.dex */
public abstract class HttpServlet extends GenericServlet implements Serializable {
    private static final String HEADER_IFMODSINCE = "If-Modified-Since";
    private static final String HEADER_LASTMOD = "Last-Modified";
    private static final String METHOD_DELETE = "DELETE";
    private static final String METHOD_GET = "GET";
    private static final String METHOD_HEAD = "HEAD";
    private static final String METHOD_OPTIONS = "OPTIONS";
    private static final String METHOD_POST = "POST";
    private static final String METHOD_PUT = "PUT";
    private static final String METHOD_TRACE = "TRACE";
    static Class class$javax$servlet$http$HttpServlet;
    private static final String LSTRING_FILE = "javax.servlet.http.LocalStrings";
    private static ResourceBundle lStrings = ResourceBundle.getBundle(LSTRING_FILE);

    protected void doGet(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws ServletException, IOException {
        String protocol = httpServletRequest.getProtocol();
        String string = lStrings.getString("http.method_get_not_supported");
        if (protocol.endsWith("1.1")) {
            httpServletResponse.sendError(405, string);
        } else {
            httpServletResponse.sendError(400, string);
        }
    }

    protected long getLastModified(HttpServletRequest httpServletRequest) {
        return -1L;
    }

    protected void doHead(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws ServletException, IOException {
        NoBodyResponse noBodyResponse = new NoBodyResponse(httpServletResponse);
        doGet(httpServletRequest, noBodyResponse);
        noBodyResponse.setContentLength();
    }

    protected void doPost(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws ServletException, IOException {
        String protocol = httpServletRequest.getProtocol();
        String string = lStrings.getString("http.method_post_not_supported");
        if (protocol.endsWith("1.1")) {
            httpServletResponse.sendError(405, string);
        } else {
            httpServletResponse.sendError(400, string);
        }
    }

    protected void doPut(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws ServletException, IOException {
        String protocol = httpServletRequest.getProtocol();
        String string = lStrings.getString("http.method_put_not_supported");
        if (protocol.endsWith("1.1")) {
            httpServletResponse.sendError(405, string);
        } else {
            httpServletResponse.sendError(400, string);
        }
    }

    protected void doDelete(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws ServletException, IOException {
        String protocol = httpServletRequest.getProtocol();
        String string = lStrings.getString("http.method_delete_not_supported");
        if (protocol.endsWith("1.1")) {
            httpServletResponse.sendError(405, string);
        } else {
            httpServletResponse.sendError(400, string);
        }
    }

    static Class class$(String str) throws Throwable {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e2) {
            throw new NoClassDefFoundError().initCause(e2);
        }
    }

    private Method[] getAllDeclaredMethods(Class cls) throws Throwable {
        Class clsClass$;
        if (class$javax$servlet$http$HttpServlet == null) {
            clsClass$ = class$("javax.servlet.http.HttpServlet");
            class$javax$servlet$http$HttpServlet = clsClass$;
        } else {
            clsClass$ = class$javax$servlet$http$HttpServlet;
        }
        if (cls.equals(clsClass$)) {
            return null;
        }
        Method[] allDeclaredMethods = getAllDeclaredMethods(cls.getSuperclass());
        Method[] declaredMethods = cls.getDeclaredMethods();
        if (allDeclaredMethods == null || allDeclaredMethods.length <= 0) {
            return declaredMethods;
        }
        Method[] methodArr = new Method[allDeclaredMethods.length + declaredMethods.length];
        System.arraycopy(allDeclaredMethods, 0, methodArr, 0, allDeclaredMethods.length);
        System.arraycopy(declaredMethods, 0, methodArr, allDeclaredMethods.length, declaredMethods.length);
        return methodArr;
    }

    protected void doOptions(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws Throwable {
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = false;
        boolean z5 = false;
        for (Method method : getAllDeclaredMethods(getClass())) {
            if (method.getName().equals("doGet")) {
                z4 = true;
                z5 = true;
            }
            if (method.getName().equals("doPost")) {
                z3 = true;
            }
            if (method.getName().equals("doPut")) {
                z2 = true;
            }
            if (method.getName().equals("doDelete")) {
                z = true;
            }
        }
        String string = null;
        if (z5 && 0 == 0) {
            string = "GET";
        }
        if (z4) {
            string = string == null ? "HEAD" : new StringBuffer().append(string).append(", HEAD").toString();
        }
        if (z3) {
            string = string == null ? "POST" : new StringBuffer().append(string).append(", POST").toString();
        }
        if (z2) {
            string = string == null ? "PUT" : new StringBuffer().append(string).append(", PUT").toString();
        }
        if (z) {
            string = string == null ? "DELETE" : new StringBuffer().append(string).append(", DELETE").toString();
        }
        String string2 = string == null ? "TRACE" : new StringBuffer().append(string).append(", TRACE").toString();
        httpServletResponse.setHeader("Allow", string2 == null ? "OPTIONS" : new StringBuffer().append(string2).append(", OPTIONS").toString());
    }

    protected void doTrace(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws ServletException, IOException {
        String string = new StringBuffer().append("TRACE ").append(httpServletRequest.getRequestURI()).append(" ").append(httpServletRequest.getProtocol()).toString();
        Enumeration headerNames = httpServletRequest.getHeaderNames();
        while (true) {
            String str = string;
            if (!headerNames.hasMoreElements()) {
                String string2 = new StringBuffer().append(str).append("\r\n").toString();
                int length = string2.length();
                httpServletResponse.setContentType(MimeTypes.MESSAGE_HTTP);
                httpServletResponse.setContentLength(length);
                ServletOutputStream outputStream = httpServletResponse.getOutputStream();
                outputStream.print(string2);
                outputStream.close();
                return;
            }
            String str2 = (String) headerNames.nextElement();
            string = new StringBuffer().append(str).append("\r\n").append(str2).append(": ").append(httpServletRequest.getHeader(str2)).toString();
        }
    }

    protected void service(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws Throwable {
        String method = httpServletRequest.getMethod();
        if (method.equals("GET")) {
            long lastModified = getLastModified(httpServletRequest);
            if (lastModified == -1) {
                doGet(httpServletRequest, httpServletResponse);
                return;
            } else if (httpServletRequest.getDateHeader("If-Modified-Since") < (lastModified / 1000) * 1000) {
                maybeSetLastModified(httpServletResponse, lastModified);
                doGet(httpServletRequest, httpServletResponse);
                return;
            } else {
                httpServletResponse.setStatus(304);
                return;
            }
        }
        if (method.equals("HEAD")) {
            maybeSetLastModified(httpServletResponse, getLastModified(httpServletRequest));
            doHead(httpServletRequest, httpServletResponse);
            return;
        }
        if (method.equals("POST")) {
            doPost(httpServletRequest, httpServletResponse);
            return;
        }
        if (method.equals("PUT")) {
            doPut(httpServletRequest, httpServletResponse);
            return;
        }
        if (method.equals("DELETE")) {
            doDelete(httpServletRequest, httpServletResponse);
            return;
        }
        if (method.equals("OPTIONS")) {
            doOptions(httpServletRequest, httpServletResponse);
        } else if (method.equals("TRACE")) {
            doTrace(httpServletRequest, httpServletResponse);
        } else {
            httpServletResponse.sendError(501, MessageFormat.format(lStrings.getString("http.method_not_implemented"), method));
        }
    }

    private void maybeSetLastModified(HttpServletResponse httpServletResponse, long j) {
        if (!httpServletResponse.containsHeader("Last-Modified") && j >= 0) {
            httpServletResponse.setDateHeader("Last-Modified", j);
        }
    }

    @Override // javax.servlet.GenericServlet, javax.servlet.Servlet
    public void service(ServletRequest servletRequest, ServletResponse servletResponse) throws Throwable {
        try {
            service((HttpServletRequest) servletRequest, (HttpServletResponse) servletResponse);
        } catch (ClassCastException e2) {
            throw new ServletException("non-HTTP request or response");
        }
    }
}
