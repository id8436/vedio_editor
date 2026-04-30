package org.mortbay.jetty;

import org.mortbay.component.LifeCycle;

/* JADX INFO: loaded from: classes3.dex */
public interface HandlerContainer extends LifeCycle {
    void addHandler(Handler handler);

    Handler getChildHandlerByClass(Class cls);

    Handler[] getChildHandlers();

    Handler[] getChildHandlersByClass(Class cls);

    void removeHandler(Handler handler);
}
