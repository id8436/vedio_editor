package com.google.gdata.util.common.logging;

import java.util.logging.Level;
import java.util.logging.LogRecord;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes3.dex */
public final class FormattingLogger {
    private static final String LOGGER_CLASS_NAME = FormattingLogger.class.getName();
    private final Logger logger;

    public class Record extends LogRecord {
        private static final long serialVersionUID = 1;
        private final Object[] formatterArgs;
        private final String formatterFormat;
        private boolean needToInferCaller;
        private String sourceClassName;
        private String sourceMethodName;

        @Override // java.util.logging.LogRecord
        public String getSourceMethodName() {
            if (this.needToInferCaller) {
                inferCaller(FormattingLogger.LOGGER_CLASS_NAME);
            }
            return this.sourceMethodName;
        }

        @Override // java.util.logging.LogRecord
        public String getSourceClassName() {
            if (this.needToInferCaller) {
                inferCaller(FormattingLogger.LOGGER_CLASS_NAME);
            }
            return this.sourceClassName;
        }

        public Object[] getFormatterArgs() {
            return this.formatterArgs;
        }

        public String getFormatterFormat() {
            return this.formatterFormat;
        }

        @Override // java.util.logging.LogRecord
        public void setSourceClassName(String str) {
            this.sourceClassName = str;
            super.setSourceClassName(str);
        }

        @Override // java.util.logging.LogRecord
        public void setSourceMethodName(String str) {
            this.sourceMethodName = str;
            super.setSourceMethodName(str);
        }

        Record(Level level, String str) {
            super(level, str);
            this.needToInferCaller = true;
            this.formatterFormat = null;
            this.formatterArgs = null;
        }

        Record(Level level, String str, Object[] objArr) {
            super(level, String.format(str, objArr));
            this.needToInferCaller = true;
            this.formatterFormat = str;
            this.formatterArgs = objArr;
        }

        Record(Level level, String str, String str2, String str3) {
            super(level, str);
            setSourceClassName(str2);
            setSourceMethodName(str3);
            this.formatterFormat = null;
            this.formatterArgs = null;
        }

        Record(Level level, String str, Object[] objArr, String str2, String str3) {
            super(level, String.format(str, objArr));
            setSourceClassName(str2);
            setSourceMethodName(str3);
            this.formatterFormat = str;
            this.formatterArgs = objArr;
        }

        protected void inferCaller(String str) {
            this.needToInferCaller = false;
            boolean z = true;
            for (StackTraceElement stackTraceElement : new Throwable().getStackTrace()) {
                String className = stackTraceElement.getClassName();
                boolean zEquals = className.equals(str);
                if (zEquals && z) {
                    z = false;
                } else if (!zEquals && !z) {
                    setSourceClassName(className);
                    setSourceMethodName(stackTraceElement.getMethodName());
                    return;
                }
            }
        }
    }

    public static FormattingLogger getLogger(String str) {
        return new FormattingLogger(Logger.getLogger(str));
    }

    public static FormattingLogger getLogger(Class<?> cls) {
        return getLogger(cls.getCanonicalName());
    }

    public FormattingLogger(Class<?> cls) {
        this(Logger.getLogger(cls.getCanonicalName()));
    }

    public FormattingLogger() {
        this(Logger.getAnonymousLogger());
    }

    public FormattingLogger(Logger logger) {
        if (logger == null) {
            throw new NullPointerException("logger is null");
        }
        this.logger = logger;
    }

    public Logger getFormattingLogger() {
        return this.logger;
    }

    public void log(Level level, String str, Object... objArr) {
        if (isLoggable(level)) {
            Record record = new Record(level, str);
            record.setParameters(objArr);
            nameAndLog(record);
        }
    }

    public void log(Level level, String str, Throwable th) {
        if (isLoggable(level)) {
            Record record = new Record(level, str);
            record.setThrown(th);
            nameAndLog(record);
        }
    }

    public void log(Level level, Throwable th, String str, Object... objArr) {
        if (isLoggable(level)) {
            Record record = new Record(level, str);
            if (th != null) {
                record.setThrown(th);
            }
            if (objArr != null && objArr.length != 0) {
                record.setParameters(objArr);
            }
            nameAndLog(record);
        }
    }

    private void nameAndLog(Record record) {
        record.setLoggerName(this.logger.getName());
        log(record);
    }

    public void log(LogRecord logRecord) {
        if (!(logRecord instanceof Record)) {
            Record record = new Record(Level.INFO, null);
            logRecord.setSourceClassName(record.getSourceClassName());
            logRecord.setSourceMethodName(record.getSourceMethodName());
        }
        this.logger.log(logRecord);
    }

    public void logp(Level level, String str, String str2, String str3, Object... objArr) {
        if (isLoggable(level)) {
            Record record = new Record(level, str3, str, str2);
            if (objArr != null && objArr.length != 0) {
                record.setParameters(objArr);
            }
            nameAndLog(record);
        }
    }

    public void logp(Level level, String str, String str2, String str3, Throwable th) {
        if (isLoggable(level)) {
            Record record = new Record(level, str3, str, str2);
            record.setThrown(th);
            nameAndLog(record);
        }
    }

    public void logp(Level level, String str, String str2, Throwable th, String str3, Object... objArr) {
        if (isLoggable(level)) {
            Record record = new Record(level, str3, str, str2);
            if (th != null) {
                record.setThrown(th);
            }
            if (objArr != null && objArr.length != 0) {
                record.setParameters(objArr);
            }
            nameAndLog(record);
        }
    }

