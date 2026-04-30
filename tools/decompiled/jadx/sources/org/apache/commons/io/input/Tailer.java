package org.apache.commons.io.input;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import org.apache.commons.io.FileUtils;
import org.apache.commons.io.IOUtils;
import org.apache.commons.lang3.CharUtils;

/* JADX INFO: loaded from: classes3.dex */
public class Tailer implements Runnable {
    private static final int DEFAULT_BUFSIZE = 4096;
    private static final int DEFAULT_DELAY_MILLIS = 1000;
    private static final String RAF_MODE = "r";
    private final long delayMillis;
    private final boolean end;
    private final File file;
    private final byte[] inbuf;
    private final TailerListener listener;
    private final boolean reOpen;
    private volatile boolean run;

    public Tailer(File file, TailerListener tailerListener) {
        this(file, tailerListener, 1000L);
    }

    public Tailer(File file, TailerListener tailerListener, long j) {
        this(file, tailerListener, j, false);
    }

    public Tailer(File file, TailerListener tailerListener, long j, boolean z) {
        this(file, tailerListener, j, z, 4096);
    }

    public Tailer(File file, TailerListener tailerListener, long j, boolean z, boolean z2) {
        this(file, tailerListener, j, z, z2, 4096);
    }

    public Tailer(File file, TailerListener tailerListener, long j, boolean z, int i) {
        this(file, tailerListener, j, z, false, i);
    }

    public Tailer(File file, TailerListener tailerListener, long j, boolean z, boolean z2, int i) {
        this.run = true;
        this.file = file;
        this.delayMillis = j;
        this.end = z;
        this.inbuf = new byte[i];
        this.listener = tailerListener;
        tailerListener.init(this);
        this.reOpen = z2;
    }

    public static Tailer create(File file, TailerListener tailerListener, long j, boolean z, int i) {
        Tailer tailer = new Tailer(file, tailerListener, j, z, i);
        Thread thread = new Thread(tailer);
        thread.setDaemon(true);
        thread.start();
        return tailer;
    }

    public static Tailer create(File file, TailerListener tailerListener, long j, boolean z, boolean z2, int i) {
        Tailer tailer = new Tailer(file, tailerListener, j, z, z2, i);
        Thread thread = new Thread(tailer);
        thread.setDaemon(true);
        thread.start();
        return tailer;
    }

    public static Tailer create(File file, TailerListener tailerListener, long j, boolean z) {
        return create(file, tailerListener, j, z, 4096);
    }

    public static Tailer create(File file, TailerListener tailerListener, long j, boolean z, boolean z2) {
        return create(file, tailerListener, j, z, z2, 4096);
    }

    public static Tailer create(File file, TailerListener tailerListener, long j) {
        return create(file, tailerListener, j, false);
    }

    public static Tailer create(File file, TailerListener tailerListener) {
        return create(file, tailerListener, 1000L, false);
    }

    public File getFile() {
        return this.file;
    }

    public long getDelay() {
        return this.delayMillis;
    }

