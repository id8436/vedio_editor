package com.adobe.premiereclip.sharing;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.util.Log;
import com.adobe.premiereclip.ClipPreferences;
import com.adobe.premiereclip.PremiereClipApplication;
import com.adobe.premiereclip.R;
import com.adobe.premiereclip.metrics.Metrics;
import com.adobe.premiereclip.project.ProjectManager;
import com.adobe.premiereclip.sharing.PrepareVideoDialog;
import com.adobe.premiereclip.util.Utilities;
import com.twitter.sdk.android.core.TwitterAuthConfig;
import com.twitter.sdk.android.core.ad;
import com.twitter.sdk.android.core.d;
import com.twitter.sdk.android.core.v;
import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
public class SharingManager {
    public static final int PUBLISH_TO_CCV = 3;
    public static final int SAVE_TO_CREATIVE_CLOUD = 1;
    public static final int SAVE_TO_GALLERY = 0;
    public static final int SHARE_TO_TWITTER = 4;
    public static final int SHARE_TO_TWITTER_VIA_CCV = 5;
    public static final int SHARE_TO_YOUTUBE = 2;
    public static final String kAnalyticsPrivacy_NotApplicable = "NotApplicable";
    public static final String kAnalyticsPrivacy_Private = "Private";
    public static final String kAnalyticsPrivacy_Public = "Public";
    public static final String kAnalyticsPrivacy_Unlisted = "Unlisted";
    public static final String kAnalyticsSharing_CC = "Creative Cloud";
    public static final String kAnalyticsSharing_CCV = "CCV";
    public static final String kAnalyticsSharing_Copy = "Copy URL to Clipboard";
    public static final String kAnalyticsSharing_Device = "CameraRoll";
    public static final String kAnalyticsSharing_Email = "Email";
    public static final String kAnalyticsSharing_Facebook = "Facebook";
    public static final String kAnalyticsSharing_Msg = "Message";
    public static final String kAnalyticsSharing_PPro = "Premiere Pro";
    public static final String kAnalyticsSharing_Twitter = "Twitter";
    public static final String kAnalyticsSharing_YouTube = "YouTube";
    private CCVPublish ccvPublish;
    private CreativeCloudExport creativeCloudExport;
    private int currentExportProgress;
    private File exportFile;
    private Listener listener;
    private Activity mActivity;
    private PrepareVideoDialog prepareVideoDialog;
    private String projKey;
    private TwitterUpload twitterUpload;
    private YouTubeExport youTubeExport;
    private int mode = 0;
    private boolean cancelling = false;

    public interface Listener {
        void onDismissed();

        void onEnded();
    }

    public interface SharingComponentListener {
        void onCompleted(boolean z, String str);

        void onProgress(double d2);
    }

    public SharingManager(Activity activity, String str) {
        this.mActivity = activity;
        this.projKey = str;
    }

    public void setMode(int i) {
        this.mode = i;
    }

    public int getMode() {
        return this.mode;
    }

    public void setYouTubeCredential(Context context, String str, String str2, String str3, String str4, String str5) {
        this.youTubeExport = new YouTubeExport(context, this.mActivity, str, str2, str3, str4, str5);
        Log.d("Sharing Manager", "setting youtube variables.");
    }

    public void setCCVPublishData(String str, boolean z) {
        this.ccvPublish = new CCVPublish(str, "", z);
    }

    public void setTwitterData(String str, String str2, String str3, String str4) {
        if (str2 == null || str3 == null) {
            v.a(new ad(PremiereClipApplication.getContext()).a(new d(3)).a(new TwitterAuthConfig(TwitterUpload.consumerKey, TwitterUpload.consumerSecret)).a(true).a());
        }
        this.twitterUpload = new TwitterUpload(str, str4, str2, str3);
    }

