package com.b.a.e;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.support.v4.app.Fragment;
import android.util.Log;
import java.util.HashSet;

/* JADX INFO: compiled from: SupportRequestManagerFragment.java */
/* JADX INFO: loaded from: classes2.dex */
public class r extends Fragment {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private com.b.a.l f1138a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final a f1139b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final p f1140c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final HashSet<r> f1141d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private r f1142e;

    public r() {
        this(new a());
    }

    @SuppressLint({"ValidFragment"})
    public r(a aVar) {
        this.f1140c = new t(this);
        this.f1141d = new HashSet<>();
        this.f1139b = aVar;
    }

    public void a(com.b.a.l lVar) {
        this.f1138a = lVar;
    }

    a a() {
        return this.f1139b;
    }

    public com.b.a.l b() {
        return this.f1138a;
    }

    public p c() {
        return this.f1140c;
    }

    private void a(r rVar) {
        this.f1141d.add(rVar);
    }

    private void b(r rVar) {
        this.f1141d.remove(rVar);
    }

    @Override // android.support.v4.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        try {
            this.f1142e = o.a().a(getActivity().getSupportFragmentManager());
            if (this.f1142e != this) {
                this.f1142e.a(this);
            }
        } catch (IllegalStateException e2) {
            if (Log.isLoggable("SupportRMFragment", 5)) {
                Log.w("SupportRMFragment", "Unable to register fragment with root", e2);
            }
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onDetach() {
        super.onDetach();
        if (this.f1142e != null) {
            this.f1142e.b(this);
            this.f1142e = null;
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onStart() {
        super.onStart();
        this.f1139b.a();
    }

    @Override // android.support.v4.app.Fragment
    public void onStop() {
        super.onStop();
        this.f1139b.b();
    }

    @Override // android.support.v4.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.f1139b.c();
    }

    @Override // android.support.v4.app.Fragment, android.content.ComponentCallbacks
    public void onLowMemory() {
        super.onLowMemory();
        if (this.f1138a != null) {
            this.f1138a.a();
        }
    }
}
