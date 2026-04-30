package e;

import android.support.v4.media.session.PlaybackStateCompat;
import java.io.IOException;

/* JADX INFO: compiled from: AsyncTimeout.java */
/* JADX INFO: loaded from: classes3.dex */
class b implements aa {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ aa f4710a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ a f4711b;

    b(a aVar, aa aaVar) {
        this.f4711b = aVar;
        this.f4710a = aaVar;
    }

    @Override // e.aa
    public void a_(f fVar, long j) throws IOException {
        ae.a(fVar.f4718b, 0L, j);
        long j2 = j;
        while (j2 > 0) {
            x xVar = fVar.f4717a;
            long j3 = 0;
            while (true) {
                if (j3 >= PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH) {
                    break;
                }
                long j4 = ((long) (fVar.f4717a.f4753c - fVar.f4717a.f4752b)) + j3;
                if (j4 >= j2) {
                    j3 = j2;
                    break;
                } else {
                    xVar = xVar.f4756f;
                    j3 = j4;
                }
            }
            this.f4711b.c();
            try {
                try {
                    this.f4710a.a_(fVar, j3);
                    j2 -= j3;
                    this.f4711b.a(true);
                } catch (IOException e2) {
                    throw this.f4711b.b(e2);
                }
            } catch (Throwable th) {
                this.f4711b.a(false);
                throw th;
            }
        }
    }

    @Override // e.aa, java.io.Flushable
    public void flush() throws IOException {
        this.f4711b.c();
        try {
            try {
                this.f4710a.flush();
                this.f4711b.a(true);
            } catch (IOException e2) {
                throw this.f4711b.b(e2);
            }
        } catch (Throwable th) {
            this.f4711b.a(false);
            throw th;
        }
    }

    @Override // e.aa, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f4711b.c();
        try {
            try {
                this.f4710a.close();
                this.f4711b.a(true);
            } catch (IOException e2) {
                throw this.f4711b.b(e2);
            }
        } catch (Throwable th) {
            this.f4711b.a(false);
            throw th;
        }
    }

    @Override // e.aa
    public ac a() {
        return this.f4711b;
    }

    public String toString() {
        return "AsyncTimeout.sink(" + this.f4710a + ")";
    }
}
