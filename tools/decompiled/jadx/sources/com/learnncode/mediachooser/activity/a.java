package com.learnncode.mediachooser.activity;

import android.view.View;

/* JADX INFO: compiled from: BucketHomeFragmentActivity.java */
/* JADX INFO: loaded from: classes3.dex */
class a implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ BucketHomeFragmentActivity f3667a;

    a(BucketHomeFragmentActivity bucketHomeFragmentActivity) {
        this.f3667a = bucketHomeFragmentActivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view == this.f3667a.f3651c) {
            this.f3667a.closeAndGoBack();
        }
    }
}
