package d.a.e;

import java.io.IOException;
import java.net.SocketTimeoutException;

/* JADX INFO: compiled from: Http2Stream.java */
/* JADX INFO: loaded from: classes3.dex */
class ae extends e.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ ab f4330a;

    ae(ab abVar) {
        this.f4330a = abVar;
    }

    @Override // e.a
    protected void a() {
        this.f4330a.b(b.CANCEL);
    }

    @Override // e.a
    protected IOException a(IOException iOException) {
        SocketTimeoutException socketTimeoutException = new SocketTimeoutException("timeout");
        if (iOException != null) {
            socketTimeoutException.initCause(iOException);
        }
        return socketTimeoutException;
    }

    public void b() throws IOException {
        if (a_()) {
            throw a((IOException) null);
        }
    }
}
