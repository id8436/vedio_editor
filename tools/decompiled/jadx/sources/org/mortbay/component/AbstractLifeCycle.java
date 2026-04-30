package org.mortbay.component;

import org.mortbay.component.LifeCycle;
import org.mortbay.log.Log;
import org.mortbay.util.LazyList;

/* JADX INFO: loaded from: classes3.dex */
public abstract class AbstractLifeCycle implements LifeCycle {
    static Class class$org$mortbay$component$LifeCycle$Listener;
    protected LifeCycle.Listener[] _listeners;
    private Object _lock = new Object();
    private final int FAILED = -1;
    private final int STOPPED = 0;
    private final int STARTING = 1;
    private final int STARTED = 2;
    private final int STOPPING = 3;
    private volatile int _state = 0;

    protected void doStart() throws Exception {
    }

    protected void doStop() throws Exception {
    }

    @Override // org.mortbay.component.LifeCycle
    public final void start() throws Exception {
        synchronized (this._lock) {
            try {
                try {
                    if (this._state != 2 && this._state != 1) {
                        setStarting();
                        doStart();
                        Log.debug("started {}", this);
                        setStarted();
                    }
                } catch (Error e2) {
                    setFailed(e2);
                    throw e2;
                }
            } catch (Exception e3) {
                setFailed(e3);
                throw e3;
            }
        }
    }

    @Override // org.mortbay.component.LifeCycle
    public final void stop() throws Exception {
        synchronized (this._lock) {
            try {
                if (this._state != 3 && this._state != 0) {
                    setStopping();
                    doStop();
                    Log.debug("stopped {}", this);
                    setStopped();
                }
            } catch (Error e2) {
                setFailed(e2);
                throw e2;
            } catch (Exception e3) {
                setFailed(e3);
                throw e3;
            }
        }
    }

    @Override // org.mortbay.component.LifeCycle
    public boolean isRunning() {
        return this._state == 2 || this._state == 1;
    }

    @Override // org.mortbay.component.LifeCycle
    public boolean isStarted() {
        return this._state == 2;
    }

    @Override // org.mortbay.component.LifeCycle
    public boolean isStarting() {
        return this._state == 1;
    }

    @Override // org.mortbay.component.LifeCycle
    public boolean isStopping() {
        return this._state == 3;
    }

    @Override // org.mortbay.component.LifeCycle
    public boolean isStopped() {
        return this._state == 0;
    }

    @Override // org.mortbay.component.LifeCycle
    public boolean isFailed() {
        return this._state == -1;
    }

    static Class class$(String str) throws Throwable {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e2) {
            throw new NoClassDefFoundError().initCause(e2);
        }
    }

    @Override // org.mortbay.component.LifeCycle
    public void addLifeCycleListener(LifeCycle.Listener listener) throws Throwable {
        Class clsClass$;
        LifeCycle.Listener[] listenerArr = this._listeners;
        if (class$org$mortbay$component$LifeCycle$Listener == null) {
            clsClass$ = class$("org.mortbay.component.LifeCycle$Listener");
            class$org$mortbay$component$LifeCycle$Listener = clsClass$;
        } else {
            clsClass$ = class$org$mortbay$component$LifeCycle$Listener;
        }
        this._listeners = (LifeCycle.Listener[]) LazyList.addToArray(listenerArr, listener, clsClass$);
    }

    @Override // org.mortbay.component.LifeCycle
    public void removeLifeCycleListener(LifeCycle.Listener listener) {
        this._listeners = (LifeCycle.Listener[]) LazyList.removeFromArray(this._listeners, listener);
    }

    private void setStarted() {
        this._state = 2;
        if (this._listeners != null) {
            for (int i = 0; i < this._listeners.length; i++) {
                this._listeners[i].lifeCycleStarted(this);
            }
        }
    }

    private void setStarting() {
        this._state = 1;
        if (this._listeners != null) {
            for (int i = 0; i < this._listeners.length; i++) {
                this._listeners[i].lifeCycleStarting(this);
            }
        }
    }

    private void setStopping() {
        this._state = 3;
        if (this._listeners != null) {
            for (int i = 0; i < this._listeners.length; i++) {
                this._listeners[i].lifeCycleStopping(this);
            }
        }
    }

    private void setStopped() {
        this._state = 0;
        if (this._listeners != null) {
            for (int i = 0; i < this._listeners.length; i++) {
                this._listeners[i].lifeCycleStopped(this);
            }
        }
    }

    private void setFailed(Throwable th) {
        Log.warn(new StringBuffer().append("failed ").append(this).append(": ").append(th).toString());
        Log.debug(th);
        this._state = -1;
        if (this._listeners != null) {
            for (int i = 0; i < this._listeners.length; i++) {
                this._listeners[i].lifeCycleFailure(this, th);
            }
        }
    }
}
