package d.a.e;

import com.google.common.primitives.UnsignedBytes;
import java.io.Closeable;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: compiled from: Http2Writer.java */
/* JADX INFO: loaded from: classes3.dex */
final class af implements Closeable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Logger f4331b = Logger.getLogger(g.class.getName());

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final e.i f4333c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f4334d;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f4337g;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final e.f f4335e = new e.f();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final f f4332a = new f(this.f4335e);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f4336f = 16384;

    af(e.i iVar, boolean z) {
        this.f4333c = iVar;
        this.f4334d = z;
    }

    public synchronized void a() throws IOException {
        if (this.f4337g) {
            throw new IOException("closed");
        }
        if (this.f4334d) {
            if (f4331b.isLoggable(Level.FINE)) {
                f4331b.fine(d.a.c.a(">> CONNECTION %s", g.f4382a.e()));
            }
            this.f4333c.c(g.f4382a.h());
            this.f4333c.flush();
        }
    }

    public synchronized void a(al alVar) throws IOException {
        if (this.f4337g) {
            throw new IOException("closed");
        }
        this.f4336f = alVar.d(this.f4336f);
        if (alVar.c() != -1) {
            this.f4332a.a(alVar.c());
        }
        a(0, 0, (byte) 4, (byte) 1);
        this.f4333c.flush();
    }

    public synchronized void a(int i, int i2, List<c> list) throws IOException {
        if (this.f4337g) {
            throw new IOException("closed");
        }
        this.f4332a.a(list);
        long jB = this.f4335e.b();
        int iMin = (int) Math.min(this.f4336f - 4, jB);
        a(i, iMin + 4, (byte) 5, jB == ((long) iMin) ? (byte) 4 : (byte) 0);
        this.f4333c.g(Integer.MAX_VALUE & i2);
        this.f4333c.a_(this.f4335e, iMin);
        if (jB > iMin) {
            b(i, jB - ((long) iMin));
        }
    }

    public synchronized void b() throws IOException {
        if (this.f4337g) {
            throw new IOException("closed");
        }
        this.f4333c.flush();
    }

    public synchronized void a(boolean z, int i, int i2, List<c> list) throws IOException {
        if (this.f4337g) {
            throw new IOException("closed");
        }
        a(z, i, list);
    }

    public synchronized void a(int i, b bVar) throws IOException {
        if (this.f4337g) {
            throw new IOException("closed");
        }
        if (bVar.f4358g == -1) {
            throw new IllegalArgumentException();
        }
        a(i, 4, (byte) 3, (byte) 0);
        this.f4333c.g(bVar.f4358g);
        this.f4333c.flush();
    }

    public int c() {
        return this.f4336f;
    }

    public synchronized void a(boolean z, int i, e.f fVar, int i2) throws IOException {
        if (this.f4337g) {
            throw new IOException("closed");
        }
        a(i, z ? (byte) 1 : (byte) 0, fVar, i2);
    }

    void a(int i, byte b2, e.f fVar, int i2) throws IOException {
        a(i, i2, (byte) 0, b2);
        if (i2 > 0) {
            this.f4333c.a_(fVar, i2);
        }
    }

    public synchronized void b(al alVar) throws IOException {
        int i;
        int i2 = 0;
        synchronized (this) {
            if (this.f4337g) {
                throw new IOException("closed");
            }
            a(0, alVar.b() * 6, (byte) 4, (byte) 0);
            while (i2 < 10) {
                if (alVar.a(i2)) {
                    if (i2 == 4) {
                        i = 3;
                    } else {
                        i = i2 == 7 ? 4 : i2;
                    }
                    this.f4333c.h(i);
                    this.f4333c.g(alVar.b(i2));
                }
                i2++;
            }
            this.f4333c.flush();
        }
    }

    public synchronized void a(boolean z, int i, int i2) throws IOException {
        synchronized (this) {
            if (this.f4337g) {
                throw new IOException("closed");
            }
            a(0, 8, (byte) 6, z ? (byte) 1 : (byte) 0);
            this.f4333c.g(i);
            this.f4333c.g(i2);
            this.f4333c.flush();
        }
    }

    public synchronized void a(int i, b bVar, byte[] bArr) throws IOException {
        if (this.f4337g) {
            throw new IOException("closed");
        }
        if (bVar.f4358g == -1) {
            throw g.a("errorCode.httpCode == -1", new Object[0]);
        }
        a(0, bArr.length + 8, (byte) 7, (byte) 0);
        this.f4333c.g(i);
        this.f4333c.g(bVar.f4358g);
        if (bArr.length > 0) {
            this.f4333c.c(bArr);
        }
        this.f4333c.flush();
    }

    public synchronized void a(int i, long j) throws IOException {
        if (this.f4337g) {
            throw new IOException("closed");
        }
        if (j == 0 || j > 2147483647L) {
            throw g.a("windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: %s", Long.valueOf(j));
        }
        a(i, 4, (byte) 8, (byte) 0);
        this.f4333c.g((int) j);
        this.f4333c.flush();
    }

    public void a(int i, int i2, byte b2, byte b3) throws IOException {
        if (f4331b.isLoggable(Level.FINE)) {
            f4331b.fine(g.a(false, i, i2, b2, b3));
        }
        if (i2 > this.f4336f) {
            throw g.a("FRAME_SIZE_ERROR length > %d: %d", Integer.valueOf(this.f4336f), Integer.valueOf(i2));
        }
        if ((Integer.MIN_VALUE & i) != 0) {
            throw g.a("reserved bit set: %s", Integer.valueOf(i));
        }
        a(this.f4333c, i2);
        this.f4333c.i(b2 & UnsignedBytes.MAX_VALUE);
        this.f4333c.i(b3 & UnsignedBytes.MAX_VALUE);
        this.f4333c.g(Integer.MAX_VALUE & i);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() throws IOException {
        this.f4337g = true;
        this.f4333c.close();
    }

    private static void a(e.i iVar, int i) throws IOException {
        iVar.i((i >>> 16) & 255);
        iVar.i((i >>> 8) & 255);
        iVar.i(i & 255);
    }

    private void b(int i, long j) throws IOException {
        while (j > 0) {
            int iMin = (int) Math.min(this.f4336f, j);
            j -= (long) iMin;
            a(i, iMin, (byte) 9, j == 0 ? (byte) 4 : (byte) 0);
            this.f4333c.a_(this.f4335e, iMin);
        }
    }

    void a(boolean z, int i, List<c> list) throws IOException {
        if (this.f4337g) {
            throw new IOException("closed");
        }
        this.f4332a.a(list);
        long jB = this.f4335e.b();
        int iMin = (int) Math.min(this.f4336f, jB);
        byte b2 = jB == ((long) iMin) ? (byte) 4 : (byte) 0;
        if (z) {
            b2 = (byte) (b2 | 1);
        }
        a(i, iMin, (byte) 1, b2);
        this.f4333c.a_(this.f4335e, iMin);
        if (jB > iMin) {
            b(i, jB - ((long) iMin));
        }
    }
}
