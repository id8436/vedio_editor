package org.mortbay.jetty.servlet;

import com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360Constants;
import com.google.api.gbase.client.ServiceError;
import java.util.Enumeration;
import javax.servlet.Filter;
import javax.servlet.FilterConfig;
import javax.servlet.ServletContext;
import org.mortbay.log.Log;

/* JADX INFO: loaded from: classes3.dex */
public class FilterHolder extends Holder {
    static Class class$javax$servlet$Filter;
    private transient Config _config;
    private transient Filter _filter;

    public static int dispatch(String str) {
        if (ServiceError.REQUEST_TYPE.equalsIgnoreCase(str)) {
            return 1;
        }
        if ("forward".equalsIgnoreCase(str)) {
            return 2;
        }
        if ("include".equalsIgnoreCase(str)) {
            return 4;
        }
        if (Adobe360Constants.kAdobe360SatusError.equalsIgnoreCase(str)) {
            return 8;
        }
        throw new IllegalArgumentException(str);
    }

    public FilterHolder() {
    }

    public FilterHolder(Class cls) {
        super(cls);
    }

    public FilterHolder(Filter filter) {
        setFilter(filter);
    }

    @Override // org.mortbay.jetty.servlet.Holder, org.mortbay.component.AbstractLifeCycle
    public void doStart() throws Exception {
        Class clsClass$;
        super.doStart();
        if (class$javax$servlet$Filter == null) {
            clsClass$ = class$("javax.servlet.Filter");
            class$javax$servlet$Filter = clsClass$;
        } else {
            clsClass$ = class$javax$servlet$Filter;
        }
        if (!clsClass$.isAssignableFrom(this._class)) {
            String string = new StringBuffer().append(this._class).append(" is not a javax.servlet.Filter").toString();
            super.stop();
            throw new IllegalStateException(string);
        }
        if (this._filter == null) {
            this._filter = (Filter) newInstance();
        }
        this._filter = getServletHandler().customizeFilter(this._filter);
        this._config = new Config(this);
        this._filter.init(this._config);
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
        if (this._filter != null) {
            try {
                destroyInstance(this._filter);
            } catch (Exception e2) {
                Log.warn(e2);
            }
        }
        if (!this._extInstance) {
            this._filter = null;
        }
        this._config = null;
        super.doStop();
    }

    @Override // org.mortbay.jetty.servlet.Holder
    public void destroyInstance(Object obj) throws Exception {
        if (obj != null) {
            Filter filter = (Filter) obj;
            filter.destroy();
            getServletHandler().customizeFilterDestroy(filter);
        }
    }

    public synchronized void setFilter(Filter filter) {
        this._filter = filter;
        this._extInstance = true;
        setHeldClass(filter.getClass());
        if (getName() == null) {
            setName(filter.getClass().getName());
        }
    }

    public Filter getFilter() {
        return this._filter;
    }

    @Override // org.mortbay.jetty.servlet.Holder
    public String toString() {
        return getName();
    }

    class Config implements FilterConfig {
        private final FilterHolder this$0;

        Config(FilterHolder filterHolder) {
            this.this$0 = filterHolder;
        }

        @Override // javax.servlet.FilterConfig
        public String getFilterName() {
            return this.this$0._name;
        }

        @Override // javax.servlet.FilterConfig
        public ServletContext getServletContext() {
            return this.this$0._servletHandler.getServletContext();
        }

        @Override // javax.servlet.FilterConfig
        public String getInitParameter(String str) {
            return this.this$0.getInitParameter(str);
        }

        @Override // javax.servlet.FilterConfig
        public Enumeration getInitParameterNames() {
            return this.this$0.getInitParameterNames();
        }
    }
}
