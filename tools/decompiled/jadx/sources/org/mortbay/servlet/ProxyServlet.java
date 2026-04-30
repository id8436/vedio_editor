package org.mortbay.servlet;

import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.MalformedURLException;
import java.net.Socket;
import java.net.URL;
import java.util.HashSet;
import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletInputStream;
import javax.servlet.ServletOutputStream;
import javax.servlet.UnavailableException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.mortbay.jetty.HttpHeaderValues;
import org.mortbay.util.IO;

/* JADX INFO: loaded from: classes3.dex */
public class ProxyServlet implements Servlet {
    protected HashSet _DontProxyHeaders = new HashSet();
    protected ServletConfig _config;
    protected ServletContext _context;

    public ProxyServlet() {
        this._DontProxyHeaders.add("proxy-connection");
        this._DontProxyHeaders.add("connection");
        this._DontProxyHeaders.add(HttpHeaderValues.KEEP_ALIVE);
        this._DontProxyHeaders.add("transfer-encoding");
        this._DontProxyHeaders.add("te");
        this._DontProxyHeaders.add("trailer");
        this._DontProxyHeaders.add("proxy-authorization");
        this._DontProxyHeaders.add("proxy-authenticate");
        this._DontProxyHeaders.add("upgrade");
    }

    @Override // javax.servlet.Servlet
    public void init(ServletConfig servletConfig) throws ServletException {
        this._config = servletConfig;
        this._context = servletConfig.getServletContext();
    }

    @Override // javax.servlet.Servlet
    public ServletConfig getServletConfig() {
        return this._config;
    }

    /* JADX WARN: Removed duplicated region for block: B:77:0x01c6 A[PHI: r0
  0x01c6: PHI (r0v8 java.lang.String) = (r0v7 java.lang.String), (r0v30 java.lang.String) binds: [B:13:0x006e, B:17:0x0084] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // javax.servlet.Servlet
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void service(javax.servlet.ServletRequest r13, javax.servlet.ServletResponse r14) throws javax.servlet.ServletException, java.io.IOException {
        /*
            Method dump skipped, instruction units count: 460
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mortbay.servlet.ProxyServlet.service(javax.servlet.ServletRequest, javax.servlet.ServletResponse):void");
    }

    protected URL proxyHttpURL(String str, String str2, int i, String str3) throws MalformedURLException {
        return new URL(str, str2, i, str3);
    }

    public void handleConnect(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws IOException {
        String requestURI = httpServletRequest.getRequestURI();
        String strSubstring = "";
        String strSubstring2 = "";
        int iIndexOf = requestURI.indexOf(58);
        if (iIndexOf >= 0) {
            strSubstring = requestURI.substring(iIndexOf + 1);
            strSubstring2 = requestURI.substring(0, iIndexOf);
            if (strSubstring2.indexOf(47) > 0) {
                strSubstring2 = strSubstring2.substring(strSubstring2.indexOf(47) + 1);
            }
        }
        InetSocketAddress inetSocketAddress = new InetSocketAddress(strSubstring2, Integer.parseInt(strSubstring));
        ServletInputStream inputStream = httpServletRequest.getInputStream();
        ServletOutputStream outputStream = httpServletResponse.getOutputStream();
        Socket socket = new Socket(inetSocketAddress.getAddress(), inetSocketAddress.getPort());
        httpServletResponse.setStatus(200);
        httpServletResponse.setHeader("Connection", HttpHeaderValues.CLOSE);
        httpServletResponse.flushBuffer();
        IO.copyThread(socket.getInputStream(), outputStream);
        IO.copy(inputStream, socket.getOutputStream());
    }

    @Override // javax.servlet.Servlet
    public String getServletInfo() {
        return "Proxy Servlet";
    }

    @Override // javax.servlet.Servlet
    public void destroy() {
    }

    public class Transparent extends ProxyServlet {
        String _prefix;
        String _proxyTo;

        public Transparent() {
        }

        public Transparent(String str, String str2, int i) {
            this._prefix = str;
            this._proxyTo = new StringBuffer().append("http://").append(str2).append(":").append(i).toString();
        }

        @Override // org.mortbay.servlet.ProxyServlet, javax.servlet.Servlet
        public void init(ServletConfig servletConfig) throws ServletException {
            if (servletConfig.getInitParameter("ProxyTo") != null) {
                this._proxyTo = servletConfig.getInitParameter("ProxyTo");
            }
            if (servletConfig.getInitParameter("Prefix") != null) {
                this._prefix = servletConfig.getInitParameter("Prefix");
            }
            if (this._proxyTo == null) {
                throw new UnavailableException("No ProxyTo");
            }
            super.init(servletConfig);
            this._context.log(new StringBuffer().append("Transparent ProxyServlet @ ").append(this._prefix == null ? "-" : this._prefix).append(" to ").append(this._proxyTo).toString());
        }

        @Override // org.mortbay.servlet.ProxyServlet
        protected URL proxyHttpURL(String str, String str2, int i, String str3) throws MalformedURLException {
            if (this._prefix != null && !str3.startsWith(this._prefix)) {
                return null;
            }
            if (this._prefix != null) {
                return new URL(new StringBuffer().append(this._proxyTo).append(str3.substring(this._prefix.length())).toString());
            }
            return new URL(new StringBuffer().append(this._proxyTo).append(str3).toString());
        }
    }
}
