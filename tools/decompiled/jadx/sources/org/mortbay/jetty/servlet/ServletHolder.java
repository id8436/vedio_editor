package org.mortbay.jetty.servlet;

import java.io.IOException;
import java.security.Principal;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;
import java.util.Stack;
import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.SingleThreadModel;
import javax.servlet.UnavailableException;
import org.mortbay.jetty.handler.ContextHandler;
import org.mortbay.jetty.security.SecurityHandler;
import org.mortbay.jetty.security.UserRealm;
import org.mortbay.log.Log;

/* JADX INFO: loaded from: classes3.dex */
public class ServletHolder extends Holder implements Comparable {
    static Class class$javax$servlet$Servlet;
    static Class class$javax$servlet$SingleThreadModel;
    static Class class$org$mortbay$jetty$security$SecurityHandler;
    private transient Config _config;
    private String _forcedPath;
    private boolean _initOnStartup;
    private int _initOrder;
    private UserRealm _realm;
    private Map _roleMap;
    private String _runAs;
    private transient Servlet _servlet;
    private transient long _unavailable;
    private transient UnavailableException _unavailableEx;

    /* JADX INFO: renamed from: org.mortbay.jetty.servlet.ServletHolder$1, reason: invalid class name */
    class AnonymousClass1 {
    }

    public ServletHolder() {
        this._initOnStartup = false;
    }

    public ServletHolder(Servlet servlet) {
        this._initOnStartup = false;
        setServlet(servlet);
    }

    public ServletHolder(Class cls) {
        super(cls);
        this._initOnStartup = false;
    }

    public UnavailableException getUnavailableException() {
        return this._unavailableEx;
    }

    public synchronized void setServlet(Servlet servlet) {
        if (servlet != null) {
            if (!(servlet instanceof SingleThreadModel)) {
                this._extInstance = true;
                this._servlet = servlet;
                setHeldClass(servlet.getClass());
                if (getName() == null) {
                    setName(new StringBuffer().append(servlet.getClass().getName()).append("-").append(super.hashCode()).toString());
                }
            }
        }
        throw new IllegalArgumentException();
    }

    public int getInitOrder() {
        return this._initOrder;
    }

    public void setInitOrder(int i) {
        this._initOnStartup = true;
        this._initOrder = i;
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        int iCompareTo = 0;
        if (!(obj instanceof ServletHolder)) {
            return 1;
        }
        ServletHolder servletHolder = (ServletHolder) obj;
        if (servletHolder == this) {
            return 0;
        }
        if (servletHolder._initOrder < this._initOrder) {
            return 1;
        }
        if (servletHolder._initOrder > this._initOrder) {
            return -1;
        }
        if (this._className != null && servletHolder._className != null) {
            iCompareTo = this._className.compareTo(servletHolder._className);
        }
        int iCompareTo2 = iCompareTo == 0 ? this._name.compareTo(servletHolder._name) : iCompareTo;
        if (iCompareTo2 == 0) {
            iCompareTo2 = hashCode() > obj.hashCode() ? 1 : -1;
        }
        return iCompareTo2;
    }

    public boolean equals(Object obj) {
        return compareTo(obj) == 0;
    }

    public int hashCode() {
        return this._name == null ? System.identityHashCode(this) : this._name.hashCode();
    }

    public synchronized void setUserRoleLink(String str, String str2) {
        if (this._roleMap == null) {
            this._roleMap = new HashMap();
        }
        this._roleMap.put(str, str2);
    }

    public String getUserRoleLink(String str) {
        String str2;
        return (this._roleMap == null || (str2 = (String) this._roleMap.get(str)) == null) ? str : str2;
    }

    public Map getRoleMap() {
        return this._roleMap;
    }

    public void setRunAs(String str) {
        this._runAs = str;
    }

    public String getRunAs() {
        return this._runAs;
    }

    public String getForcedPath() {
        return this._forcedPath;
    }

    public void setForcedPath(String str) {
        this._forcedPath = str;
    }

    @Override // org.mortbay.jetty.servlet.Holder, org.mortbay.component.AbstractLifeCycle
    public void doStart() throws Exception {
        Class clsClass$;
        Class clsClass$2;
        this._unavailable = 0L;
        try {
            super.doStart();
            checkServletType();
        } catch (UnavailableException e2) {
            makeUnavailable(e2);
        }
        this._config = new Config(this);
        if (this._runAs != null) {
            ContextHandler contextHandler = ContextHandler.getCurrentContext().getContextHandler();
            if (class$org$mortbay$jetty$security$SecurityHandler == null) {
                clsClass$2 = class$("org.mortbay.jetty.security.SecurityHandler");
                class$org$mortbay$jetty$security$SecurityHandler = clsClass$2;
            } else {
                clsClass$2 = class$org$mortbay$jetty$security$SecurityHandler;
            }
            this._realm = ((SecurityHandler) contextHandler.getChildHandlerByClass(clsClass$2)).getUserRealm();
        }
        if (class$javax$servlet$SingleThreadModel == null) {
            clsClass$ = class$("javax.servlet.SingleThreadModel");
            class$javax$servlet$SingleThreadModel = clsClass$;
        } else {
            clsClass$ = class$javax$servlet$SingleThreadModel;
        }
        if (clsClass$.isAssignableFrom(this._class)) {
            this._servlet = new SingleThreadedWrapper(this, null);
        }
        if (this._extInstance || this._initOnStartup) {
            try {
                initServlet();
            } catch (Exception e3) {
                if (this._servletHandler.isStartWithUnavailable()) {
                    Log.ignore(e3);
                    return;
                }
                throw e3;
            }
        }
    }

