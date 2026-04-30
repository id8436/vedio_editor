package com.b.a.h.b;

import android.util.Log;
import android.view.ViewTreeObserver;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: ViewTarget.java */
/* JADX INFO: loaded from: classes2.dex */
class n implements ViewTreeObserver.OnPreDrawListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final WeakReference<m> f1207a;

    public n(m mVar) {
        this.f1207a = new WeakReference<>(mVar);
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public boolean onPreDraw() {
        if (Log.isLoggable("ViewTarget", 2)) {
            Log.v("ViewTarget", "OnGlobalLayoutListener called listener=" + this);
        }
        m mVar = this.f1207a.get();
        if (mVar != null) {
            mVar.a();
            return true;
        }
        return true;
    }
}
