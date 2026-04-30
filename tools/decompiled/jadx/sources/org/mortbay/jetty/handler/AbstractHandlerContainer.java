package org.mortbay.jetty.handler;

import org.mortbay.jetty.Handler;
import org.mortbay.jetty.HandlerContainer;
import org.mortbay.util.LazyList;

/* JADX INFO: loaded from: classes3.dex */
public abstract class AbstractHandlerContainer extends AbstractHandler implements HandlerContainer {
    static Class class$org$mortbay$jetty$Handler;

    @Override // org.mortbay.jetty.HandlerContainer
    public Handler[] getChildHandlers() throws Throwable {
        Class clsClass$;
        Object objExpandChildren = expandChildren(null, null);
        if (class$org$mortbay$jetty$Handler == null) {
            clsClass$ = class$("org.mortbay.jetty.Handler");
            class$org$mortbay$jetty$Handler = clsClass$;
        } else {
            clsClass$ = class$org$mortbay$jetty$Handler;
        }
        return (Handler[]) LazyList.toArray(objExpandChildren, clsClass$);
    }

    static Class class$(String str) throws Throwable {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e2) {
            throw new NoClassDefFoundError().initCause(e2);
        }
    }

    @Override // org.mortbay.jetty.HandlerContainer
    public Handler[] getChildHandlersByClass(Class cls) throws Throwable {
        Class clsClass$;
        Object objExpandChildren = expandChildren(null, cls);
        if (class$org$mortbay$jetty$Handler == null) {
            clsClass$ = class$("org.mortbay.jetty.Handler");
            class$org$mortbay$jetty$Handler = clsClass$;
        } else {
            clsClass$ = class$org$mortbay$jetty$Handler;
        }
        return (Handler[]) LazyList.toArray(objExpandChildren, clsClass$);
    }

    @Override // org.mortbay.jetty.HandlerContainer
    public Handler getChildHandlerByClass(Class cls) {
        Object objExpandChildren = expandChildren(null, cls);
        if (objExpandChildren == null) {
            return null;
        }
        return (Handler) LazyList.get(objExpandChildren, 0);
    }

    protected Object expandChildren(Object obj, Class cls) {
        return obj;
    }

    protected Object expandHandler(Handler handler, Object obj, Class cls) {
        if (handler != null) {
            if (handler != null && (cls == null || cls.isAssignableFrom(handler.getClass()))) {
                obj = LazyList.add(obj, handler);
            }
            if (handler instanceof AbstractHandlerContainer) {
                return ((AbstractHandlerContainer) handler).expandChildren(obj, cls);
            }
            if (handler instanceof HandlerContainer) {
                HandlerContainer handlerContainer = (HandlerContainer) handler;
                return LazyList.addArray(obj, cls == null ? handlerContainer.getChildHandlers() : handlerContainer.getChildHandlersByClass(cls));
            }
            return obj;
        }
        return obj;
    }
}
