package org.mortbay.jetty.servlet;

import com.google.android.exoplayer.DefaultLoadControl;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.ObjectStreamClass;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;
import javax.servlet.http.HttpServletRequest;
import org.mortbay.jetty.servlet.AbstractSessionManager;
import org.mortbay.log.Log;
import org.mortbay.util.LazyList;

/* JADX INFO: loaded from: classes3.dex */
public class HashSessionManager extends AbstractSessionManager {
    private TimerTask _saveTask;
    protected Map _sessions;
    private File _storeDir;
    private TimerTask _task;
    private Timer _timer;
    private int _scavengePeriodMs = DefaultLoadControl.DEFAULT_HIGH_WATERMARK_MS;
    private int _savePeriodMs = 0;
    private boolean _lazyLoad = false;
    private boolean _sessionsLoaded = false;

    @Override // org.mortbay.jetty.servlet.AbstractSessionManager, org.mortbay.component.AbstractLifeCycle
    public void doStart() throws Exception {
        this._sessions = new HashMap();
        super.doStart();
        this._timer = new Timer(true);
        setScavengePeriod(getScavengePeriod());
        if (this._storeDir != null) {
            if (!this._storeDir.exists()) {
                this._storeDir.mkdir();
            }
            if (!this._lazyLoad) {
                restoreSessions();
            }
        }
        setSavePeriod(getSavePeriod());
    }

    @Override // org.mortbay.jetty.servlet.AbstractSessionManager, org.mortbay.component.AbstractLifeCycle
    public void doStop() throws Exception {
        if (this._storeDir != null) {
            saveSessions();
        }
        super.doStop();
        this._sessions.clear();
        this._sessions = null;
        synchronized (this) {
            if (this._saveTask != null) {
                this._saveTask.cancel();
            }
            if (this._task != null) {
                this._task.cancel();
            }
            if (this._timer != null) {
                this._timer.cancel();
            }
            this._timer = null;
        }
    }

    public int getScavengePeriod() {
        return this._scavengePeriodMs / 1000;
    }

    @Override // org.mortbay.jetty.servlet.AbstractSessionManager
    public Map getSessionMap() {
        return Collections.unmodifiableMap(this._sessions);
    }

    @Override // org.mortbay.jetty.servlet.AbstractSessionManager
    public int getSessions() {
        return this._sessions.size();
    }

    @Override // org.mortbay.jetty.servlet.AbstractSessionManager, org.mortbay.jetty.SessionManager
    public void setMaxInactiveInterval(int i) {
        super.setMaxInactiveInterval(i);
        if (this._dftMaxIdleSecs > 0 && this._scavengePeriodMs > this._dftMaxIdleSecs * 1000) {
            setScavengePeriod((this._dftMaxIdleSecs + 9) / 10);
        }
    }

    public void setSavePeriod(int i) {
        int i2 = this._savePeriodMs;
        int i3 = i * 1000;
        if (i3 < 0) {
            i3 = 0;
        }
        this._savePeriodMs = i3;
        if (this._timer != null) {
            synchronized (this) {
                if (this._saveTask != null) {
                    this._saveTask.cancel();
                }
                if (this._savePeriodMs > 0 && this._storeDir != null) {
                    this._saveTask = new TimerTask(this) { // from class: org.mortbay.jetty.servlet.HashSessionManager.1
                        private final HashSessionManager this$0;

                        {
                            this.this$0 = this;
                        }

                        @Override // java.util.TimerTask, java.lang.Runnable
                        public void run() {
                            try {
                                this.this$0.saveSessions();
                            } catch (Exception e2) {
                                Log.warn(e2);
                            }
                        }
                    };
                    this._timer.schedule(this._saveTask, this._savePeriodMs, this._savePeriodMs);
                }
            }
        }
    }

    public int getSavePeriod() {
        if (this._savePeriodMs <= 0) {
            return 0;
        }
        return this._savePeriodMs / 1000;
    }

