package org.mortbay.util;

import java.io.File;
import java.io.FileOutputStream;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.TimeZone;
import java.util.Timer;
import java.util.TimerTask;
import org.apache.commons.lang3.time.DateUtils;

/* JADX INFO: loaded from: classes3.dex */
public class RolloverFileOutputStream extends FilterOutputStream {
    static final String YYYY_MM_DD = "yyyy_mm_dd";
    private static Timer __rollover;
    static Class class$org$mortbay$util$RolloverFileOutputStream;
    private boolean _append;
    private File _file;
    private SimpleDateFormat _fileBackupFormat;
    private SimpleDateFormat _fileDateFormat;
    private String _filename;
    private int _retainDays;
    private RollTask _rollTask;

    /* JADX INFO: renamed from: org.mortbay.util.RolloverFileOutputStream$1, reason: invalid class name */
    class AnonymousClass1 {
    }

    public RolloverFileOutputStream(String str) throws IOException {
        this(str, true, Integer.getInteger("ROLLOVERFILE_RETAIN_DAYS", 31).intValue());
    }

    public RolloverFileOutputStream(String str, boolean z) throws IOException {
        this(str, z, Integer.getInteger("ROLLOVERFILE_RETAIN_DAYS", 31).intValue());
    }

    public RolloverFileOutputStream(String str, boolean z, int i) throws IOException {
        this(str, z, i, TimeZone.getDefault());
    }

    public RolloverFileOutputStream(String str, boolean z, int i, TimeZone timeZone) throws IOException {
        this(str, z, i, timeZone, null, null);
    }

    public RolloverFileOutputStream(String str, boolean z, int i, TimeZone timeZone, String str2, String str3) throws Throwable {
        Class cls;
        super(null);
        this._fileDateFormat = new SimpleDateFormat(str2 == null ? System.getProperty("ROLLOVERFILE_DATE_FORMAT", "yyyy_MM_dd") : str2);
        this._fileBackupFormat = new SimpleDateFormat(str3 == null ? System.getProperty("ROLLOVERFILE_BACKUP_FORMAT", "HHmmssSSS") : str3);
        this._fileBackupFormat.setTimeZone(timeZone);
        this._fileDateFormat.setTimeZone(timeZone);
        if (str != null) {
            str = str.trim();
            if (str.length() == 0) {
                str = null;
            }
        }
        if (str == null) {
            throw new IllegalArgumentException("Invalid filename");
        }
        this._filename = str;
        this._append = z;
        this._retainDays = i;
        setFile();
        if (class$org$mortbay$util$RolloverFileOutputStream == null) {
            Class clsClass$ = class$("org.mortbay.util.RolloverFileOutputStream");
            class$org$mortbay$util$RolloverFileOutputStream = clsClass$;
            cls = clsClass$;
        } else {
            cls = class$org$mortbay$util$RolloverFileOutputStream;
        }
        synchronized (cls) {
            if (__rollover == null) {
                __rollover = new Timer(true);
            }
            this._rollTask = new RollTask(this, null);
            Calendar calendar = Calendar.getInstance();
            calendar.setTimeZone(timeZone);
            GregorianCalendar gregorianCalendar = new GregorianCalendar(calendar.get(1), calendar.get(2), calendar.get(5), 23, 0);
            gregorianCalendar.setTimeZone(timeZone);
            gregorianCalendar.add(10, 1);
            __rollover.scheduleAtFixedRate(this._rollTask, gregorianCalendar.getTime(), DateUtils.MILLIS_PER_DAY);
        }
    }

    static Class class$(String str) throws Throwable {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e2) {
            throw new NoClassDefFoundError().initCause(e2);
        }
    }

    public String getFilename() {
        return this._filename;
    }

    public String getDatedFilename() {
        if (this._file == null) {
            return null;
        }
        return this._file.toString();
    }

    public int getRetainDays() {
        return this._retainDays;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void setFile() throws IOException {
        this._filename = new File(this._filename).getCanonicalPath();
        File file = new File(this._filename);
        File file2 = new File(file.getParent());
        if (!file2.isDirectory() || !file2.canWrite()) {
            throw new IOException(new StringBuffer().append("Cannot write log directory ").append(file2).toString());
        }
        Date date = new Date();
        String name = file.getName();
        int iIndexOf = name.toLowerCase().indexOf(YYYY_MM_DD);
        if (iIndexOf >= 0) {
            file = new File(file2, new StringBuffer().append(name.substring(0, iIndexOf)).append(this._fileDateFormat.format(date)).append(name.substring(iIndexOf + YYYY_MM_DD.length())).toString());
        }
        if (file.exists() && !file.canWrite()) {
            throw new IOException(new StringBuffer().append("Cannot write log file ").append(file).toString());
        }
        if (this.out == null || !file.equals(this._file)) {
            this._file = file;
            if (!this._append && file.exists()) {
                file.renameTo(new File(new StringBuffer().append(file.toString()).append(".").append(this._fileBackupFormat.format(date)).toString()));
            }
            OutputStream outputStream = this.out;
            this.out = new FileOutputStream(file.toString(), this._append);
            if (outputStream != null) {
                outputStream.close();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeOldFiles() {
        if (this._retainDays > 0) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            File file = new File(this._filename);
            File file2 = new File(file.getParent());
            String name = file.getName();
            int iIndexOf = name.toLowerCase().indexOf(YYYY_MM_DD);
            if (iIndexOf >= 0) {
                String strSubstring = name.substring(0, iIndexOf);
                String strSubstring2 = name.substring(iIndexOf + YYYY_MM_DD.length());
                for (String str : file2.list()) {
                    if (str.startsWith(strSubstring) && str.indexOf(strSubstring2, strSubstring.length()) >= 0) {
                        File file3 = new File(file2, str);
                        if ((jCurrentTimeMillis - file3.lastModified()) / DateUtils.MILLIS_PER_DAY > this._retainDays) {
                            file3.delete();
                        }
                    }
                }
            }
        }
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        this.out.write(bArr);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        this.out.write(bArr, i, i2);
    }

    /* JADX WARN: Finally extract failed */
    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws Throwable {
        Class clsClass$;
        if (class$org$mortbay$util$RolloverFileOutputStream == null) {
            clsClass$ = class$("org.mortbay.util.RolloverFileOutputStream");
            class$org$mortbay$util$RolloverFileOutputStream = clsClass$;
        } else {
            clsClass$ = class$org$mortbay$util$RolloverFileOutputStream;
        }
        synchronized (clsClass$) {
            try {
                super.close();
                this.out = null;
                this._file = null;
                this._rollTask.cancel();
            } catch (Throwable th) {
                this.out = null;
                this._file = null;
                throw th;
            }
        }
    }

    class RollTask extends TimerTask {
        private final RolloverFileOutputStream this$0;

        private RollTask(RolloverFileOutputStream rolloverFileOutputStream) {
            this.this$0 = rolloverFileOutputStream;
        }

        RollTask(RolloverFileOutputStream rolloverFileOutputStream, AnonymousClass1 anonymousClass1) {
            this(rolloverFileOutputStream);
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            try {
                this.this$0.setFile();
                this.this$0.removeOldFiles();
            } catch (IOException e2) {
                e2.printStackTrace();
            }
        }
    }
}
