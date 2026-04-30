package com.crashlytics.android.core;

import android.content.Context;
import c.a.a.a.a.b.m;
import c.a.a.a.f;
import java.io.File;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
class LogFileManager {
    private static final String DIRECTORY_NAME = "log-files";
    private static final String LOGFILE_EXT = ".temp";
    private static final String LOGFILE_PREFIX = "crashlytics-userlog-";
    static final int MAX_LOG_SIZE = 65536;
    private static final NoopLogStore NOOP_LOG_STORE = new NoopLogStore();
    private final Context context;
    private FileLogStore currentLog;
    private final File logFileDir;

    public LogFileManager(Context context, File file) {
        this(context, file, null);
    }

    public LogFileManager(Context context, File file, String str) {
        this.context = context;
        this.logFileDir = new File(file, DIRECTORY_NAME);
        this.currentLog = NOOP_LOG_STORE;
        setCurrentSession(str);
    }

    public final void setCurrentSession(String str) {
        this.currentLog.closeLogFile();
        this.currentLog = NOOP_LOG_STORE;
        if (str != null) {
            if (!isLoggingEnabled()) {
                f.h().a(CrashlyticsCore.TAG, "Preferences requested no custom logs. Aborting log file creation.");
            } else {
                setLogFile(getWorkingFileForSession(str), 65536);
            }
        }
    }

    public void writeToLog(long j, String str) {
        this.currentLog.writeToLog(j, str);
    }

    public ByteString getByteStringForLog() {
        return this.currentLog.getLogAsByteString();
    }

    public void clearLog() {
        this.currentLog.deleteLogFile();
    }

    public void discardOldLogFiles(Set<String> set) {
        File[] fileArrListFiles = this.logFileDir.listFiles();
        if (fileArrListFiles != null) {
            for (File file : fileArrListFiles) {
                if (!set.contains(getSessionIdForFile(file))) {
                    file.delete();
                }
            }
        }
    }

    void setLogFile(File file, int i) {
        this.currentLog = new QueueFileLogStore(file, i);
    }

    private File getWorkingFileForSession(String str) {
        ensureTargetDirectoryExists();
        return new File(this.logFileDir, LOGFILE_PREFIX + str + LOGFILE_EXT);
    }

    private String getSessionIdForFile(File file) {
        String name = file.getName();
        int iLastIndexOf = name.lastIndexOf(LOGFILE_EXT);
        return iLastIndexOf == -1 ? name : name.substring(LOGFILE_PREFIX.length(), iLastIndexOf);
    }

    private void ensureTargetDirectoryExists() {
        if (!this.logFileDir.exists()) {
            this.logFileDir.mkdirs();
        }
    }

    private boolean isLoggingEnabled() {
        return m.a(this.context, "com.crashlytics.CollectCustomLogs", true);
    }

    final class NoopLogStore implements FileLogStore {
        private NoopLogStore() {
        }

        @Override // com.crashlytics.android.core.FileLogStore
        public void writeToLog(long j, String str) {
        }

        @Override // com.crashlytics.android.core.FileLogStore
        public ByteString getLogAsByteString() {
            return null;
        }

        @Override // com.crashlytics.android.core.FileLogStore
        public void closeLogFile() {
        }

        @Override // com.crashlytics.android.core.FileLogStore
        public void deleteLogFile() {
        }
    }
}
