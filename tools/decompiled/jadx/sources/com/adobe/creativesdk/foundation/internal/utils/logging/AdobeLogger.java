package com.adobe.creativesdk.foundation.internal.utils.logging;

import android.util.Log;
import com.adobe.creativesdk.foundation.internal.common.AdobeCommonApplicationContextHolder;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import org.apache.commons.io.FileUtils;
import org.apache.commons.io.IOUtils;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeLogger {
    public static File logFile;
    private static volatile PrintWriter pr;
    private static boolean fileLoggingEnabled = false;
    private static boolean consoleLoggingEnabled = false;
    private static int logLevel = 0;
    private static volatile int file_size = 0;
    private static int MB = 1048576;
    private static int MAX_LOG_FILE_SIZE = 3;
    private static int TRUNCATED_FILE_SIZE = 2;
    private static final Object _mutex = new Object();

    public static void AdobeLoggerInit(boolean z, boolean z2, Level level) {
        setConsoleLoggingEnabled(z2);
        setFileLoggingEnabled(z);
        setLogLevel(level);
        if (z) {
            initializeLogFile();
        }
    }

    public static void AdobeLoggerInit(boolean z, boolean z2) {
        setConsoleLoggingEnabled(z2);
        setFileLoggingEnabled(z);
        if (z) {
            initializeLogFile();
        }
    }

    public static void AdobeLoggerInit(boolean z) {
        AdobeLoggerInit(z, false, Level.INFO);
    }

    public static void configureFileSize(int i) {
        MAX_LOG_FILE_SIZE = i;
        if (MAX_LOG_FILE_SIZE < 1) {
            MAX_LOG_FILE_SIZE = 2;
        } else if (MAX_LOG_FILE_SIZE > 5) {
            MAX_LOG_FILE_SIZE = 5;
        }
        TRUNCATED_FILE_SIZE = i - 1;
        if (TRUNCATED_FILE_SIZE < 0) {
            TRUNCATED_FILE_SIZE = 1;
        } else if (TRUNCATED_FILE_SIZE > 4) {
            TRUNCATED_FILE_SIZE = 4;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String fRead(String str, int i) {
        String str2;
        try {
            byte[] fileToByteArray = FileUtils.readFileToByteArray(new File(str));
            if (i > MAX_LOG_FILE_SIZE * MB) {
                byte[] bArr = new byte[TRUNCATED_FILE_SIZE * MB];
                System.arraycopy(fileToByteArray, i - (TRUNCATED_FILE_SIZE * MB), bArr, 0, TRUNCATED_FILE_SIZE * MB);
                str2 = new String(bArr, "UTF-8");
            } else {
                str2 = new String(fileToByteArray, "UTF-8");
            }
            return str2;
        } catch (IOException e2) {
            Log.d("AdobeDCXUtils.fRead", e2.getMessage());
            return null;
        }
    }

    private static void setFileLoggingEnabled(boolean z) {
        fileLoggingEnabled = z;
    }

    private static void setConsoleLoggingEnabled(boolean z) {
        consoleLoggingEnabled = z;
    }

    private static void setLogLevel(Level level) {
        logLevel = level.getValue();
    }

    private static void readAndDumpFile(final boolean z) {
        new Thread(new Runnable() { // from class: com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger.1
            @Override // java.lang.Runnable
            public void run() {
                synchronized (AdobeLogger._mutex) {
                    try {
                        try {
                            String strFRead = AdobeLogger.fRead(AdobeLogger.logFile.getAbsolutePath(), (int) AdobeLogger.logFile.getTotalSpace());
                            int unused = AdobeLogger.file_size = strFRead.length();
                            PrintWriter unused2 = AdobeLogger.pr = new PrintWriter(AdobeLogger.logFile, "UTF-8");
                            AdobeLogger.pr.append((CharSequence) strFRead);
                            if (z) {
                                AdobeLogger.pr.append((CharSequence) "************************ App Launch *********************\n");
                            }
                        } catch (Exception e2) {
                            Log.d(AdobeLogger.class.getSimpleName(), e2.getMessage(), e2);
                            if (AdobeLogger.pr != null) {
                                AdobeLogger.pr.flush();
                            }
                        }
                    } finally {
                        if (AdobeLogger.pr != null) {
                            AdobeLogger.pr.flush();
                        }
                    }
                }
            }
        }).start();
    }

    private static void initializeLogFile() {
        logFile = new File(AdobeCommonApplicationContextHolder.getSharedApplicationContextHolder().getApplicationContext().getCacheDir(), "csdklog.txt");
        readAndDumpFile(true);
    }

    public static void log(Level level, String str, String str2) {
        log(level, str, str2, (Exception) null);
    }

    public static void log(Level level, String str, String str2, Throwable th) {
        if (consoleLoggingEnabled || fileLoggingEnabled) {
            try {
                String strSubstring = str.substring(str.lastIndexOf(".") + 1);
                if (strSubstring.length() > 23) {
                    strSubstring = strSubstring.substring(0, 23);
                }
                switch (level) {
                    case DEBUG:
                        debug(strSubstring, str2, th);
                        break;
                    case INFO:
                        info(strSubstring, str2, th);
                        break;
                    case ERROR:
                        error(strSubstring, str2, th);
                        break;
                    case WARN:
                        warn(strSubstring, str2, th);
                        break;
                }
            } catch (Exception e2) {
                Log.e(AdobeLogger.class.getSimpleName(), e2.getMessage(), e2);
            }
        }
    }

    private static void warn(String str, String str2, Throwable th) {
        if (consoleLoggingEnabled) {
            Log.w(str, str2, th);
        }
        if (fileLoggingEnabled && logLevel <= Level.WARN.getValue()) {
            writeToFile(str, str2, th);
        }
    }

    private static void writeToFile(String str, String str2, Throwable th) {
        if (pr != null) {
            try {
                file_size = (str2 != null ? str2.getBytes().length : 0) + file_size;
                if (file_size > MAX_LOG_FILE_SIZE * MB) {
                    pr.close();
                    readAndDumpFile(false);
                    file_size = TRUNCATED_FILE_SIZE * MB;
                }
                synchronized (_mutex) {
                    PrintWriter printWriter = pr;
                    StringBuilder sbAppend = new StringBuilder().append(str).append(":");
                    if (str2 == null) {
                        str2 = "";
                    }
                    printWriter.append((CharSequence) sbAppend.append(str2).append(IOUtils.LINE_SEPARATOR_UNIX).toString());
                    pr.flush();
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public static String readFromFile() throws IOException {
        BufferedReader bufferedReader = new BufferedReader(new FileReader(logFile));
        try {
            StringBuilder sb = new StringBuilder();
            for (String line = bufferedReader.readLine(); line != null; line = bufferedReader.readLine()) {
                sb.append(line + '\n');
            }
            return sb.toString();
        } finally {
            bufferedReader.close();
        }
    }

    private static void error(String str, String str2, Throwable th) {
        if (consoleLoggingEnabled) {
            Log.e(str, str2, th);
        }
        if (fileLoggingEnabled) {
            writeToFile(str, str2, th);
        }
    }

    private static void info(String str, String str2, Throwable th) {
        if (consoleLoggingEnabled) {
            Log.i(str, str2, th);
        }
        if (fileLoggingEnabled && logLevel == Level.INFO.getValue()) {
            writeToFile(str, str2, th);
        }
    }

    private static void debug(String str, String str2, Throwable th) {
        if (consoleLoggingEnabled) {
            Log.d(str, str2, th);
        }
        if (fileLoggingEnabled && logLevel <= Level.DEBUG.getValue()) {
            writeToFile(str, str2, th);
        }
    }

    public static String getJSONObjectDump(JSONObject jSONObject) {
        if (jSONObject == null || jSONObject.length() == 0) {
            return "Empty JSONObject";
        }
        JSONObject jSONObject2 = new JSONObject();
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            try {
                Object obj = jSONObject.get(next);
                if (obj.getClass().equals(JSONObject.class)) {
                    jSONObject2.put(next, getJSONObjectDump((JSONObject) obj));
                } else if (obj.getClass().equals(JSONArray.class)) {
                    jSONObject2.put(next, getJSONArrayDump((JSONArray) obj));
                } else if (obj.getClass().equals(String.class)) {
                    String str = (String) obj;
                    jSONObject2.put(next, str.length() == 0 ? "Empty String" : "Non-Empty String of length " + str.length());
                } else if (obj.getClass().equals(Number.class)) {
                    jSONObject2.put(next, "Number");
                } else {
                    jSONObject2.put(next, "Object");
                }
            } catch (JSONException e2) {
                return e2.toString();
            }
        }
        return jSONObject2.toString();
    }

    public static String getJSONArrayDump(JSONArray jSONArray) {
        if (jSONArray == null || jSONArray.length() == 0) {
            return "Empty JSONArray";
        }
        JSONArray jSONArray2 = new JSONArray();
        for (int i = 0; i < jSONArray.length(); i++) {
            try {
                Object obj = jSONArray.get(i);
                if (obj.getClass().equals(JSONObject.class)) {
                    jSONArray2.put(i, getJSONObjectDump((JSONObject) obj));
                } else if (obj.getClass().equals(JSONArray.class)) {
                    jSONArray2.put(i, getJSONArrayDump((JSONArray) obj));
                } else if (obj.getClass().equals(String.class)) {
                    String str = (String) obj;
                    jSONArray2.put(i, str.length() == 0 ? "Empty String" : "Non-Empty String of length " + str.length());
                } else if (obj.getClass().equals(Number.class)) {
                    jSONArray2.put(i, "Number");
                } else {
                    jSONArray2.put(i, "Object");
                }
            } catch (JSONException e2) {
                return e2.toString();
            }
        }
        return jSONArray2.toString();
    }
}
