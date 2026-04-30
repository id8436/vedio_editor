package com.google.gdata.util;

import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes3.dex */
public final class LogUtils {
    public static void logException(Logger logger, Level level, String str, Throwable th) {
        String string = th.toString();
        if (str != null) {
            string = str + ": " + string;
        }
        logger.log(level, string, th);
    }
}
