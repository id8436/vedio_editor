package com.adobe.premiereclip.sharing;

import android.app.Activity;
import android.content.Intent;
import android.util.Log;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.TranslateAnimation;
import android.widget.LinearLayout;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudManager;
import com.adobe.premiereclip.ClipPreferences;
import com.adobe.premiereclip.R;
import com.adobe.premiereclip.dcx.DCXReader;
import com.adobe.premiereclip.dialogs.AbstractDialog;
import com.adobe.premiereclip.dialogs.ConfirmDialog;
import com.adobe.premiereclip.dialogs.ExportResDialog;
import com.adobe.premiereclip.dialogs.MessageDialog;
import com.adobe.premiereclip.editor.Editor;
import com.adobe.premiereclip.metrics.Metrics;
import com.adobe.premiereclip.project.Project;
import com.adobe.premiereclip.project.sequence.Clip;
import com.adobe.premiereclip.sharing.PProSharing;
import com.adobe.premiereclip.sharing.SharingManager;
import com.adobe.premiereclip.util.MarshmallowUtils;
import com.adobe.premiereclip.util.Utilities;

/* JADX INFO: loaded from: classes2.dex */
public class SharingOptions implements PProSharing.Listener {
    public static final int CCV_PUBLISH = 20001;
    private static final long CC_FHD_EXPORT_DURATION_LIMIT = 900000000;
    private static final long CC_HD_EXPORT_DURATION_LIMIT = 1440000000;
    private static final long TWITTER_FHD_EXPORT_DURATION_LIMIT = 140000000;
    private static final long TWITTER_HD_EXPORT_DURATION_LIMIT = 140000000;
    public static final int TWITTER_SETTINGS = 20003;
    public static final int YOUTUBE_SETTINGS = 20002;
    private Activity activity;
    private View background;
    private Animation closeAnimation;
    private Listener listener;
    private boolean open;
    private Animation openAnimation;
    private PProSharing pProSharing;
    private Project project;
    private boolean sharingInProgress;
    private SharingManager sharingManager;
    private LinearLayout sharingOptionsLayout;
    private final int MY_PERMISSIONS_REQUEST_WRITE_EXTERNAL_STORAGE_SHARE_PUBLISH = 51;
    private final int MY_PERMISSIONS_REQUEST_WRITE_EXTERNAL_STORAGE_SHARE_GALLERY = 52;
    private final int MY_PERMISSIONS_REQUEST_WRITE_EXTERNAL_STORAGE_SHARE_CC = 53;
    private final int MY_PERMISSIONS_REQUEST_WRITE_EXTERNAL_STORAGE_SHARE_YOUTUBE = 54;
    private final int MY_PERMISSIONS_REQUEST_WRITE_EXTERNAL_STORAGE_SHARE_TWITTER = 55;

    public interface Listener {
        void onSharingEnded();

        void onSharingOptionsClosed();

        void onSharingStarted(boolean z);
    }

    public SharingOptions(Activity activity, Project project) {
        this.activity = activity;
        this.project = project;
        this.sharingManager = new SharingManager(activity, project.projectKey);
        this.pProSharing = new PProSharing(activity, project);
        this.sharingOptionsLayout = (LinearLayout) activity.findViewById(R.id.sharing_options_view);
        if (AdobeCloudManager.getSharedCloudManager().getDefaultCloud().isPrivateCloud()) {
            this.sharingOptionsLayout.findViewById(R.id.sharing_picker_publish).setVisibility(8);
        }
        this.background = activity.findViewById(R.id.sharing_option_background);
        this.background.setVisibility(4);
        this.sharingOptionsLayout.setVisibility(4);
        this.open = false;
        this.sharingInProgress = false;
    }

    public void setListener(Listener listener) {
        this.listener = listener;
    }

    public void openView() {
        if (!this.open) {
            this.open = true;
            if (animationsNotInitialized()) {
                initializeAnimations();
            }
            this.background.setVisibility(0);
            this.sharingOptionsLayout.setVisibility(0);
            this.closeAnimation.cancel();
            this.sharingOptionsLayout.startAnimation(this.openAnimation);
        }
    }

