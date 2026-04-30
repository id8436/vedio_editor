package org.mortbay.jetty.deployer;

import java.util.ArrayList;
import org.mortbay.component.AbstractLifeCycle;
import org.mortbay.jetty.HandlerContainer;
import org.mortbay.jetty.handler.ContextHandler;

/* JADX INFO: loaded from: classes3.dex */
public class WebAppDeployer extends AbstractLifeCycle {
    static Class class$org$mortbay$jetty$handler$ContextHandler;
    static Class class$org$mortbay$jetty$webapp$WebAppContext;
    private boolean _allowDuplicates;
    private String[] _configurationClasses;
    private HandlerContainer _contexts;
    private String _defaultsDescriptor;
    private ArrayList _deployed;
    private boolean _extract;
    private boolean _parentLoaderPriority;
    private String _webAppDir;

    public String[] getConfigurationClasses() {
        return this._configurationClasses;
    }

    public void setConfigurationClasses(String[] strArr) {
        this._configurationClasses = strArr;
    }

    public HandlerContainer getContexts() {
        return this._contexts;
    }

    public void setContexts(HandlerContainer handlerContainer) {
        this._contexts = handlerContainer;
    }

    public String getDefaultsDescriptor() {
        return this._defaultsDescriptor;
    }

    public void setDefaultsDescriptor(String str) {
        this._defaultsDescriptor = str;
    }

    public boolean isExtract() {
        return this._extract;
    }

    public void setExtract(boolean z) {
        this._extract = z;
    }

    public boolean isParentLoaderPriority() {
        return this._parentLoaderPriority;
    }

    public void setParentLoaderPriority(boolean z) {
        this._parentLoaderPriority = z;
    }

    public String getWebAppDir() {
        return this._webAppDir;
    }

    public void setWebAppDir(String str) {
        this._webAppDir = str;
    }

    public boolean getAllowDuplicates() {
        return this._allowDuplicates;
    }

    public void setAllowDuplicates(boolean z) {
        this._allowDuplicates = z;
    }

    @Override // org.mortbay.component.AbstractLifeCycle
    public void doStart() throws Exception {
        this._deployed = new ArrayList();
        scan();
    }

    /* JADX WARN: Removed duplicated region for block: B:111:0x007b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00bd A[PHI: r0
  0x00bd: PHI (r0v8 java.lang.String) = (r0v7 java.lang.String), (r0v7 java.lang.String), (r0v7 java.lang.String), (r0v5 java.lang.String) binds: [B:30:0x00af, B:32:0x00b5, B:34:0x00bb, B:64:0x0144] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:76:0x017f  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x01b0  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x01b9  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x01e1  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x01f1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void scan() throws java.lang.Exception {
        /*
            Method dump skipped, instruction units count: 510
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mortbay.jetty.deployer.WebAppDeployer.scan():void");
    }

    static Class class$(String str) throws Throwable {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e2) {
            throw new NoClassDefFoundError().initCause(e2);
        }
    }

    @Override // org.mortbay.component.AbstractLifeCycle
    public void doStop() throws Exception {
        int size = this._deployed.size();
        while (true) {
            int i = size - 1;
            if (size > 0) {
                ((ContextHandler) this._deployed.get(i)).stop();
                size = i;
            } else {
                return;
            }
        }
    }
}
