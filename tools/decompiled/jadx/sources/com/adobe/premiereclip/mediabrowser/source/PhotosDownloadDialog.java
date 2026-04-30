package com.adobe.premiereclip.mediabrowser.source;

import android.app.Activity;
import android.app.Dialog;
import android.os.Bundle;
import android.util.Log;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.adobe.premiereclip.R;
import com.h.a.d;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes2.dex */
public class PhotosDownloadDialog extends Dialog {
    private Activity activity;
    protected ImageView logoView;
    public TextView mCancel;
    protected ProgressBar mProgress;
    protected TextView prepareStatusView;
    private AtomicInteger progress;

    public PhotosDownloadDialog(Activity activity) {
        super(activity);
        this.activity = activity;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        requestWindowFeature(1);
        setContentView(R.layout.download_dialog);
        this.mProgress = (ProgressBar) findViewById(R.id.cc_prepare_progress_bar);
        this.mProgress.setClickable(false);
        this.progress = new AtomicInteger(0);
        this.prepareStatusView = (TextView) findViewById(R.id.prepare_status_view);
        this.prepareStatusView.setText(this.activity.getResources().getString(R.string.downloading_media));
        this.logoView = (ImageView) findViewById(R.id.sharing_logo);
        this.logoView.setImageResource(R.drawable.share_gallery_lg);
        this.mCancel = (TextView) findViewById(R.id.btn_cancel);
        this.mCancel.setText(this.activity.getResources().getString(R.string.btn_title_cancel));
        d.a(this.prepareStatusView);
        d.a(this.mCancel);
    }

    public void setProgress(int i, int i2) {
        this.progress = new AtomicInteger((i * 100) / i2);
        Log.d("Photos Dialog", "progress in set = " + this.progress);
        this.mProgress.setProgress(this.progress.get());
    }

    public void addProgress(int i) {
        this.progress = new AtomicInteger(this.progress.get() + i);
        Log.d("Photos Dialog", "progress in add = " + this.progress);
        this.mProgress.setProgress(this.progress.get());
    }

    public void maximumProgress(int i) {
        Log.d("Photos Dialog", "max progress = " + i);
        this.mProgress.setMax(i);
    }

    public void decreaseMaxProgress() {
        int max = this.mProgress.getMax();
        Log.d("Photos Dialog", "Reducing max prog from " + max + "to " + (max - 100));
        this.mProgress.setMax(max - 100);
    }

    public void setImageSource(int i) {
        this.logoView.setImageResource(i);
    }
}
