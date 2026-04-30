package org.mortbay.util.ajax;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.mortbay.jetty.HttpHeaderValues;

/* JADX INFO: loaded from: classes3.dex */
public class AjaxFilter implements Filter {
    ServletContext context;

    /* JADX INFO: renamed from: org.mortbay.util.ajax.AjaxFilter$1, reason: invalid class name */
    class AnonymousClass1 {
    }

    @Override // javax.servlet.Filter
    public void init(FilterConfig filterConfig) throws ServletException {
        this.context = filterConfig.getServletContext();
    }

    public ServletContext getContext() {
        return this.context;
    }

    @Override // javax.servlet.Filter
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws ServletException, IOException {
        String[] parameterValues = servletRequest.getParameterValues("ajax");
        String[] parameterValues2 = servletRequest.getParameterValues("message");
        if (parameterValues != null && parameterValues.length > 0) {
            HttpServletRequest httpServletRequest = (HttpServletRequest) servletRequest;
            HttpServletResponse httpServletResponse = (HttpServletResponse) servletResponse;
            StringWriter stringWriter = new StringWriter();
            PrintWriter printWriter = new PrintWriter(stringWriter);
            printWriter.println("<ajax-response>");
            AjaxResponse ajaxResponse = new AjaxResponse(httpServletRequest, printWriter, null);
            for (int i = 0; i < parameterValues.length; i++) {
                handle(parameterValues[i], parameterValues2[i], httpServletRequest, ajaxResponse);
            }
            printWriter.println("</ajax-response>");
            byte[] bytes = stringWriter.toString().getBytes("UTF-8");
            httpServletResponse.setHeader("Pragma", HttpHeaderValues.NO_CACHE);
            httpServletResponse.addHeader("Cache-Control", "must-revalidate,no-cache,no-store");
            httpServletResponse.setDateHeader("Expires", 0L);
            httpServletResponse.setContentType("text/xml; charset=UTF-8");
            httpServletResponse.setContentLength(bytes.length);
            httpServletResponse.getOutputStream().write(bytes);
            httpServletResponse.flushBuffer();
            return;
        }
        filterChain.doFilter(servletRequest, servletResponse);
    }

    public void handle(String str, String str2, HttpServletRequest httpServletRequest, AjaxResponse ajaxResponse) {
        ajaxResponse.elementResponse(null, new StringBuffer().append("<span class=\"error\">No implementation for ").append(str).append(" ").append(httpServletRequest.getParameter("member")).append("</span>").toString());
    }

    @Override // javax.servlet.Filter
    public void destroy() {
        this.context = null;
    }

    public static String encodeText(String str) {
        String str2;
        StringBuffer stringBuffer = null;
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            switch (cCharAt) {
                case '&':
                    str2 = "&amp;";
                    break;
                case '<':
                    str2 = "&lt;";
                    break;
                case '>':
                    str2 = "&gt;";
                    break;
                default:
                    str2 = null;
                    break;
            }
            if (str2 != null) {
                if (stringBuffer == null) {
                    stringBuffer = new StringBuffer(str.length() * 2);
                    stringBuffer.append(str.subSequence(0, i));
                }
                stringBuffer.append(str2);
            } else if (stringBuffer != null) {
                stringBuffer.append(cCharAt);
            }
        }
        if (stringBuffer != null) {
            return stringBuffer.toString();
        }
        return str;
    }

    public class AjaxResponse {
        private PrintWriter out;
        private HttpServletRequest request;

        AjaxResponse(HttpServletRequest httpServletRequest, PrintWriter printWriter, AnonymousClass1 anonymousClass1) {
            this(httpServletRequest, printWriter);
        }

        private AjaxResponse(HttpServletRequest httpServletRequest, PrintWriter printWriter) {
            this.out = printWriter;
            this.request = httpServletRequest;
        }

        public void elementResponse(String str, String str2) {
            String parameter = str == null ? this.request.getParameter("id") : str;
            if (parameter == null) {
                parameter = "unknown";
            }
            this.out.println(new StringBuffer().append("<response type=\"element\" id=\"").append(parameter).append("\">").append(str2).append("</response>").toString());
        }

        public void objectResponse(String str, String str2) {
            String parameter = str == null ? this.request.getParameter("id") : str;
            if (parameter == null) {
                parameter = "unknown";
            }
            this.out.println(new StringBuffer().append("<response type=\"object\" id=\"").append(parameter).append("\">").append(str2).append("</response>").toString());
        }
    }
}
