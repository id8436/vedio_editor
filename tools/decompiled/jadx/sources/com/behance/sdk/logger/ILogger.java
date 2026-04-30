package com.behance.sdk.logger;

/* JADX INFO: loaded from: classes.dex */
public interface ILogger {
    void debug(String str, Object... objArr);

    void debug(Throwable th);

    void debug(Throwable th, String str, Object... objArr);

    void error(String str, Object... objArr);

    void error(Throwable th);

    void error(Throwable th, String str, Object... objArr);

    void info(String str, Object... objArr);

    void info(Throwable th);

    void info(Throwable th, String str, Object... objArr);

    void warn(String str, Object... objArr);

    void warn(Throwable th);

    void warn(Throwable th, String str, Object... objArr);

    void wtf(String str, Object... objArr);

    void wtf(Throwable th);

    void wtf(Throwable th, String str, Object... objArr);
}
