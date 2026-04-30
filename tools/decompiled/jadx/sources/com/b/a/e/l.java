package com.b.a.e;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Fragment;
import android.util.Log;
import java.util.HashSet;

/* JADX INFO: compiled from: RequestManagerFragment.java */
/* JADX INFO: loaded from: classes2.dex */
@TargetApi(11)
public class l extends Fragment {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final a f1124a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final p f1125b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private com.b.a.l f1126c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final HashSet<l> f1127d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private l f1128e;

    public l() {
        this(new a());
    }

    @SuppressLint({"ValidFragment"})
    l(a aVar) {
        this.f1125b = new n(this);
        this.f1127d = new HashSet<>();
        this.f1124a = aVar;
    }

    public void a(com.b.a.l lVar) {
        this.f1126c = lVar;
    }

    a a() {
        return this.f1124a;
    }

    public com.b.a.l b() {
        return this.f1126c;
    }

    public p c() {
        return this.f1125b;
    }

    private void a(l lVar) {
        this.f1127d.add(lVar);
    }

    private void b(l lVar) {
        this.f1127d.remove(lVar);
    }

    @Override // android.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        try {
            this.f1128e = o.a().a(getActivity().getFragmentManager());
            if (this.f1128e != this) {
                this.f1128e.a(this);
            }
        } catch (IllegalStateException e2) {
            if (Log.isLoggable("RMFragment", 5)) {
                Log.w("RMFragment", "Unable to register fragment with root", e2);
            }
        }
    }

    @Override // android.app.Fragment
    public void onDetach() {
        super.onDetach();
        if (this.f1128e != null) {
            this.f1128e.b(this);
            this.f1128e = null;
        }
    }

    @Override // android.app.Fragment
    public void onStart() {
        super.onStart();
        this.f1124a.a();
    }

    @Override // android.app.Fragment
    public void onStop() {
        super.onStop();
        this.f1124a.b();
    }

    @Override // android.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.f1124a.c();
    }

    @Override // android.app.Fragment, android.content.ComponentCallbacks2
    public void onTrimMemory(int i) {
        if (this.f1126c != null) {
            this.f1126c.a(i);
        }
    }

    @Override // android.app.Fragment, android.content.ComponentCallbacks
    public void onLowMemory() {
        if (this.f1126c != null) {
            this.f1126c.a();
        }
    }
}
