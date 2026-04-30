package d.a.e;

import android.support.v7.widget.ActivityChooserView;
import com.google.common.primitives.UnsignedBytes;
import java.io.IOException;
import java.util.logging.Level;

/* JADX INFO: compiled from: Http2Reader.java */
/* JADX INFO: loaded from: classes3.dex */
final class z implements e.ab {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    int f4449a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    byte f4450b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f4451c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f4452d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    short f4453e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final e.j f4454f;

    z(e.j jVar) {
        this.f4454f = jVar;
    }

    @Override // e.ab
    public long a(e.f fVar, long j) throws IOException {
        while (this.f4452d == 0) {
            this.f4454f.h(this.f4453e);
            this.f4453e = (short) 0;
            if ((this.f4450b & 4) != 0) {
                return -1L;
            }
            b();
        }
        long jA = this.f4454f.a(fVar, Math.min(j, this.f4452d));
        if (jA == -1) {
            return -1L;
        }
        this.f4452d = (int) (((long) this.f4452d) - jA);
        return jA;
    }

    @Override // e.ab
    public e.ac a() {
        return this.f4454f.a();
    }

    @Override // e.ab, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
    }

    private void b() throws IOException {
        int i = this.f4451c;
        int iA = y.a(this.f4454f);
        this.f4452d = iA;
        this.f4449a = iA;
        byte bI = (byte) (this.f4454f.i() & UnsignedBytes.MAX_VALUE);
        this.f4450b = (byte) (this.f4454f.i() & UnsignedBytes.MAX_VALUE);
        if (y.f4444a.isLoggable(Level.FINE)) {
            y.f4444a.fine(g.a(true, this.f4451c, this.f4449a, bI, this.f4450b));
        }
        this.f4451c = this.f4454f.k() & ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        if (bI != 9) {
            throw g.b("%s != TYPE_CONTINUATION", Byte.valueOf(bI));
        }
        if (this.f4451c != i) {
            throw g.b("TYPE_CONTINUATION streamId changed", new Object[0]);
        }
    }
}
