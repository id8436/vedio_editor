package org.mortbay.jetty.webapp;

import org.mortbay.log.Log;
import org.mortbay.resource.Resource;

/* JADX INFO: loaded from: classes3.dex */
public class WebInfConfiguration implements Configuration {
    protected WebAppContext _context;

    @Override // org.mortbay.jetty.webapp.Configuration
    public void setWebAppContext(WebAppContext webAppContext) {
        this._context = webAppContext;
    }

    @Override // org.mortbay.jetty.webapp.Configuration
    public WebAppContext getWebAppContext() {
        return this._context;
    }

    @Override // org.mortbay.jetty.webapp.Configuration
    public void configureClassLoader() throws Exception {
        if (this._context.isStarted()) {
            if (Log.isDebugEnabled()) {
                Log.debug("Cannot configure webapp after it is started");
                return;
            }
            return;
        }
        Resource webInf = this._context.getWebInf();
        if (webInf != null && webInf.isDirectory() && (this._context.getClassLoader() instanceof WebAppClassLoader)) {
            Resource resourceAddPath = webInf.addPath("classes/");
            if (resourceAddPath.exists()) {
                ((WebAppClassLoader) this._context.getClassLoader()).addClassPath(resourceAddPath.toString());
            }
            Resource resourceAddPath2 = webInf.addPath("lib/");
            if (resourceAddPath2.exists() || resourceAddPath2.isDirectory()) {
                ((WebAppClassLoader) this._context.getClassLoader()).addJars(resourceAddPath2);
            }
        }
    }

    @Override // org.mortbay.jetty.webapp.Configuration
    public void configureDefaults() throws Exception {
    }

    @Override // org.mortbay.jetty.webapp.Configuration
    public void configureWebApp() throws Exception {
    }

    @Override // org.mortbay.jetty.webapp.Configuration
    public void deconfigureWebApp() throws Exception {
    }
}
