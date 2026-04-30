package com.adobe.utility.progressdialog;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.adobe.utility.R;
import com.h.a.d;

/* JADX INFO: loaded from: classes2.dex */
public class PSMixProgressDialog extends Dialog {
    private boolean mCancelable;
    private Context mContext;
    private IProgressDialogCallback mDelagate;
    private int mIconImageId;
    private ImageView mImageView;
    private ProgressBar mProgressBar;
    private String mProgressText;
    private TextView mProgressTextView;
    private int mProgressValue;
    private boolean mShowFooter;

    public interface IProgressDialogCallback {
        void selectedCancel();

        void selectedClose();
    }

    public PSMixProgressDialog(Context context, boolean z, int i, String str, int i2, boolean z2, IProgressDialogCallback iProgressDialogCallback) {
        super(context);
        this.mContext = context;
        this.mShowFooter = z;
        this.mIconImageId = i;
        this.mProgressText = str;
        this.mProgressValue = i2;
        this.mDelagate = iProgressDialogCallback;
        this.mCancelable = z2;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        setContentView(R.layout.progress_dialog);
        this.mImageView = (ImageView) findViewById(R.id.progress_dialog_image);
        this.mProgressTextView = (TextView) findViewById(R.id.progress_dialog_text);
        this.mProgressBar = (ProgressBar) findViewById(R.id.progress_dialog_progressbar);
        final Button button = (Button) findViewById(R.id.progress_dialog_button);
        this.mImageView.setImageDrawable(this.mContext.getResources().getDrawable(this.mIconImageId));
        this.mProgressTextView.setText(this.mProgressText);
        this.mProgressBar.setProgress(this.mProgressValue);
        button.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.utility.progressdialog.PSMixProgressDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (button.getText().equals(PSMixProgressDialog.this.mContext.getString(R.string.progress_dialog_button_text))) {
                    PSMixProgressDialog.this.mDelagate.selectedCancel();
                } else {
                    PSMixProgressDialog.this.mDelagate.selectedClose();
                }
            }
        });
        if (!this.mShowFooter) {
            ((FrameLayout) findViewById(R.id.progress_dialog_progressbar_layout)).setVisibility(8);
            button.setVisibility(8);
        }
        getWindow().setBackgroundDrawable(new ColorDrawable(0));
        setCancelable(this.mCancelable);
        setCanceledOnTouchOutside(false);
        setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: com.adobe.utility.progressdialog.PSMixProgressDialog.2
            @Override // android.content.DialogInterface.OnKeyListener
            public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
                if (i == 4 && PSMixProgressDialog.this.mDelagate != null) {
                    PSMixProgressDialog.this.mDelagate.selectedCancel();
                    return true;
                }
                return true;
            }
        });
        d.a(getWindow().getDecorView());
    }

    public void setProgressText(String str) {
        this.mProgressText = str;
        if (this.mProgressTextView == null) {
            this.mProgressTextView = (TextView) findViewById(R.id.progress_dialog_text);
        }
        this.mProgressTextView.setText(str);
    }

    public void setProgressTextColor(int i) {
        if (this.mProgressTextView == null) {
            this.mProgressTextView = (TextView) findViewById(R.id.progress_dialog_text);
        }
        this.mProgressTextView.setTextColor(i);
    }

    public void setProgress(int i) {
        this.mProgressValue = i;
        if (this.mProgressBar == null) {
            this.mProgressBar = (ProgressBar) findViewById(R.id.progress_dialog_progressbar);
        }
        this.mProgressBar.setProgress(i);
    }

    public void setImage(int i) {
        this.mIconImageId = i;
        if (this.mImageView == null) {
            this.mImageView = (ImageView) findViewById(R.id.progress_dialog_image);
        }
        this.mImageView.setImageDrawable(this.mContext.getResources().getDrawable(this.mIconImageId));
    }

    public void setButtonText(String str) {
        ((Button) findViewById(R.id.progress_dialog_button)).setText(str);
    }

    public void setFooterVisibility(boolean z) {
        if (z) {
            if (!isFooterShown()) {
                this.mShowFooter = z;
                FrameLayout frameLayout = (FrameLayout) findViewById(R.id.progress_dialog_progressbar_layout);
                Button button = (Button) findViewById(R.id.progress_dialog_button);
                frameLayout.setVisibility(0);
                button.setVisibility(0);
                return;
            }
            return;
        }
        if (isFooterShown()) {
            this.mShowFooter = z;
            FrameLayout frameLayout2 = (FrameLayout) findViewById(R.id.progress_dialog_progressbar_layout);
            Button button2 = (Button) findViewById(R.id.progress_dialog_button);
            frameLayout2.setVisibility(8);
            button2.setVisibility(8);
        }
    }

    public boolean isFooterShown() {
        return this.mShowFooter;
    }

    public int getProgress() {
        return this.mProgressValue;
    }

    public IProgressDialogCallback getProgressDialogCallbackDelegate() {
        return this.mDelagate;
    }
}
