package com.learnncode.mediachooser.activity;

import android.app.AlertDialog;
import com.learnncode.mediachooser.fragment.VideoFragment;
import org.mortbay.util.URIUtil;

/* JADX INFO: compiled from: HomeFragmentActivity.java */
/* JADX INFO: loaded from: classes3.dex */
class e implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ AlertDialog f3671a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ HomeFragmentActivity f3672b;

    e(HomeFragmentActivity homeFragmentActivity, AlertDialog alertDialog) {
        this.f3672b = homeFragmentActivity;
        this.f3671a = alertDialog;
    }

    @Override // java.lang.Runnable
    public void run() {
        String strTrim = HomeFragmentActivity.i.toString().replaceFirst("file:///", URIUtil.SLASH).trim();
        this.f3672b.getSupportFragmentManager();
        VideoFragment videoFragment = null;
        if (0 == 0) {
            new VideoFragment().a(strTrim);
        } else {
            videoFragment.a(strTrim);
        }
        this.f3671a.cancel();
    }
}
