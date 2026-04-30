package com.twitter.sdk.android.core.identity;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.NotificationCompat;
import android.webkit.WebView;
import android.widget.ProgressBar;
import com.twitter.sdk.android.core.TwitterAuthConfig;
import com.twitter.sdk.android.core.af;
import com.twitter.sdk.android.core.internal.oauth.OAuth1aService;
import com.twitter.sdk.android.core.internal.z;

/* JADX INFO: loaded from: classes3.dex */
public class OAuthActivity extends Activity implements f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    c f3876a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ProgressBar f3877b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private WebView f3878c;

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        boolean z;
        super.onCreate(bundle);
        setContentView(com.twitter.sdk.android.core.q.tw__activity_oauth);
        this.f3877b = (ProgressBar) findViewById(com.twitter.sdk.android.core.p.tw__spinner);
        this.f3878c = (WebView) findViewById(com.twitter.sdk.android.core.p.tw__web_view);
        if (bundle != null) {
            z = bundle.getBoolean(NotificationCompat.CATEGORY_PROGRESS, false);
        } else {
            z = true;
        }
        this.f3877b.setVisibility(z ? 0 : 8);
        this.f3876a = new c(this.f3877b, this.f3878c, (TwitterAuthConfig) getIntent().getParcelableExtra("auth_config"), new OAuth1aService(af.a(), new z()), this);
        this.f3876a.a();
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        if (this.f3877b.getVisibility() == 0) {
            bundle.putBoolean(NotificationCompat.CATEGORY_PROGRESS, true);
        }
        super.onSaveInstanceState(bundle);
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        this.f3876a.a(0, new com.twitter.sdk.android.core.z("Authorization failed, request was canceled."));
    }

    @Override // com.twitter.sdk.android.core.identity.f
    public void a(int i, Intent intent) {
        setResult(i, intent);
        finish();
    }
}
