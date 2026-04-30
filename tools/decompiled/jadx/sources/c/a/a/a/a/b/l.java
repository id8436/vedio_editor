package c.a.a.a.a.b;

import android.os.Process;

/* JADX INFO: compiled from: BackgroundPriorityRunnable.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class l implements Runnable {
    protected abstract void onRun();

    @Override // java.lang.Runnable
    public final void run() {
        Process.setThreadPriority(10);
        onRun();
    }
}
