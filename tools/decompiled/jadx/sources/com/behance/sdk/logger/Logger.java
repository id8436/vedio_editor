package com.behance.sdk.logger;

import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public class Logger implements ILogger {
    private boolean DEBUG;
    private boolean ERROR;
    private boolean INFO;
    private int LOG_LEVEL = 2;
    private boolean WARN;
    private boolean WTF;
    private String tag;

    public Logger(Class cls) {
        this.WTF = this.LOG_LEVEL > 0;
        this.ERROR = this.LOG_LEVEL > 1;
        this.WARN = this.LOG_LEVEL > 2;
        this.INFO = this.LOG_LEVEL > 3;
        this.DEBUG = this.LOG_LEVEL > 4;
        this.tag = cls.getSimpleName();
    }

    @Override // com.behance.sdk.logger.ILogger
    public void debug(String str, Object... objArr) {
        if (this.DEBUG) {
            Log.d(this.tag, getFormattedMessage(str, objArr));
        }
    }

    @Override // com.behance.sdk.logger.ILogger
    public void debug(Throwable th) {
        if (this.DEBUG) {
            Log.d(this.tag, th.getMessage(), th);
        }
    }

    @Override // com.behance.sdk.logger.ILogger
    public void debug(Throwable th, String str, Object... objArr) {
        if (this.DEBUG) {
            Log.d(this.tag, getFormattedMessage(str, objArr), th);
        }
    }

    @Override // com.behance.sdk.logger.ILogger
    public void error(String str, Object... objArr) {
        if (this.ERROR) {
            Log.e(this.tag, getFormattedMessage(str, objArr));
        }
    }

    @Override // com.behance.sdk.logger.ILogger
    public void error(Throwable th) {
        if (this.ERROR) {
            Log.e(this.tag, th.getMessage(), th);
        }
    }

    @Override // com.behance.sdk.logger.ILogger
    public void error(Throwable th, String str, Object... objArr) {
        if (this.ERROR) {
            Log.e(this.tag, getFormattedMessage(str, objArr), th);
        }
    }

    @Override // com.behance.sdk.logger.ILogger
    public void info(String str, Object... objArr) {
        if (this.INFO) {
            Log.i(this.tag, getFormattedMessage(str, objArr));
        }
    }

    @Override // com.behance.sdk.logger.ILogger
    public void info(Throwable th) {
        if (this.INFO) {
            Log.i(this.tag, th.getMessage(), th);
        }
    }

    @Override // com.behance.sdk.logger.ILogger
    public void info(Throwable th, String str, Object... objArr) {
        if (this.INFO) {
            Log.i(this.tag, getFormattedMessage(str, objArr), th);
        }
    }

    @Override // com.behance.sdk.logger.ILogger
    public void warn(String str, Object... objArr) {
        if (this.WARN) {
            Log.w(this.tag, getFormattedMessage(str, objArr));
        }
    }

    @Override // com.behance.sdk.logger.ILogger
    public void warn(Throwable th) {
        if (this.WARN) {
            Log.w(this.tag, th);
        }
    }

    @Override // com.behance.sdk.logger.ILogger
    public void warn(Throwable th, String str, Object... objArr) {
        if (this.WARN) {
            Log.w(this.tag, getFormattedMessage(str, objArr), th);
        }
    }

    @Override // com.behance.sdk.logger.ILogger
    public void wtf(String str, Object... objArr) {
        if (this.WTF) {
            Log.wtf(this.tag, getFormattedMessage(str, objArr));
        }
    }

    @Override // com.behance.sdk.logger.ILogger
    public void wtf(Throwable th) {
        if (this.WTF) {
            Log.wtf(this.tag, th);
        }
    }

    @Override // com.behance.sdk.logger.ILogger
    public void wtf(Throwable th, String str, Object... objArr) {
        if (this.WTF) {
            Log.wtf(this.tag, getFormattedMessage(str, objArr), th);
        }
    }

    private String getFormattedMessage(String str, Object... objArr) {
        try {
            if (objArr.length > 0) {
                return String.format(str, objArr);
            }
            return str;
        } catch (Exception e2) {
            error(e2);
            return "";
        }
    }
}
