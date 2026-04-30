package org.mortbay.jetty.servlet;

import java.security.SecureRandom;
import java.util.Random;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.mortbay.component.AbstractLifeCycle;
import org.mortbay.jetty.SessionIdManager;
import org.mortbay.jetty.servlet.AbstractSessionManager;
import org.mortbay.log.Log;
import org.mortbay.util.MultiMap;

/* JADX INFO: loaded from: classes3.dex */
public class HashSessionIdManager extends AbstractLifeCycle implements SessionIdManager {
    private static final String __NEW_SESSION_ID = "org.mortbay.jetty.newSessionId";
    protected Random _random;
    MultiMap _sessions;
    private boolean _weakRandom;
    private String _workerName;

    public HashSessionIdManager() {
    }

    public HashSessionIdManager(Random random) {
        this._random = random;
    }

    @Override // org.mortbay.jetty.SessionIdManager
    public String getWorkerName() {
        return this._workerName;
    }

    public void setWorkerName(String str) {
        this._workerName = str;
    }

    @Override // org.mortbay.jetty.SessionIdManager
    public String getNodeId(String str, HttpServletRequest httpServletRequest) {
        String str2 = httpServletRequest == null ? null : (String) httpServletRequest.getAttribute("org.mortbay.http.ajp.JVMRoute");
        if (str2 != null) {
            return new StringBuffer().append(str).append('.').append(str2).toString();
        }
        if (this._workerName != null) {
            return new StringBuffer().append(str).append('.').append(this._workerName).toString();
        }
        return str;
    }

    @Override // org.mortbay.jetty.SessionIdManager
    public String getClusterId(String str) {
        int iLastIndexOf = str.lastIndexOf(46);
        return iLastIndexOf > 0 ? str.substring(0, iLastIndexOf) : str;
    }

    @Override // org.mortbay.component.AbstractLifeCycle
    protected void doStart() {
        if (this._random == null) {
            try {
                Log.debug("Init SecureRandom.");
                this._random = new SecureRandom();
            } catch (Exception e2) {
                Log.warn("Could not generate SecureRandom for session-id randomness", (Throwable) e2);
                this._random = new Random();
                this._weakRandom = true;
            }
        }
        this._sessions = new MultiMap();
    }

    @Override // org.mortbay.component.AbstractLifeCycle
    protected void doStop() {
        if (this._sessions != null) {
            this._sessions.clear();
        }
        this._sessions = null;
    }

    @Override // org.mortbay.jetty.SessionIdManager
    public boolean idInUse(String str) {
        return this._sessions.containsKey(str);
    }

    @Override // org.mortbay.jetty.SessionIdManager
    public void addSession(HttpSession httpSession) {
        synchronized (this) {
            this._sessions.add(getClusterId(httpSession.getId()), httpSession);
        }
    }

    @Override // org.mortbay.jetty.SessionIdManager
    public void removeSession(HttpSession httpSession) {
        synchronized (this) {
            this._sessions.removeValue(getClusterId(httpSession.getId()), httpSession);
        }
    }

