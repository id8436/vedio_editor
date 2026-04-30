package com.twitter.sdk.android.tweetcomposer;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.twitter.sdk.android.core.TwitterAuthToken;
import com.twitter.sdk.android.core.aj;

/* JADX INFO: loaded from: classes3.dex */
public class ComposerActivity extends Activity {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private c f4131a;

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        aj ajVar = new aj((TwitterAuthToken) intent.getParcelableExtra("EXTRA_USER_TOKEN"), -1L, "");
        Uri uri = (Uri) intent.getParcelableExtra("EXTRA_IMAGE_URI");
        String stringExtra = intent.getStringExtra("EXTRA_TEXT");
        String stringExtra2 = intent.getStringExtra("EXTRA_HASHTAGS");
        setTheme(intent.getIntExtra("EXTRA_THEME", t.ComposerLight));
        setContentView(s.tw__activity_composer);
        this.f4131a = new c((ComposerView) findViewById(r.tw__composer_view), ajVar, uri, stringExtra, stringExtra2, new b(this));
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
        this.f4131a.b();
    }
}