    public boolean isLoggable(Level level) {
        return this.logger.isLoggable(level);
    }

    public Level getLevel() {
        return this.logger.getLevel();
    }

    public void setLevel(Level level) {
        this.logger.setLevel(level);
    }

    public void logfmt(Level level, String str, Object... objArr) {
        if (this.logger.isLoggable(level)) {
            nameAndLog(new Record(level, str, objArr));
        }
    }

    public void logfmt(Level level, String str, Throwable th) {
        if (this.logger.isLoggable(level)) {
            Record record = new Record(level, str, new Object[]{th});
            record.setThrown(th);
            nameAndLog(record);
        }
    }

    public void logfmt(Level level, Throwable th, String str, Object... objArr) {
        if (this.logger.isLoggable(level)) {
            Record record = new Record(level, str, objArr);
            record.setThrown(th);
            nameAndLog(record);
        }
    }

    public void logpfmt(Level level, String str, String str2, String str3, Object... objArr) {
        if (isLoggable(level)) {
            nameAndLog(new Record(level, str3, objArr, str, str2));
        }
    }

    public void logpfmt(Level level, String str, String str2, String str3, Throwable th) {
        if (isLoggable(level)) {
            Record record = new Record(level, str3, new Object[]{th}, str, str2);
            record.setThrown(th);
            nameAndLog(record);
        }
    }

    public void logpfmt(Level level, String str, String str2, Throwable th, String str3, Object... objArr) {
        if (this.logger.isLoggable(level)) {
            logp(level, str, str2, th, String.format(str3, objArr), (Object[]) null);
        }
    }

    public void severe(String str, Throwable th) {
        log(Level.SEVERE, th, str, th);
    }

    public void warning(String str, Throwable th) {
        log(Level.WARNING, th, str, th);
    }

    public void info(String str, Throwable th) {
        log(Level.INFO, th, str, th);
    }

    public void config(String str, Throwable th) {
        log(Level.CONFIG, th, str, th);
    }

    public void fine(String str, Throwable th) {
        log(Level.FINE, th, str, th);
    }

    public void finer(String str, Throwable th) {
        log(Level.FINER, th, str, th);
    }

    public void finest(String str, Throwable th) {
        log(Level.FINEST, th, str, th);
    }

    public void severefmt(String str, Throwable th) {
        logfmt(Level.SEVERE, th, str, th);
    }

    public void warningfmt(String str, Throwable th) {
        logfmt(Level.WARNING, th, str, th);
    }

    public void infofmt(String str, Throwable th) {
        logfmt(Level.INFO, th, str, th);
    }

    public void configfmt(String str, Throwable th) {
        logfmt(Level.CONFIG, th, str, th);
    }

    public void finefmt(String str, Throwable th) {
        logfmt(Level.FINE, th, str, th);
    }

    public void finerfmt(String str, Throwable th) {
        logfmt(Level.FINER, th, str, th);
    }

    public void finestfmt(String str, Throwable th) {
        logfmt(Level.FINEST, th, str, th);
    }

    public void severe(String str, Object... objArr) {
        log(Level.SEVERE, str, objArr);
    }

    public void warning(String str, Object... objArr) {
        log(Level.WARNING, str, objArr);
    }

    public void info(String str, Object... objArr) {
        log(Level.INFO, str, objArr);
    }

    public void config(String str, Object... objArr) {
        log(Level.CONFIG, str, objArr);
    }

    public void fine(String str, Object... objArr) {
        log(Level.FINE, str, objArr);
    }

    public void finer(String str, Object... objArr) {
        log(Level.FINER, str, objArr);
    }

    public void finest(String str, Object... objArr) {
        log(Level.FINEST, str, objArr);
    }

    public void severefmt(String str, Object... objArr) {
        logfmt(Level.SEVERE, str, objArr);
    }

    public void warningfmt(String str, Object... objArr) {
        logfmt(Level.WARNING, str, objArr);
    }

    public void infofmt(String str, Object... objArr) {
        logfmt(Level.INFO, str, objArr);
    }

    public void configfmt(String str, Object... objArr) {
        logfmt(Level.CONFIG, str, objArr);
    }

    public void finefmt(String str, Object... objArr) {
        logfmt(Level.FINE, str, objArr);
    }

    public void finerfmt(String str, Object... objArr) {
        logfmt(Level.FINER, str, objArr);
    }

    public void finestfmt(String str, Object... objArr) {
        logfmt(Level.FINEST, str, objArr);
    }

    public void severefmt(Throwable th, String str, Object... objArr) {
        logfmt(Level.SEVERE, th, str, objArr);
    }

    public void warningfmt(Throwable th, String str, Object... objArr) {
        logfmt(Level.WARNING, th, str, objArr);
    }

    public void infofmt(Throwable th, String str, Object... objArr) {
        logfmt(Level.INFO, th, str, objArr);
    }

    public void configfmt(Throwable th, String str, Object... objArr) {
        logfmt(Level.CONFIG, th, str, objArr);
    }

    public void finefmt(Throwable th, String str, Object... objArr) {
        logfmt(Level.FINE, th, str, objArr);
    }

    public void finerfmt(Throwable th, String str, Object... objArr) {
        logfmt(Level.FINER, th, str, objArr);
    }

    public void finestfmt(Throwable th, String str, Object... objArr) {
        logfmt(Level.FINEST, th, str, objArr);
    }
}