    public void startSharing(Listener listener) {
        this.listener = listener;
        this.currentExportProgress = 0;
        this.mActivity.getWindow().addFlags(128);
        Log.i("EditorActivity", "Prepare dialog");
        switch (this.mode) {
            case 0:
                Metrics.sharedInstance().didShowShareVideoViewForDestination("CameraRoll");
                this.prepareVideoDialog = new SaveToGalleryDialog(this.mActivity, getPrepareDialogListener(listener));
                break;
            case 1:
                Metrics.sharedInstance().didShowShareVideoViewForDestination("Creative Cloud");
                this.prepareVideoDialog = new SaveToCCDialog(this.mActivity, getPrepareDialogListener(listener));
                this.creativeCloudExport = new CreativeCloudExport();
                break;
            case 2:
                Metrics.sharedInstance().didTapExportForDestination("YouTube", this.youTubeExport.getSharingPrivacy());
                Metrics.sharedInstance().didShowShareVideoViewForDestination("YouTube");
                this.prepareVideoDialog = new SaveToYouTubeDialog(this.mActivity, getPrepareDialogListener(listener));
                break;
            case 3:
                Metrics.sharedInstance().didTapExportForDestination("CCV", this.ccvPublish.getUnlisted() ? kAnalyticsPrivacy_Unlisted : kAnalyticsPrivacy_Public);
                this.prepareVideoDialog = new PublishToCCVDialog(this.mActivity, getPrepareDialogListener(listener));
                break;
            case 4:
            case 5:
                this.prepareVideoDialog = new SaveToTwitterDialog(this.mActivity, getPrepareDialogListener(listener));
                break;
        }
        this.prepareVideoDialog.show();
    }

    public void setExportProgress(double d2) {
        this.currentExportProgress = (int) (100.0d * d2);
        if (this.prepareVideoDialog != null) {
            this.prepareVideoDialog.setPrepareProgress(this.currentExportProgress);
        }
    }

