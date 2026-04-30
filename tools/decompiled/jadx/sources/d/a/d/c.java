package d.a.d;

import e.ab;
import e.ac;
import e.n;
import java.io.IOException;

/* JADX INFO: compiled from: Http1Codec.java */
/* JADX INFO: loaded from: classes3.dex */
abstract class c implements ab {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final n f4291a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected boolean f4292b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected long f4293c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final /* synthetic */ a f4294d;

    private c(a aVar) {
        this.f4294d = aVar;
        this.f4291a = new n(this.f4294d.f4287c.a());
        this.f4293c = 0L;
    }

    @Override // e.ab
    public ac a() {
        return this.f4291a;
    }

    @Override // e.ab
    public long a(e.f fVar, long j) throws IOException {
        try {
            long jA = this.f4294d.f4287c.a(fVar, j);
            if (jA > 0) {
                this.f4293c += jA;
            }
            return jA;
        } catch (IOException e2) {
            a(false, e2);
            throw e2;
        }
    }

    protected final void a(boolean z, IOException iOException) throws IOException {
        if (this.f4294d.f4289e != 6) {
            if (this.f4294d.f4289e != 5) {
                throw new IllegalStateException("state: " + this.f4294d.f4289e);
            }
            this.f4294d.a(this.f4291a);
            this.f4294d.f4289e = 6;
            if (this.f4294d.f4286b != null) {
                this.f4294d.f4286b.a(!z, this.f4294d, this.f4293c, iOException);
            }
        }
    }
}
