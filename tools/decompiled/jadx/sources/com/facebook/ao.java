package com.facebook;

import android.os.AsyncTask;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.util.Log;
import java.net.HttpURLConnection;
import java.util.List;

/* JADX INFO: compiled from: GraphRequestAsyncTask.java */
/* JADX INFO: loaded from: classes2.dex */
public class ao extends AsyncTask<Void, Void, List<as>> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f1767a = ao.class.getCanonicalName();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final HttpURLConnection f1768b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ap f1769c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Exception f1770d;

    public ao(ap apVar) {
        this(null, apVar);
    }

    public ao(HttpURLConnection httpURLConnection, ap apVar) {
        this.f1769c = apVar;
        this.f1768b = httpURLConnection;
    }

    public String toString() {
        return "{RequestAsyncTask:  connection: " + this.f1768b + ", requests: " + this.f1769c + "}";
    }

    @Override // android.os.AsyncTask
    protected void onPreExecute() {
        Handler handler;
        super.onPreExecute();
        if (w.b()) {
            Log.d(f1767a, String.format("execute async task: %s", this));
        }
        if (this.f1769c.c() == null) {
            if (Thread.currentThread() instanceof HandlerThread) {
                handler = new Handler();
            } else {
                handler = new Handler(Looper.getMainLooper());
            }
            this.f1769c.a(handler);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void onPostExecute(List<as> list) {
        super.onPostExecute(list);
        if (this.f1770d != null) {
            Log.d(f1767a, String.format("onPostExecute: exception encountered during request: %s", this.f1770d.getMessage()));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public List<as> doInBackground(Void... voidArr) {
        List<as> listA;
        try {
            if (this.f1768b == null) {
                listA = this.f1769c.g();
            } else {
                listA = GraphRequest.a(this.f1768b, this.f1769c);
            }
            return listA;
        } catch (Exception e2) {
            this.f1770d = e2;
            return null;
        }
    }
}
