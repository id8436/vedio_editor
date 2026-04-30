package com.a.a.a.f;

import android.util.Log;

/* JADX INFO: compiled from: JqLog.java */
/* JADX INFO: loaded from: classes.dex */
public class d implements a {
    @Override // com.a.a.a.f.a
    public boolean a() {
        return false;
    }

    @Override // com.a.a.a.f.a
    public void a(String str, Object... objArr) {
    }

    @Override // com.a.a.a.f.a
    public void a(Throwable th, String str, Object... objArr) {
        Log.e("JobManager", String.format(str, objArr), th);
    }

    @Override // com.a.a.a.f.a
    public void b(String str, Object... objArr) {
        Log.e("JobManager", String.format(str, objArr));
    }

    @Override // com.a.a.a.f.a
    public void c(String str, Object... objArr) {
    }
}
