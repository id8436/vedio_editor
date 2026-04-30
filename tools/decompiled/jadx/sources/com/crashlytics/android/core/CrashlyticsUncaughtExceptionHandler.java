package com.crashlytics.android.core;

import android.app.ActivityManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import c.a.a.a.a.b.m;
import c.a.a.a.a.b.t;
import c.a.a.a.a.b.z;
import c.a.a.a.a.g.p;
import c.a.a.a.a.g.q;
import c.a.a.a.f;
import com.crashlytics.android.core.internal.models.SessionEventData;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FilenameFilter;
import java.io.Flushable;
import java.io.IOException;
import java.lang.Thread;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Locale;
import java.util.Map;
import java.util.TreeMap;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
class CrashlyticsUncaughtExceptionHandler implements Thread.UncaughtExceptionHandler {
    private static final int ANALYZER_VERSION = 1;
    static final String CLS_CRASH_MARKER_FILE_NAME = "crash_marker";
    private static final String EVENT_TYPE_CRASH = "crash";
    private static final String EVENT_TYPE_LOGGED = "error";
    private static final String GENERATOR_FORMAT = "Crashlytics Android SDK/%s";
    static final String INVALID_CLS_CACHE_DIR = "invalidClsFiles";
    private static final int MAX_COMPLETE_SESSIONS_COUNT = 4;
    private static final int MAX_LOCAL_LOGGED_EXCEPTIONS = 64;
    static final int MAX_OPEN_SESSIONS = 8;
    static final String SESSION_APP_TAG = "SessionApp";
    static final String SESSION_BEGIN_TAG = "BeginSession";
    static final String SESSION_DEVICE_TAG = "SessionDevice";
    static final String SESSION_FATAL_TAG = "SessionCrash";
    private static final int SESSION_ID_LENGTH = 35;
    static final String SESSION_NON_FATAL_TAG = "SessionEvent";
    static final String SESSION_OS_TAG = "SessionOS";
    static final String SESSION_USER_TAG = "SessionUser";
    private final CrashlyticsCore crashlyticsCore;
    private final Thread.UncaughtExceptionHandler defaultHandler;
    private final CrashlyticsExecutorServiceWrapper executorServiceWrapper;
    private final File filesDir;
    private final z idManager;
    private final LogFileManager logFileManager;
    private boolean powerConnected;
    private final BroadcastReceiver powerConnectedReceiver;
    private final BroadcastReceiver powerDisconnectedReceiver;
    private final SessionDataWriter sessionDataWriter;
    static final FilenameFilter SESSION_FILE_FILTER = new FilenameFilter() { // from class: com.crashlytics.android.core.CrashlyticsUncaughtExceptionHandler.1
        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            return str.length() == ClsFileOutputStream.SESSION_FILE_EXTENSION.length() + 35 && str.endsWith(ClsFileOutputStream.SESSION_FILE_EXTENSION);
        }
    };
    static final Comparator<File> LARGEST_FILE_NAME_FIRST = new Comparator<File>() { // from class: com.crashlytics.android.core.CrashlyticsUncaughtExceptionHandler.2
        @Override // java.util.Comparator
        public int compare(File file, File file2) {
            return file2.getName().compareTo(file.getName());
        }
    };
    static final Comparator<File> SMALLEST_FILE_NAME_FIRST = new Comparator<File>() { // from class: com.crashlytics.android.core.CrashlyticsUncaughtExceptionHandler.3
        @Override // java.util.Comparator
        public int compare(File file, File file2) {
            return file.getName().compareTo(file2.getName());
        }
    };
    static final FilenameFilter ANY_SESSION_FILENAME_FILTER = new FilenameFilter() { // from class: com.crashlytics.android.core.CrashlyticsUncaughtExceptionHandler.4
        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            return CrashlyticsUncaughtExceptionHandler.SESSION_FILE_PATTERN.matcher(str).matches();
        }
    };
    private static final Pattern SESSION_FILE_PATTERN = Pattern.compile("([\\d|A-Z|a-z]{12}\\-[\\d|A-Z|a-z]{4}\\-[\\d|A-Z|a-z]{4}\\-[\\d|A-Z|a-z]{12}).+");
    private static final Map<String, String> SEND_AT_CRASHTIME_HEADER = Collections.singletonMap("X-CRASHLYTICS-SEND-FLAGS", "1");
    private final AtomicInteger eventCounter = new AtomicInteger(0);
    private final AtomicBoolean receiversRegistered = new AtomicBoolean(false);
    private final AtomicBoolean isHandlingException = new AtomicBoolean(false);

    class FileNameContainsFilter implements FilenameFilter {
        private final String string;

        public FileNameContainsFilter(String str) {
            this.string = str;
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            return str.contains(this.string) && !str.endsWith(ClsFileOutputStream.IN_PROGRESS_SESSION_FILE_EXTENSION);
        }
    }

    class SessionPartFileFilter implements FilenameFilter {
        private final String sessionId;

        public SessionPartFileFilter(String str) {
            this.sessionId = str;
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            return (str.equals(new StringBuilder().append(this.sessionId).append(ClsFileOutputStream.SESSION_FILE_EXTENSION).toString()) || !str.contains(this.sessionId) || str.endsWith(ClsFileOutputStream.IN_PROGRESS_SESSION_FILE_EXTENSION)) ? false : true;
        }
    }

    class AnySessionPartFileFilter implements FilenameFilter {
        private AnySessionPartFileFilter() {
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            return !CrashlyticsUncaughtExceptionHandler.SESSION_FILE_FILTER.accept(file, str) && CrashlyticsUncaughtExceptionHandler.SESSION_FILE_PATTERN.matcher(str).matches();
        }
    }

    CrashlyticsUncaughtExceptionHandler(Thread.UncaughtExceptionHandler uncaughtExceptionHandler, CrashlyticsListener crashlyticsListener, CrashlyticsExecutorServiceWrapper crashlyticsExecutorServiceWrapper, z zVar, SessionDataWriter sessionDataWriter, CrashlyticsCore crashlyticsCore) {
        this.defaultHandler = uncaughtExceptionHandler;
        this.executorServiceWrapper = crashlyticsExecutorServiceWrapper;
        this.idManager = zVar;
        this.crashlyticsCore = crashlyticsCore;
        this.sessionDataWriter = sessionDataWriter;
        this.filesDir = crashlyticsCore.getSdkDirectory();
        this.logFileManager = new LogFileManager(crashlyticsCore.getContext(), this.filesDir);
        notifyCrashlyticsListenerOfPreviousCrash(crashlyticsListener);
        this.powerConnectedReceiver = new BroadcastReceiver() { // from class: com.crashlytics.android.core.CrashlyticsUncaughtExceptionHandler.5
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                CrashlyticsUncaughtExceptionHandler.this.powerConnected = true;
            }
        };
        IntentFilter intentFilter = new IntentFilter("android.intent.action.ACTION_POWER_CONNECTED");
        this.powerDisconnectedReceiver = new BroadcastReceiver() { // from class: com.crashlytics.android.core.CrashlyticsUncaughtExceptionHandler.6
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                CrashlyticsUncaughtExceptionHandler.this.powerConnected = false;
            }
        };
        IntentFilter intentFilter2 = new IntentFilter("android.intent.action.ACTION_POWER_DISCONNECTED");
        Context context = crashlyticsCore.getContext();
        context.registerReceiver(this.powerConnectedReceiver, intentFilter);
        context.registerReceiver(this.powerDisconnectedReceiver, intentFilter2);
        this.receiversRegistered.set(true);
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public synchronized void uncaughtException(final Thread thread, final Throwable th) {
        this.isHandlingException.set(true);
        try {
            try {
                f.h().a(CrashlyticsCore.TAG, "Crashlytics is handling uncaught exception \"" + th + "\" from thread " + thread.getName());
                if (!this.receiversRegistered.getAndSet(true)) {
                    f.h().a(CrashlyticsCore.TAG, "Unregistering power receivers.");
                    Context context = this.crashlyticsCore.getContext();
                    context.unregisterReceiver(this.powerConnectedReceiver);
                    context.unregisterReceiver(this.powerDisconnectedReceiver);
                }
                final Date date = new Date();
                this.executorServiceWrapper.executeSyncLoggingException(new Callable<Void>() { // from class: com.crashlytics.android.core.CrashlyticsUncaughtExceptionHandler.7
                    @Override // java.util.concurrent.Callable
                    public Void call() throws Exception {
                        CrashlyticsUncaughtExceptionHandler.this.handleUncaughtException(date, thread, th);
                        return null;
                    }
                });
            } finally {
                f.h().a(CrashlyticsCore.TAG, "Crashlytics completed exception processing. Invoking default exception handler.");
                this.defaultHandler.uncaughtException(thread, th);
                this.isHandlingException.set(false);
            }
        } catch (Exception e2) {
            f.h().e(CrashlyticsCore.TAG, "An error occurred in the uncaught exception handler", e2);
            f.h().a(CrashlyticsCore.TAG, "Crashlytics completed exception processing. Invoking default exception handler.");
            this.defaultHandler.uncaughtException(thread, th);
            this.isHandlingException.set(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleUncaughtException(Date date, Thread thread, Throwable th) throws Exception {
        writeFatal(date, thread, th);
        doCloseSessions();
        doOpenSession();
        trimSessionFiles();
        if (!this.crashlyticsCore.shouldPromptUserBeforeSendingCrashReports()) {
            sendSessionReports();
        }
    }

    boolean isHandlingException() {
        return this.isHandlingException.get();
    }

    private void notifyCrashlyticsListenerOfPreviousCrash(CrashlyticsListener crashlyticsListener) {
        f.h().a(CrashlyticsCore.TAG, "Checking for previous crash marker.");
        File file = new File(this.crashlyticsCore.getSdkDirectory(), CLS_CRASH_MARKER_FILE_NAME);
        if (file.exists()) {
            file.delete();
            if (crashlyticsListener != null) {
                try {
                    crashlyticsListener.crashlyticsDidDetectCrashDuringPreviousExecution();
                } catch (Exception e2) {
                    f.h().e(CrashlyticsCore.TAG, "Exception thrown by CrashlyticsListener while notifying of previous crash.", e2);
                }
            }
        }
    }

    void writeToLog(final long j, final String str) {
        this.executorServiceWrapper.executeAsync(new Callable<Void>() { // from class: com.crashlytics.android.core.CrashlyticsUncaughtExceptionHandler.8
            @Override // java.util.concurrent.Callable
            public Void call() throws Exception {
                if (!CrashlyticsUncaughtExceptionHandler.this.isHandlingException.get()) {
                    CrashlyticsUncaughtExceptionHandler.this.logFileManager.writeToLog(j, str);
                    return null;
                }
                return null;
            }
        });
    }

    void writeNonFatalException(final Thread thread, final Throwable th) {
        final Date date = new Date();
        this.executorServiceWrapper.executeAsync(new Runnable() { // from class: com.crashlytics.android.core.CrashlyticsUncaughtExceptionHandler.9
            @Override // java.lang.Runnable
            public void run() throws Throwable {
                if (!CrashlyticsUncaughtExceptionHandler.this.isHandlingException.get()) {
                    CrashlyticsUncaughtExceptionHandler.this.doWriteNonFatal(date, thread, th);
                }
            }
        });
    }

    private void writeFatal(Date date, Thread thread, Throwable th) throws Throwable {
        ClsFileOutputStream clsFileOutputStream;
        ClsFileOutputStream clsFileOutputStream2;
        CodedOutputStream codedOutputStreamNewInstance = null;
        try {
            new File(this.filesDir, CLS_CRASH_MARKER_FILE_NAME).createNewFile();
            String currentSessionId = getCurrentSessionId();
            if (currentSessionId != null) {
                CrashlyticsCore.recordFatalExceptionEvent(currentSessionId);
                clsFileOutputStream = new ClsFileOutputStream(this.filesDir, currentSessionId + SESSION_FATAL_TAG);
                try {
                    try {
                        codedOutputStreamNewInstance = CodedOutputStream.newInstance(clsFileOutputStream);
                        writeSessionEvent(codedOutputStreamNewInstance, date, thread, th, EVENT_TYPE_CRASH, true);
                        clsFileOutputStream2 = clsFileOutputStream;
                    } catch (Exception e2) {
                        e = e2;
                        f.h().e(CrashlyticsCore.TAG, "An error occurred in the fatal exception logger", e);
                        ExceptionUtils.writeStackTraceIfNotNull(e, clsFileOutputStream);
                        m.a(codedOutputStreamNewInstance, "Failed to flush to session begin file.");
                        m.a((Closeable) clsFileOutputStream, "Failed to close fatal exception file output stream.");
                        return;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    m.a(codedOutputStreamNewInstance, "Failed to flush to session begin file.");
                    m.a((Closeable) clsFileOutputStream, "Failed to close fatal exception file output stream.");
                    throw th;
                }
            } else {
                f.h().e(CrashlyticsCore.TAG, "Tried to write a fatal exception while no session was open.", null);
                clsFileOutputStream2 = null;
            }
            m.a(codedOutputStreamNewInstance, "Failed to flush to session begin file.");
            m.a((Closeable) clsFileOutputStream2, "Failed to close fatal exception file output stream.");
        } catch (Exception e3) {
            e = e3;
            clsFileOutputStream = null;
        } catch (Throwable th3) {
            th = th3;
            clsFileOutputStream = null;
            m.a(codedOutputStreamNewInstance, "Failed to flush to session begin file.");
            m.a((Closeable) clsFileOutputStream, "Failed to close fatal exception file output stream.");
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void writeExternalCrashEvent(SessionEventData sessionEventData) throws Throwable {
        ClsFileOutputStream clsFileOutputStream;
        Throwable th;
        CodedOutputStream codedOutputStream;
        Exception exc;
        ClsFileOutputStream clsFileOutputStream2;
        CodedOutputStream codedOutputStreamNewInstance = null;
        try {
            String previousSessionId = getPreviousSessionId();
            if (previousSessionId != null) {
                CrashlyticsCore.recordFatalExceptionEvent(previousSessionId);
                clsFileOutputStream2 = new ClsFileOutputStream(this.filesDir, previousSessionId + SESSION_FATAL_TAG);
                try {
                    codedOutputStreamNewInstance = CodedOutputStream.newInstance(clsFileOutputStream2);
                } catch (Exception e2) {
                    clsFileOutputStream = clsFileOutputStream2;
                    codedOutputStream = null;
                    exc = e2;
                } catch (Throwable th2) {
                    clsFileOutputStream = clsFileOutputStream2;
                    codedOutputStream = null;
                    th = th2;
                }
                try {
                    NativeCrashWriter.writeNativeCrash(sessionEventData, new LogFileManager(this.crashlyticsCore.getContext(), this.filesDir, previousSessionId), new MetaDataStore(this.filesDir).readKeyData(previousSessionId), codedOutputStreamNewInstance);
                } catch (Exception e3) {
                    clsFileOutputStream = clsFileOutputStream2;
                    codedOutputStream = codedOutputStreamNewInstance;
                    exc = e3;
                    try {
                        f.h().e(CrashlyticsCore.TAG, "An error occurred in the native crash logger", exc);
                        ExceptionUtils.writeStackTraceIfNotNull(exc, clsFileOutputStream);
                        m.a(codedOutputStream, "Failed to flush to session begin file.");
                        m.a((Closeable) clsFileOutputStream, "Failed to close fatal exception file output stream.");
                        return;
                    } catch (Throwable th3) {
                        th = th3;
                        m.a(codedOutputStream, "Failed to flush to session begin file.");
                        m.a((Closeable) clsFileOutputStream, "Failed to close fatal exception file output stream.");
                        throw th;
                    }
                } catch (Throwable th4) {
                    clsFileOutputStream = clsFileOutputStream2;
                    codedOutputStream = codedOutputStreamNewInstance;
                    th = th4;
                    m.a(codedOutputStream, "Failed to flush to session begin file.");
                    m.a((Closeable) clsFileOutputStream, "Failed to close fatal exception file output stream.");
                    throw th;
                }
            } else {
                f.h().e(CrashlyticsCore.TAG, "Tried to write a native crash while no session was open.", null);
                clsFileOutputStream2 = null;
            }
            m.a(codedOutputStreamNewInstance, "Failed to flush to session begin file.");
            m.a((Closeable) clsFileOutputStream2, "Failed to close fatal exception file output stream.");
        } catch (Exception e4) {
            clsFileOutputStream = null;
            exc = e4;
            codedOutputStream = null;
        } catch (Throwable th5) {
            clsFileOutputStream = null;
            th = th5;
            codedOutputStream = null;
        }
    }

    void cacheUserData(final String str, final String str2, final String str3) {
        this.executorServiceWrapper.executeAsync(new Callable<Void>() { // from class: com.crashlytics.android.core.CrashlyticsUncaughtExceptionHandler.10
            @Override // java.util.concurrent.Callable
            public Void call() throws Exception {
                new MetaDataStore(CrashlyticsUncaughtExceptionHandler.this.filesDir).writeUserData(CrashlyticsUncaughtExceptionHandler.this.getCurrentSessionId(), new UserMetaData(str, str2, str3));
                return null;
            }
        });
    }

    void cacheKeyData(final Map<String, String> map) {
        this.executorServiceWrapper.executeAsync(new Callable<Void>() { // from class: com.crashlytics.android.core.CrashlyticsUncaughtExceptionHandler.11
            @Override // java.util.concurrent.Callable
            public Void call() throws Exception {
                new MetaDataStore(CrashlyticsUncaughtExceptionHandler.this.filesDir).writeKeyData(CrashlyticsUncaughtExceptionHandler.this.getCurrentSessionId(), map);
                return null;
            }
        });
    }

    void openSession() {
        this.executorServiceWrapper.executeAsync(new Callable<Void>() { // from class: com.crashlytics.android.core.CrashlyticsUncaughtExceptionHandler.12
            @Override // java.util.concurrent.Callable
            public Void call() throws Exception {
                CrashlyticsUncaughtExceptionHandler.this.doOpenSession();
                return null;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getCurrentSessionId() {
        File[] fileArrListSessionBeginFiles = listSessionBeginFiles();
        Arrays.sort(fileArrListSessionBeginFiles, LARGEST_FILE_NAME_FIRST);
        if (fileArrListSessionBeginFiles.length > 0) {
            return getSessionIdFromSessionFile(fileArrListSessionBeginFiles[0]);
        }
        return null;
    }

    private String getPreviousSessionId() {
        File[] fileArrListSessionBeginFiles = listSessionBeginFiles();
        Arrays.sort(fileArrListSessionBeginFiles, LARGEST_FILE_NAME_FIRST);
        if (fileArrListSessionBeginFiles.length > 1) {
            return getSessionIdFromSessionFile(fileArrListSessionBeginFiles[1]);
        }
        return null;
    }

    private String getSessionIdFromSessionFile(File file) {
        return file.getName().substring(0, 35);
    }

    boolean hasOpenSession() {
        return listSessionBeginFiles().length > 0;
    }

    boolean finalizeSessions() {
        return ((Boolean) this.executorServiceWrapper.executeSyncLoggingException(new Callable<Boolean>() { // from class: com.crashlytics.android.core.CrashlyticsUncaughtExceptionHandler.13
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public Boolean call() throws Exception {
                if (!CrashlyticsUncaughtExceptionHandler.this.isHandlingException.get()) {
                    f.h().a(CrashlyticsCore.TAG, "Finalizing previously open sessions.");
                    SessionEventData externalCrashEventData = CrashlyticsUncaughtExceptionHandler.this.crashlyticsCore.getExternalCrashEventData();
                    if (externalCrashEventData != null) {
                        CrashlyticsUncaughtExceptionHandler.this.writeExternalCrashEvent(externalCrashEventData);
                    }
                    CrashlyticsUncaughtExceptionHandler.this.doCloseSessions(true);
                    f.h().a(CrashlyticsCore.TAG, "Closed all previously open sessions");
                    return true;
                }
                f.h().a(CrashlyticsCore.TAG, "Skipping session finalization because a crash has already occurred.");
                return false;
            }
        })).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doOpenSession() throws Exception {
        Date date = new Date();
        String string = new CLSUUID(this.idManager).toString();
        f.h().a(CrashlyticsCore.TAG, "Opening an new session with ID " + string);
        writeBeginSession(string, date);
        writeSessionApp(string);
        writeSessionOS(string);
        writeSessionDevice(string);
        this.logFileManager.setCurrentSession(string);
    }

    void doCloseSessions() throws Exception {
        doCloseSessions(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doCloseSessions(boolean z) throws Exception {
        int i = z ? 1 : 0;
        trimOpenSessions(i + 8);
        File[] fileArrListSessionBeginFiles = listSessionBeginFiles();
        Arrays.sort(fileArrListSessionBeginFiles, LARGEST_FILE_NAME_FIRST);
        if (fileArrListSessionBeginFiles.length > i) {
            writeSessionUser(getSessionIdFromSessionFile(fileArrListSessionBeginFiles[i]));
            p sessionSettingsData = this.crashlyticsCore.getSessionSettingsData();
            if (sessionSettingsData != null) {
                int i2 = sessionSettingsData.f336c;
                f.h().a(CrashlyticsCore.TAG, "Closing open sessions.");
                while (i < fileArrListSessionBeginFiles.length) {
                    File file = fileArrListSessionBeginFiles[i];
                    String sessionIdFromSessionFile = getSessionIdFromSessionFile(file);
                    f.h().a(CrashlyticsCore.TAG, "Closing session: " + sessionIdFromSessionFile);
                    writeSessionPartsToSessionFile(file, sessionIdFromSessionFile, i2);
                    i++;
                }
                return;
            }
            f.h().a(CrashlyticsCore.TAG, "Unable to close session. Settings are not loaded.");
            return;
        }
        f.h().a(CrashlyticsCore.TAG, "No open sessions to be closed.");
    }

    private void closeWithoutRenamingOrLog(ClsFileOutputStream clsFileOutputStream) {
        if (clsFileOutputStream != null) {
            try {
                clsFileOutputStream.closeInProgressStream();
            } catch (IOException e2) {
                f.h().e(CrashlyticsCore.TAG, "Error closing session file stream in the presence of an exception", e2);
            }
        }
    }

    private void deleteSessionPartFilesFor(String str) {
        for (File file : listSessionPartFilesFor(str)) {
            file.delete();
        }
    }

    private File[] listSessionPartFilesFor(String str) {
        return listFilesMatching(new SessionPartFileFilter(str));
    }

    private File[] listCompleteSessionFiles() {
        return listFilesMatching(SESSION_FILE_FILTER);
    }

    File[] listSessionBeginFiles() {
        return listFilesMatching(new FileNameContainsFilter(SESSION_BEGIN_TAG));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public File[] listFilesMatching(FilenameFilter filenameFilter) {
        return ensureFileArrayNotNull(this.filesDir.listFiles(filenameFilter));
    }

    private File[] ensureFileArrayNotNull(File[] fileArr) {
        return fileArr == null ? new File[0] : fileArr;
    }

    private void trimSessionEventFiles(String str, int i) {
        Utils.capFileCount(this.filesDir, new FileNameContainsFilter(str + SESSION_NON_FATAL_TAG), i, SMALLEST_FILE_NAME_FIRST);
    }

    void trimSessionFiles() {
        Utils.capFileCount(this.filesDir, SESSION_FILE_FILTER, 4, SMALLEST_FILE_NAME_FIRST);
    }

    private void trimOpenSessions(int i) {
        HashSet hashSet = new HashSet();
        File[] fileArrListSessionBeginFiles = listSessionBeginFiles();
        Arrays.sort(fileArrListSessionBeginFiles, LARGEST_FILE_NAME_FIRST);
        int iMin = Math.min(i, fileArrListSessionBeginFiles.length);
        for (int i2 = 0; i2 < iMin; i2++) {
            hashSet.add(getSessionIdFromSessionFile(fileArrListSessionBeginFiles[i2]));
        }
        this.logFileManager.discardOldLogFiles(hashSet);
        for (File file : listFilesMatching(new AnySessionPartFileFilter())) {
            String name = file.getName();
            Matcher matcher = SESSION_FILE_PATTERN.matcher(name);
            matcher.matches();
            if (!hashSet.contains(matcher.group(1))) {
                f.h().a(CrashlyticsCore.TAG, "Trimming open session file: " + name);
                file.delete();
            }
        }
    }

    void cleanInvalidTempFiles() {
        this.executorServiceWrapper.executeAsync(new Runnable() { // from class: com.crashlytics.android.core.CrashlyticsUncaughtExceptionHandler.14
            @Override // java.lang.Runnable
            public void run() {
                CrashlyticsUncaughtExceptionHandler.this.doCleanInvalidTempFiles(CrashlyticsUncaughtExceptionHandler.this.listFilesMatching(ClsFileOutputStream.TEMP_FILENAME_FILTER));
            }
        });
    }

    void doCleanInvalidTempFiles(File[] fileArr) {
        deleteLegacyInvalidCacheDir();
        for (File file : fileArr) {
            f.h().a(CrashlyticsCore.TAG, "Found invalid session part file: " + file);
            final String sessionIdFromSessionFile = getSessionIdFromSessionFile(file);
            FilenameFilter filenameFilter = new FilenameFilter() { // from class: com.crashlytics.android.core.CrashlyticsUncaughtExceptionHandler.15
                @Override // java.io.FilenameFilter
                public boolean accept(File file2, String str) {
                    return str.startsWith(sessionIdFromSessionFile);
                }
            };
            f.h().a(CrashlyticsCore.TAG, "Deleting all part files for invalid session: " + sessionIdFromSessionFile);
            for (File file2 : listFilesMatching(filenameFilter)) {
                f.h().a(CrashlyticsCore.TAG, "Deleting session file: " + file2);
                file2.delete();
            }
        }
    }

    private void deleteLegacyInvalidCacheDir() {
        File file = new File(this.crashlyticsCore.getSdkDirectory(), INVALID_CLS_CACHE_DIR);
        if (file.exists()) {
            if (file.isDirectory()) {
                for (File file2 : file.listFiles()) {
                    file2.delete();
                }
            }
            file.delete();
        }
    }

    private void writeBeginSession(String str, Date date) throws Exception {
        ClsFileOutputStream clsFileOutputStream;
        ClsFileOutputStream clsFileOutputStream2;
        CodedOutputStream codedOutputStreamNewInstance = null;
        try {
            clsFileOutputStream = new ClsFileOutputStream(this.filesDir, str + SESSION_BEGIN_TAG);
        } catch (Exception e2) {
            e = e2;
            clsFileOutputStream2 = null;
        } catch (Throwable th) {
            th = th;
            clsFileOutputStream = null;
        }
        try {
            codedOutputStreamNewInstance = CodedOutputStream.newInstance(clsFileOutputStream);
            this.sessionDataWriter.writeBeginSession(codedOutputStreamNewInstance, str, String.format(Locale.US, GENERATOR_FORMAT, this.crashlyticsCore.getVersion()), date.getTime() / 1000);
            m.a(codedOutputStreamNewInstance, "Failed to flush to session begin file.");
            m.a((Closeable) clsFileOutputStream, "Failed to close begin session file.");
        } catch (Exception e3) {
            e = e3;
            clsFileOutputStream2 = clsFileOutputStream;
            try {
                ExceptionUtils.writeStackTraceIfNotNull(e, clsFileOutputStream2);
                throw e;
            } catch (Throwable th2) {
                th = th2;
                clsFileOutputStream = clsFileOutputStream2;
                m.a(codedOutputStreamNewInstance, "Failed to flush to session begin file.");
                m.a((Closeable) clsFileOutputStream, "Failed to close begin session file.");
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            m.a(codedOutputStreamNewInstance, "Failed to flush to session begin file.");
            m.a((Closeable) clsFileOutputStream, "Failed to close begin session file.");
            throw th;
        }
    }

    private void writeSessionApp(String str) throws Exception {
        ClsFileOutputStream clsFileOutputStream;
        ClsFileOutputStream clsFileOutputStream2;
        CodedOutputStream codedOutputStreamNewInstance = null;
        try {
            clsFileOutputStream = new ClsFileOutputStream(this.filesDir, str + SESSION_APP_TAG);
            try {
                codedOutputStreamNewInstance = CodedOutputStream.newInstance(clsFileOutputStream);
                this.sessionDataWriter.writeSessionApp(codedOutputStreamNewInstance, this.crashlyticsCore.getPackageName(), this.crashlyticsCore.getVersionCode(), this.crashlyticsCore.getVersionName(), this.idManager.b(), t.a(this.crashlyticsCore.getInstallerPackageName()).a());
                m.a(codedOutputStreamNewInstance, "Failed to flush to session app file.");
                m.a((Closeable) clsFileOutputStream, "Failed to close session app file.");
            } catch (Exception e2) {
                e = e2;
                clsFileOutputStream2 = clsFileOutputStream;
                try {
                    ExceptionUtils.writeStackTraceIfNotNull(e, clsFileOutputStream2);
                    throw e;
                } catch (Throwable th) {
                    th = th;
                    clsFileOutputStream = clsFileOutputStream2;
                    m.a(codedOutputStreamNewInstance, "Failed to flush to session app file.");
                    m.a((Closeable) clsFileOutputStream, "Failed to close session app file.");
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                m.a(codedOutputStreamNewInstance, "Failed to flush to session app file.");
                m.a((Closeable) clsFileOutputStream, "Failed to close session app file.");
                throw th;
            }
        } catch (Exception e3) {
            e = e3;
            clsFileOutputStream2 = null;
        } catch (Throwable th3) {
            th = th3;
            clsFileOutputStream = null;
        }
    }

    private void writeSessionOS(String str) throws Exception {
        ClsFileOutputStream clsFileOutputStream;
        try {
            try {
                clsFileOutputStream = new ClsFileOutputStream(this.filesDir, str + SESSION_OS_TAG);
                try {
                    CodedOutputStream codedOutputStreamNewInstance = CodedOutputStream.newInstance(clsFileOutputStream);
                    this.sessionDataWriter.writeSessionOS(codedOutputStreamNewInstance, m.g(this.crashlyticsCore.getContext()));
                    m.a(codedOutputStreamNewInstance, "Failed to flush to session OS file.");
                    m.a((Closeable) clsFileOutputStream, "Failed to close session OS file.");
                } catch (Exception e2) {
                    e = e2;
                    ExceptionUtils.writeStackTraceIfNotNull(e, clsFileOutputStream);
                    throw e;
                }
            } catch (Throwable th) {
                th = th;
                m.a((Flushable) null, "Failed to flush to session OS file.");
                m.a((Closeable) null, "Failed to close session OS file.");
                throw th;
            }
        } catch (Exception e3) {
            e = e3;
            clsFileOutputStream = null;
        } catch (Throwable th2) {
            th = th2;
            m.a((Flushable) null, "Failed to flush to session OS file.");
            m.a((Closeable) null, "Failed to close session OS file.");
            throw th;
        }
    }

    private void writeSessionDevice(String str) throws Exception {
        ClsFileOutputStream clsFileOutputStream;
        ClsFileOutputStream clsFileOutputStream2 = null;
        CodedOutputStream codedOutputStreamNewInstance = null;
        try {
            clsFileOutputStream = new ClsFileOutputStream(this.filesDir, str + SESSION_DEVICE_TAG);
        } catch (Exception e2) {
            e = e2;
        } catch (Throwable th) {
            th = th;
            clsFileOutputStream = null;
        }
        try {
            codedOutputStreamNewInstance = CodedOutputStream.newInstance(clsFileOutputStream);
            Context context = this.crashlyticsCore.getContext();
            StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
            this.sessionDataWriter.writeSessionDevice(codedOutputStreamNewInstance, this.idManager.f(), m.a(), Build.MODEL, Runtime.getRuntime().availableProcessors(), m.b(), ((long) statFs.getBlockCount()) * ((long) statFs.getBlockSize()), m.f(context), this.idManager.g(), m.h(context), Build.MANUFACTURER, Build.PRODUCT);
            m.a(codedOutputStreamNewInstance, "Failed to flush session device info.");
            m.a((Closeable) clsFileOutputStream, "Failed to close session device file.");
        } catch (Exception e3) {
            e = e3;
            clsFileOutputStream2 = clsFileOutputStream;
            try {
                ExceptionUtils.writeStackTraceIfNotNull(e, clsFileOutputStream2);
                throw e;
            } catch (Throwable th2) {
                th = th2;
                clsFileOutputStream = clsFileOutputStream2;
                m.a(codedOutputStreamNewInstance, "Failed to flush session device info.");
                m.a((Closeable) clsFileOutputStream, "Failed to close session device file.");
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            m.a(codedOutputStreamNewInstance, "Failed to flush session device info.");
            m.a((Closeable) clsFileOutputStream, "Failed to close session device file.");
            throw th;
        }
    }

    private void writeSessionUser(String str) throws Exception {
        ClsFileOutputStream clsFileOutputStream;
        try {
            try {
                clsFileOutputStream = new ClsFileOutputStream(this.filesDir, str + SESSION_USER_TAG);
                try {
                    CodedOutputStream codedOutputStreamNewInstance = CodedOutputStream.newInstance(clsFileOutputStream);
                    UserMetaData userMetaData = getUserMetaData(str);
                    if (userMetaData.isEmpty()) {
                        m.a(codedOutputStreamNewInstance, "Failed to flush session user file.");
                        m.a((Closeable) clsFileOutputStream, "Failed to close session user file.");
                    } else {
                        this.sessionDataWriter.writeSessionUser(codedOutputStreamNewInstance, userMetaData.id, userMetaData.name, userMetaData.email);
                        m.a(codedOutputStreamNewInstance, "Failed to flush session user file.");
                        m.a((Closeable) clsFileOutputStream, "Failed to close session user file.");
                    }
                } catch (Exception e2) {
                    e = e2;
                    ExceptionUtils.writeStackTraceIfNotNull(e, clsFileOutputStream);
                    throw e;
                }
            } catch (Throwable th) {
                th = th;
                m.a((Flushable) null, "Failed to flush session user file.");
                m.a((Closeable) null, "Failed to close session user file.");
                throw th;
            }
        } catch (Exception e3) {
            e = e3;
            clsFileOutputStream = null;
        } catch (Throwable th2) {
            th = th2;
            m.a((Flushable) null, "Failed to flush session user file.");
            m.a((Closeable) null, "Failed to close session user file.");
            throw th;
        }
    }

    private UserMetaData getUserMetaData(String str) {
        return isHandlingException() ? new UserMetaData(this.crashlyticsCore.getUserIdentifier(), this.crashlyticsCore.getUserName(), this.crashlyticsCore.getUserEmail()) : new MetaDataStore(this.filesDir).readUserData(str);
    }

    private void writeSessionEvent(CodedOutputStream codedOutputStream, Date date, Thread thread, Throwable th, String str, boolean z) throws Exception {
        Thread[] threadArr;
        Map<String, String> treeMap;
        Context context = this.crashlyticsCore.getContext();
        long time = date.getTime() / 1000;
        float fC = m.c(context);
        int iA = m.a(context, this.powerConnected);
        boolean zD = m.d(context);
        int i = context.getResources().getConfiguration().orientation;
        long jB = m.b() - m.b(context);
        long jB2 = m.b(Environment.getDataDirectory().getPath());
        ActivityManager.RunningAppProcessInfo runningAppProcessInfoA = m.a(context.getPackageName(), context);
        LinkedList linkedList = new LinkedList();
        StackTraceElement[] stackTrace = th.getStackTrace();
        if (z) {
            Map<Thread, StackTraceElement[]> allStackTraces = Thread.getAllStackTraces();
            threadArr = new Thread[allStackTraces.size()];
            int i2 = 0;
            Iterator<Map.Entry<Thread, StackTraceElement[]>> it = allStackTraces.entrySet().iterator();
            while (true) {
                int i3 = i2;
                if (!it.hasNext()) {
                    break;
                }
                Map.Entry<Thread, StackTraceElement[]> next = it.next();
                threadArr[i3] = next.getKey();
                linkedList.add(next.getValue());
                i2 = i3 + 1;
            }
        } else {
            threadArr = new Thread[0];
        }
        if (!m.a(context, "com.crashlytics.CollectCustomKeys", true)) {
            treeMap = new TreeMap<>();
        } else {
            Map<String, String> attributes = this.crashlyticsCore.getAttributes();
            treeMap = (attributes == null || attributes.size() <= 1) ? attributes : new TreeMap<>(attributes);
        }
        this.sessionDataWriter.writeSessionEvent(codedOutputStream, time, thread, th, str, threadArr, fC, iA, zD, i, jB, jB2, runningAppProcessInfoA, linkedList, stackTrace, this.logFileManager, treeMap);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doWriteNonFatal(Date date, Thread thread, Throwable th) throws Throwable {
        ClsFileOutputStream clsFileOutputStream;
        ClsFileOutputStream clsFileOutputStream2;
        CodedOutputStream codedOutputStreamNewInstance = null;
        String currentSessionId = getCurrentSessionId();
        if (currentSessionId == null) {
            f.h().e(CrashlyticsCore.TAG, "Tried to write a non-fatal exception while no session was open.", null);
            return;
        }
        CrashlyticsCore.recordLoggedExceptionEvent(currentSessionId);
        try {
            f.h().a(CrashlyticsCore.TAG, "Crashlytics is logging non-fatal exception \"" + th + "\" from thread " + thread.getName());
            clsFileOutputStream2 = new ClsFileOutputStream(this.filesDir, currentSessionId + SESSION_NON_FATAL_TAG + m.a(this.eventCounter.getAndIncrement()));
        } catch (Exception e2) {
            e = e2;
            clsFileOutputStream = null;
        } catch (Throwable th2) {
            th = th2;
            clsFileOutputStream = null;
        }
        try {
            codedOutputStreamNewInstance = CodedOutputStream.newInstance(clsFileOutputStream2);
            writeSessionEvent(codedOutputStreamNewInstance, date, thread, th, "error", false);
            m.a(codedOutputStreamNewInstance, "Failed to flush to non-fatal file.");
            m.a((Closeable) clsFileOutputStream2, "Failed to close non-fatal file output stream.");
        } catch (Exception e3) {
            e = e3;
            clsFileOutputStream = clsFileOutputStream2;
            try {
                f.h().e(CrashlyticsCore.TAG, "An error occurred in the non-fatal exception logger", e);
                ExceptionUtils.writeStackTraceIfNotNull(e, clsFileOutputStream);
                m.a(codedOutputStreamNewInstance, "Failed to flush to non-fatal file.");
                m.a((Closeable) clsFileOutputStream, "Failed to close non-fatal file output stream.");
            } catch (Throwable th3) {
                th = th3;
                m.a(codedOutputStreamNewInstance, "Failed to flush to non-fatal file.");
                m.a((Closeable) clsFileOutputStream, "Failed to close non-fatal file output stream.");
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
            clsFileOutputStream = clsFileOutputStream2;
            m.a(codedOutputStreamNewInstance, "Failed to flush to non-fatal file.");
            m.a((Closeable) clsFileOutputStream, "Failed to close non-fatal file output stream.");
            throw th;
        }
        try {
            trimSessionEventFiles(currentSessionId, 64);
        } catch (Exception e4) {
            f.h().e(CrashlyticsCore.TAG, "An error occurred when trimming non-fatal files.", e4);
        }
    }

    private void writeSessionPartsToSessionFile(File file, String str, int i) throws Throwable {
        CodedOutputStream codedOutputStreamNewInstance;
        ClsFileOutputStream clsFileOutputStream;
        File[] fileArrListFilesMatching;
        ClsFileOutputStream clsFileOutputStream2 = null;
        f.h().a(CrashlyticsCore.TAG, "Collecting session parts for ID " + str);
        File[] fileArrListFilesMatching2 = listFilesMatching(new FileNameContainsFilter(str + SESSION_FATAL_TAG));
        boolean z = fileArrListFilesMatching2 != null && fileArrListFilesMatching2.length > 0;
        f.h().a(CrashlyticsCore.TAG, String.format(Locale.US, "Session %s has fatal exception: %s", str, Boolean.valueOf(z)));
        File[] fileArrListFilesMatching3 = listFilesMatching(new FileNameContainsFilter(str + SESSION_NON_FATAL_TAG));
        boolean z2 = fileArrListFilesMatching3 != null && fileArrListFilesMatching3.length > 0;
        f.h().a(CrashlyticsCore.TAG, String.format(Locale.US, "Session %s has non-fatal exceptions: %s", str, Boolean.valueOf(z2)));
        if (z || z2) {
            try {
                clsFileOutputStream = new ClsFileOutputStream(this.filesDir, str);
                try {
                    codedOutputStreamNewInstance = CodedOutputStream.newInstance(clsFileOutputStream);
                    try {
                        f.h().a(CrashlyticsCore.TAG, "Collecting SessionStart data for session ID " + str);
                        writeToCosFromFile(codedOutputStreamNewInstance, file);
                        codedOutputStreamNewInstance.writeUInt64(4, new Date().getTime() / 1000);
                        codedOutputStreamNewInstance.writeBool(5, z);
                        writeInitialPartsTo(codedOutputStreamNewInstance, str);
                        if (z2) {
                            if (fileArrListFilesMatching3.length > i) {
                                f.h().a(CrashlyticsCore.TAG, String.format(Locale.US, "Trimming down to %d logged exceptions.", Integer.valueOf(i)));
                                trimSessionEventFiles(str, i);
                                fileArrListFilesMatching = listFilesMatching(new FileNameContainsFilter(str + SESSION_NON_FATAL_TAG));
                            } else {
                                fileArrListFilesMatching = fileArrListFilesMatching3;
                            }
                            writeNonFatalEventsTo(codedOutputStreamNewInstance, fileArrListFilesMatching, str);
                        }
                        if (z) {
                            writeToCosFromFile(codedOutputStreamNewInstance, fileArrListFilesMatching2[0]);
                        }
                        codedOutputStreamNewInstance.writeUInt32(11, 1);
                        codedOutputStreamNewInstance.writeEnum(12, 3);
                        m.a(codedOutputStreamNewInstance, "Error flushing session file stream");
                        m.a((Closeable) clsFileOutputStream, "Failed to close CLS file");
                    } catch (Exception e2) {
                        e = e2;
                        clsFileOutputStream2 = clsFileOutputStream;
                        try {
                            f.h().e(CrashlyticsCore.TAG, "Failed to write session file for session ID: " + str, e);
                            ExceptionUtils.writeStackTraceIfNotNull(e, clsFileOutputStream2);
                            m.a(codedOutputStreamNewInstance, "Error flushing session file stream");
                            closeWithoutRenamingOrLog(clsFileOutputStream2);
                        } catch (Throwable th) {
                            th = th;
                            clsFileOutputStream = clsFileOutputStream2;
                            m.a(codedOutputStreamNewInstance, "Error flushing session file stream");
                            m.a((Closeable) clsFileOutputStream, "Failed to close CLS file");
                            throw th;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        m.a(codedOutputStreamNewInstance, "Error flushing session file stream");
                        m.a((Closeable) clsFileOutputStream, "Failed to close CLS file");
                        throw th;
                    }
                } catch (Exception e3) {
                    e = e3;
                    codedOutputStreamNewInstance = null;
                    clsFileOutputStream2 = clsFileOutputStream;
                } catch (Throwable th3) {
                    th = th3;
                    codedOutputStreamNewInstance = null;
                }
            } catch (Exception e4) {
                e = e4;
                codedOutputStreamNewInstance = null;
            } catch (Throwable th4) {
                th = th4;
                codedOutputStreamNewInstance = null;
                clsFileOutputStream = null;
            }
        } else {
            f.h().a(CrashlyticsCore.TAG, "No events present for session ID " + str);
        }
        f.h().a(CrashlyticsCore.TAG, "Removing session part files for ID " + str);
        deleteSessionPartFilesFor(str);
    }

    private void writeNonFatalEventsTo(CodedOutputStream codedOutputStream, File[] fileArr, String str) throws Throwable {
        Arrays.sort(fileArr, m.f160a);
        for (File file : fileArr) {
            try {
                f.h().a(CrashlyticsCore.TAG, String.format(Locale.US, "Found Non Fatal for session ID %s in %s ", str, file.getName()));
                writeToCosFromFile(codedOutputStream, file);
            } catch (Exception e2) {
                f.h().e(CrashlyticsCore.TAG, "Error writting non-fatal to session.", e2);
            }
        }
    }

    private void writeInitialPartsTo(CodedOutputStream codedOutputStream, String str) throws Throwable {
        for (String str2 : new String[]{SESSION_USER_TAG, SESSION_APP_TAG, SESSION_OS_TAG, SESSION_DEVICE_TAG}) {
            File[] fileArrListFilesMatching = listFilesMatching(new FileNameContainsFilter(str + str2));
            if (fileArrListFilesMatching.length == 0) {
                f.h().e(CrashlyticsCore.TAG, "Can't find " + str2 + " data for session ID " + str, null);
            } else {
                f.h().a(CrashlyticsCore.TAG, "Collecting " + str2 + " data for session ID " + str);
                writeToCosFromFile(codedOutputStream, fileArrListFilesMatching[0]);
            }
        }
    }

    private void writeToCosFromFile(CodedOutputStream codedOutputStream, File file) throws Throwable {
        FileInputStream fileInputStream;
        int i;
        if (file.exists()) {
            byte[] bArr = new byte[(int) file.length()];
            try {
                fileInputStream = new FileInputStream(file);
                int i2 = 0;
                while (i2 < bArr.length && (i = fileInputStream.read(bArr, i2, bArr.length - i2)) >= 0) {
                    try {
                        i2 += i;
                    } catch (Throwable th) {
                        th = th;
                        m.a((Closeable) fileInputStream, "Failed to close file input stream.");
                        throw th;
                    }
                }
                m.a((Closeable) fileInputStream, "Failed to close file input stream.");
                codedOutputStream.writeRawBytes(bArr);
            } catch (Throwable th2) {
                th = th2;
                fileInputStream = null;
            }
        } else {
            f.h().e(CrashlyticsCore.TAG, "Tried to include a file that doesn't exist: " + file.getName(), null);
        }
    }

    private void sendSessionReports() {
        for (final File file : listCompleteSessionFiles()) {
            this.executorServiceWrapper.executeAsync(new Runnable() { // from class: com.crashlytics.android.core.CrashlyticsUncaughtExceptionHandler.16
                @Override // java.lang.Runnable
                public void run() {
                    if (m.n(CrashlyticsUncaughtExceptionHandler.this.crashlyticsCore.getContext())) {
                        f.h().a(CrashlyticsCore.TAG, "Attempting to send crash report at time of crash...");
                        CreateReportSpiCall createReportSpiCall = CrashlyticsUncaughtExceptionHandler.this.crashlyticsCore.getCreateReportSpiCall(q.a().b());
                        if (createReportSpiCall != null) {
                            new ReportUploader(createReportSpiCall).forceUpload(new SessionReport(file, CrashlyticsUncaughtExceptionHandler.SEND_AT_CRASHTIME_HEADER));
                        }
                    }
                }
            });
        }
    }
}
