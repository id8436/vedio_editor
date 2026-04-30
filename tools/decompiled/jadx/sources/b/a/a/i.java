package b.a.a;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;

/* JADX INFO: compiled from: HandlerPoster.java */
/* JADX INFO: loaded from: classes.dex */
final class i extends Handler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final l f83a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f84b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final c f85c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f86d;

    i(c cVar, Looper looper, int i) {
        super(looper);
        this.f85c = cVar;
        this.f84b = i;
        this.f83a = new l();
    }

    void a(p pVar, Object obj) {
        k kVarA = k.a(pVar, obj);
        synchronized (this) {
            this.f83a.a(kVarA);
            if (!this.f86d) {
                this.f86d = true;
                if (!sendMessage(obtainMessage())) {
                    throw new h("Could not send handler message");
                }
            }
        }
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        try {
            long jUptimeMillis = SystemClock.uptimeMillis();
            do {
                k kVarA = this.f83a.a();
                if (kVarA == null) {
                    synchronized (this) {
                        kVarA = this.f83a.a();
                        if (kVarA == null) {
                            this.f86d = false;
                            return;
                        }
                    }
                }
                this.f85c.a(kVarA);
            } while (SystemClock.uptimeMillis() - jUptimeMillis < this.f84b);
            if (!sendMessage(obtainMessage())) {
                throw new h("Could not send handler message");
            }
            this.f86d = true;
        } finally {
            this.f86d = false;
        }
    }
}
