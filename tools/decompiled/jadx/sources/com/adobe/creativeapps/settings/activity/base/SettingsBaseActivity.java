package com.adobe.creativeapps.settings.activity.base;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.support.v7.app.AppCompatActivity;
import g.a.a.a.c;

/* JADX INFO: loaded from: classes.dex */
public abstract class SettingsBaseActivity extends AppCompatActivity {
    public abstract String getActivityName();

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    protected void attachBaseContext(Context context) {
        super.attachBaseContext(c.a(context));
    }

    protected void openUrl(String str) {
        startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
    }
}
