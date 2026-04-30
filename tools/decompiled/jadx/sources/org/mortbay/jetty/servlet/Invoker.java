package org.mortbay.jetty.servlet;

import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.Servlet;
import javax.servlet.UnavailableException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;
import javax.servlet.http.HttpServletResponse;
import org.mortbay.jetty.Handler;
import org.mortbay.jetty.handler.ContextHandler;
import org.mortbay.jetty.handler.HandlerWrapper;
import org.mortbay.jetty.servlet.PathMap;
import org.mortbay.log.Log;
import org.mortbay.util.LazyList;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes3.dex */
public class Invoker extends HttpServlet {
    static Class class$org$mortbay$jetty$servlet$ServletMapping;
    private ContextHandler _contextHandler;
    private Map.Entry _invokerEntry;
    private boolean _nonContextServlets;
    private Map _parameters;
    private ServletHandler _servletHandler;
    private boolean _verbose;

    @Override // javax.servlet.GenericServlet
    public void init() {
        this._contextHandler = ((ContextHandler.SContext) getServletContext()).getContextHandler();
        Handler handler = this._contextHandler.getHandler();
        while (handler != null && !(handler instanceof ServletHandler) && (handler instanceof HandlerWrapper)) {
            handler = ((HandlerWrapper) handler).getHandler();
        }
        this._servletHandler = (ServletHandler) handler;
        Enumeration initParameterNames = getInitParameterNames();
        while (initParameterNames.hasMoreElements()) {
            String str = (String) initParameterNames.nextElement();
            String initParameter = getInitParameter(str);
            String lowerCase = initParameter.toLowerCase();
            if ("nonContextServlets".equals(str)) {
                this._nonContextServlets = initParameter.length() > 0 && lowerCase.startsWith("t");
            }
            if ("verbose".equals(str)) {
                this._verbose = initParameter.length() > 0 && lowerCase.startsWith("t");
            } else {
                if (this._parameters == null) {
                    this._parameters = new HashMap();
                }
                this._parameters.put(str, initParameter);
            }
        }
    }

    @Override // javax.servlet.http.HttpServlet
    protected void service(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws Throwable {
        String servletPath;
        boolean z;
        String strSubstring;
        ServletHolder servletHolderAddServletWithMapping;
        ServletHolder servletHolder;
        Class clsClass$;
        String str = (String) httpServletRequest.getAttribute(Dispatcher.__INCLUDE_SERVLET_PATH);
        if (str == null) {
            servletPath = httpServletRequest.getServletPath();
            z = false;
        } else {
            servletPath = str;
            z = true;
        }
        String str2 = (String) httpServletRequest.getAttribute(Dispatcher.__INCLUDE_PATH_INFO);
        String pathInfo = str2 == null ? httpServletRequest.getPathInfo() : str2;
        if (pathInfo == null || pathInfo.length() <= 1) {
            httpServletResponse.sendError(404);
            return;
        }
        int i = pathInfo.charAt(0) != '/' ? 0 : 1;
        int iIndexOf = pathInfo.indexOf(47, i);
        String strSubstring2 = iIndexOf < 0 ? pathInfo.substring(i) : pathInfo.substring(i, iIndexOf);
        ServletHolder holder = getHolder(this._servletHandler.getServlets(), strSubstring2);
        if (holder != null) {
            Log.debug(new StringBuffer().append("Adding servlet mapping for named servlet:").append(strSubstring2).append(":").append(URIUtil.addPaths(servletPath, strSubstring2)).append("/*").toString());
            ServletMapping servletMapping = new ServletMapping();
            servletMapping.setServletName(strSubstring2);
            servletMapping.setPathSpec(new StringBuffer().append(URIUtil.addPaths(servletPath, strSubstring2)).append("/*").toString());
            ServletHandler servletHandler = this._servletHandler;
            ServletMapping[] servletMappings = this._servletHandler.getServletMappings();
            if (class$org$mortbay$jetty$servlet$ServletMapping == null) {
                clsClass$ = class$("org.mortbay.jetty.servlet.ServletMapping");
                class$org$mortbay$jetty$servlet$ServletMapping = clsClass$;
            } else {
                clsClass$ = class$org$mortbay$jetty$servlet$ServletMapping;
            }
            servletHandler.setServletMappings((ServletMapping[]) LazyList.addToArray(servletMappings, servletMapping, clsClass$));
            servletHolder = holder;
            strSubstring = strSubstring2;
        } else {
            strSubstring = strSubstring2.endsWith(".class") ? strSubstring2.substring(0, strSubstring2.length() - 6) : strSubstring2;
            if (strSubstring == null || strSubstring.length() == 0) {
                httpServletResponse.sendError(404);
                return;
            }
            synchronized (this._servletHandler) {
                this._invokerEntry = this._servletHandler.getHolderEntry(servletPath);
                String strAddPaths = URIUtil.addPaths(servletPath, strSubstring);
                PathMap.Entry holderEntry = this._servletHandler.getHolderEntry(strAddPaths);
                if (holderEntry != null && !holderEntry.equals(this._invokerEntry)) {
                    servletHolderAddServletWithMapping = (ServletHolder) holderEntry.getValue();
                } else {
                    Log.debug(new StringBuffer().append("Making new servlet=").append(strSubstring).append(" with path=").append(strAddPaths).append("/*").toString());
                    servletHolderAddServletWithMapping = this._servletHandler.addServletWithMapping(strSubstring, new StringBuffer().append(strAddPaths).append("/*").toString());
                    if (this._parameters != null) {
                        servletHolderAddServletWithMapping.setInitParameters(this._parameters);
                    }
                    try {
                        servletHolderAddServletWithMapping.start();
                        if (!this._nonContextServlets) {
                            Servlet servlet = servletHolderAddServletWithMapping.getServlet();
                            if (this._contextHandler.getClassLoader() != servlet.getClass().getClassLoader()) {
                                try {
                                    servletHolderAddServletWithMapping.stop();
                                } catch (Exception e2) {
                                    Log.ignore(e2);
                                }
                                Log.warn(new StringBuffer().append("Dynamic servlet ").append(servlet).append(" not loaded from context ").append(httpServletRequest.getContextPath()).toString());
                                throw new UnavailableException("Not in context");
                            }
                        }
                        if (this._verbose) {
                            Log.debug(new StringBuffer().append("Dynamic load '").append(strSubstring).append("' at ").append(strAddPaths).toString());
                        }
                    } catch (Exception e3) {
                        Log.debug(e3);
                        throw new UnavailableException(e3.toString());
                    }
                }
            }
            servletHolder = servletHolderAddServletWithMapping;
        }
        if (servletHolder != null) {
            servletHolder.handle(new Request(this, httpServletRequest, z, strSubstring, servletPath, pathInfo), httpServletResponse);
        } else {
            Log.info(new StringBuffer().append("Can't find holder for servlet: ").append(strSubstring).toString());
            httpServletResponse.sendError(404);
        }
    }

    static Class class$(String str) throws Throwable {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e2) {
            throw new NoClassDefFoundError().initCause(e2);
        }
    }

