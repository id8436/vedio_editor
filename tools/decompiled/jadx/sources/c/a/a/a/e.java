package c.a.a.a;

import android.util.Log;

/* JADX INFO: compiled from: DefaultLogger.java */
/* JADX INFO: loaded from: classes.dex */
public class e implements t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f368a;

    public e(int i) {
        this.f368a = i;
    }

    public e() {
        this.f368a = 4;
    }

    @Override // c.a.a.a.t
    public boolean a(String str, int i) {
        return this.f368a <= i;
    }

    @Override // c.a.a.a.t
    public void a(String str, String str2, Throwable th) {
        if (a(str, 3)) {
            Log.d(str, str2, th);
        }
    }

    public void b(String str, String str2, Throwable th) {
        if (a(str, 2)) {
            Log.v(str, str2, th);
        }
    }

    public void c(String str, String str2, Throwable th) {
        if (a(str, 4)) {
            Log.i(str, str2, th);
        }
    }

    @Override // c.a.a.a.t
    public void d(String str, String str2, Throwable th) {
        if (a(str, 5)) {
            Log.w(str, str2, th);
        }
    }

    @Override // c.a.a.a.t
    public void e(String str, String str2, Throwable th) {
        if (a(str, 6)) {
            Log.e(str, str2, th);
        }
    }

    @Override // c.a.a.a.t
    public void a(String str, String str2) {
        a(str, str2, (Throwable) null);
    }

    @Override // c.a.a.a.t
    public void b(String str, String str2) {
        b(str, str2, null);
    }

    @Override // c.a.a.a.t
    public void c(String str, String str2) {
        c(str, str2, null);
    }

    @Override // c.a.a.a.t
    public void d(String str, String str2) {
        d(str, str2, null);
    }

    @Override // c.a.a.a.t
    public void e(String str, String str2) {
        e(str, str2, null);
    }

    @Override // c.a.a.a.t
    public void a(int i, String str, String str2) {
        a(i, str, str2, false);
    }

    @Override // c.a.a.a.t
    public void a(int i, String str, String str2, boolean z) {
        if (z || a(str, i)) {
            Log.println(i, str, str2);
        }
    }
}
