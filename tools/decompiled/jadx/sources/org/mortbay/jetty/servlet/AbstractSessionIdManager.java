package org.mortbay.jetty.servlet;

import java.security.SecureRandom;
import java.util.Random;
import org.mortbay.component.AbstractLifeCycle;
import org.mortbay.jetty.Server;
import org.mortbay.jetty.SessionIdManager;
import org.mortbay.log.Log;

/* JADX INFO: loaded from: classes3.dex */
public abstract class AbstractSessionIdManager extends AbstractLifeCycle implements SessionIdManager {
    private static final String __NEW_SESSION_ID = "org.mortbay.jetty.newSessionId";
    protected Random _random;
    protected Server _server;
    protected boolean _weakRandom;
    protected String _workerName;

    public AbstractSessionIdManager(Server server) {
        this._server = server;
    }

    public AbstractSessionIdManager(Server server, Random random) {
        this._random = random;
        this._server = server;
    }

    @Override // org.mortbay.jetty.SessionIdManager
    public String getWorkerName() {
        return this._workerName;
    }

    public void setWorkerName(String str) {
        this._workerName = str;
    }

    public Random getRandom() {
        return this._random;
    }

    public void setRandom(Random random) {
        this._random = random;
        this._weakRandom = false;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0017 A[Catch: all -> 0x002a, TryCatch #0 {, blocks: (B:4:0x0005, B:6:0x000b, B:8:0x0015, B:10:0x0017, B:12:0x0022, B:14:0x0028, B:21:0x0030, B:23:0x0036, B:42:0x00cd, B:43:0x00d3, B:25:0x003c, B:27:0x0040, B:31:0x0063, B:33:0x0067, B:37:0x0089, B:39:0x00aa, B:41:0x00c6, B:40:0x00bf), top: B:46:0x0005 }] */
    @Override // org.mortbay.jetty.SessionIdManager
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String newSessionId(javax.servlet.http.HttpServletRequest r11, long r12) {
        /*
            Method dump skipped, instruction units count: 216
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mortbay.jetty.servlet.AbstractSessionIdManager.newSessionId(javax.servlet.http.HttpServletRequest, long):java.lang.String");
    }

    @Override // org.mortbay.component.AbstractLifeCycle
    public void doStart() {
        initRandom();
    }

    public void initRandom() {
        if (this._random == null) {
            try {
                this._random = new SecureRandom();
                this._weakRandom = false;
            } catch (Exception e2) {
                Log.warn("Could not generate SecureRandom for session-id randomness", (Throwable) e2);
                this._random = new Random();
                this._weakRandom = true;
            }
        }
        this._random.setSeed(((this._random.nextLong() ^ System.currentTimeMillis()) ^ ((long) hashCode())) ^ Runtime.getRuntime().freeMemory());
    }
}
