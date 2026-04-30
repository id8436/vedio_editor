package com.learnncode.mediachooser.activity;

import android.app.AlertDialog;
import android.app.FragmentTransaction;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsETSEvent;
import com.learnncode.mediachooser.fragment.ImageFragment;
import com.learnncode.mediachooser.fragment.VideoFragment;
import com.learnncode.mediachooser.fragment.i;
import com.learnncode.mediachooser.g;
import com.learnncode.mediachooser.j;
import com.learnncode.mediachooser.k;

/* JADX INFO: loaded from: classes3.dex */
public class HomeFragmentActivity extends FragmentActivity implements com.learnncode.mediachooser.fragment.f, i {
    private static Uri i;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private TextView f3661b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Button f3662c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Button f3663d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Button f3664e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Button f3665f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private ImageFragment f3666g = null;
    private VideoFragment h = null;
    private final Handler j = new Handler();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    View.OnClickListener f3660a = new d(this);

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        Intent intent = new Intent();
        intent.putStringArrayListExtra(AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_VIEW_TYPE_LIST, this.h.b());
        setResult(-1, intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        Intent intent = new Intent();
        intent.putStringArrayListExtra(AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_VIEW_TYPE_LIST, this.f3666g.a());
        setResult(-1, intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        Intent intent = new Intent();
        intent.putExtra("fromCancel", true);
        setResult(-1, intent);
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        setContentView(k.activity_home_media_chooser);
        this.f3661b = (TextView) findViewById(j.titleTextViewFromMediaChooserHeaderBar);
        this.f3662c = (Button) findViewById(j.backArrowImageViewFromMediaChooserHeaderView);
        this.f3663d = (Button) findViewById(j.media_chooser_add_button);
        this.f3664e = (Button) findViewById(j.media_chooser_cancel_button);
        this.f3665f = (Button) findViewById(j.DummyButton);
        findViewById(j.media_chooser_add_cancel_layout).setVisibility(0);
        this.f3663d.setVisibility(4);
        this.f3662c.setOnClickListener(this.f3660a);
        this.f3663d.setOnClickListener(this.f3660a);
        this.f3664e.setOnClickListener(this.f3660a);
        FragmentTransaction fragmentTransactionBeginTransaction = getFragmentManager().beginTransaction();
        if (getIntent() != null && getIntent().getBooleanExtra("isFromBucket", false)) {
            this.f3662c.setText(getIntent().getStringExtra("previousActivityName"));
            this.f3665f.setText(getIntent().getStringExtra("previousActivityName"));
            this.f3665f.requestLayout();
            if (getIntent().getBooleanExtra("image", false)) {
                Bundle bundle2 = new Bundle();
                this.f3661b.setText(getIntent().getStringExtra("name"));
                bundle2.putString("name", getIntent().getStringExtra("name"));
                bundle2.putString("bucketId", getIntent().getStringExtra("bucketId"));
                this.f3666g = new ImageFragment();
                this.f3666g.setArguments(bundle2);
                fragmentTransactionBeginTransaction.add(j.media_chooser_video_image_frame, this.f3666g, "imageFragment");
                fragmentTransactionBeginTransaction.commit();
                return;
            }
            Bundle bundle3 = new Bundle();
            this.f3661b.setText(getIntent().getStringExtra("name"));
            bundle3.putString("name", getIntent().getStringExtra("name"));
            bundle3.putString("bucketId", getIntent().getStringExtra("bucketId"));
            this.h = new VideoFragment();
            this.h.setArguments(bundle3);
            fragmentTransactionBeginTransaction.add(j.media_chooser_video_image_frame, this.h, "videoFragment");
            fragmentTransactionBeginTransaction.commit();
        }
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public final void onBackPressed() {
        super.onBackPressed();
        overridePendingTransition(g.push_right_in, g.push_right_out);
    }

    public final void closeAndGoBack() {
        onBackPressed();
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onActivityResult(int i2, int i3, Intent intent) {
        if (i2 == 200) {
            if (i3 == -1) {
                sendBroadcast(new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE", i));
                AlertDialog alertDialogCreate = com.learnncode.mediachooser.d.a(this).create();
                alertDialogCreate.show();
                this.j.postDelayed(new e(this, alertDialogCreate), 5000L);
                return;
            }
            if (i3 == 0) {
            }
            return;
        }
        if (i2 == 100 && i3 == -1) {
            sendBroadcast(new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE", i));
            AlertDialog alertDialogCreate2 = com.learnncode.mediachooser.d.a(this).create();
            alertDialogCreate2.show();
            this.j.postDelayed(new f(this, alertDialogCreate2), 5000L);
        }
    }

    @Override // com.learnncode.mediachooser.fragment.f
    public void a(int i2) {
        if (i2 != 0) {
            if (this.f3663d.getVisibility() == 4) {
                this.f3663d.setVisibility(0);
            }
            this.f3663d.setText("Add(" + i2 + ")");
        } else if (this.f3663d.getVisibility() != 4) {
            this.f3663d.setVisibility(4);
        }
    }

    @Override // com.learnncode.mediachooser.fragment.i
    public void b(int i2) {
        if (i2 != 0) {
            if (this.f3663d.getVisibility() == 4) {
                this.f3663d.setVisibility(0);
            }
            this.f3663d.setText("Add(" + i2 + ")");
        } else if (this.f3663d.getVisibility() != 4) {
            this.f3663d.setVisibility(4);
        }
    }
}