    public void setScavengePeriod(int i) {
        if (i == 0) {
            i = 60;
        }
        int i2 = this._scavengePeriodMs;
        int i3 = i * 1000;
        int i4 = i3 <= 60000 ? i3 : 60000;
        int i5 = i4 >= 1000 ? i4 : 1000;
        this._scavengePeriodMs = i5;
        if (this._timer != null) {
            if (i5 != i2 || this._task == null) {
                synchronized (this) {
                    if (this._task != null) {
                        this._task.cancel();
                    }
                    this._task = new TimerTask(this) { // from class: org.mortbay.jetty.servlet.HashSessionManager.2
                        private final HashSessionManager this$0;

                        {
                            this.this$0 = this;
                        }

                        @Override // java.util.TimerTask, java.lang.Runnable
                        public void run() {
                            this.this$0.scavenge();
                        }
                    };
                    this._timer.schedule(this._task, this._scavengePeriodMs, this._scavengePeriodMs);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void scavenge() {
        if (!isStopping() && !isStopped()) {
            Thread threadCurrentThread = Thread.currentThread();
            ClassLoader contextClassLoader = threadCurrentThread.getContextClassLoader();
            try {
                if (this._loader != null) {
                    threadCurrentThread.setContextClassLoader(this._loader);
                }
                long jCurrentTimeMillis = System.currentTimeMillis();
                try {
                    if (!this._sessionsLoaded && this._lazyLoad) {
                        restoreSessions();
                    }
                } catch (Exception e2) {
                    Log.debug(e2);
                }
                Object objAdd = null;
                synchronized (this) {
                    for (Session session : this._sessions.values()) {
                        long j = session._maxIdleMs;
                        objAdd = (j <= 0 || j + session._accessed >= jCurrentTimeMillis) ? objAdd : LazyList.add(objAdd, session);
                    }
                }
                int size = LazyList.size(objAdd);
                while (true) {
                    int i = size - 1;
                    if (size > 0) {
                        Session session2 = (Session) LazyList.get(objAdd, i);
                        long j2 = session2._maxIdleMs;
                        if (j2 > 0 && j2 + session2._accessed < System.currentTimeMillis()) {
                            session2.timeout();
                            int size2 = this._sessions.size();
                            if (size2 < this._minSessions) {
                                this._minSessions = size2;
                            }
                        }
                        size = i;
                    } else {
                        return;
                    }
                }
            } catch (Throwable th) {
                if (th instanceof ThreadDeath) {
                    throw ((ThreadDeath) th);
                }
                Log.warn("Problem scavenging sessions", th);
            } finally {
                threadCurrentThread.setContextClassLoader(contextClassLoader);
            }
        }
    }

    @Override // org.mortbay.jetty.servlet.AbstractSessionManager
    protected void addSession(AbstractSessionManager.Session session) {
        this._sessions.put(session.getClusterId(), session);
    }

    @Override // org.mortbay.jetty.servlet.AbstractSessionManager
    public AbstractSessionManager.Session getSession(String str) {
        try {
            if (!this._sessionsLoaded && this._lazyLoad) {
                restoreSessions();
            }
        } catch (Exception e2) {
            Log.warn(e2);
        }
        if (this._sessions == null) {
            return null;
        }
        return (Session) this._sessions.get(str);
    }

    @Override // org.mortbay.jetty.servlet.AbstractSessionManager
    protected void invalidateSessions() {
        Iterator it = new ArrayList(this._sessions.values()).iterator();
        while (it.hasNext()) {
            ((Session) it.next()).invalidate();
        }
        this._sessions.clear();
    }

    @Override // org.mortbay.jetty.servlet.AbstractSessionManager
    protected AbstractSessionManager.Session newSession(HttpServletRequest httpServletRequest) {
        return new Session(this, httpServletRequest);
    }

    @Override // org.mortbay.jetty.servlet.AbstractSessionManager
    protected void removeSession(String str) {
        this._sessions.remove(str);
    }

    public void setStoreDirectory(File file) {
        this._storeDir = file;
    }

    public File getStoreDirectory() {
        return this._storeDir;
    }

    public void setLazyLoad(boolean z) {
        this._lazyLoad = z;
    }

    public boolean isLazyLoad() {
        return this._lazyLoad;
    }

    public void restoreSessions() throws Exception {
        if (this._storeDir != null && this._storeDir.exists()) {
            if (!this._storeDir.canRead()) {
                Log.warn(new StringBuffer().append("Unable to restore Sessions: Cannot read from Session storage directory ").append(this._storeDir.getAbsolutePath()).toString());
                return;
            }
            File[] fileArrListFiles = this._storeDir.listFiles();
            for (int i = 0; fileArrListFiles != null && i < fileArrListFiles.length; i++) {
                try {
                    FileInputStream fileInputStream = new FileInputStream(fileArrListFiles[i]);
                    Session sessionRestoreSession = restoreSession(fileInputStream);
                    fileInputStream.close();
                    addSession(sessionRestoreSession, false);
                    fileArrListFiles[i].delete();
                } catch (Exception e2) {
                    Log.warn(new StringBuffer().append("Problem restoring session ").append(fileArrListFiles[i].getName()).toString(), (Throwable) e2);
                }
            }
            this._sessionsLoaded = true;
        }
    }

    public void saveSessions() throws Exception {
        if (this._storeDir != null && this._storeDir.exists()) {
            if (!this._storeDir.canWrite()) {
                Log.warn(new StringBuffer().append("Unable to save Sessions: Session persistence storage directory ").append(this._storeDir.getAbsolutePath()).append(" is not writeable").toString());
                return;
            }
            synchronized (this) {
                for (Map.Entry entry : this._sessions.entrySet()) {
                    String str = (String) entry.getKey();
                    Session session = (Session) entry.getValue();
                    try {
                        File file = new File(this._storeDir, str);
                        if (file.exists()) {
                            file.delete();
                        }
                        file.createNewFile();
                        FileOutputStream fileOutputStream = new FileOutputStream(file);
                        session.save(fileOutputStream);
                        fileOutputStream.close();
                    } catch (Exception e2) {
                        Log.warn(new StringBuffer().append("Problem persisting session ").append(str).toString(), (Throwable) e2);
                    }
                }
            }
        }
    }

    public Session restoreSession(FileInputStream fileInputStream) throws Exception {
        DataInputStream dataInputStream = new DataInputStream(fileInputStream);
        String utf = dataInputStream.readUTF();
        dataInputStream.readUTF();
        dataInputStream.readBoolean();
        long j = dataInputStream.readLong();
        long j2 = dataInputStream.readLong();
        dataInputStream.readLong();
        long j3 = dataInputStream.readLong();
        dataInputStream.readInt();
        Session session = new Session(this, j, utf);
        session._cookieSet = j2;
        session._lastAccessed = j3;
        int i = dataInputStream.readInt();
        if (i > 0) {
            ArrayList arrayList = new ArrayList();
            for (int i2 = 0; i2 < i; i2++) {
                arrayList.add(dataInputStream.readUTF());
            }
            ClassLoadingObjectInputStream classLoadingObjectInputStream = new ClassLoadingObjectInputStream(this, dataInputStream);
            for (int i3 = 0; i3 < i; i3++) {
                session.setAttribute((String) arrayList.get(i3), classLoadingObjectInputStream.readObject());
            }
            classLoadingObjectInputStream.close();
        } else {
            session.initValues();
        }
        dataInputStream.close();
        return session;
    }

    public class Session extends AbstractSessionManager.Session {
        private static final long serialVersionUID = -2134521374206116367L;
        private final HashSessionManager this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        protected Session(HashSessionManager hashSessionManager, HttpServletRequest httpServletRequest) {
            super(hashSessionManager, httpServletRequest);
            this.this$0 = hashSessionManager;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        protected Session(HashSessionManager hashSessionManager, long j, String str) {
            super(hashSessionManager, j, str);
            this.this$0 = hashSessionManager;
        }

        @Override // org.mortbay.jetty.servlet.AbstractSessionManager.Session, javax.servlet.http.HttpSession
        public void setMaxInactiveInterval(int i) {
            super.setMaxInactiveInterval(i);
            if (this._maxIdleMs > 0 && this._maxIdleMs / 10 < this.this$0._scavengePeriodMs) {
                this.this$0.setScavengePeriod((i + 9) / 10);
            }
        }

        @Override // org.mortbay.jetty.servlet.AbstractSessionManager.Session
        protected Map newAttributeMap() {
            return new HashMap(3);
        }

        @Override // org.mortbay.jetty.servlet.AbstractSessionManager.Session, javax.servlet.http.HttpSession
        public void invalidate() throws IllegalStateException {
            super.invalidate();
            remove(getId());
        }

        public void remove(String str) {
            if (str != null && !this.this$0.isStopping() && !this.this$0.isStopped() && this.this$0._storeDir != null && this.this$0._storeDir.exists()) {
                new File(this.this$0._storeDir, str).delete();
            }
        }

        public void save(FileOutputStream fileOutputStream) throws IOException {
            DataOutputStream dataOutputStream = new DataOutputStream(fileOutputStream);
            dataOutputStream.writeUTF(this._clusterId);
            dataOutputStream.writeUTF(this._nodeId);
            dataOutputStream.writeBoolean(this._idChanged);
            dataOutputStream.writeLong(this._created);
            dataOutputStream.writeLong(this._cookieSet);
            dataOutputStream.writeLong(this._accessed);
            dataOutputStream.writeLong(this._lastAccessed);
            dataOutputStream.writeInt(this._requests);
            if (this._values != null) {
                dataOutputStream.writeInt(this._values.size());
                Iterator it = this._values.keySet().iterator();
                while (it.hasNext()) {
                    dataOutputStream.writeUTF((String) it.next());
                }
                Iterator it2 = this._values.values().iterator();
                ObjectOutputStream objectOutputStream = new ObjectOutputStream(dataOutputStream);
                while (it2.hasNext()) {
                    objectOutputStream.writeObject(it2.next());
                }
                objectOutputStream.close();
            } else {
                dataOutputStream.writeInt(0);
            }
            dataOutputStream.close();
        }
    }

    public class ClassLoadingObjectInputStream extends ObjectInputStream {
        private final HashSessionManager this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ClassLoadingObjectInputStream(HashSessionManager hashSessionManager, InputStream inputStream) throws IOException {
            super(inputStream);
            this.this$0 = hashSessionManager;
        }

        public ClassLoadingObjectInputStream(HashSessionManager hashSessionManager) throws IOException {
            this.this$0 = hashSessionManager;
        }

        @Override // java.io.ObjectInputStream
        public Class resolveClass(ObjectStreamClass objectStreamClass) throws IOException, ClassNotFoundException {
            try {
                return Class.forName(objectStreamClass.getName(), false, Thread.currentThread().getContextClassLoader());
            } catch (ClassNotFoundException e2) {
                return super.resolveClass(objectStreamClass);
            }
        }
    }
}
