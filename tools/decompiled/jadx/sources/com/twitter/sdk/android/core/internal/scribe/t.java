package com.twitter.sdk.android.core.internal.scribe;

import android.support.v4.media.session.PlaybackStateCompat;
import com.google.common.primitives.UnsignedBytes;
import java.io.Closeable;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: compiled from: QueueFile.java */
/* JADX INFO: loaded from: classes3.dex */
public class t implements Closeable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Logger f4061b = Logger.getLogger(t.class.getName());

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    int f4062a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final RandomAccessFile f4063c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f4064d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private v f4065e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private v f4066f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final byte[] f4067g = new byte[16];

    public t(File file) throws IOException {
        if (!file.exists()) {
            a(file);
        }
        this.f4063c = b(file);
        c();
    }

    private static void b(byte[] bArr, int i, int i2) {
        bArr[i] = (byte) (i2 >> 24);
        bArr[i + 1] = (byte) (i2 >> 16);
        bArr[i + 2] = (byte) (i2 >> 8);
        bArr[i + 3] = (byte) i2;
    }

    private static void a(byte[] bArr, int... iArr) {
        int i = 0;
        for (int i2 : iArr) {
            b(bArr, i, i2);
            i += 4;
        }
    }

    private static int a(byte[] bArr, int i) {
        return ((bArr[i] & UnsignedBytes.MAX_VALUE) << 24) + ((bArr[i + 1] & UnsignedBytes.MAX_VALUE) << 16) + ((bArr[i + 2] & UnsignedBytes.MAX_VALUE) << 8) + (bArr[i + 3] & UnsignedBytes.MAX_VALUE);
    }

    private void c() throws IOException {
        this.f4063c.seek(0L);
        this.f4063c.readFully(this.f4067g);
        this.f4062a = a(this.f4067g, 0);
        if (this.f4062a > this.f4063c.length()) {
            throw new IOException("File is truncated. Expected length: " + this.f4062a + ", Actual length: " + this.f4063c.length());
        }
        this.f4064d = a(this.f4067g, 4);
        int iA = a(this.f4067g, 8);
        int iA2 = a(this.f4067g, 12);
        this.f4065e = a(iA);
        this.f4066f = a(iA2);
    }

    private void a(int i, int i2, int i3, int i4) throws IOException {
        a(this.f4067g, i, i2, i3, i4);
        this.f4063c.seek(0L);
        this.f4063c.write(this.f4067g);
    }

    private v a(int i) throws IOException {
        if (i == 0) {
            return v.f4071a;
        }
        this.f4063c.seek(i);
        return new v(i, this.f4063c.readInt());
    }

    private static void a(File file) throws IOException {
        File file2 = new File(file.getPath() + ".tmp");
        RandomAccessFile randomAccessFileB = b(file2);
        try {
            randomAccessFileB.setLength(PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM);
            randomAccessFileB.seek(0L);
            byte[] bArr = new byte[16];
            a(bArr, 4096, 0, 0, 0);
            randomAccessFileB.write(bArr);
            randomAccessFileB.close();
            if (!file2.renameTo(file)) {
                throw new IOException("Rename failed!");
            }
        } catch (Throwable th) {
            randomAccessFileB.close();
            throw th;
        }
    }

    private static RandomAccessFile b(File file) throws FileNotFoundException {
        return new RandomAccessFile(file, "rwd");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int b(int i) {
        return i < this.f4062a ? i : (i + 16) - this.f4062a;
    }

    private void a(int i, byte[] bArr, int i2, int i3) throws IOException {
        int iB = b(i);
        if (iB + i3 <= this.f4062a) {
            this.f4063c.seek(iB);
            this.f4063c.write(bArr, i2, i3);
            return;
        }
        int i4 = this.f4062a - iB;
        this.f4063c.seek(iB);
        this.f4063c.write(bArr, i2, i4);
        this.f4063c.seek(16L);
        this.f4063c.write(bArr, i2 + i4, i3 - i4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(int i, byte[] bArr, int i2, int i3) throws IOException {
        int iB = b(i);
        if (iB + i3 <= this.f4062a) {
            this.f4063c.seek(iB);
            this.f4063c.readFully(bArr, i2, i3);
            return;
        }
        int i4 = this.f4062a - iB;
        this.f4063c.seek(iB);
        this.f4063c.readFully(bArr, i2, i4);
        this.f4063c.seek(16L);
        this.f4063c.readFully(bArr, i2 + i4, i3 - i4);
    }

    public void a(byte[] bArr) throws IOException {
        a(bArr, 0, bArr.length);
    }

    public synchronized void a(byte[] bArr, int i, int i2) throws IOException {
        b(bArr, "buffer");
        if ((i | i2) < 0 || i2 > bArr.length - i) {
            throw new IndexOutOfBoundsException();
        }
        c(i2);
        boolean zB = b();
        v vVar = new v(zB ? 16 : b(this.f4066f.f4072b + 4 + this.f4066f.f4073c), i2);
        b(this.f4067g, 0, i2);
        a(vVar.f4072b, this.f4067g, 0, 4);
        a(vVar.f4072b + 4, bArr, i, i2);
        a(this.f4062a, this.f4064d + 1, zB ? vVar.f4072b : this.f4065e.f4072b, vVar.f4072b);
        this.f4066f = vVar;
        this.f4064d++;
        if (zB) {
            this.f4065e = this.f4066f;
        }
    }

    public int a() {
        if (this.f4064d == 0) {
            return 16;
        }
        if (this.f4066f.f4072b >= this.f4065e.f4072b) {
            return (this.f4066f.f4072b - this.f4065e.f4072b) + 4 + this.f4066f.f4073c + 16;
        }
        return (((this.f4066f.f4072b + 4) + this.f4066f.f4073c) + this.f4062a) - this.f4065e.f4072b;
    }

    private int d() {
        return this.f4062a - a();
    }

    public synchronized boolean b() {
        return this.f4064d == 0;
    }

    private void c(int i) throws IOException {
        int i2 = i + 4;
        int iD = d();
        if (iD < i2) {
            int i3 = this.f4062a;
            do {
                iD += i3;
                i3 <<= 1;
            } while (iD < i2);
            d(i3);
            int iB = b(this.f4066f.f4072b + 4 + this.f4066f.f4073c);
            if (iB < this.f4065e.f4072b) {
                FileChannel channel = this.f4063c.getChannel();
                channel.position(this.f4062a);
                int i4 = iB - 4;
                if (channel.transferTo(16L, i4, channel) != i4) {
                    throw new AssertionError("Copied insufficient number of bytes!");
                }
            }
            if (this.f4066f.f4072b < this.f4065e.f4072b) {
                int i5 = (this.f4062a + this.f4066f.f4072b) - 16;
                a(i3, this.f4064d, this.f4065e.f4072b, i5);
                this.f4066f = new v(i5, this.f4066f.f4073c);
            } else {
                a(i3, this.f4064d, this.f4065e.f4072b, this.f4066f.f4072b);
            }
            this.f4062a = i3;
        }
    }

    private void d(int i) throws IOException {
        this.f4063c.setLength(i);
        this.f4063c.getChannel().force(true);
    }

    public synchronized void a(x xVar) throws IOException {
        int iB = this.f4065e.f4072b;
        for (int i = 0; i < this.f4064d; i++) {
            v vVarA = a(iB);
            xVar.a(new w(this, vVarA, null), vVarA.f4073c);
            iB = b(vVarA.f4073c + vVarA.f4072b + 4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <T> T b(T t, String str) {
        if (t == null) {
            throw new NullPointerException(str);
        }
        return t;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() throws IOException {
        this.f4063c.close();
    }

    public boolean a(int i, int i2) {
        return (a() + 4) + i <= i2;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName()).append('[');
        sb.append("fileLength=").append(this.f4062a);
        sb.append(", size=").append(this.f4064d);
        sb.append(", first=").append(this.f4065e);
        sb.append(", last=").append(this.f4066f);
        sb.append(", element lengths=[");
        try {
            a(new u(this, sb));
        } catch (IOException e2) {
            f4061b.log(Level.WARNING, "read error", (Throwable) e2);
        }
        sb.append("]]");
        return sb.toString();
    }
}