    @Override // org.mortbay.jetty.SessionIdManager
    public void invalidateAll(String str) {
        AbstractSessionManager.Session session;
        while (true) {
            synchronized (this) {
                if (!this._sessions.containsKey(str)) {
                    return;
                }
                session = (AbstractSessionManager.Session) this._sessions.getValue(str, 0);
                this._sessions.removeValue(str, session);
            }
            if (session.isValid()) {
                session.invalidate();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0015 A[Catch: all -> 0x0028, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x0009, B:8:0x0013, B:10:0x0015, B:12:0x0020, B:14:0x0026, B:21:0x002e, B:23:0x0034, B:36:0x0092, B:38:0x0096, B:39:0x00a9, B:40:0x00af, B:25:0x003a, B:27:0x003e, B:28:0x005d, B:34:0x006d, B:35:0x008b), top: B:42:0x0003 }] */
    @Override // org.mortbay.jetty.SessionIdManager
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String newSessionId(javax.servlet.http.HttpServletRequest r9, long r10) {
        /*
            r8 = this;
            r6 = 0
            monitor-enter(r8)
            java.lang.String r0 = r9.getRequestedSessionId()     // Catch: java.lang.Throwable -> L28
            if (r0 == 0) goto L15
            java.lang.String r0 = r8.getClusterId(r0)     // Catch: java.lang.Throwable -> L28
            boolean r1 = r8.idInUse(r0)     // Catch: java.lang.Throwable -> L28
            if (r1 == 0) goto L15
            monitor-exit(r8)     // Catch: java.lang.Throwable -> L28
        L14:
            return r0
        L15:
            java.lang.String r0 = "org.mortbay.jetty.newSessionId"
            java.lang.Object r0 = r9.getAttribute(r0)     // Catch: java.lang.Throwable -> L28
            java.lang.String r0 = (java.lang.String) r0     // Catch: java.lang.Throwable -> L28
            if (r0 == 0) goto L2b
            boolean r1 = r8.idInUse(r0)     // Catch: java.lang.Throwable -> L28
            if (r1 == 0) goto L2b
            monitor-exit(r8)     // Catch: java.lang.Throwable -> L28
            goto L14
        L28:
            r0 = move-exception
            monitor-exit(r8)     // Catch: java.lang.Throwable -> L28
            throw r0
        L2b:
            r0 = 0
        L2c:
            if (r0 == 0) goto L3a
            int r1 = r0.length()     // Catch: java.lang.Throwable -> L28
            if (r1 == 0) goto L3a
            boolean r1 = r8.idInUse(r0)     // Catch: java.lang.Throwable -> L28
            if (r1 == 0) goto L92
        L3a:
            boolean r0 = r8._weakRandom     // Catch: java.lang.Throwable -> L28
            if (r0 == 0) goto L8b
            int r0 = r8.hashCode()     // Catch: java.lang.Throwable -> L28
            long r0 = (long) r0     // Catch: java.lang.Throwable -> L28
            java.lang.Runtime r2 = java.lang.Runtime.getRuntime()     // Catch: java.lang.Throwable -> L28
            long r2 = r2.freeMemory()     // Catch: java.lang.Throwable -> L28
            long r0 = r0 ^ r2
            java.util.Random r2 = r8._random     // Catch: java.lang.Throwable -> L28
            int r2 = r2.nextInt()     // Catch: java.lang.Throwable -> L28
            long r2 = (long) r2     // Catch: java.lang.Throwable -> L28
            long r0 = r0 ^ r2
            int r2 = r9.hashCode()     // Catch: java.lang.Throwable -> L28
            long r2 = (long) r2     // Catch: java.lang.Throwable -> L28
            r4 = 32
            long r2 = r2 << r4
            long r2 = r2 ^ r0
        L5d:
            java.util.Random r0 = r8._random     // Catch: java.lang.Throwable -> L28
            long r0 = r0.nextLong()     // Catch: java.lang.Throwable -> L28
            int r4 = (r2 > r6 ? 1 : (r2 == r6 ? 0 : -1))
            if (r4 >= 0) goto L68
            long r2 = -r2
        L68:
            int r4 = (r0 > r6 ? 1 : (r0 == r6 ? 0 : -1))
            if (r4 >= 0) goto L6d
            long r0 = -r0
        L6d:
            java.lang.StringBuffer r4 = new java.lang.StringBuffer     // Catch: java.lang.Throwable -> L28
            r4.<init>()     // Catch: java.lang.Throwable -> L28
            r5 = 36
            java.lang.String r2 = java.lang.Long.toString(r2, r5)     // Catch: java.lang.Throwable -> L28
            java.lang.StringBuffer r2 = r4.append(r2)     // Catch: java.lang.Throwable -> L28
            r3 = 36
            java.lang.String r0 = java.lang.Long.toString(r0, r3)     // Catch: java.lang.Throwable -> L28
            java.lang.StringBuffer r0 = r2.append(r0)     // Catch: java.lang.Throwable -> L28
            java.lang.String r0 = r0.toString()     // Catch: java.lang.Throwable -> L28
            goto L2c
        L8b:
            java.util.Random r0 = r8._random     // Catch: java.lang.Throwable -> L28
            long r2 = r0.nextLong()     // Catch: java.lang.Throwable -> L28
            goto L5d
        L92:
            java.lang.String r1 = r8._workerName     // Catch: java.lang.Throwable -> L28
            if (r1 == 0) goto La9
            java.lang.StringBuffer r1 = new java.lang.StringBuffer     // Catch: java.lang.Throwable -> L28
            r1.<init>()     // Catch: java.lang.Throwable -> L28
            java.lang.String r2 = r8._workerName     // Catch: java.lang.Throwable -> L28
            java.lang.StringBuffer r1 = r1.append(r2)     // Catch: java.lang.Throwable -> L28
            java.lang.StringBuffer r0 = r1.append(r0)     // Catch: java.lang.Throwable -> L28
            java.lang.String r0 = r0.toString()     // Catch: java.lang.Throwable -> L28
        La9:
            java.lang.String r1 = "org.mortbay.jetty.newSessionId"
            r9.setAttribute(r1, r0)     // Catch: java.lang.Throwable -> L28
            monitor-exit(r8)     // Catch: java.lang.Throwable -> L28
            goto L14
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mortbay.jetty.servlet.HashSessionIdManager.newSessionId(javax.servlet.http.HttpServletRequest, long):java.lang.String");
    }

    public Random getRandom() {
        return this._random;
    }

    public void setRandom(Random random) {
        this._random = random;
        this._weakRandom = false;
    }
}
