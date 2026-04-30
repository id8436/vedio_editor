package com.facebook;

import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;

/* JADX INFO: compiled from: FacebookActivity.java */
/* JADX INFO: loaded from: classes2.dex */
public class m extends FragmentActivity {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static String f3030a = "PassThrough";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static String f3031b = "SingleFragment";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Fragment f3032c;

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(bg.com_facebook_activity_layout);
        Intent intent = getIntent();
        if (f3030a.equals(intent.getAction())) {
            a();
            return;
        }
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        Fragment fragmentFindFragmentByTag = supportFragmentManager.findFragmentByTag(f3031b);
        Fragment fragment = fragmentFindFragmentByTag;
        if (fragmentFindFragmentByTag == null) {
            if ("FacebookDialogFragment".equals(intent.getAction())) {
                com.facebook.i.u uVar = new com.facebook.i.u();
                uVar.setRetainInstance(true);
                uVar.show(supportFragmentManager, f3031b);
                fragment = uVar;
            } else {
                com.facebook.login.n nVar = new com.facebook.login.n();
                nVar.setRetainInstance(true);
                supportFragmentManager.beginTransaction().add(bf.com_facebook_fragment_container, nVar, f3031b).commit();
                fragment = nVar;
            }
        }
        this.f3032c = fragment;
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (this.f3032c != null) {
            this.f3032c.onConfigurationChanged(configuration);
        }
    }

    private void a() {
        Intent intent = getIntent();
        setResult(0, com.facebook.i.ah.a(intent, (Bundle) null, com.facebook.i.ah.a(com.facebook.i.ah.c(intent))));
        finish();
    }
}
