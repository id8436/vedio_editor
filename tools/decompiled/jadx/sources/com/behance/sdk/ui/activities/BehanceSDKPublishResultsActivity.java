package com.behance.sdk.ui.activities;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.behance.sdk.BehanceSDK;
import com.behance.sdk.R;
import com.behance.sdk.logger.ILogger;
import com.behance.sdk.logger.LoggerFactory;
import com.i.a.b.f;
import com.i.a.b.g;
import com.i.a.b.j;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKPublishResultsActivity extends FragmentActivity implements View.OnClickListener {
    public static final String INTENT_STRING_EXTRA_IMAGE_URL = "INTENT_STRING_EXTRA_IMAGE_URL";
    public static final String INTENT_STRING_EXTRA_WORK_URL = "INTENT_STRING_EXTRA_WORK_URL";
    private static final ILogger logger = LoggerFactory.getLogger(BehanceSDKPublishResultsActivity.class);
    private BehanceSDK behanceSDK = BehanceSDK.getInstance();
    private String workUrl;

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.bsdk_activity_publish_results);
        if (!this.behanceSDK.useBehanceTheme() && !getResources().getBoolean(R.bool.isTablet)) {
            setRequestedOrientation(this.behanceSDK.getBehanceSDKCustomResourcesOptions().getPhoneOrientation());
        }
        if (!g.a().b()) {
            g.a().a(j.a(this));
        }
        Intent intent = getIntent();
        this.workUrl = intent.getStringExtra(INTENT_STRING_EXTRA_WORK_URL);
        String stringExtra = intent.getStringExtra(INTENT_STRING_EXTRA_IMAGE_URL);
        findViewById(R.id.bsdkPublishResultsTitlebarBackBtnImageView).setOnClickListener(this);
        TextView textView = (TextView) findViewById(R.id.bsdkPublishResultsUrlTxtView);
        textView.setOnClickListener(this);
        if (this.workUrl != null) {
            textView.setText(this.workUrl);
        }
        ImageView imageView = (ImageView) findViewById(R.id.bsdkPublishResultsWorkImageView);
        imageView.setOnClickListener(this);
        if (stringExtra != null) {
            g.a().a(stringExtra, imageView, new f().b(true).a(false).c(false).a(android.R.drawable.stat_notify_error).a());
        }
        findViewById(R.id.bsdkPublishResultsBehanceBtn).setOnClickListener(this);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == R.id.bsdkPublishResultsTitlebarBackBtnImageView) {
            closeThisView();
        } else if (view.getId() == R.id.bsdkPublishResultsBehanceBtn || view.getId() == R.id.bsdkPublishResultsUrlTxtView || view.getId() == R.id.bsdkPublishResultsWorkImageView) {
            dispatchViewWorkUrlIntent();
        }
    }

    private void dispatchViewWorkUrlIntent() {
        try {
            if (this.workUrl != null) {
                startActivity(new Intent("android.intent.action.VIEW", Uri.parse(this.workUrl)));
            }
        } catch (Throwable th) {
            logger.error(th, "Problem launching URL. [Url - %s]", this.workUrl);
        }
        closeThisView();
    }

    private void closeThisView() {
        finish();
    }
}
