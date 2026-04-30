package c.a.a.a.a.b;

import android.support.v4.media.session.PlaybackStateCompat;
import com.google.common.primitives.UnsignedBytes;
import java.io.Closeable;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;
import java.util.NoSuchElementException;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: compiled from: QueueFile.java */
/* JADX INFO: loaded from: classes.dex */
public class ad implements Closeable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Logger f128b = Logger.getLogger(ad.class.getName());

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    int f129a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final RandomAccessFile f130c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f131d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private af f132e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private af f133f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final byte[] f134g = new byte[16];

    public ad(File file) throws IOException {
        if (!file.exists()) {
            a(file);
        }
        this.f130c = b(file);
        e();
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

    private void e() throws IOException {
        this.f130c.seek(0L);
        this.f130c.readFully(this.f134g);
        this.f129a = a(this.f134g, 0);
        if (this.f129a > this.f130c.length()) {
            throw new IOException("File is truncated. Expected length: " + this.f129a + ", Actual length: " + this.f130c.length());
        }
        this.f131d = a(this.f134g, 4);
        int iA = a(this.f134g, 8);
        int iA2 = a(this.f134g, 12);
        this.f132e = a(iA);
        this.f133f = a(iA2);
    }

    private void a(int i, int i2, int i3, int i4) throws IOException {
        a(this.f134g, i, i2, i3, i4);
        this.f130c.seek(0L);
        this.f130c.write(this.f134g);
    }

    private af a(int i) throws IOException {
        if (i == 0) {
            return af.f138a;
        }
        this.f130c.seek(i);
        return new af(i, this.f130c.readInt());
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
        return i < this.f129a ? i : (i + 16) - this.f129a;
    }

    private void a(int i, byte[] bArr, int i2, int i3) throws IOException {
        int iB = b(i);
        if (iB + i3 <= this.f129a) {
            this.f130c.seek(iB);
            this.f130c.write(bArr, i2, i3);
            return;
        }
        int i4 = this.f129a - iB;
        this.f130c.seek(iB);
        this.f130c.write(bArr, i2, i4);
        this.f130c.seek(16L);
        this.f130c.write(bArr, i2 + i4, i3 - i4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(int i, byte[] bArr, int i2, int i3) throws IOException {
        int iB = b(i);
        if (iB + i3 <= this.f129a) {
            this.f130c.seek(iB);
            this.f130c.readFully(bArr, i2, i3);
            return;
        }
        int i4 = this.f129a - iB;
        this.f130c.seek(iB);
        this.f130c.readFully(bArr, i2, i4);
        this.f130c.seek(16L);
        this.f130c.readFully(bArr, i2 + i4, i3 - i4);
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
        af afVar = new af(zB ? 16 : b(this.f133f.f139b + 4 + this.f133f.f140c), i2);
        b(this.f134g, 0, i2);
        a(afVar.f139b, this.f134g, 0, 4);
        a(afVar.f139b + 4, bArr, i, i2);
        a(this.f129a, this.f131d + 1, zB ? afVar.f139b : this.f132e.f139b, afVar.f139b);
        this.f133f = afVar;
        this.f131d++;
        if (zB) {
            this.f132e = this.f133f;
        }
    }

    public int a() {
        if (this.f131d == 0) {
            return 16;
        }
        if (this.f133f.f139b >= this.f132e.f139b) {
            return (this.f133f.f139b - this.f132e.f139b) + 4 + this.f133f.f140c + 16;
        }
        return (((this.f133f.f139b + 4) + this.f133f.f140c) + this.f129a) - this.f132e.f139b;
    }

    private int f() {
        return this.f129a - a();
    }

    public synchronized boolean b() {
        return this.f131d == 0;
    }

    private void c(int i) throws IOException {
        int i2 = i + 4;
        int iF = f();
        if (iF < i2) {
            int i3 = this.f129a;
            do {
                iF += i3;
                i3 <<= 1;
            } while (iF < i2);
            d(i3);
            int iB = b(this.f133f.f139b + 4 + this.f133f.f140c);
            if (iB < this.f132e.f139b) {
                FileChannel channel = this.f130c.getChannel();
                channel.position(this.f129a);
                int i4 = iB - 4;
                if (channel.transferTo(16L, i4, channel) != i4) {
                    throw new AssertionError("Copied insufficient number of bytes!");
                }
            }
            if (this.f133f.f139b < this.f132e.f139b) {
                int i5 = (this.f129a + this.f133f.f139b) - 16;
                a(i3, this.f131d, this.f132e.f139b, i5);
                this.f133f = new af(i5, this.f133f.f140c);
            } else {
                a(i3, this.f131d, this.f132e.f139b, this.f133f.f139b);
            }
            this.f129a = i3;
        }
    }

    private void d(int i) throws IOException {
        this.f130c.setLength(i);
        this.f130c.getChannel().force(true);
    }

    public synchronized void a(ah ahVar) throws IOException {
        int iB = this.f132e.f139b;
        for (int i = 0; i < this.f131d; i++) {
            af afVarA = a(iB);
            ahVar.read(new ag(this, afVarA, null), afVarA.f140c);
            iB = b(afVarA.f140c + afVarA.f139b + 4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <T> T b(T t, String str) {
        if (t == null) {
            throw new NullPointerException(str);
        }
        return t;
    }

    public synchronized void c() throws IOException {
        if (b()) {
            throw new NoSuchElementException();
        }
        if (this.f131d == 1) {
            d();
        } else {
            int iB = b(this.f132e.f139b + 4 + this.f132e.f140c);
            b(iB, this.f134g, 0, 4);
            int iA = a(this.f134g, 0);
            a(this.f129a, this.f131d - 1, iB, this.f133f.f139b);
            this.f131d--;
            this.f132e = new af(iB, iA);
        }
    }

    public synchronized void d() throws IOException {
        a(4096, 0, 0, 0);
        this.f131d = 0;
        this.f132e = af.f138a;
        this.f133f = af.f138a;
        if (this.f129a > 4096) {
            d(4096);
        }
        this.f129a = 4096;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() throws IOException {
        this.f130c.close();
    }

    public boolean a(int i, int i2) {
        return (a() + 4) + i <= i2;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName()).append('[');
        sb.append("fileLength=").append(this.f129a);
        sb.append(", size=").append(this.f131d);
        sb.append(", first=").append(this.f132e);
        sb.append(", last=").append(this.f133f);
        sb.append(", element lengths=[");
        try {
            a(new ae(this, sb));
        } catch (IOException e2) {
            f128b.log(Level.WARNING, "read error", (Throwable) e2);
        }
        sb.append("]]");
        return sb.toString();
    }
}