    static Class class$(String str) throws Throwable {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e2) {
            throw new NoClassDefFoundError().initCause(e2);
        }
    }

    @Override // org.mortbay.jetty.servlet.Holder, org.mortbay.component.AbstractLifeCycle
    public void doStop() {
        Principal principalPushRole = null;
        try {
            if (this._runAs != null && this._realm != null) {
                principalPushRole = this._realm.pushRole(null, this._runAs);
            }
            if (this._servlet != null) {
                try {
                    destroyInstance(this._servlet);
                } catch (Exception e2) {
                    Log.warn(e2);
                }
            }
            if (!this._extInstance) {
                this._servlet = null;
            }
            this._config = null;
        } finally {
            super.doStop();
            if (this._runAs != null && this._realm != null && principalPushRole != null) {
                this._realm.popRole(principalPushRole);
            }
        }
    }

    @Override // org.mortbay.jetty.servlet.Holder
    public void destroyInstance(Object obj) throws Exception {
        if (obj != null) {
            Servlet servlet = (Servlet) obj;
            servlet.destroy();
            getServletHandler().customizeServletDestroy(servlet);
        }
    }

    public synchronized Servlet getServlet() throws ServletException {
        if (this._unavailable != 0) {
            if (this._unavailable < 0 || (this._unavailable > 0 && System.currentTimeMillis() < this._unavailable)) {
                throw this._unavailableEx;
            }
            this._unavailable = 0L;
            this._unavailableEx = null;
        }
        if (this._servlet == null) {
            initServlet();
        }
        return this._servlet;
    }

    public Servlet getServletInstance() {
        return this._servlet;
    }

    public void checkServletType() throws Throwable {
        Class clsClass$;
        if (class$javax$servlet$Servlet == null) {
            clsClass$ = class$("javax.servlet.Servlet");
            class$javax$servlet$Servlet = clsClass$;
        } else {
            clsClass$ = class$javax$servlet$Servlet;
        }
        if (!clsClass$.isAssignableFrom(this._class)) {
            throw new UnavailableException(new StringBuffer().append("Servlet ").append(this._class).append(" is not a javax.servlet.Servlet").toString());
        }
    }

    public boolean isAvailable() {
        if (isStarted() && this._unavailable == 0) {
            return true;
        }
        try {
            getServlet();
        } catch (Exception e2) {
            Log.ignore(e2);
        }
        return isStarted() && this._unavailable == 0;
    }

    private void makeUnavailable(UnavailableException unavailableException) {
        if (this._unavailableEx != unavailableException || this._unavailable == 0) {
            this._servletHandler.getServletContext().log(new StringBuffer().append("Unavailable ").append(unavailableException).toString());
            this._unavailableEx = unavailableException;
            this._unavailable = -1L;
            if (unavailableException.isPermanent()) {
                this._unavailable = -1L;
            } else if (this._unavailableEx.getUnavailableSeconds() > 0) {
                this._unavailable = System.currentTimeMillis() + ((long) (this._unavailableEx.getUnavailableSeconds() * 1000));
            } else {
                this._unavailable = System.currentTimeMillis() + 5000;
            }
        }
    }

    private void makeUnavailable(Throwable th) {
        if (th instanceof UnavailableException) {
            makeUnavailable((UnavailableException) th);
            return;
        }
        this._servletHandler.getServletContext().log("unavailable", th);
        this._unavailableEx = new UnavailableException(th.toString(), -1);
        this._unavailable = -1L;
    }

    private void initServlet() throws ServletException {
        Principal principalPushRole = null;
        try {
            try {
                if (this._servlet == null) {
                    this._servlet = (Servlet) newInstance();
                }
                if (this._config == null) {
                    this._config = new Config(this);
                }
                if (!(this._servlet instanceof SingleThreadedWrapper)) {
                    this._servlet = getServletHandler().customizeServlet(this._servlet);
                }
                if (this._runAs != null && this._realm != null) {
                    principalPushRole = this._realm.pushRole(null, this._runAs);
                }
                this._servlet.init(this._config);
            } catch (UnavailableException e2) {
                makeUnavailable(e2);
                this._servlet = null;
                this._config = null;
                throw e2;
            } catch (ServletException e3) {
                makeUnavailable(e3.getCause() == null ? e3 : e3.getCause());
                this._servlet = null;
                this._config = null;
                throw e3;
            } catch (Exception e4) {
                makeUnavailable(e4);
                this._servlet = null;
                this._config = null;
                throw new ServletException(e4);
            }
        } finally {
            if (this._runAs != null && this._realm != null && principalPushRole != null) {
                this._realm.popRole(principalPushRole);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:12:0x001d A[Catch: all -> 0x003f, PHI: r2
  0x001d: PHI (r2v2 ??) = (r2v27 ??), (r2v28 ??) binds: [B:9:0x0017, B:11:0x001b] A[DONT_GENERATE, DONT_INLINE], TryCatch #8 {, blocks: (B:8:0x0011, B:10:0x0019, B:14:0x0023, B:15:0x003e, B:19:0x0042, B:12:0x001d), top: B:70:0x0011 }] */
    /* JADX WARN: Type inference failed for: r2v16 */
    /* JADX WARN: Type inference failed for: r2v18 */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v25 */
    /* JADX WARN: Type inference failed for: r2v26 */
    /* JADX WARN: Type inference failed for: r2v27 */
    /* JADX WARN: Type inference failed for: r2v28 */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v4, types: [java.security.Principal] */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r3v2, types: [org.mortbay.jetty.security.UserRealm] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void handle(javax.servlet.ServletRequest r8, javax.servlet.ServletResponse r9) throws javax.servlet.ServletException, java.io.IOException {
        /*
            Method dump skipped, instruction units count: 206
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mortbay.jetty.servlet.ServletHolder.handle(javax.servlet.ServletRequest, javax.servlet.ServletResponse):void");
    }

    class Config implements ServletConfig {
        private final ServletHolder this$0;

        Config(ServletHolder servletHolder) {
            this.this$0 = servletHolder;
        }

        @Override // javax.servlet.ServletConfig
        public String getServletName() {
            return this.this$0.getName();
        }

        @Override // javax.servlet.ServletConfig
        public ServletContext getServletContext() {
            return this.this$0._servletHandler.getServletContext();
        }

        @Override // javax.servlet.ServletConfig
        public String getInitParameter(String str) {
            return this.this$0.getInitParameter(str);
        }

        @Override // javax.servlet.ServletConfig
        public Enumeration getInitParameterNames() {
            return this.this$0.getInitParameterNames();
        }
    }

    class SingleThreadedWrapper implements Servlet {
        Stack _stack;
        private final ServletHolder this$0;

        private SingleThreadedWrapper(ServletHolder servletHolder) {
            this.this$0 = servletHolder;
            this._stack = new Stack();
        }

        SingleThreadedWrapper(ServletHolder servletHolder, AnonymousClass1 anonymousClass1) {
            this(servletHolder);
        }

        @Override // javax.servlet.Servlet
        public void destroy() {
            synchronized (this) {
                while (this._stack.size() > 0) {
                    try {
                        ((Servlet) this._stack.pop()).destroy();
                    } catch (Exception e2) {
                        Log.warn(e2);
                    }
                }
            }
        }

        @Override // javax.servlet.Servlet
        public ServletConfig getServletConfig() {
            return this.this$0._config;
        }

        @Override // javax.servlet.Servlet
        public String getServletInfo() {
            return null;
        }

        @Override // javax.servlet.Servlet
        public void init(ServletConfig servletConfig) throws ServletException {
            synchronized (this) {
                if (this._stack.size() == 0) {
                    try {
                        Servlet servletCustomizeServlet = this.this$0.getServletHandler().customizeServlet((Servlet) this.this$0.newInstance());
                        servletCustomizeServlet.init(servletConfig);
                        this._stack.push(servletCustomizeServlet);
                    } catch (ServletException e2) {
                        throw e2;
                    } catch (Exception e3) {
                        throw new ServletException(e3);
                    }
                }
            }
        }

        @Override // javax.servlet.Servlet
        public void service(ServletRequest servletRequest, ServletResponse servletResponse) throws ServletException, IOException {
            Servlet servletCustomizeServlet;
            synchronized (this) {
                if (this._stack.size() > 0) {
                    servletCustomizeServlet = (Servlet) this._stack.pop();
                } else {
                    try {
                        try {
                            servletCustomizeServlet = this.this$0.getServletHandler().customizeServlet((Servlet) this.this$0.newInstance());
                            servletCustomizeServlet.init(this.this$0._config);
                        } catch (IOException e2) {
                            throw e2;
                        }
                    } catch (ServletException e3) {
                        throw e3;
                    } catch (Exception e4) {
                        throw new ServletException(e4);
                    }
                }
            }
            try {
                servletCustomizeServlet.service(servletRequest, servletResponse);
                synchronized (this) {
                    this._stack.push(servletCustomizeServlet);
                }
            } catch (Throwable th) {
                synchronized (this) {
                    this._stack.push(servletCustomizeServlet);
                    throw th;
                }
            }
        }
    }
}
