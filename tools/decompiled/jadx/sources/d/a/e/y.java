package d.a.e;

import android.support.v7.widget.ActivityChooserView;
import com.google.common.primitives.UnsignedBytes;
import java.io.Closeable;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: compiled from: Http2Reader.java */
/* JADX INFO: loaded from: classes3.dex */
final class y implements Closeable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final Logger f4444a = Logger.getLogger(g.class.getName());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final e f4445b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final e.j f4446c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final z f4447d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f4448e;

    y(e.j jVar, boolean z) {
        this.f4446c = jVar;
        this.f4448e = z;
        this.f4447d = new z(this.f4446c);
        this.f4445b = new e(4096, this.f4447d);
    }

    public void a(aa aaVar) throws IOException {
        if (this.f4448e) {
            if (!a(true, aaVar)) {
                throw g.b("Required SETTINGS preface not received", new Object[0]);
            }
            return;
        }
        e.k kVarC = this.f4446c.c(g.f4382a.g());
        if (f4444a.isLoggable(Level.FINE)) {
            f4444a.fine(d.a.c.a("<< CONNECTION %s", kVarC.e()));
        }
        if (!g.f4382a.equals(kVarC)) {
            throw g.b("Expected a connection header but was %s", kVarC.a());
        }
    }

    public boolean a(boolean z, aa aaVar) throws IOException {
        try {
            this.f4446c.a(9L);
            int iA = a(this.f4446c);
            if (iA < 0 || iA > 16384) {
                throw g.b("FRAME_SIZE_ERROR: %s", Integer.valueOf(iA));
            }
            byte bI = (byte) (this.f4446c.i() & UnsignedBytes.MAX_VALUE);
            if (z && bI != 4) {
                throw g.b("Expected a SETTINGS frame but was %s", Byte.valueOf(bI));
            }
            byte bI2 = (byte) (this.f4446c.i() & UnsignedBytes.MAX_VALUE);
            int iK = this.f4446c.k() & ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
            if (f4444a.isLoggable(Level.FINE)) {
                f4444a.fine(g.a(true, iK, iA, bI, bI2));
            }
            switch (bI) {
                case 0:
                    b(aaVar, iA, bI2, iK);
                    return true;
                case 1:
                    a(aaVar, iA, bI2, iK);
                    return true;
                case 2:
                    c(aaVar, iA, bI2, iK);
                    return true;
                case 3:
                    d(aaVar, iA, bI2, iK);
                    return true;
                case 4:
                    e(aaVar, iA, bI2, iK);
                    return true;
                case 5:
                    f(aaVar, iA, bI2, iK);
                    return true;
                case 6:
                    g(aaVar, iA, bI2, iK);
                    return true;
                case 7:
                    h(aaVar, iA, bI2, iK);
                    return true;
                case 8:
                    i(aaVar, iA, bI2, iK);
                    return true;
                default:
                    this.f4446c.h(iA);
                    return true;
            }
        } catch (IOException e2) {
            return false;
        }
    }

    private void a(aa aaVar, int i, byte b2, int i2) throws IOException {
        if (i2 == 0) {
            throw g.b("PROTOCOL_ERROR: TYPE_HEADERS streamId == 0", new Object[0]);
        }
        boolean z = (b2 & 1) != 0;
        short sI = (b2 & 8) != 0 ? (short) (this.f4446c.i() & UnsignedBytes.MAX_VALUE) : (short) 0;
        if ((b2 & 32) != 0) {
            a(aaVar, i2);
            i -= 5;
        }
        aaVar.a(z, i2, -1, a(a(i, b2, sI), sI, b2, i2));
    }

    private List<c> a(int i, short s, byte b2, int i2) throws IOException {
        z zVar = this.f4447d;
        this.f4447d.f4452d = i;
        zVar.f4449a = i;
        this.f4447d.f4453e = s;
        this.f4447d.f4450b = b2;
        this.f4447d.f4451c = i2;
        this.f4445b.a();
        return this.f4445b.b();
    }

    private void b(aa aaVar, int i, byte b2, int i2) throws IOException {
        if (i2 == 0) {
            throw g.b("PROTOCOL_ERROR: TYPE_DATA streamId == 0", new Object[0]);
        }
        boolean z = (b2 & 1) != 0;
        if ((b2 & 32) != 0) {
            throw g.b("PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA", new Object[0]);
        }
        short sI = (b2 & 8) != 0 ? (short) (this.f4446c.i() & UnsignedBytes.MAX_VALUE) : (short) 0;
        aaVar.a(z, i2, this.f4446c, a(i, b2, sI));
        this.f4446c.h(sI);
    }

    private void c(aa aaVar, int i, byte b2, int i2) throws IOException {
        if (i != 5) {
            throw g.b("TYPE_PRIORITY length: %d != 5", Integer.valueOf(i));
        }
        if (i2 == 0) {
            throw g.b("TYPE_PRIORITY streamId == 0", new Object[0]);
        }
        a(aaVar, i2);
    }

    private void a(aa aaVar, int i) throws IOException {
        int iK = this.f4446c.k();
        aaVar.a(i, iK & ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, (this.f4446c.i() & UnsignedBytes.MAX_VALUE) + 1, (Integer.MIN_VALUE & iK) != 0);
    }

    private void d(aa aaVar, int i, byte b2, int i2) throws IOException {
        if (i != 4) {
            throw g.b("TYPE_RST_STREAM length: %d != 4", Integer.valueOf(i));
        }
        if (i2 == 0) {
            throw g.b("TYPE_RST_STREAM streamId == 0", new Object[0]);
        }
        int iK = this.f4446c.k();
        b bVarA = b.a(iK);
        if (bVarA == null) {
            throw g.b("TYPE_RST_STREAM unexpected error code: %d", Integer.valueOf(iK));
        }
        aaVar.a(i2, bVarA);
    }

    private void e(aa aaVar, int i, byte b2, int i2) throws IOException {
        if (i2 != 0) {
            throw g.b("TYPE_SETTINGS streamId != 0", new Object[0]);
        }
        if ((b2 & 1) != 0) {
            if (i != 0) {
                throw g.b("FRAME_SIZE_ERROR ack frame should be empty!", new Object[0]);
            }
            aaVar.a();
            return;
        }
        if (i % 6 != 0) {
            throw g.b("TYPE_SETTINGS length %% 6 != 0: %s", Integer.valueOf(i));
        }
        al alVar = new al();
        for (int i3 = 0; i3 < i; i3 += 6) {
            short sJ = this.f4446c.j();
            int iK = this.f4446c.k();
            switch (sJ) {
                case 2:
                    if (iK != 0 && iK != 1) {
                        throw g.b("PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1", new Object[0]);
                    }
                    break;
                    break;
                case 3:
                    sJ = 4;
                    break;
                case 4:
                    sJ = 7;
                    if (iK < 0) {
                        throw g.b("PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1", new Object[0]);
                    }
                    break;
                    break;
                case 5:
                    if (iK < 16384 || iK > 16777215) {
                        throw g.b("PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s", Integer.valueOf(iK));
                    }
                    break;
                    break;
            }
            alVar.a(sJ, iK);
        }
        aaVar.a(false, alVar);
    }

    private void f(aa aaVar, int i, byte b2, int i2) throws IOException {
        if (i2 == 0) {
            throw g.b("PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0", new Object[0]);
        }
        short sI = (b2 & 8) != 0 ? (short) (this.f4446c.i() & UnsignedBytes.MAX_VALUE) : (short) 0;
        aaVar.a(i2, this.f4446c.k() & ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, a(a(i - 4, b2, sI), sI, b2, i2));
    }

    private void g(aa aaVar, int i, byte b2, int i2) throws IOException {
        if (i != 8) {
            throw g.b("TYPE_PING length != 8: %s", Integer.valueOf(i));
        }
        if (i2 != 0) {
            throw g.b("TYPE_PING streamId != 0", new Object[0]);
        }
        aaVar.a((b2 & 1) != 0, this.f4446c.k(), this.f4446c.k());
    }

    private void h(aa aaVar, int i, byte b2, int i2) throws IOException {
        if (i < 8) {
            throw g.b("TYPE_GOAWAY length < 8: %s", Integer.valueOf(i));
        }
        if (i2 != 0) {
            throw g.b("TYPE_GOAWAY streamId != 0", new Object[0]);
        }
        int iK = this.f4446c.k();
        int iK2 = this.f4446c.k();
        int i3 = i - 8;
        b bVarA = b.a(iK2);
        if (bVarA == null) {
            throw g.b("TYPE_GOAWAY unexpected error code: %d", Integer.valueOf(iK2));
        }
        e.k kVarC = e.k.f4722b;
        if (i3 > 0) {
            kVarC = this.f4446c.c(i3);
        }
        aaVar.a(iK, bVarA, kVarC);
    }

    private void i(aa aaVar, int i, byte b2, int i2) throws IOException {
        if (i != 4) {
            throw g.b("TYPE_WINDOW_UPDATE length !=4: %s", Integer.valueOf(i));
        }
        long jK = ((long) this.f4446c.k()) & 2147483647L;
        if (jK == 0) {
            throw g.b("windowSizeIncrement was 0", Long.valueOf(jK));
        }
        aaVar.a(i2, jK);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f4446c.close();
    }

    static int a(e.j jVar) throws IOException {
        return ((jVar.i() & UnsignedBytes.MAX_VALUE) << 16) | ((jVar.i() & UnsignedBytes.MAX_VALUE) << 8) | (jVar.i() & UnsignedBytes.MAX_VALUE);
    }

    static int a(int i, byte b2, short s) throws IOException {
        if ((b2 & 8) != 0) {
            i--;
        }
        if (s > i) {
            throw g.b("PROTOCOL_ERROR padding %s > remaining length %s", Short.valueOf(s), Integer.valueOf(i));
        }
        return (short) (i - s);
    }
}
