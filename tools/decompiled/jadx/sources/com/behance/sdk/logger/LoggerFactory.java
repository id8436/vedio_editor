package com.behance.sdk.logger;

/* JADX INFO: loaded from: classes.dex */
public class LoggerFactory {
    public static ILogger getLogger(Class cls) {
        return new Logger(cls);
    }
}
