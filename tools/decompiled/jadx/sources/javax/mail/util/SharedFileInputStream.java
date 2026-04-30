package javax.mail.util;

import com.google.common.primitives.UnsignedBytes;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import javax.mail.internet.SharedInputStream;

/* JADX INFO: loaded from: classes3.dex */
public class SharedFileInputStream extends BufferedInputStream implements SharedInputStream {
    private static int defaultBufferSize = 2048;
    protected long bufpos;
    protected int bufsize;
    protected long datalen;
    protected RandomAccessFile in;
    private boolean master;
    private SharedFile sf;
    protected long start;

    class SharedFile {
        private int cnt;
        private RandomAccessFile in;
        private final SharedFileInputStream this$0;

        SharedFile(SharedFileInputStream sharedFileInputStream, String str) throws IOException {
            this.this$0 = sharedFileInputStream;
            this.in = new RandomAccessFile(str, "r");
        }

        SharedFile(SharedFileInputStream sharedFileInputStream, File file) throws IOException {
            this.this$0 = sharedFileInputStream;
            this.in = new RandomAccessFile(file, "r");
        }

        public RandomAccessFile open() {
            this.cnt++;
            return this.in;
        }

        public synchronized void close() throws IOException {
            if (this.cnt > 0) {
                int i = this.cnt - 1;
                this.cnt = i;
                if (i <= 0) {
                    this.in.close();
                }
            }
        }

        public synchronized void forceClose() throws IOException {
            if (this.cnt > 0) {
                this.cnt = 0;
                this.in.close();
            } else {
                try {
                    this.in.close();
                } catch (IOException e2) {
                }
            }
        }

        protected void finalize() throws Throwable {
            super.finalize();
            this.in.close();
        }
    }

    private void ensureOpen() throws IOException {
        if (this.in == null) {
            throw new IOException("Stream closed");
        }
    }

    public SharedFileInputStream(File file) throws IOException {
        this(file, defaultBufferSize);
    }

    public SharedFileInputStream(String str) throws IOException {
        this(str, defaultBufferSize);
    }

    public SharedFileInputStream(File file, int i) throws IOException {
        super(null);
        this.start = 0L;
        this.master = true;
        if (i <= 0) {
            throw new IllegalArgumentException("Buffer size <= 0");
        }
        init(new SharedFile(this, file), i);
    }

    public SharedFileInputStream(String str, int i) throws IOException {
        super(null);
        this.start = 0L;
        this.master = true;
        if (i <= 0) {
            throw new IllegalArgumentException("Buffer size <= 0");
        }
        init(new SharedFile(this, str), i);
    }

    private void init(SharedFile sharedFile, int i) throws IOException {
        this.sf = sharedFile;
        this.in = sharedFile.open();
        this.start = 0L;
        this.datalen = this.in.length();
        this.bufsize = i;
        this.buf = new byte[i];
    }

    private SharedFileInputStream(SharedFile sharedFile, long j, long j2, int i) {
        super(null);
        this.start = 0L;
        this.master = true;
        this.master = false;
        this.sf = sharedFile;
        this.in = sharedFile.open();
        this.start = j;
        this.bufpos = j;
        this.datalen = j2;
        this.bufsize = i;
        this.buf = new byte[i];
    }

    private void fill() throws IOException {
        if (this.markpos < 0) {
            this.pos = 0;
            this.bufpos += (long) this.count;
        } else if (this.pos >= this.buf.length) {
            if (this.markpos > 0) {
                int i = this.pos - this.markpos;
                System.arraycopy(this.buf, this.markpos, this.buf, 0, i);
                this.pos = i;
                this.bufpos += (long) this.markpos;
                this.markpos = 0;
            } else if (this.buf.length >= this.marklimit) {
                this.markpos = -1;
                this.pos = 0;
                this.bufpos += (long) this.count;
            } else {
                int i2 = this.pos * 2;
                if (i2 > this.marklimit) {
                    i2 = this.marklimit;
                }
                byte[] bArr = new byte[i2];
                System.arraycopy(this.buf, 0, bArr, 0, this.pos);
                this.buf = bArr;
            }
        }
        this.count = this.pos;
        this.in.seek(this.bufpos + ((long) this.pos));
        int length = this.buf.length - this.pos;
        if ((this.bufpos - this.start) + ((long) this.pos) + ((long) length) > this.datalen) {
            length = (int) (this.datalen - ((this.bufpos - this.start) + ((long) this.pos)));
        }
        int i3 = this.in.read(this.buf, this.pos, length);
        if (i3 > 0) {
            this.count = i3 + this.pos;
        }
    }

