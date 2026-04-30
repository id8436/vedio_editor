package com.adobe.premiereclip.sharing;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.widget.Toast;
import com.adobe.premiereclip.PremiereClipApplication;
import com.adobe.premiereclip.R;
import com.adobe.premiereclip.sharing.SharingManager;
import com.google.api.client.extensions.android.http.AndroidHttp;
import com.google.api.client.googleapis.extensions.android.gms.auth.GoogleAccountCredential;
import com.google.api.client.http.HttpTransport;
import com.google.api.client.json.JsonFactory;
import com.google.api.client.json.gson.GsonFactory;
import com.google.api.services.youtube.YouTube;
import com.google.gdata.data.photos.GphotoAccess;

/* JADX INFO: loaded from: classes2.dex */
public class YouTubeExport {
    static final int REQUEST_AUTHORIZATION = 1;
    private static String VIDEO_FILE_FORMAT = "video/*";
    GoogleAccountCredential credential;
    public String mAccountName;
    public Activity mActivity;
    public Context mContext;
    public String mDescription;
    SharingManager.SharingComponentListener mListener;
    public String mTag;
    public String mTitle;
    public String mVideoAccess;
    public int numAsyncTasks;
    Uri videoUri;
    public YouTube youtube;
    final HttpTransport transport = AndroidHttp.newCompatibleTransport();
    final JsonFactory jsonFactory = new GsonFactory();
    public String mYoutube_scope = "oauth2:https://www.googleapis.com/auth/youtube.upload";

    public YouTubeExport(Context context, Activity activity, String str, String str2, String str3, String str4, String str5) {
        this.mAccountName = str;
        this.mVideoAccess = str2;
        this.mTitle = str3;
        this.mDescription = str4;
        this.mTag = str5;
        this.mActivity = activity;
        this.mContext = context;
        YoutubeAsyncLoad.cancelled = false;
        YoutubeAsyncLoad.completed = false;
    }

    public String getSharingPrivacy() {
        if (this.mVideoAccess.equals(GphotoAccess.Value.PRIVATE)) {
            return SharingManager.kAnalyticsPrivacy_Private;
        }
        if (this.mVideoAccess.equals("public")) {
            return SharingManager.kAnalyticsPrivacy_Public;
        }
        if (!this.mVideoAccess.equals("unlisted")) {
            return SharingManager.kAnalyticsPrivacy_NotApplicable;
        }
        return SharingManager.kAnalyticsPrivacy_Unlisted;
    }

    public void onPrepare(Uri uri, SharingManager.SharingComponentListener sharingComponentListener) {
        this.credential = new GoogleAccountCredential(this.mActivity, this.mYoutube_scope);
        this.credential.setSelectedAccountName(this.mAccountName);
        this.youtube = new YouTube.Builder(this.transport, this.jsonFactory, this.credential).setApplicationName("PremiereClipApplication").build();
        this.videoUri = uri;
        this.mListener = sharingComponentListener;
    }

    public void startUpload(Uri uri, SharingManager.SharingComponentListener sharingComponentListener) {
        onPrepare(uri, sharingComponentListener);
        YoutubeAsyncLoad.run(this);
    }

    public void cancelUpload() {
        if (!YoutubeAsyncLoad.completed) {
            YoutubeAsyncLoad.abortUpload();
        }
        notifyCancel();
    }

    public void notifyCancel() {
        Toast.makeText(this.mContext, PremiereClipApplication.getContext().getString(R.string.youtube_toast), 0).show();
    }

    protected void onActivityResult(int i, int i2, Intent intent) {
        switch (i) {
            case 1:
                if (i2 == -1) {
                    YoutubeAsyncLoad.run(this);
                }
                break;
        }
    }
}
