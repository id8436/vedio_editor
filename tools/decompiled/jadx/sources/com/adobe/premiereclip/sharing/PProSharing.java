package com.adobe.premiereclip.sharing;

import android.app.Activity;
import android.os.Handler;
import android.util.Log;
import com.adobe.premiereclip.R;
import com.adobe.premiereclip.dialogs.MessageDialog;
import com.adobe.premiereclip.metrics.Metrics;
import com.adobe.premiereclip.prexport.PrExportManager;
import com.adobe.premiereclip.project.Project;
import com.adobe.premiereclip.sharing.PrepareVideoDialog;

/* JADX INFO: loaded from: classes2.dex */
public class PProSharing implements PrExportManager.PrExportCallback {
    private Activity activity;
    private Listener listener;
    private PrExportDialog mPrExportDialog;
    private PrExportManager mPrExportManager;
    private MessageDialog notReadyDialog;
    private Project project;

    public interface Listener {
        void onFinished();

        void onStarted();
    }

    public PProSharing(Activity activity, Project project) {
        this.activity = activity;
        this.project = project;
    }

    public boolean isProjectReadyToExport() {
        if (this.mPrExportManager == null) {
            this.mPrExportManager = new PrExportManager(this.project, this, new Handler());
        }
        boolean zIsProjectReadyToExport = this.mPrExportManager.isProjectReadyToExport();
        if (zIsProjectReadyToExport && this.notReadyDialog != null) {
            this.notReadyDialog.dismiss();
        }
        return zIsProjectReadyToExport;
    }

    public boolean performSendToPPro(final boolean z, final Listener listener) {
        this.mPrExportManager = new PrExportManager(this.project, this, new Handler());
        this.listener = listener;
        Metrics.sharedInstance().didShowPremiereProExportUploadView();
        if (this.notReadyDialog == null) {
            this.notReadyDialog = new MessageDialog(this.activity, this.activity.getResources().getString(R.string.export_not_ready_title), this.activity.getResources().getString(R.string.export_not_ready_body), false);
        }
        if (!isProjectReadyToExport()) {
            Log.d("SharingOptionsActivity", "project not ready to export");
            Metrics.sharedInstance().didDenyUploadDueToMissingMediaInCloudForDestination("Premiere Pro");
            this.notReadyDialog.show();
            return false;
        }
        this.notReadyDialog.dismiss();
        if (listener != null) {
            listener.onStarted();
        }
        this.mPrExportManager.exportFilesToCC();
        this.mPrExportDialog = new PrExportDialog(this.activity, new PrepareVideoDialog.Listener() { // from class: com.adobe.premiereclip.sharing.PProSharing.1
            @Override // com.adobe.premiereclip.sharing.PrepareVideoDialog.Listener
            public void onPreparingCancelled() {
                if (PProSharing.this.mPrExportDialog != null) {
                    PProSharing.this.mPrExportDialog.dismiss();
                }
                PProSharing.this.mPrExportManager.cancelExport();
                if (listener != null) {
                    listener.onFinished();
                }
            }

            @Override // com.adobe.premiereclip.sharing.PrepareVideoDialog.Listener
            public void onSavingCancelled() {
            }

            @Override // com.adobe.premiereclip.sharing.PrepareVideoDialog.Listener
            public void onPublished() {
                if (z) {
                    Metrics.sharedInstance().didSendVideoUploadToPremiereProAfterSyncAlert("Premiere Pro");
                }
                if (listener != null) {
                    listener.onFinished();
                }
                Metrics.sharedInstance().didShowPremiereProExportSuccessView();
            }

            @Override // com.adobe.premiereclip.sharing.PrepareVideoDialog.Listener
            public void onDismissed() {
            }
        });
        this.mPrExportDialog.show();
        return true;
    }

    @Override // com.adobe.premiereclip.prexport.PrExportManager.PrExportCallback
    public void onPProExportComplete() {
        Log.d("PrExport", "ppro export success");
        if (this.mPrExportDialog != null) {
            this.mPrExportDialog.setPrepareProgress(100);
        }
    }

    @Override // com.adobe.premiereclip.prexport.PrExportManager.PrExportCallback
    public void onPProExportError(boolean z) {
        String string;
        Log.d("PrExport", "ppro export error");
        if (this.mPrExportDialog != null) {
            this.mPrExportDialog.dismiss();
        }
        if (this.listener != null) {
            this.listener.onFinished();
        }
        if (z) {
            string = this.activity.getResources().getString(R.string.user_quota_empty);
        } else {
            string = this.activity.getResources().getString(R.string.ppro_export_error);
        }
        Metrics.sharedInstance().didShowPremiereProExportFailureView();
        new MessageDialog(this.activity, this.activity.getResources().getString(R.string.ppro_export_failure_header), string, false).show();
    }

    @Override // com.adobe.premiereclip.prexport.PrExportManager.PrExportCallback
    public void onPProExportProgress(double d2) {
        Log.d("PrExport", "export progess is " + String.valueOf(d2));
        if (this.mPrExportDialog != null) {
            this.mPrExportDialog.setPrepareProgress((int) d2);
        }
    }

    @Override // com.adobe.premiereclip.prexport.PrExportManager.PrExportCallback
    public void onPProExportCancelled() {
        if (this.listener != null) {
            this.listener.onFinished();
        }
    }
}
