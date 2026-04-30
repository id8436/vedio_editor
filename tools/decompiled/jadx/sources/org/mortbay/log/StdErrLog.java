package org.mortbay.log;

import org.mortbay.util.DateCache;

/* JADX INFO: loaded from: classes3.dex */
public class StdErrLog implements Logger {
    private static boolean __debug;
    private static DateCache _dateCache;
    StringBuffer _buffer;
    private String _name;

    static {
        __debug = System.getProperty("DEBUG", null) != null;
        try {
            _dateCache = new DateCache("yyyy-MM-dd HH:mm:ss");
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public StdErrLog() {
        this(null);
    }

    public StdErrLog(String str) {
        this._buffer = new StringBuffer();
        this._name = str == null ? "" : str;
    }

    @Override // org.mortbay.log.Logger
    public boolean isDebugEnabled() {
        return __debug;
    }

    @Override // org.mortbay.log.Logger
    public void setDebugEnabled(boolean z) {
        __debug = z;
    }

    @Override // org.mortbay.log.Logger
    public void info(String str, Object obj, Object obj2) {
        String strNow = _dateCache.now();
        int iLastMs = _dateCache.lastMs();
        synchronized (this._buffer) {
            tag(strNow, iLastMs, ":INFO:");
            format(str, obj, obj2);
            System.err.println(this._buffer.toString());
        }
    }

    @Override // org.mortbay.log.Logger
    public void debug(String str, Throwable th) {
        if (__debug) {
            String strNow = _dateCache.now();
            int iLastMs = _dateCache.lastMs();
            synchronized (this._buffer) {
                tag(strNow, iLastMs, ":DBUG:");
                format(str);
                format(th);
                System.err.println(this._buffer.toString());
            }
        }
    }

    @Override // org.mortbay.log.Logger
    public void debug(String str, Object obj, Object obj2) {
        if (__debug) {
            String strNow = _dateCache.now();
            int iLastMs = _dateCache.lastMs();
            synchronized (this._buffer) {
                tag(strNow, iLastMs, ":DBUG:");
                format(str, obj, obj2);
                System.err.println(this._buffer.toString());
            }
        }
    }

    @Override // org.mortbay.log.Logger
    public void warn(String str, Object obj, Object obj2) {
        String strNow = _dateCache.now();
        int iLastMs = _dateCache.lastMs();
        synchronized (this._buffer) {
            tag(strNow, iLastMs, ":WARN:");
            format(str, obj, obj2);
            System.err.println(this._buffer.toString());
        }
    }

    @Override // org.mortbay.log.Logger
    public void warn(String str, Throwable th) {
        String strNow = _dateCache.now();
        int iLastMs = _dateCache.lastMs();
        synchronized (this._buffer) {
            tag(strNow, iLastMs, ":WARN:");
            format(str);
            format(th);
            System.err.println(this._buffer.toString());
        }
    }

    private void tag(String str, int i, String str2) {
        this._buffer.setLength(0);
        this._buffer.append(str);
        if (i > 99) {
            this._buffer.append('.');
        } else if (i > 9) {
            this._buffer.append(".0");
        } else {
            this._buffer.append(".00");
        }
        this._buffer.append(i).append(str2).append(this._name).append(':');
    }

    private void format(String str, Object obj, Object obj2) {
        int iIndexOf = str == null ? -1 : str.indexOf("{}");
        int iIndexOf2 = iIndexOf >= 0 ? str.indexOf("{}", iIndexOf + 2) : -1;
        if (iIndexOf >= 0) {
            format(str.substring(0, iIndexOf));
            if (obj == null) {
                obj = "null";
            }
            format(String.valueOf(obj));
            if (iIndexOf2 >= 0) {
                format(str.substring(iIndexOf + 2, iIndexOf2));
                if (obj2 == null) {
                    obj2 = "null";
                }
                format(String.valueOf(obj2));
                format(str.substring(iIndexOf2 + 2));
                return;
            }
            format(str.substring(iIndexOf + 2));
            if (obj2 != null) {
                this._buffer.append(' ');
                format(String.valueOf(obj2));
                return;
            }
            return;
        }
        format(str);
        if (obj != null) {
            this._buffer.append(' ');
            format(String.valueOf(obj));
        }
        if (obj2 != null) {
            this._buffer.append(' ');
            format(String.valueOf(obj2));
        }
    }

    private void format(String str) {
        if (str == null) {
            this._buffer.append("null");
            return;
        }
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            if (Character.isISOControl(cCharAt)) {
                if (cCharAt == '\n') {
                    this._buffer.append('|');
                } else if (cCharAt == '\r') {
                    this._buffer.append('<');
                } else {
                    this._buffer.append('?');
                }
            } else {
                this._buffer.append(cCharAt);
            }
        }
    }

    private void format(Throwable th) {
        if (th == null) {
            this._buffer.append("null");
            return;
        }
        this._buffer.append('\n');
        format(th.toString());
        StackTraceElement[] stackTrace = th.getStackTrace();
        for (int i = 0; stackTrace != null && i < stackTrace.length; i++) {
            this._buffer.append("\n\tat ");
            format(stackTrace[i].toString());
        }
    }

    @Override // org.mortbay.log.Logger
    public Logger getLogger(String str) {
        if (str == null && this._name == null) {
            return this;
        }
        return (str == null || !str.equals(this._name)) ? new StdErrLog(str) : this;
    }

    public String toString() {
        return new StringBuffer().append("STDERR").append(this._name).toString();
    }
}
