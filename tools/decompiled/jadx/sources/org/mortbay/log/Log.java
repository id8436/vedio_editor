package org.mortbay.log;

import java.security.AccessController;
import java.security.PrivilegedAction;
import org.mortbay.util.Loader;

/* JADX INFO: loaded from: classes3.dex */
public class Log {
    public static final String EXCEPTION = "EXCEPTION ";
    public static final String IGNORED = "IGNORED";
    public static final String IGNORED_FMT = "IGNORED: {}";
    public static final String NOT_IMPLEMENTED = "NOT IMPLEMENTED ";
    public static boolean __ignored;
    private static Logger __log;
    public static String __logClass;
    private static final String[] __nestedEx = {"getTargetException", "getTargetError", "getException", "getRootCause"};
    private static final Class[] __noArgs = new Class[0];
    public static boolean __verbose;
    static Class class$org$mortbay$log$Log;
    static Class class$org$mortbay$log$StdErrLog;

    static {
        Class clsClass$;
        Class clsClass$2;
        AccessController.doPrivileged(new PrivilegedAction() { // from class: org.mortbay.log.Log.1
            @Override // java.security.PrivilegedAction
            public Object run() {
                Log.__logClass = System.getProperty("org.mortbay.log.class", "org.mortbay.log.Slf4jLog");
                Log.__verbose = System.getProperty("VERBOSE", null) != null;
                Log.__ignored = System.getProperty(Log.IGNORED, null) != null;
                return new Boolean(true);
            }
        });
        try {
            if (class$org$mortbay$log$Log == null) {
                clsClass$2 = class$("org.mortbay.log.Log");
                class$org$mortbay$log$Log = clsClass$2;
            } else {
                clsClass$2 = class$org$mortbay$log$Log;
            }
            Class clsLoadClass = Loader.loadClass(clsClass$2, __logClass);
            __log = (Logger) clsLoadClass.newInstance();
            clsClass$ = clsLoadClass;
        } catch (Throwable th) {
            if (class$org$mortbay$log$StdErrLog == null) {
                clsClass$ = class$("org.mortbay.log.StdErrLog");
                class$org$mortbay$log$StdErrLog = clsClass$;
            } else {
                clsClass$ = class$org$mortbay$log$StdErrLog;
            }
            __log = new StdErrLog();
            __logClass = clsClass$.getName();
            if (__verbose) {
                th.printStackTrace();
            }
        }
        __log.info("Logging to {} via {}", __log, clsClass$.getName());
    }

    static Class class$(String str) throws Throwable {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e2) {
            throw new NoClassDefFoundError().initCause(e2);
        }
    }

    public static void setLog(Logger logger) {
        __log = logger;
    }

    public static Logger getLog() {
        return __log;
    }

    public static void debug(Throwable th) {
        if (__log != null && isDebugEnabled()) {
            __log.debug(EXCEPTION, th);
            unwind(th);
        }
    }

    public static void debug(String str) {
        if (__log != null) {
            __log.debug(str, null, null);
        }
    }

    public static void debug(String str, Object obj) {
        if (__log != null) {
            __log.debug(str, obj, null);
        }
    }

    public static void debug(String str, Object obj, Object obj2) {
        if (__log != null) {
            __log.debug(str, obj, obj2);
        }
    }

    public static void ignore(Throwable th) {
        if (__log != null) {
            if (__ignored) {
                __log.warn(IGNORED, th);
                unwind(th);
            } else if (__verbose) {
                __log.debug(IGNORED, th);
                unwind(th);
            }
        }
    }

    public static void info(String str) {
        if (__log != null) {
            __log.info(str, null, null);
        }
    }

    public static void info(String str, Object obj) {
        if (__log != null) {
            __log.info(str, obj, null);
        }
    }

    public static void info(String str, Object obj, Object obj2) {
        if (__log != null) {
            __log.info(str, obj, obj2);
        }
    }

    public static boolean isDebugEnabled() {
        if (__log == null) {
            return false;
        }
        return __log.isDebugEnabled();
    }

    public static void warn(String str) {
        if (__log != null) {
            __log.warn(str, null, null);
        }
    }

    public static void warn(String str, Object obj) {
        if (__log != null) {
            __log.warn(str, obj, null);
        }
    }

    public static void warn(String str, Object obj, Object obj2) {
        if (__log != null) {
            __log.warn(str, obj, obj2);
        }
    }

    public static void warn(String str, Throwable th) {
        if (__log != null) {
            __log.warn(str, th);
            unwind(th);
        }
    }

    public static void warn(Throwable th) {
        if (__log != null) {
            __log.warn(EXCEPTION, th);
            unwind(th);
        }
    }

    public static Logger getLogger(String str) {
        if (__log == null) {
            return __log;
        }
        if (str == null) {
            return __log;
        }
        return __log.getLogger(str);
    }

    private static void unwind(Throwable th) {
        if (th != null) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < __nestedEx.length) {
                    try {
                        Throwable th2 = (Throwable) th.getClass().getMethod(__nestedEx[i2], __noArgs).invoke(th, (Object[]) null);
                        if (th2 != null && th2 != th) {
                            warn(new StringBuffer().append("Nested in ").append(th).append(":").toString(), th2);
                        }
                    } catch (Exception e2) {
                    }
                    i = i2 + 1;
                } else {
                    return;
                }
            }
        }
    }
}
