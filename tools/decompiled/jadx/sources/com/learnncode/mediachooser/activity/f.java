package com.learnncode.mediachooser.activity;

import android.app.AlertDialog;
import com.learnncode.mediachooser.fragment.ImageFragment;
import org.mortbay.util.URIUtil;

/* JADX INFO: compiled from: HomeFragmentActivity.java */
/* JADX INFO: loaded from: classes3.dex */
class f implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ AlertDialog f3673a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ HomeFragmentActivity f3674b;

    f(HomeFragmentActivity homeFragmentActivity, AlertDialog alertDialog) {
        this.f3674b = homeFragmentActivity;
        this.f3673a = alertDialog;
    }

    @Override // java.lang.Runnable
    public void run() {
        String strTrim = HomeFragmentActivity.i.toString().replaceFirst("file:///", URIUtil.SLASH).trim();
        this.f3674b.getSupportFragmentManager();
        ImageFragment imageFragment = null;
        if (0 == 0) {
            new ImageFragment().a(strTrim);
        } else {
            imageFragment.a(strTrim);
        }
        this.f3673a.cancel();
    }
}
