package c.a.a.a.a.b;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: AdvertisingInfoServiceStrategy.java */
/* JADX INFO: loaded from: classes.dex */
final class h implements ServiceConnection {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f157a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final LinkedBlockingQueue<IBinder> f158b;

    private h() {
        this.f157a = false;
        this.f158b = new LinkedBlockingQueue<>(1);
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        try {
            this.f158b.put(iBinder);
        } catch (InterruptedException e2) {
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        this.f158b.clear();
    }

    public IBinder a() {
        if (this.f157a) {
            c.a.a.a.f.h().e("Fabric", "getBinder already called");
        }
        this.f157a = true;
        try {
            return this.f158b.poll(200L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e2) {
            return null;
        }
    }
}
