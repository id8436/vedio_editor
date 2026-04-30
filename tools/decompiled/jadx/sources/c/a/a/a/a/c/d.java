package c.a.a.a.a.c;

import android.util.Log;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;

/* JADX INFO: Add missing generic type declarations: [Result] */
/* JADX INFO: compiled from: AsyncTask.java */
/* JADX INFO: loaded from: classes.dex */
class d<Result> extends FutureTask<Result> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ a f209a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    d(a aVar, Callable callable) {
        super(callable);
        this.f209a = aVar;
    }

    @Override // java.util.concurrent.FutureTask
    protected void done() {
        try {
            this.f209a.c(get());
        } catch (InterruptedException e2) {
            Log.w("AsyncTask", e2);
        } catch (CancellationException e3) {
            this.f209a.c(null);
        } catch (ExecutionException e4) {
            throw new RuntimeException("An error occured while executing doInBackground()", e4.getCause());
        }
    }
}
