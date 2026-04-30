package com.adobe.premiereclip.base;

import android.content.Context;
import android.support.v7.app.AppCompatActivity;
import g.a.a.a.c;

/* JADX INFO: loaded from: classes.dex */
public abstract class BaseActivity extends AppCompatActivity {
    public abstract String getActivityName();

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    protected void attachBaseContext(Context context) {
        super.attachBaseContext(c.a(context));
    }
}
