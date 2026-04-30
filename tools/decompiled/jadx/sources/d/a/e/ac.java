package d.a.e;

import android.support.v4.media.session.PlaybackStateCompat;
import java.io.IOException;

/* JADX INFO: compiled from: Http2Stream.java */
/* JADX INFO: loaded from: classes3.dex */
final class ac implements e.aa {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static final /* synthetic */ boolean f4318c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    boolean f4319a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    boolean f4320b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final /* synthetic */ ab f4321d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final e.f f4322e = new e.f();

    static {
        f4318c = !ab.class.desiredAssertionStatus();
    }

    ac(ab abVar) {
        this.f4321d = abVar;
    }

    @Override // e.aa
    public void a_(e.f fVar, long j) throws IOException {
        if (!f4318c && Thread.holdsLock(this.f4321d)) {
            throw new AssertionError();
        }
        this.f4322e.a_(fVar, j);
        while (this.f4322e.b() >= PlaybackStateCompat.ACTION_PREPARE) {
            a(false);
        }
    }

    private void a(boolean z) throws IOException {
        long jMin;
        synchronized (this.f4321d) {
            this.f4321d.f4317g.c();
            while (this.f4321d.f4312b <= 0 && !this.f4320b && !this.f4319a && this.f4321d.h == null) {
                try {
                    this.f4321d.l();
                } finally {
                }
            }
            this.f4321d.f4317g.b();
            this.f4321d.k();
            jMin = Math.min(this.f4321d.f4312b, this.f4322e.b());
            this.f4321d.f4312b -= jMin;
        }
        this.f4321d.f4317g.c();
        try {
            this.f4321d.f4314d.a(this.f4321d.f4313c, z && jMin == this.f4322e.b(), this.f4322e, jMin);
        } finally {
        }
    }

    @Override // e.aa, java.io.Flushable
    public void flush() throws IOException {
        if (!f4318c && Thread.holdsLock(this.f4321d)) {
            throw new AssertionError();
        }
        synchronized (this.f4321d) {
            this.f4321d.k();
        }
        while (this.f4322e.b() > 0) {
            a(false);
            this.f4321d.f4314d.b();
        }
    }

    @Override // e.aa
    public e.ac a() {
        return this.f4321d.f4317g;
    }

    @Override // e.aa, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (!f4318c && Thread.holdsLock(this.f4321d)) {
            throw new AssertionError();
        }
        synchronized (this.f4321d) {
            if (!this.f4319a) {
                if (!this.f4321d.f4315e.f4320b) {
                    if (this.f4322e.b() > 0) {
                        while (this.f4322e.b() > 0) {
                            a(true);
                        }
                    } else {
                        this.f4321d.f4314d.a(this.f4321d.f4313c, true, (e.f) null, 0L);
                    }
                }
                synchronized (this.f4321d) {
                    this.f4319a = true;
                }
                this.f4321d.f4314d.b();
                this.f4321d.j();
            }
        }
    }
}
