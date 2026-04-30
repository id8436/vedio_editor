package f;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: Platform.java */
/* JADX INFO: loaded from: classes3.dex */
class ar implements Executor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Handler f4796a = new Handler(Looper.getMainLooper());

    ar() {
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        this.f4796a.post(runnable);
    }
}
