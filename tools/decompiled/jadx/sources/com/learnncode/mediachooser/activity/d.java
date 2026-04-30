package com.learnncode.mediachooser.activity;

import android.view.View;
import com.learnncode.mediachooser.g;

/* JADX INFO: compiled from: HomeFragmentActivity.java */
/* JADX INFO: loaded from: classes3.dex */
class d implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ HomeFragmentActivity f3670a;

    d(HomeFragmentActivity homeFragmentActivity) {
        this.f3670a = homeFragmentActivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view == this.f3670a.f3663d) {
            if (this.f3670a.h != null && this.f3670a.h.b() != null && this.f3670a.h.b().size() > 0) {
                this.f3670a.b();
                this.f3670a.finish();
            }
            if (this.f3670a.f3666g != null && this.f3670a.f3666g.a() != null && this.f3670a.f3666g.a().size() > 0) {
                this.f3670a.c();
                this.f3670a.finish();
                return;
            }
            return;
        }
        if (view != this.f3670a.f3662c) {
            if (view == this.f3670a.f3664e) {
                this.f3670a.d();
                this.f3670a.finish();
                this.f3670a.overridePendingTransition(g.push_right_in, g.push_right_out);
                return;
            }
            return;
        }
        this.f3670a.closeAndGoBack();
    }
}
