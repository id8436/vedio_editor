package org.mortbay.jetty.webapp;

import org.mortbay.log.Log;
import org.mortbay.resource.Resource;
import org.mortbay.xml.XmlConfiguration;

/* JADX INFO: loaded from: classes3.dex */
public class JettyWebXmlConfiguration implements Configuration {
    private WebAppContext _context;

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
    }

    @Override // org.mortbay.jetty.webapp.Configuration
    public void configureDefaults() throws Exception {
    }

    @Override // org.mortbay.jetty.webapp.Configuration
    public void configureWebApp() throws Exception {
        if (this._context.isStarted()) {
            if (Log.isDebugEnabled()) {
                Log.debug("Cannot configure webapp after it is started");
                return;
            }
            return;
        }
        if (Log.isDebugEnabled()) {
            Log.debug("Configuring web-jetty.xml");
        }
        Resource webInf = getWebAppContext().getWebInf();
        if (webInf != null && webInf.isDirectory()) {
            Resource resourceAddPath = webInf.addPath("jetty6-web.xml");
            if (!resourceAddPath.exists()) {
                resourceAddPath = webInf.addPath("jetty-web.xml");
            }
            if (!resourceAddPath.exists()) {
                resourceAddPath = webInf.addPath("web-jetty.xml");
            }
            if (resourceAddPath.exists()) {
                String[] serverClasses = this._context.getServerClasses();
                try {
                    this._context.setServerClasses(null);
                    if (Log.isDebugEnabled()) {
                        Log.debug(new StringBuffer().append("Configure: ").append(resourceAddPath).toString());
                    }
                    new XmlConfiguration(resourceAddPath.getURL()).configure(getWebAppContext());
                } finally {
                    if (this._context.getServerClasses() == null) {
                        this._context.setServerClasses(serverClasses);
                    }
                }
            }
        }
    }

    @Override // org.mortbay.jetty.webapp.Configuration
    public void deconfigureWebApp() throws Exception {
    }
}
