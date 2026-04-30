package com.crashlytics.android.core;

import android.content.Context;
import c.a.a.a.a.b.m;
import c.a.a.a.f;
import java.io.Closeable;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.io.Writer;
import org.apache.commons.io.IOUtils;

/* JADX INFO: loaded from: classes2.dex */
final class ExceptionUtils {
    private ExceptionUtils() {
    }

    public static void writeStackTraceIfNotNull(Throwable th, OutputStream outputStream) throws Throwable {
        if (outputStream != null) {
            writeStackTrace(th, outputStream);
        }
    }

    public static void writeStackTrace(Context context, Throwable th, String str) throws Throwable {
        PrintWriter printWriter;
        try {
            try {
                printWriter = new PrintWriter(context.openFileOutput(str, 0));
                try {
                    writeStackTrace(th, printWriter);
                    m.a((Closeable) printWriter, "Failed to close stack trace writer.");
                } catch (Exception e2) {
                    e = e2;
                    f.h().e(CrashlyticsCore.TAG, "Failed to create PrintWriter", e);
                    m.a((Closeable) printWriter, "Failed to close stack trace writer.");
                }
            } catch (Throwable th2) {
                th = th2;
                m.a((Closeable) printWriter, "Failed to close stack trace writer.");
                throw th;
            }
        } catch (Exception e3) {
            e = e3;
            printWriter = null;
        } catch (Throwable th3) {
            th = th3;
            printWriter = null;
            m.a((Closeable) printWriter, "Failed to close stack trace writer.");
            throw th;
        }
    }

    private static void writeStackTrace(Throwable th, OutputStream outputStream) throws Throwable {
        PrintWriter printWriter;
        try {
            printWriter = new PrintWriter(outputStream);
            try {
                try {
                    writeStackTrace(th, printWriter);
                    m.a((Closeable) printWriter, "Failed to close stack trace writer.");
                } catch (Exception e2) {
                    e = e2;
                    f.h().e(CrashlyticsCore.TAG, "Failed to create PrintWriter", e);
                    m.a((Closeable) printWriter, "Failed to close stack trace writer.");
                }
            } catch (Throwable th2) {
                th = th2;
                m.a((Closeable) printWriter, "Failed to close stack trace writer.");
                throw th;
            }
        } catch (Exception e3) {
            e = e3;
            printWriter = null;
        } catch (Throwable th3) {
            th = th3;
            printWriter = null;
            m.a((Closeable) printWriter, "Failed to close stack trace writer.");
            throw th;
        }
    }

    private static void writeStackTrace(Throwable th, Writer writer) {
        boolean z = true;
        while (th != null) {
            try {
                String message = getMessage(th);
                writer.write((z ? "" : "Caused by: ") + th.getClass().getName() + ": " + (message != null ? message : "") + IOUtils.LINE_SEPARATOR_UNIX);
                for (StackTraceElement stackTraceElement : th.getStackTrace()) {
                    writer.write("\tat " + stackTraceElement.toString() + IOUtils.LINE_SEPARATOR_UNIX);
                }
                th = th.getCause();
                z = false;
            } catch (Exception e2) {
                f.h().e(CrashlyticsCore.TAG, "Could not write stack trace", e2);
                return;
            }
        }
    }

    private static String getMessage(Throwable th) {
        String localizedMessage = th.getLocalizedMessage();
        if (localizedMessage == null) {
            return null;
        }
        return localizedMessage.replaceAll("(\r\n|\n|\f)", " ");
    }
}
