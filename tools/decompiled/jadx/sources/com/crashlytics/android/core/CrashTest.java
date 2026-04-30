package com.crashlytics.android.core;

import android.os.AsyncTask;
import c.a.a.a.f;

/* JADX INFO: loaded from: classes2.dex */
public class CrashTest {
    public void throwRuntimeException(String str) {
        throw new RuntimeException(str);
    }

    public int stackOverflow() {
        return stackOverflow() + ((int) Math.random());
    }

    public void indexOutOfBounds() {
        f.h().a(CrashlyticsCore.TAG, "Out of bounds value: " + new int[2][10]);
    }

    public void crashAsyncTask(final long j) {
        new AsyncTask<Void, Void, Void>() { // from class: com.crashlytics.android.core.CrashTest.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.os.AsyncTask
            public Void doInBackground(Void... voidArr) {
                try {
                    Thread.sleep(j);
                } catch (InterruptedException e2) {
                }
                CrashTest.this.throwRuntimeException("Background thread crash");
                return null;
            }
        }.execute((Void) null);
    }

    public void throwFiveChainedExceptions() {
        try {
            privateMethodThatThrowsException("1");
        } catch (Exception e2) {
            try {
                throw new RuntimeException("2", e2);
            } catch (Exception e3) {
                try {
                    throw new RuntimeException("3", e3);
                } catch (Exception e4) {
                    try {
                        throw new RuntimeException("4", e4);
                    } catch (Exception e5) {
                        throw new RuntimeException("5", e5);
                    }
                }
            }
        }
    }

    private void privateMethodThatThrowsException(String str) {
        throw new RuntimeException(str);
    }
}
