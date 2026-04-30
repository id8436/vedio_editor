package org.mortbay.jetty.nio;

import java.io.IOException;
import java.lang.reflect.Method;
import java.nio.channels.Channel;
import java.nio.channels.ServerSocketChannel;
import org.mortbay.log.Log;

/* JADX INFO: loaded from: classes3.dex */
public class InheritedChannelConnector extends SelectChannelConnector {
    static Class class$java$lang$System;

    @Override // org.mortbay.jetty.nio.SelectChannelConnector, org.mortbay.jetty.Connector
    public void open() throws IOException {
        Class clsClass$;
        synchronized (this) {
            try {
                if (class$java$lang$System == null) {
                    clsClass$ = class$("java.lang.System");
                    class$java$lang$System = clsClass$;
                } else {
                    clsClass$ = class$java$lang$System;
                }
                Method method = clsClass$.getMethod("inheritedChannel", null);
                if (method != null) {
                    Channel channel = (Channel) method.invoke(null, null);
                    if (channel instanceof ServerSocketChannel) {
                        this._acceptChannel = (ServerSocketChannel) channel;
                    }
                }
                if (this._acceptChannel != null) {
                    this._acceptChannel.configureBlocking(false);
                }
            } catch (Exception e2) {
                Log.warn(e2);
            }
            if (this._acceptChannel == null) {
                super.open();
            } else {
                throw new IOException("No System.inheritedChannel()");
            }
        }
    }

    static Class class$(String str) throws Throwable {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e2) {
            throw new NoClassDefFoundError().initCause(e2);
        }
    }
}