    @Override // java.lang.Runnable
    public void run() throws Throwable {
        RandomAccessFile randomAccessFile;
        long j;
        RandomAccessFile randomAccessFile2;
        RandomAccessFile randomAccessFile3;
        RandomAccessFile randomAccessFile4 = null;
        long lines = 0;
        long jCurrentTimeMillis = 0;
        while (this.run && randomAccessFile4 == null) {
            try {
                try {
                    try {
                        randomAccessFile4 = new RandomAccessFile(this.file, RAF_MODE);
                    } catch (FileNotFoundException e2) {
                        this.listener.fileNotFound();
                    }
                    if (randomAccessFile4 == null) {
                        try {
                            Thread.sleep(this.delayMillis);
                        } catch (InterruptedException e3) {
                        }
                    } else {
                        lines = this.end ? this.file.length() : 0L;
                        jCurrentTimeMillis = System.currentTimeMillis();
                        randomAccessFile4.seek(lines);
                    }
                } catch (Throwable th) {
                    th = th;
                }
            } catch (Exception e4) {
                e = e4;
            }
        }
        while (this.run) {
            boolean zIsFileNewer = FileUtils.isFileNewer(this.file, jCurrentTimeMillis);
            long length = this.file.length();
            if (length < lines) {
                this.listener.fileRotated();
                try {
                    randomAccessFile2 = new RandomAccessFile(this.file, RAF_MODE);
                } catch (FileNotFoundException e5) {
                    long j2 = lines;
                    randomAccessFile = randomAccessFile4;
                    j = j2;
                }
                try {
                    IOUtils.closeQuietly(randomAccessFile4);
                    lines = 0;
                    randomAccessFile4 = randomAccessFile2;
                } catch (FileNotFoundException e6) {
                    randomAccessFile = randomAccessFile2;
                    j = 0;
                    try {
                        this.listener.fileNotFound();
                        randomAccessFile4 = randomAccessFile;
                        lines = j;
                    } catch (Exception e7) {
                        e = e7;
                        randomAccessFile4 = randomAccessFile;
                        this.listener.handle(e);
                        IOUtils.closeQuietly(randomAccessFile4);
                        return;
                    } catch (Throwable th2) {
                        th = th2;
                        randomAccessFile4 = randomAccessFile;
                        IOUtils.closeQuietly(randomAccessFile4);
                        throw th;
                    }
                } catch (Exception e8) {
                    randomAccessFile4 = randomAccessFile2;
                    e = e8;
                    this.listener.handle(e);
                    IOUtils.closeQuietly(randomAccessFile4);
                    return;
                } catch (Throwable th3) {
                    randomAccessFile4 = randomAccessFile2;
                    th = th3;
                    IOUtils.closeQuietly(randomAccessFile4);
                    throw th;
                }
            } else {
                if (length > lines) {
                    lines = readLines(randomAccessFile4);
                    jCurrentTimeMillis = System.currentTimeMillis();
                } else if (zIsFileNewer) {
                    randomAccessFile4.seek(0L);
                    lines = readLines(randomAccessFile4);
                    jCurrentTimeMillis = System.currentTimeMillis();
                }
                if (this.reOpen) {
                    IOUtils.closeQuietly(randomAccessFile4);
                }
                try {
                    Thread.sleep(this.delayMillis);
                } catch (InterruptedException e9) {
                }
                if (this.run && this.reOpen) {
                    randomAccessFile3 = new RandomAccessFile(this.file, RAF_MODE);
                    try {
                        randomAccessFile3.seek(lines);
                    } catch (Exception e10) {
                        randomAccessFile4 = randomAccessFile3;
                        e = e10;
                        this.listener.handle(e);
                        IOUtils.closeQuietly(randomAccessFile4);
                        return;
                    } catch (Throwable th4) {
                        randomAccessFile4 = randomAccessFile3;
                        th = th4;
                        IOUtils.closeQuietly(randomAccessFile4);
                        throw th;
                    }
                } else {
                    randomAccessFile3 = randomAccessFile4;
                }
                randomAccessFile4 = randomAccessFile3;
            }
        }
        IOUtils.closeQuietly(randomAccessFile4);
    }

    public void stop() {
        this.run = false;
    }

    private long readLines(RandomAccessFile randomAccessFile) throws IOException {
        int i;
        StringBuilder sb = new StringBuilder();
        long filePointer = randomAccessFile.getFilePointer();
        boolean z = false;
        long filePointer2 = filePointer;
        while (this.run && (i = randomAccessFile.read(this.inbuf)) != -1) {
            for (int i2 = 0; i2 < i; i2++) {
                byte b2 = this.inbuf[i2];
                switch (b2) {
                    case 10:
                        this.listener.handle(sb.toString());
                        sb.setLength(0);
                        filePointer = ((long) i2) + filePointer2 + 1;
                        z = false;
                        break;
                    case 11:
                    case 12:
                    default:
                        if (z) {
                            this.listener.handle(sb.toString());
                            sb.setLength(0);
                            filePointer = ((long) i2) + filePointer2 + 1;
                            z = false;
                        }
                        sb.append((char) b2);
                        break;
                    case 13:
                        if (z) {
                            sb.append(CharUtils.CR);
                        }
                        z = true;
                        break;
                }
            }
            filePointer2 = randomAccessFile.getFilePointer();
        }
        randomAccessFile.seek(filePointer);
        return filePointer;
    }
}