    public void closeView() {
        if (this.open) {
            this.open = false;
            this.openAnimation.cancel();
            this.background.setVisibility(4);
            this.sharingOptionsLayout.startAnimation(this.closeAnimation);
        }
    }

    private boolean canAddBumper() {
        return true;
    }

    public boolean isOpen() {
        return this.open;
    }

    private boolean animationsNotInitialized() {
        return this.openAnimation == null || this.closeAnimation == null;
    }

    public void startSharing() {
        if (this.listener != null) {
            this.listener.onSharingOptionsClosed();
        }
        Clip clipCreateBumperClip = Editor.createBumperClip(DCXReader.getBumperPath(this.project.projectKey));
        long durationUs = (clipCreateBumperClip == null ? 0L : clipCreateBumperClip.getDurationUs()) + this.project.getSequence().getSequenceDurationUs();
        int exportResolution = ClipPreferences.getInstance(this.activity).getExportResolution();
        if (this.sharingManager.getMode() == 1) {
            if (Utilities.is1080pExportSupported(this.activity) && exportResolution == 1080 && durationUs > CC_FHD_EXPORT_DURATION_LIMIT) {
                new MessageDialog(this.activity, this.activity.getResources().getString(R.string.sharing_error_cc_title), this.activity.getResources().getString(R.string.sharing_error_cc_high_res_message), false).show();
                return;
            } else if (exportResolution == 720 && durationUs > CC_HD_EXPORT_DURATION_LIMIT) {
                new MessageDialog(this.activity, this.activity.getResources().getString(R.string.sharing_error_cc_title), this.activity.getResources().getString(R.string.sharing_error_cc_message), false).show();
                return;
            }
        }
        startSharingProcess();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startSharingProcess() {
        this.sharingInProgress = true;
        this.sharingManager.startSharing(new SharingManager.Listener() { // from class: com.adobe.premiereclip.sharing.SharingOptions.1
            @Override // com.adobe.premiereclip.sharing.SharingManager.Listener
            public void onEnded() {
                if (SharingOptions.this.listener != null) {
                    SharingOptions.this.listener.onSharingEnded();
                }
            }

            @Override // com.adobe.premiereclip.sharing.SharingManager.Listener
            public void onDismissed() {
                SharingOptions.this.sharingInProgress = false;
                SharingOptions.this.activity.runOnUiThread(new Runnable() { // from class: com.adobe.premiereclip.sharing.SharingOptions.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        SharingOptions.this.mayBeExportPPro();
                    }
                });
            }
        });
        if (this.listener != null) {
            this.listener.onSharingStarted(canAddBumper());
        }
    }

    public SharingManager getSharingManager() {
        return this.sharingManager;
    }

    private boolean canStartSharing() {
        return Utilities.isConnectedToInternet(this.activity);
    }

