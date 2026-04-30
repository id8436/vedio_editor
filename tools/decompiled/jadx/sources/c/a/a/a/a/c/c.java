package c.a.a.a.a.c;

import android.os.Process;

/* JADX INFO: Add missing generic type declarations: [Params, Result] */
/* JADX INFO: compiled from: AsyncTask.java */
/* JADX INFO: loaded from: classes.dex */
class c<Params, Result> extends k<Params, Result> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ a f208a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    c(a aVar) {
        super(null);
        this.f208a = aVar;
    }

    @Override // java.util.concurrent.Callable
    public Result call() throws Exception {
        this.f208a.n.set(true);
        Process.setThreadPriority(10);
        return (Result) this.f208a.d(this.f208a.a((Object[]) this.f221b));
    }
}
