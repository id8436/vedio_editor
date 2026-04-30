package org.mortbay.jetty.servlet;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.ServletContext;
import org.mortbay.jetty.handler.ContextHandler;
import org.mortbay.jetty.handler.ErrorHandler;
import org.mortbay.util.TypeUtil;

/* JADX INFO: loaded from: classes3.dex */
public class ErrorPageErrorHandler extends ErrorHandler {
    static Class class$javax$servlet$ServletException;
    protected List _errorPageList;
    protected Map _errorPages;
    protected ServletContext _servletContext;

    /* JADX WARN: Removed duplicated region for block: B:56:0x0124  */
    @Override // org.mortbay.jetty.handler.ErrorHandler, org.mortbay.jetty.Handler
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void handle(java.lang.String r6, javax.servlet.http.HttpServletRequest r7, javax.servlet.http.HttpServletResponse r8, int r9) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 299
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mortbay.jetty.servlet.ErrorPageErrorHandler.handle(java.lang.String, javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse, int):void");
    }

    static Class class$(String str) throws Throwable {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e2) {
            throw new NoClassDefFoundError().initCause(e2);
        }
    }

    public Map getErrorPages() {
        return this._errorPages;
    }

    public void setErrorPages(Map map) {
        this._errorPages = map;
    }

    public void addErrorPage(Class cls, String str) {
        if (this._errorPages == null) {
            this._errorPages = new HashMap();
        }
        this._errorPages.put(cls.getName(), str);
    }

    public void addErrorPage(int i, String str) {
        if (this._errorPages == null) {
            this._errorPages = new HashMap();
        }
        this._errorPages.put(TypeUtil.toString(i), str);
    }

    public void addErrorPage(int i, int i2, String str) {
        if (this._errorPageList == null) {
            this._errorPageList = new ArrayList();
        }
        this._errorPageList.add(new ErrorCodeRange(this, i, i2, str));
    }

    @Override // org.mortbay.jetty.handler.AbstractHandler, org.mortbay.component.AbstractLifeCycle
    protected void doStart() throws Exception {
        super.doStart();
        this._servletContext = ContextHandler.getCurrentContext();
    }

    @Override // org.mortbay.jetty.handler.AbstractHandler, org.mortbay.component.AbstractLifeCycle
    protected void doStop() throws Exception {
        super.doStop();
    }

    class ErrorCodeRange {
        private int _from;
        private int _to;
        private String _uri;
        private final ErrorPageErrorHandler this$0;

        ErrorCodeRange(ErrorPageErrorHandler errorPageErrorHandler, int i, int i2, String str) throws IllegalArgumentException {
            this.this$0 = errorPageErrorHandler;
            if (i > i2) {
                throw new IllegalArgumentException("from>to");
            }
            this._from = i;
            this._to = i2;
            this._uri = str;
        }

        boolean isInRange(int i) {
            return i >= this._from && i <= this._to;
        }

        String getUri() {
            return this._uri;
        }

        public String toString() {
            return new StringBuffer().append("from: ").append(this._from).append(",to: ").append(this._to).append(",uri: ").append(this._uri).toString();
        }
    }
}