    class Request extends HttpServletRequestWrapper {
        boolean _included;
        String _pathInfo;
        String _servletPath;
        private final Invoker this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        Request(Invoker invoker, HttpServletRequest httpServletRequest, boolean z, String str, String str2, String str3) {
            super(httpServletRequest);
            this.this$0 = invoker;
            this._included = z;
            this._servletPath = URIUtil.addPaths(str2, str);
            this._pathInfo = str3.substring(str.length() + 1);
            if (this._pathInfo.length() == 0) {
                this._pathInfo = null;
            }
        }

        @Override // javax.servlet.http.HttpServletRequestWrapper, javax.servlet.http.HttpServletRequest
        public String getServletPath() {
            return this._included ? super.getServletPath() : this._servletPath;
        }

        @Override // javax.servlet.http.HttpServletRequestWrapper, javax.servlet.http.HttpServletRequest
        public String getPathInfo() {
            return this._included ? super.getPathInfo() : this._pathInfo;
        }

        @Override // javax.servlet.ServletRequestWrapper, javax.servlet.ServletRequest
        public Object getAttribute(String str) {
            if (this._included) {
                if (str.equals(Dispatcher.__INCLUDE_REQUEST_URI)) {
                    return URIUtil.addPaths(URIUtil.addPaths(getContextPath(), this._servletPath), this._pathInfo);
                }
                if (str.equals(Dispatcher.__INCLUDE_PATH_INFO)) {
                    return this._pathInfo;
                }
                if (str.equals(Dispatcher.__INCLUDE_SERVLET_PATH)) {
                    return this._servletPath;
                }
            }
            return super.getAttribute(str);
        }
    }

    private ServletHolder getHolder(ServletHolder[] servletHolderArr, String str) {
        ServletHolder servletHolder = null;
        if (servletHolderArr != null) {
            for (int i = 0; servletHolder == null && i < servletHolderArr.length; i++) {
                if (servletHolderArr[i].getName().equals(str)) {
                    servletHolder = servletHolderArr[i];
                }
            }
        }
        return servletHolder;
    }
}
