package org.mortbay.jetty;

import org.mortbay.component.LifeCycle;

/* JADX INFO: loaded from: classes3.dex */
public interface RequestLog extends LifeCycle {
    void log(Request request, Response response);
}