    private PrepareVideoDialog.Listener getPrepareDialogListener(final Listener listener) {
        return new PrepareVideoDialog.Listener() { // from class: com.adobe.premiereclip.sharing.SharingManager.1
            @Override // com.adobe.premiereclip.sharing.PrepareVideoDialog.Listener
            public void onPreparingCancelled() {
                SharingManager.this.cancelling = true;
                if (listener != null) {
                    listener.onEnded();
                }
            }

            @Override // com.adobe.premiereclip.sharing.PrepareVideoDialog.Listener
            public void onSavingCancelled() {
                SharingManager.this.cancelSaving();
                if (SharingManager.this.prepareVideoDialog != null) {
                    SharingManager.this.dismissDialog();
                }
            }

            @Override // com.adobe.premiereclip.sharing.PrepareVideoDialog.Listener
            public void onPublished() {
                switch (SharingManager.this.mode) {
                    case 0:
                    case 1:
                    case 2:
                    case 4:
                        if (listener != null) {
                            listener.onEnded();
                        }
                        break;
                    case 3:
                        String uploadId = SharingManager.this.ccvPublish.getUploadId();
                        String title = SharingManager.this.ccvPublish.getTitle();
                        Metrics.sharedInstance().didShowCCVExportSuccessView();
                        Intent intent = new Intent(SharingManager.this.mActivity, (Class<?>) SharingPublishActivity.class);
                        intent.putExtra("upload_id", uploadId);
                        intent.putExtra("project_key", SharingManager.this.projKey);
                        intent.putExtra("project_title", title);
                        SharingManager.this.mActivity.startActivity(intent);
                        break;
                    case 5:
                        SharingManager.this.twitterUpload.sendTweetViaIntent(SharingManager.this.mActivity);
                        break;
                }
            }

            @Override // com.adobe.premiereclip.sharing.PrepareVideoDialog.Listener
            public void onDismissed() {
                SharingManager.this.dismissDialog();
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dismissDialog() {
        if (this.prepareVideoDialog != null) {
            this.prepareVideoDialog.dismiss();
            this.prepareVideoDialog = null;
        }
        if (this.listener != null) {
            this.listener.onDismissed();
        }
    }

    public void onExportEnded(File file, boolean z) {
        int i;
        if (!z) {
            if (this.cancelling) {
                dismissDialog();
                this.cancelling = false;
            } else {
                if ((Utilities.is1080pExportSupported(this.mActivity) ? ClipPreferences.getInstance(this.mActivity).getExportResolution() : 720) > 720) {
                    i = R.string.sharing_error_high_res_message;
                } else {
                    i = R.string.sharing_error_message;
                }
                this.prepareVideoDialog.goToErrorState(this.mActivity.getResources().getString(R.string.sharing_error_title), this.mActivity.getResources().getString(i));
                return;
            }
        }
        Metrics.sharedInstance().didRenderVideoForExport();
        this.exportFile = file;
        Uri uriFromFile = Uri.fromFile(this.exportFile);
        String posterPath = ProjectManager.getInstance().getProjectWithKey(this.projKey).getPosterPath();
        switch (this.mode) {
            case 0:
                Utilities.runMediaScanner(this.mActivity, uriFromFile);
                this.exportFile = null;
                this.mActivity.getWindow().clearFlags(128);
                Metrics.sharedInstance().didShowShareVideoSuccessViewForDestination("CameraRoll", kAnalyticsPrivacy_NotApplicable);
                break;
            case 1:
                this.creativeCloudExport.upload(uriFromFile, this.exportFile.length(), getSharingComponentListener());
                break;
            case 2:
                Log.d("Sharing Manager", "start youtube upload");
                this.youTubeExport.startUpload(uriFromFile, getSharingComponentListener());
                break;
            case 3:
                this.ccvPublish.shareToCCV(uriFromFile, posterPath, getSharingComponentListener());
                break;
            case 4:
                this.twitterUpload.shareToTwitter(uriFromFile, posterPath, getSharingComponentListener(), false);
                break;
            case 5:
                this.twitterUpload.shareToTwitter(uriFromFile, posterPath, getSharingComponentListener(), true);
                break;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cancelSaving() {
        this.mActivity.getWindow().clearFlags(128);
        String str = "CameraRoll";
        switch (this.mode) {
            case 0:
                str = "CameraRoll";
                break;
            case 1:
                this.creativeCloudExport.cancelUpload();
                str = "Creative Cloud";
                break;
            case 2:
                Log.d("Sharing Manager", "Cancelling YouTube upload");
                this.youTubeExport.cancelUpload();
                str = "YouTube";
                break;
            case 3:
                this.ccvPublish.cancel();
                str = "CCV";
                break;
            case 4:
            case 5:
                this.twitterUpload.cancel();
                break;
        }
        if (this.prepareVideoDialog.isSaving()) {
            Metrics.sharedInstance().didCancelVideoUploadToExportDestination(str);
        } else if (!this.prepareVideoDialog.isSaved()) {
            Metrics.sharedInstance().didCancelVideoRenderForExport();
        }
        if (!this.prepareVideoDialog.isSaved()) {
            Metrics.sharedInstance().didShowShareVideoFailureViewForDestination(str, kAnalyticsPrivacy_NotApplicable);
        }
    }

    private SharingComponentListener getSharingComponentListener() {
        return new SharingComponentListener() { // from class: com.adobe.premiereclip.sharing.SharingManager.2
            @Override // com.adobe.premiereclip.sharing.SharingManager.SharingComponentListener
            public void onProgress(double d2) {
                int i = (int) d2;
                switch (SharingManager.this.mode) {
                    case 2:
                        i = (int) (100.0d * d2);
                        break;
                }
                if (SharingManager.this.prepareVideoDialog != null) {
                    SharingManager.this.prepareVideoDialog.setSavingProgress(i);
                }
            }

            @Override // com.adobe.premiereclip.sharing.SharingManager.SharingComponentListener
            public void onCompleted(boolean z, String str) {
                if (!z) {
                    if (SharingManager.this.prepareVideoDialog != null) {
                        String string = "";
                        switch (SharingManager.this.mode) {
                            case 1:
                                Metrics.sharedInstance().didShowShareVideoFailureViewForDestination("Creative Cloud", SharingManager.kAnalyticsPrivacy_NotApplicable);
                                string = SharingManager.this.mActivity.getResources().getString(R.string.sharing_error_cc_title);
                                break;
                            case 2:
                                Metrics.sharedInstance().didShowShareVideoFailureViewForDestination("YouTube", SharingManager.kAnalyticsPrivacy_NotApplicable);
                                string = SharingManager.this.mActivity.getResources().getString(R.string.sharing_error_youtube_title);
                                break;
                            case 3:
                                Metrics.sharedInstance().didShowShareVideoFailureViewForDestination("CCV", SharingManager.kAnalyticsPrivacy_NotApplicable);
                                string = SharingManager.this.mActivity.getResources().getString(R.string.sharing_error_ccv_title);
                                break;
                            case 4:
                            case 5:
                                string = SharingManager.this.mActivity.getResources().getString(R.string.sharing_error_twitter_title);
                                break;
                        }
                        SharingManager.this.prepareVideoDialog.goToErrorState(string, str);
                    }
                } else {
                    switch (SharingManager.this.mode) {
                        case 1:
                            Metrics.sharedInstance().didUploadVideoToExportDestination("Creative Cloud");
                            Metrics.sharedInstance().didShowShareVideoSuccessViewForDestination("Creative Cloud", SharingManager.kAnalyticsPrivacy_NotApplicable);
                            break;
                        case 2:
                            Metrics.sharedInstance().didUploadVideoToExportDestination("YouTube");
                            Metrics.sharedInstance().didShowShareVideoSuccessViewForDestination("YouTube", SharingManager.kAnalyticsPrivacy_NotApplicable);
                            break;
                        case 3:
                            Metrics.sharedInstance().didUploadVideoToExportDestination("CCV");
                            break;
                    }
                    if (SharingManager.this.prepareVideoDialog != null) {
                        SharingManager.this.prepareVideoDialog.setSavingProgress(100);
                    }
                }
                SharingManager.this.mActivity.getWindow().clearFlags(128);
                SharingManager.this.deleteFile();
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void deleteFile() {
        if (this.exportFile != null && this.exportFile.exists()) {
            this.exportFile.delete();
            Log.d("SharingManager", "export file deleted");
        }
        this.exportFile = null;
    }

    public void stop() {
        if (this.prepareVideoDialog != null && !this.prepareVideoDialog.isSaved()) {
            if (this.prepareVideoDialog.isSaving()) {
                cancelSaving();
                Metrics.sharedInstance().didCancelVideoRenderForExport();
            }
            Resources resources = this.mActivity.getResources();
            String string = "";
            switch (this.mode) {
                case 0:
                    Metrics.sharedInstance().didShowShareVideoFailureViewForDestination("CameraRoll", kAnalyticsPrivacy_NotApplicable);
                    string = resources.getString(R.string.sharing_error_background_gallery);
                    break;
                case 1:
                    Metrics.sharedInstance().didShowShareVideoFailureViewForDestination("Creative Cloud", kAnalyticsPrivacy_NotApplicable);
                    string = resources.getString(R.string.sharing_error_background_cc);
                    break;
                case 2:
                    Metrics.sharedInstance().didShowShareVideoFailureViewForDestination("YouTube", kAnalyticsPrivacy_NotApplicable);
                    string = resources.getString(R.string.sharing_error_background_youtube);
                    break;
                case 3:
                    Metrics.sharedInstance().didShowShareVideoFailureViewForDestination("CCV", kAnalyticsPrivacy_NotApplicable);
                    string = resources.getString(R.string.sharing_error_background_publish);
                    break;
                case 4:
                case 5:
                    string = resources.getString(R.string.sharing_error_background_twitter);
                    break;
            }
            this.prepareVideoDialog.goToErrorState(resources.getString(R.string.sharing_error_background_title), string);
            this.prepareVideoDialog = null;
        }
    }
}
