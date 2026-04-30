package com.adobe.premiereclip.sharing;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.util.Log;
import com.adobe.premiereclip.PremiereClipApplication;
import com.adobe.premiereclip.R;
import com.google.api.client.googleapis.extensions.android.gms.auth.UserRecoverableAuthIOException;
import com.google.api.client.googleapis.json.GoogleJsonResponseException;
import com.google.api.client.googleapis.media.MediaHttpUploader;
import com.google.api.client.googleapis.media.MediaHttpUploaderProgressListener;
import com.google.api.client.http.InputStreamContent;
import com.google.api.services.youtube.YouTube;
import com.google.api.services.youtube.model.Video;
import com.google.api.services.youtube.model.VideoSnippet;
import com.google.api.services.youtube.model.VideoStatus;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.concurrent.CancellationException;

/* JADX INFO: loaded from: classes2.dex */
public class YoutubeAsyncLoad extends YouTubeBaseAsync {
    static final String TAG = "YoutubeAsyncLoadTask";
    static boolean cancelled = false;
    static boolean completed = false;

    YoutubeAsyncLoad(YouTubeExport youTubeExport) {
        super(youTubeExport);
    }

    @Override // com.adobe.premiereclip.sharing.YouTubeBaseAsync
    protected Video doInBackground() throws IOException {
        try {
            File fileFromUri = getFileFromUri(this.activity.videoUri);
            Log.d(TAG, "You chose " + fileFromUri + " to upload.");
            Video video = new Video();
            VideoStatus videoStatus = new VideoStatus();
            videoStatus.setPrivacyStatus(this.videoAccess);
            video.setStatus(videoStatus);
            VideoSnippet videoSnippet = new VideoSnippet();
            videoSnippet.setTitle(this.title);
            videoSnippet.setDescription(this.description);
            if (this.tag.matches("")) {
                Log.d(TAG, "No tag added");
            } else {
                Log.d(TAG, "tag added = " + this.tag);
                ArrayList arrayList = new ArrayList();
                arrayList.add(this.tag);
                videoSnippet.setTags(arrayList);
            }
            video.setSnippet(videoSnippet);
            InputStreamContent inputStreamContent = new InputStreamContent("video/*", new BufferedInputStream(new FileInputStream(fileFromUri)));
            inputStreamContent.setLength(fileFromUri.length());
            Log.d(TAG, "videoFile.length()=" + fileFromUri.length());
            YouTube.Videos.Insert insert = this.youtube.videos().insert("snippet,statistics,status", video, inputStreamContent);
            MediaHttpUploader mediaHttpUploader = insert.getMediaHttpUploader();
            mediaHttpUploader.setDirectUploadEnabled(false);
            mediaHttpUploader.setChunkSize(1048576);
            mediaHttpUploader.setProgressListener(new MediaHttpUploaderProgressListener() { // from class: com.adobe.premiereclip.sharing.YoutubeAsyncLoad.1
                @Override // com.google.api.client.googleapis.media.MediaHttpUploaderProgressListener
                public void progressChanged(MediaHttpUploader mediaHttpUploader2) throws IOException {
                    switch (AnonymousClass2.$SwitchMap$com$google$api$client$googleapis$media$MediaHttpUploader$UploadState[mediaHttpUploader2.getUploadState().ordinal()]) {
                        case 1:
                            Log.d(YoutubeAsyncLoad.TAG, "Initiation Started");
                            return;
                        case 2:
                            Log.d(YoutubeAsyncLoad.TAG, "Initiation Completed");
                            return;
                        case 3:
                            if (YoutubeAsyncLoad.cancelled) {
                                Log.d(YoutubeAsyncLoad.TAG, "Upload Cancelled");
                                throw new CancellationException();
                            }
                            Log.d(YoutubeAsyncLoad.TAG, "Upload in progress");
                            Log.d(YoutubeAsyncLoad.TAG, "Upload percentage: " + mediaHttpUploader2.getProgress());
                            YoutubeAsyncLoad.this.publishProgress(new Integer[]{Integer.valueOf((int) (mediaHttpUploader2.getProgress() * 100.0d))});
                            return;
                        case 4:
                            Log.d(YoutubeAsyncLoad.TAG, "Upload Completed!");
                            YoutubeAsyncLoad.completed = true;
                            return;
                        case 5:
                            Log.d(YoutubeAsyncLoad.TAG, "Upload Not Started!");
                            return;
                        default:
                            return;
                    }
                }
            });
            return insert.execute();
        } catch (UserRecoverableAuthIOException e2) {
            Log.e(TAG, "UserExceptionError");
            Activity activity = this.activity.mActivity;
            Intent intent = e2.getIntent();
            YouTubeExport youTubeExport = this.activity;
            activity.startActivityForResult(intent, 1);
            return null;
        } catch (GoogleJsonResponseException e3) {
            Log.e(TAG, "GoogleJsonResponseException code: " + e3.getDetails().getCode() + " : " + e3.getDetails().getMessage());
            e3.printStackTrace();
            this.error = true;
            return null;
        } catch (IOException e4) {
            Log.e(TAG, "IOException: " + e4.getMessage());
            e4.printStackTrace();
            this.error = true;
            return null;
        } catch (CancellationException e5) {
            Log.e(TAG, "Cancelled by user");
            return null;
        } catch (Throwable th) {
            Log.e(TAG, "Throwable: " + th.getMessage());
            th.printStackTrace();
            this.error = true;
            return null;
        }
    }

    /* JADX INFO: renamed from: com.adobe.premiereclip.sharing.YoutubeAsyncLoad$2, reason: invalid class name */
    /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$com$google$api$client$googleapis$media$MediaHttpUploader$UploadState = new int[MediaHttpUploader.UploadState.values().length];

        static {
            try {
                $SwitchMap$com$google$api$client$googleapis$media$MediaHttpUploader$UploadState[MediaHttpUploader.UploadState.INITIATION_STARTED.ordinal()] = 1;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$google$api$client$googleapis$media$MediaHttpUploader$UploadState[MediaHttpUploader.UploadState.INITIATION_COMPLETE.ordinal()] = 2;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$google$api$client$googleapis$media$MediaHttpUploader$UploadState[MediaHttpUploader.UploadState.MEDIA_IN_PROGRESS.ordinal()] = 3;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$com$google$api$client$googleapis$media$MediaHttpUploader$UploadState[MediaHttpUploader.UploadState.MEDIA_COMPLETE.ordinal()] = 4;
            } catch (NoSuchFieldError e5) {
            }
            try {
                $SwitchMap$com$google$api$client$googleapis$media$MediaHttpUploader$UploadState[MediaHttpUploader.UploadState.NOT_STARTED.ordinal()] = 5;
            } catch (NoSuchFieldError e6) {
            }
        }
    }

    static void run(YouTubeExport youTubeExport) {
        new YoutubeAsyncLoad(youTubeExport).execute(new Void[0]);
    }

    static void abortUpload() {
        if (!completed) {
            cancelled = true;
        }
    }

    private File getFileFromUri(Uri uri) throws IOException {
        Log.d(TAG, "uri = " + uri);
        return new File(uri.getPath());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.adobe.premiereclip.sharing.YouTubeBaseAsync, android.os.AsyncTask
    public void onPostExecute(Video video) {
        if (this.error) {
            this.activity.mListener.onCompleted(false, PremiereClipApplication.getContext().getString(R.string.media_upload_generic));
        } else if (cancelled) {
            Log.d(TAG, "Upload Cancelled");
        } else {
            this.activity.mListener.onCompleted(true, null);
            Log.d(TAG, "Successful Upload");
        }
    }
}
