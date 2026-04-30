package com.twitter.sdk.android.core.identity;

import android.app.Activity;
import android.view.View;

/* JADX INFO: compiled from: TwitterLoginButton.java */
/* JADX INFO: loaded from: classes3.dex */
class p implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ TwitterLoginButton f3904a;

    private p(TwitterLoginButton twitterLoginButton) {
        this.f3904a = twitterLoginButton;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        a(this.f3904a.f3882d);
        a(this.f3904a.f3879a.get());
        this.f3904a.getTwitterAuthClient().a(this.f3904a.f3879a.get(), this.f3904a.f3882d);
        if (this.f3904a.f3881c != null) {
            this.f3904a.f3881c.onClick(view);
        }
    }

    private void a(com.twitter.sdk.android.core.c cVar) {
        if (cVar == null) {
            com.twitter.sdk.android.core.internal.n.a("Twitter", "Callback must not be null, did you call setCallback?");
        }
    }

    private void a(Activity activity) {
        if (activity == null || activity.isFinishing()) {
            com.twitter.sdk.android.core.internal.n.a("Twitter", "TwitterLoginButton requires an activity. Override getActivity to provide the activity for this button.");
        }
    }
}