    public void onOptionSelected(View view) {
        if (!this.sharingInProgress) {
            if (view.getId() != R.id.sharing_picker_savegallery && !canStartSharing()) {
                new MessageDialog(this.activity, this.activity.getResources().getString(R.string.no_internet_error_title), this.activity.getResources().getString(R.string.no_internet_error_body), false).show();
                return;
            }
            final int id = view.getId();
            if (Utilities.is1080pExportSupported(this.activity) && !ClipPreferences.getInstance(this.activity).isDefaultExportResolutionSet() && (id == R.id.sharing_picker_savegallery || id == R.id.sharing_picker_publish || id == R.id.sharing_picker_savecc || id == R.id.sharing_picker_youtube || id == R.id.sharing_picker_twitter)) {
                ExportResDialog exportResDialog = new ExportResDialog(this.activity);
                exportResDialog.setOnContinueListener(new AbstractDialog.OnClickListener() { // from class: com.adobe.premiereclip.sharing.SharingOptions.2
                    @Override // com.adobe.premiereclip.dialogs.AbstractDialog.OnClickListener
                    public void onClick() {
                        SharingOptions.this.continueSharing(id);
                    }
                });
                exportResDialog.show();
                exportResDialog.setSelection();
                if (this.listener != null) {
                    this.listener.onSharingOptionsClosed();
                    return;
                }
                return;
            }
            continueSharing(id);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void continueSharing(int i) {
        switch (i) {
            case R.id.sharing_picker_savegallery /* 2131887457 */:
                if (MarshmallowUtils.getPermission(52, "android.permission.WRITE_EXTERNAL_STORAGE", this.activity)) {
                    shareSaveGallery();
                }
                break;
            case R.id.sharing_picker_savecc /* 2131887458 */:
                if (MarshmallowUtils.getPermission(53, "android.permission.WRITE_EXTERNAL_STORAGE", this.activity)) {
                    shareSaveCC();
                }
                break;
            case R.id.sharing_picker_publish /* 2131887459 */:
                if (MarshmallowUtils.getPermission(51, "android.permission.WRITE_EXTERNAL_STORAGE", this.activity)) {
                    sharePublish();
                }
                break;
            case R.id.sharing_picker_editppro /* 2131887460 */:
                Metrics.sharedInstance().didTapExportForDestination("Premiere Pro", SharingManager.kAnalyticsPrivacy_NotApplicable);
                if (this.listener != null) {
                    this.listener.onSharingOptionsClosed();
                }
                this.project.setPendingSendPPro(this.pProSharing.performSendToPPro(false, this) ? false : true);
                break;
            case R.id.sharing_picker_youtube /* 2131887461 */:
                if (MarshmallowUtils.getPermission(54, "android.permission.WRITE_EXTERNAL_STORAGE", this.activity)) {
                    shareYoutube();
                }
                break;
            case R.id.sharing_picker_twitter /* 2131887462 */:
                if (MarshmallowUtils.getPermission(55, "android.permission.WRITE_EXTERNAL_STORAGE", this.activity)) {
                    shareTwitter();
                }
                break;
        }
    }

    public void shareSaveGallery() {
        Metrics.sharedInstance().didTapExportForDestination("CameraRoll", SharingManager.kAnalyticsPrivacy_NotApplicable);
        this.sharingManager.setMode(0);
        startSharing();
    }

    public void sharePublish() {
        if (this.listener != null) {
            this.listener.onSharingOptionsClosed();
        }
        Intent intent = new Intent(this.activity, (Class<?>) PublishInfoActivity.class);
        intent.putExtra("project_key", this.project.projectKey);
        this.activity.startActivityForResult(intent, CCV_PUBLISH);
        this.activity.overridePendingTransition(R.anim.push_left_in, R.anim.push_left_out);
    }

    public void shareSaveCC() {
        Metrics.sharedInstance().didTapExportForDestination("Creative Cloud", SharingManager.kAnalyticsPrivacy_NotApplicable);
        this.sharingManager.setMode(1);
        startSharing();
    }

    public void shareYoutube() {
        if (this.listener != null) {
            this.listener.onSharingOptionsClosed();
        }
        Intent intent = new Intent(this.activity, (Class<?>) YouTubeSettingsActivity.class);
        intent.putExtra("project_key", this.project.projectKey);
        intent.putExtra("project_name", this.project.getProjectExportName());
        this.activity.startActivityForResult(intent, YOUTUBE_SETTINGS);
        this.activity.overridePendingTransition(R.anim.push_left_in, R.anim.push_left_out);
    }

    public void shareTwitter() {
        if (this.listener != null) {
            this.listener.onSharingOptionsClosed();
        }
        Clip clipCreateBumperClip = Editor.createBumperClip(DCXReader.getBumperPath(this.project.projectKey));
        long durationUs = (clipCreateBumperClip == null ? 0L : clipCreateBumperClip.getDurationUs()) + this.project.getSequence().getSequenceDurationUs();
        int exportResolution = ClipPreferences.getInstance(this.activity).getExportResolution();
        if ((Utilities.is1080pExportSupported(this.activity) && exportResolution == 1080 && durationUs > 140000000) || (exportResolution == 720 && durationUs > 140000000)) {
            this.sharingManager.setTwitterData(this.project.getProjectExportName(), null, null, null);
            final ConfirmDialog confirmDialog = new ConfirmDialog(this.activity, this.activity.getResources().getString(R.string.sharing_twitter_long_title), this.activity.getResources().getString(R.string.sharing_twitter_long_description), false);
            confirmDialog.setAcceptButton(this.activity.getResources().getString(R.string.continue_export), new AbstractDialog.OnClickListener() { // from class: com.adobe.premiereclip.sharing.SharingOptions.3
                @Override // com.adobe.premiereclip.dialogs.AbstractDialog.OnClickListener
                public void onClick() {
                    SharingOptions.this.sharingManager.setMode(5);
                    SharingOptions.this.startSharingProcess();
                }
            });
            confirmDialog.setRejectButton(this.activity.getResources().getString(R.string.sharing_cancel_btn), new AbstractDialog.OnClickListener() { // from class: com.adobe.premiereclip.sharing.SharingOptions.4
                @Override // com.adobe.premiereclip.dialogs.AbstractDialog.OnClickListener
                public void onClick() {
                    confirmDialog.dismiss();
                }
            });
            confirmDialog.show();
            return;
        }
        Intent intent = new Intent(this.activity, (Class<?>) TwitterSettingsActivity.class);
        intent.putExtra("project_key", this.project.projectKey);
        intent.putExtra("project_name", this.project.getProjectExportName());
        this.activity.startActivityForResult(intent, TWITTER_SETTINGS);
        this.activity.overridePendingTransition(R.anim.push_left_in, R.anim.push_left_out);
    }

    public void mayBeExportPPro() {
        if (!this.sharingInProgress && this.project.isPendingSendPPro() && this.pProSharing.isProjectReadyToExport()) {
            this.project.setPendingSendPPro(false);
            showRetryPProDialog();
        }
    }

    private void showRetryPProDialog() {
        Log.i("PProRetry", "retrying dialog");
        ConfirmDialog confirmDialog = new ConfirmDialog(this.activity, this.activity.getResources().getString(R.string.send_ppro_retry_title), this.activity.getResources().getString(R.string.send_ppro_retry_body), false);
        confirmDialog.setAcceptButton(this.activity.getResources().getString(R.string.send_ppro_retry_button), new AbstractDialog.OnClickListener() { // from class: com.adobe.premiereclip.sharing.SharingOptions.5
            @Override // com.adobe.premiereclip.dialogs.AbstractDialog.OnClickListener
            public void onClick() {
                SharingOptions.this.pProSharing.performSendToPPro(true, SharingOptions.this);
            }
        });
        confirmDialog.setRejectButton(this.activity.getResources().getString(R.string.cancel_ppro_retry_button), new AbstractDialog.OnClickListener() { // from class: com.adobe.premiereclip.sharing.SharingOptions.6
            @Override // com.adobe.premiereclip.dialogs.AbstractDialog.OnClickListener
            public void onClick() {
                Metrics.sharedInstance().didCancelVideoUploadToPremiereProAfterSyncAlert("Premiere Pro");
            }
        });
        Metrics.sharedInstance().didShowPopUpForUploadToPremiereProAfterSyncAlert("Premiere Pro");
        confirmDialog.show();
    }

    public void stop() {
        if (this.listener != null) {
            this.listener.onSharingOptionsClosed();
        }
        this.sharingManager.stop();
    }

    private void initializeAnimations() {
        this.openAnimation = new TranslateAnimation(0.0f, 0.0f, this.sharingOptionsLayout.getHeight(), 0.0f);
        this.openAnimation.setDuration(200);
        this.closeAnimation = new TranslateAnimation(0.0f, 0.0f, 0.0f, this.sharingOptionsLayout.getHeight());
        this.closeAnimation.setDuration(200);
        this.closeAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.adobe.premiereclip.sharing.SharingOptions.7
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                SharingOptions.this.sharingOptionsLayout.setVisibility(4);
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }
        });
    }

    @Override // com.adobe.premiereclip.sharing.PProSharing.Listener
    public void onStarted() {
        this.sharingInProgress = true;
    }

    @Override // com.adobe.premiereclip.sharing.PProSharing.Listener
    public void onFinished() {
        this.sharingInProgress = false;
    }
}