    @Override // java.io.BufferedInputStream, java.io.FilterInputStream, java.io.InputStream
    public synchronized int read() throws IOException {
        int i;
        ensureOpen();
        if (this.pos >= this.count) {
            fill();
            if (this.pos >= this.count) {
                i = -1;
            }
        }
        byte[] bArr = this.buf;
        int i2 = this.pos;
        this.pos = i2 + 1;
        i = bArr[i2] & UnsignedBytes.MAX_VALUE;
        return i;
    }

    private int read1(byte[] bArr, int i, int i2) throws IOException {
        int i3 = this.count - this.pos;
        if (i3 <= 0) {
            fill();
            i3 = this.count - this.pos;
            if (i3 <= 0) {
                return -1;
            }
        }
        if (i3 < i2) {
            i2 = i3;
        }
        System.arraycopy(this.buf, this.pos, bArr, i, i2);
        this.pos += i2;
        return i2;
    }

    @Override // java.io.BufferedInputStream, java.io.FilterInputStream, java.io.InputStream
    public synchronized int read(byte[] bArr, int i, int i2) throws IOException {
        int i3;
        ensureOpen();
        if ((i | i2 | (i + i2) | (bArr.length - (i + i2))) < 0) {
            throw new IndexOutOfBoundsException();
        }
        if (i2 == 0) {
            i3 = 0;
        } else {
            i3 = read1(bArr, i, i2);
            if (i3 > 0) {
                while (i3 < i2) {
                    int i4 = read1(bArr, i + i3, i2 - i3);
                    if (i4 <= 0) {
                        break;
                    }
                    i3 += i4;
                }
            }
        }
        return i3;
    }

    @Override // java.io.BufferedInputStream, java.io.FilterInputStream, java.io.InputStream
    public synchronized long skip(long j) throws IOException {
        long j2 = 0;
        synchronized (this) {
            ensureOpen();
            if (j > 0) {
                long j3 = this.count - this.pos;
                if (j3 <= 0) {
                    fill();
                    j3 = this.count - this.pos;
                    if (j3 > 0) {
                    }
                }
                j2 = j3;
                if (j2 >= j) {
                    j2 = j;
                }
                this.pos = (int) (((long) this.pos) + j2);
            }
        }
        return j2;
    }

    @Override // java.io.BufferedInputStream, java.io.FilterInputStream, java.io.InputStream
    public synchronized int available() throws IOException {
        ensureOpen();
        return (this.count - this.pos) + in_available();
    }

    private int in_available() throws IOException {
        return (int) ((this.start + this.datalen) - (this.bufpos + ((long) this.count)));
    }

    @Override // java.io.BufferedInputStream, java.io.FilterInputStream, java.io.InputStream
    public synchronized void mark(int i) {
        this.marklimit = i;
        this.markpos = this.pos;
    }

    @Override // java.io.BufferedInputStream, java.io.FilterInputStream, java.io.InputStream
    public synchronized void reset() throws IOException {
        ensureOpen();
        if (this.markpos < 0) {
            throw new IOException("Resetting to invalid mark");
        }
        this.pos = this.markpos;
    }

    @Override // java.io.BufferedInputStream, java.io.FilterInputStream, java.io.InputStream
    public boolean markSupported() {
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.io.BufferedInputStream, java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.in != null) {
            try {
                if (this.master) {
                    this.sf.forceClose();
                } else {
                    this.sf.close();
                }
            } finally {
                this.sf = null;
                this.in = null;
                this.buf = null;
            }
        }
    }

    @Override // javax.mail.internet.SharedInputStream
    public long getPosition() {
        if (this.in == null) {
            throw new RuntimeException("Stream closed");
        }
        return (this.bufpos + ((long) this.pos)) - this.start;
    }

    @Override // javax.mail.internet.SharedInputStream
    public InputStream newStream(long j, long j2) {
        if (this.in == null) {
            throw new RuntimeException("Stream closed");
        }
        if (j < 0) {
            throw new IllegalArgumentException("start < 0");
        }
        if (j2 == -1) {
            j2 = this.datalen;
        }
        return new SharedFileInputStream(this.sf, this.start + ((long) ((int) j)), (int) (j2 - j), this.bufsize);
    }

    protected void finalize() throws Throwable {
        super.finalize();
        close();
    }
}
