package com.learnncode.mediachooser.activity;

import android.annotation.SuppressLint;
import android.app.FragmentTransaction;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import com.learnncode.mediachooser.g;
import com.learnncode.mediachooser.j;
import com.learnncode.mediachooser.k;
import com.learnncode.mediachooser.l;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
public class BucketHomeFragmentActivity extends FragmentActivity {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private TextView f3650b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Button f3651c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Button f3652d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ArrayList<String> f3653e = new ArrayList<>();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ArrayList<String> f3654f = new ArrayList<>();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Handler f3655g = new Handler();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    View.OnClickListener f3649a = new a(this);

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    @SuppressLint({"ResourceAsColor"})
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        setContentView(k.activity_home_media_chooser);
        this.f3650b = (TextView) findViewById(j.titleTextViewFromMediaChooserHeaderBar);
        this.f3651c = (Button) findViewById(j.backArrowImageViewFromMediaChooserHeaderView);
        this.f3652d = (Button) findViewById(j.DummyButton);
        findViewById(j.media_chooser_add_cancel_layout).setVisibility(8);
        FragmentTransaction fragmentTransactionBeginTransaction = getFragmentManager().beginTransaction();
        this.f3651c.setText(getIntent().getStringExtra("previousActivityName"));
        this.f3652d.setText(getIntent().getStringExtra("previousActivityName"));
        this.f3652d.requestLayout();
        if (com.learnncode.mediachooser.d.f3719f) {
            this.f3650b.setText(getResources().getString(l.bucket_view_photo_activity));
            fragmentTransactionBeginTransaction.add(j.media_chooser_video_image_frame, new com.learnncode.mediachooser.fragment.a(), "imageFragment");
            fragmentTransactionBeginTransaction.commit();
        } else {
            this.f3650b.setText(getResources().getString(l.bucket_view_video_activity));
            fragmentTransactionBeginTransaction.add(j.media_chooser_video_image_frame, new com.learnncode.mediachooser.fragment.c(), "videoFragment");
            fragmentTransactionBeginTransaction.commit();
        }
        this.f3651c.setOnClickListener(this.f3649a);
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
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i2 == -1) {
            if (i == 1000 || i == 2000) {
                setResult(i2, intent);
                finish();
                overridePendingTransition(g.push_right_in, g.push_right_out);
            }
        }
    }
}
