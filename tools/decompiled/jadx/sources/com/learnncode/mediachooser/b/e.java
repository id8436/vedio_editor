package com.learnncode.mediachooser.b;

import android.util.Log;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;

/* JADX INFO: Add missing generic type declarations: [Result] */
/* JADX INFO: compiled from: MediaAsync.java */
/* JADX INFO: loaded from: classes3.dex */
class e<Result> extends FutureTask<Result> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ b f3690a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    e(b bVar, Callable callable) {
        super(callable);
        this.f3690a = bVar;
    }

    @Override // java.util.concurrent.FutureTask
    protected void done() {
        try {
            this.f3690a.c(get());
        } catch (InterruptedException e2) {
            Log.i("ImageChooserAsync", e2.toString());
        } catch (CancellationException e3) {
            this.f3690a.c(null);
        } catch (ExecutionException e4) {
            throw new RuntimeException("An error occured while executing doInBackground()", e4.getCause());
        }
    }
}
