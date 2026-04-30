package org.mortbay.jetty.servlet;

import javax.servlet.RequestDispatcher;
import org.mortbay.jetty.HandlerContainer;
import org.mortbay.jetty.handler.ContextHandler;
import org.mortbay.jetty.handler.ErrorHandler;
import org.mortbay.jetty.security.SecurityHandler;
import org.mortbay.log.Log;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes3.dex */
public class Context extends ContextHandler {
    public static final int NO_SECURITY = 0;
    public static final int NO_SESSIONS = 0;
    public static final int SECURITY = 2;
    public static final int SESSIONS = 1;
    protected SecurityHandler _securityHandler;
    protected ServletHandler _servletHandler;
    protected SessionHandler _sessionHandler;

    public Context() {
        this(null, null, null, null, null);
    }

    public Context(int i) {
        this(null, null, i);
    }

    public Context(HandlerContainer handlerContainer, String str) {
        this(handlerContainer, str, null, null, null, null);
    }

    public Context(HandlerContainer handlerContainer, String str, int i) {
        this(handlerContainer, str, (i & 1) != 0 ? new SessionHandler() : null, (i & 2) != 0 ? new SecurityHandler() : null, null, null);
    }

    public Context(HandlerContainer handlerContainer, String str, boolean z, boolean z2) {
        this(handlerContainer, str, (z2 ? 2 : 0) | (z ? 1 : 0));
    }

    public Context(HandlerContainer handlerContainer, SessionHandler sessionHandler, SecurityHandler securityHandler, ServletHandler servletHandler, ErrorHandler errorHandler) {
        this(handlerContainer, null, sessionHandler, securityHandler, servletHandler, errorHandler);
    }

    public Context(HandlerContainer handlerContainer, String str, SessionHandler sessionHandler, SecurityHandler securityHandler, ServletHandler servletHandler, ErrorHandler errorHandler) {
        super((ContextHandler.SContext) null);
        this._scontext = new SContext(this);
        this._sessionHandler = sessionHandler;
        this._securityHandler = securityHandler;
        this._servletHandler = servletHandler == null ? new ServletHandler() : servletHandler;
        if (this._sessionHandler != null) {
            setHandler(this._sessionHandler);
            if (securityHandler != null) {
                this._sessionHandler.setHandler(this._securityHandler);
                this._securityHandler.setHandler(this._servletHandler);
            } else {
                this._sessionHandler.setHandler(this._servletHandler);
            }
        } else if (this._securityHandler != null) {
            setHandler(this._securityHandler);
            this._securityHandler.setHandler(this._servletHandler);
        } else {
            setHandler(this._servletHandler);
        }
        if (errorHandler != null) {
            setErrorHandler(errorHandler);
        }
        if (str != null) {
            setContextPath(str);
        }
        if (handlerContainer != null) {
            handlerContainer.addHandler(this);
        }
    }

    @Override // org.mortbay.jetty.handler.ContextHandler
    protected void startContext() throws Exception {
        super.startContext();
        if (this._servletHandler != null && this._servletHandler.isStarted()) {
            this._servletHandler.initialize();
        }
    }

    public SecurityHandler getSecurityHandler() {
        return this._securityHandler;
    }

    public ServletHandler getServletHandler() {
        return this._servletHandler;
    }

    public SessionHandler getSessionHandler() {
        return this._sessionHandler;
    }

    public ServletHolder addServlet(String str, String str2) {
        return this._servletHandler.addServletWithMapping(str, str2);
    }

    public ServletHolder addServlet(Class cls, String str) {
        return this._servletHandler.addServletWithMapping(cls.getName(), str);
    }

    public void addServlet(ServletHolder servletHolder, String str) throws Throwable {
        this._servletHandler.addServletWithMapping(servletHolder, str);
    }

    public void addFilter(FilterHolder filterHolder, String str, int i) throws Throwable {
        this._servletHandler.addFilterWithMapping(filterHolder, str, i);
    }

    public FilterHolder addFilter(Class cls, String str, int i) {
        return this._servletHandler.addFilterWithMapping(cls, str, i);
    }

    public FilterHolder addFilter(String str, String str2, int i) {
        return this._servletHandler.addFilterWithMapping(str, str2, i);
    }

    public void setSessionHandler(SessionHandler sessionHandler) {
        if (this._sessionHandler != sessionHandler) {
            if (this._sessionHandler != null) {
                this._sessionHandler.setHandler(null);
            }
            this._sessionHandler = sessionHandler;
            setHandler(this._sessionHandler);
            if (this._securityHandler != null) {
                this._sessionHandler.setHandler(this._securityHandler);
            } else if (this._servletHandler != null) {
                this._sessionHandler.setHandler(this._servletHandler);
            }
        }
    }

    public void setSecurityHandler(SecurityHandler securityHandler) {
        if (this._securityHandler != securityHandler) {
            if (this._securityHandler != null) {
                this._securityHandler.setHandler(null);
            }
            this._securityHandler = securityHandler;
            if (this._securityHandler == null) {
                if (this._sessionHandler != null) {
                    this._sessionHandler.setHandler(this._servletHandler);
                    return;
                } else {
                    setHandler(this._servletHandler);
                    return;
                }
            }
            if (this._sessionHandler != null) {
                this._sessionHandler.setHandler(this._securityHandler);
            } else {
                setHandler(this._securityHandler);
            }
            if (this._servletHandler != null) {
                this._securityHandler.setHandler(this._servletHandler);
            }
        }
    }

    public void setServletHandler(ServletHandler servletHandler) {
        if (this._servletHandler != servletHandler) {
            this._servletHandler = servletHandler;
            if (this._securityHandler != null) {
                this._securityHandler.setHandler(this._servletHandler);
            } else if (this._sessionHandler != null) {
                this._sessionHandler.setHandler(this._servletHandler);
            } else {
                setHandler(this._servletHandler);
            }
        }
    }

    public class SContext extends ContextHandler.SContext {
        private final Context this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SContext(Context context) {
            super(context);
            this.this$0 = context;
        }

        @Override // org.mortbay.jetty.handler.ContextHandler.SContext, javax.servlet.ServletContext
        public RequestDispatcher getNamedDispatcher(String str) {
            Context context = this.this$0;
            if (this.this$0._servletHandler == null || this.this$0._servletHandler.getServlet(str) == null) {
                return null;
            }
            return new Dispatcher(context, str);
        }

        @Override // org.mortbay.jetty.handler.ContextHandler.SContext, javax.servlet.ServletContext
        public RequestDispatcher getRequestDispatcher(String str) {
            String str2;
            String strSubstring;
            if (str == null || !str.startsWith(URIUtil.SLASH)) {
                return null;
            }
            try {
                int iIndexOf = str.indexOf(63);
                if (iIndexOf > 0) {
                    String strSubstring2 = str.substring(iIndexOf + 1);
                    String strSubstring3 = str.substring(0, iIndexOf);
                    str2 = strSubstring2;
                    strSubstring = strSubstring3;
                } else {
                    str2 = null;
                    strSubstring = str;
                }
                int iIndexOf2 = strSubstring.indexOf(59);
                if (iIndexOf2 > 0) {
                    strSubstring = strSubstring.substring(0, iIndexOf2);
                }
                return new Dispatcher(this.this$0, URIUtil.addPaths(getContextPath(), strSubstring), URIUtil.canonicalPath(URIUtil.decodePath(strSubstring)), str2);
            } catch (Exception e2) {
                Log.ignore(e2);
                return null;
            }
        }
    }
}
