package org.mortbay.jetty.servlet;

import java.io.Serializable;
import java.util.Collections;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.UnavailableException;
import org.mortbay.component.AbstractLifeCycle;
import org.mortbay.log.Log;
import org.mortbay.util.Loader;

/* JADX INFO: loaded from: classes3.dex */
public class Holder extends AbstractLifeCycle implements Serializable {
    static Class class$org$mortbay$jetty$servlet$Holder;
    protected transient Class _class;
    protected String _className;
    protected String _displayName;
    protected boolean _extInstance;
    protected Map _initParams;
    protected String _name;
    protected ServletHandler _servletHandler;

    protected Holder() {
    }

    protected Holder(Class cls) {
        this._class = cls;
        if (cls != null) {
            this._className = cls.getName();
            this._name = new StringBuffer().append(cls.getName()).append("-").append(hashCode()).toString();
        }
    }

    @Override // org.mortbay.component.AbstractLifeCycle
    public void doStart() throws Exception {
        Class clsClass$;
        if (this._class == null && (this._className == null || this._className.equals(""))) {
            throw new UnavailableException("No class for Servlet or Filter", -1);
        }
        if (this._class == null) {
            try {
                if (class$org$mortbay$jetty$servlet$Holder == null) {
                    clsClass$ = class$("org.mortbay.jetty.servlet.Holder");
                    class$org$mortbay$jetty$servlet$Holder = clsClass$;
                } else {
                    clsClass$ = class$org$mortbay$jetty$servlet$Holder;
                }
                this._class = Loader.loadClass(clsClass$, this._className);
                if (Log.isDebugEnabled()) {
                    Log.debug("Holding {}", this._class);
                }
            } catch (Exception e2) {
                Log.warn(e2);
                throw new UnavailableException(e2.getMessage(), -1);
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

    @Override // org.mortbay.component.AbstractLifeCycle
    public void doStop() {
        if (!this._extInstance) {
            this._class = null;
        }
    }

    public String getClassName() {
        return this._className;
    }

    public Class getHeldClass() {
        return this._class;
    }

    public String getDisplayName() {
        return this._displayName;
    }

    public String getInitParameter(String str) {
        if (this._initParams == null) {
            return null;
        }
        return (String) this._initParams.get(str);
    }

    public Enumeration getInitParameterNames() {
        return this._initParams == null ? Collections.enumeration(Collections.EMPTY_LIST) : Collections.enumeration(this._initParams.keySet());
    }

    public Map getInitParameters() {
        return this._initParams;
    }

    public String getName() {
        return this._name;
    }

    public ServletHandler getServletHandler() {
        return this._servletHandler;
    }

    public synchronized Object newInstance() throws IllegalAccessException, InstantiationException {
        if (this._class == null) {
            throw new InstantiationException(new StringBuffer().append("!").append(this._className).toString());
        }
        return this._class.newInstance();
    }

    public void destroyInstance(Object obj) throws Exception {
    }

    public void setClassName(String str) {
        this._className = str;
        this._class = null;
    }

    public void setHeldClass(Class cls) {
        this._class = cls;
        this._className = cls != null ? cls.getName() : null;
    }

    public void setDisplayName(String str) {
        this._displayName = str;
    }

    public void setInitParameter(String str, String str2) {
        if (this._initParams == null) {
            this._initParams = new HashMap(3);
        }
        this._initParams.put(str, str2);
    }

    public void setInitParameters(Map map) {
        this._initParams = map;
    }

    public void setName(String str) {
        this._name = str;
    }

    public void setServletHandler(ServletHandler servletHandler) {
        this._servletHandler = servletHandler;
    }

    public String toString() {
        return this._name;
    }
}
