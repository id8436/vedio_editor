package e;

import java.io.IOException;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.util.logging.Level;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: Okio.java */
/* JADX INFO: loaded from: classes3.dex */
final class t extends a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ Socket f4743a;

    t(Socket socket) {
        this.f4743a = socket;
    }

    @Override // e.a
    protected IOException a(@Nullable IOException iOException) {
        SocketTimeoutException socketTimeoutException = new SocketTimeoutException("timeout");
        if (iOException != null) {
            socketTimeoutException.initCause(iOException);
        }
        return socketTimeoutException;
    }

    @Override // e.a
    protected void a() {
        try {
            this.f4743a.close();
        } catch (AssertionError e2) {
            if (q.a(e2)) {
                q.f4738a.log(Level.WARNING, "Failed to close timed out socket " + this.f4743a, (Throwable) e2);
                return;
            }
            throw e2;
        } catch (Exception e3) {
            q.f4738a.log(Level.WARNING, "Failed to close timed out socket " + this.f4743a, (Throwable) e3);
        }
    }
}
