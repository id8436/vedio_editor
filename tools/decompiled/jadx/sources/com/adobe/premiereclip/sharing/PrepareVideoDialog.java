package com.adobe.premiereclip.sharing;

import android.app.Activity;
import android.app.Dialog;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.adobe.premiereclip.R;
import com.adobe.premiereclip.dialogs.MessageDialog;
import com.h.a.d;

/* JADX INFO: loaded from: classes2.dex */
public abstract class PrepareVideoDialog extends Dialog {
    private static final int STATE_ERROR = 3;
    private static final int STATE_IDLE = -1;
    private static final int STATE_PREPARING = 0;
    private static final int STATE_SAVED = 2;
    private static final int STATE_SAVING = 1;
    protected static volatile boolean open;
    private Activity activity;
    protected TextView btn_cancel;
    private String cancelString;
    private String cancellingString;
    protected int logoDrawableID;
    protected ImageView logoView;
    private Listener mListener;
    protected ProgressBar mProgress;
    protected int mProgressStatus;
    protected String okayString;
    protected TextView prepareStatusView;
    protected String prepareString;
    private int progressDialogID;
    protected String publishedString;
    protected String sharingString;
    private int state;

    public interface Listener {
        void onDismissed();

        void onPreparingCancelled();

        void onPublished();

        void onSavingCancelled();
    }

    public PrepareVideoDialog(Activity activity, Listener listener) {
        super(activity);
        this.activity = activity;
        this.mListener = listener;
        this.mProgressStatus = 0;
        this.prepareString = activity.getString(R.string.preparing_video);
        this.sharingString = activity.getString(R.string.saving_video);
        this.publishedString = activity.getString(R.string.video_saved);
        this.cancelString = activity.getString(R.string.sharing_cancel_btn);
        this.cancellingString = activity.getString(R.string.sharing_cancelling);
        this.okayString = activity.getString(R.string.sharing_ok);
        this.logoDrawableID = R.drawable.share_gallery_lg;
        this.state = -1;
        this.progressDialogID = R.layout.dialog_sharing;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        setContentView(this.progressDialogID);
        this.btn_cancel = (TextView) findViewById(R.id.btn_cancel);
        this.btn_cancel.setText(this.cancelString);
        this.mProgress = (ProgressBar) findViewById(R.id.cc_prepare_progress_bar);
        this.prepareStatusView = (TextView) findViewById(R.id.prepare_status_view);
        this.prepareStatusView.setText(this.prepareString);
        this.logoView = (ImageView) findViewById(R.id.sharing_logo);
        this.logoView.setImageResource(this.logoDrawableID);
        d.a(this.btn_cancel);
        d.a(this.prepareStatusView);
        this.state = 0;
        addCancelOnClickListener();
    }

    @Override // android.app.Dialog
    public void onBackPressed() {
    }

    @Override // android.app.Dialog
    public void show() {
        super.show();
        open = true;
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        open = false;
    }

    public static boolean isOpen() {
        return open;
    }

    public boolean isSaving() {
        return this.state == 1;
    }

    public boolean isSaved() {
        return this.state == 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cancelSharing() {
        if (this.mListener != null) {
            if (this.state == 0) {
                this.mListener.onPreparingCancelled();
            } else if (this.state == 1) {
                this.mListener.onSavingCancelled();
            } else if (this.state == 2) {
                this.mListener.onPublished();
            }
        }
    }

    public void setSharingString(String str) {
        this.sharingString = str;
    }

    protected void setLogoDrawableID(int i) {
        this.logoDrawableID = i;
    }

    public void setPrepareProgress(int i) {
        if (this.state == 0) {
            this.mProgress.setProgress(getProgressFromPrepareProgress(i));
            if (i == 100) {
                goToSavingState();
            }
        }
    }

    protected void goToSavingState() {
        this.state = 1;
        this.prepareStatusView.setText(this.sharingString);
    }

    protected int getProgressFromPrepareProgress(int i) {
        return i / 2;
    }

    public void setSavingProgress(int i) {
        if (this.state == 1) {
            this.mProgress.setProgress(getProgressFromSavingProgress(i));
            if (i == 100) {
                goToSavedState();
            }
        }
    }

    protected int getProgressFromSavingProgress(int i) {
        return (i / 2) + 50;
    }

    protected void goToSavedState() {
        this.state = 2;
        this.prepareStatusView.setText(this.publishedString);
        this.btn_cancel.setText(this.okayString);
    }

    protected void goToErrorState(String str, String str2) {
        MessageDialog messageDialog = new MessageDialog(this.activity, str, str2, false);
        dismiss();
        if (this.mListener != null) {
            this.mListener.onDismissed();
        }
        messageDialog.show();
        this.state = 3;
    }

    public void addCancelOnClickListener() {
        setCanceledOnTouchOutside(false);
        this.btn_cancel.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.premiereclip.sharing.PrepareVideoDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (PrepareVideoDialog.this.state == 2 || PrepareVideoDialog.this.state == 3) {
                    if (PrepareVideoDialog.this.mListener != null && PrepareVideoDialog.this.state != 3) {
                        PrepareVideoDialog.this.mListener.onPublished();
                    }
                    PrepareVideoDialog.this.dismiss();
                    if (PrepareVideoDialog.this.mListener != null) {
                        PrepareVideoDialog.this.mListener.onDismissed();
                        return;
                    }
                    return;
                }
                PrepareVideoDialog.this.cancelSharing();
                PrepareVideoDialog.this.prepareStatusView.setText(PrepareVideoDialog.this.cancellingString);
                PrepareVideoDialog.this.state = -1;
            }
        });
    }
}
