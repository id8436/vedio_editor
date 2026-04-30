package com.adobe.premiereclip.mediabrowser.source;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Handler;
import android.util.Log;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFileExtensions;
import com.adobe.premiereclip.ClipPreferences;
import com.adobe.premiereclip.PremiereClipApplication;
import com.adobe.premiereclip.mediabrowser.Bucket;
import com.adobe.premiereclip.mediabrowser.GalleryActivity;
import com.adobe.premiereclip.mediabrowser.MediaModel;
import com.adobe.premiereclip.mediabrowser.MediaModelForRemote;
import com.adobe.premiereclip.mediabrowser.ThumbnailData;
import com.adobe.premiereclip.mediabrowser.source.FileSystemMediaSource;
import com.adobe.premiereclip.metrics.Metrics;
import com.adobe.premiereclip.util.BitmapCache;
import com.adobe.premiereclip.util.Utilities;
import com.google.android.gms.auth.GoogleAuthException;
import com.google.android.gms.auth.UserRecoverableAuthException;
import com.google.android.gms.common.AccountPicker;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.api.client.extensions.android.http.AndroidHttp;
import com.google.api.client.googleapis.extensions.android.gms.auth.GoogleAccountCredential;
import com.google.api.client.googleapis.media.MediaHttpDownloader;
import com.google.api.client.googleapis.media.MediaHttpDownloaderProgressListener;
import com.google.api.client.json.jackson2.JacksonFactory;
import com.google.api.client.util.ExponentialBackOff;
import com.google.api.services.drive.Drive;
import com.google.api.services.drive.DriveScopes;
import com.google.api.services.drive.model.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import javax.net.ssl.SSLException;

/* JADX INFO: loaded from: classes2.dex */
public class GoogleDriveSource extends FileSystemMediaSource {
    private static final int REQUEST_ACCOUNT_PICKER = 2;
    private static final String[] SCOPES = {DriveScopes.DRIVE_METADATA_READONLY, DriveScopes.DRIVE, "https://www.googleapis.com/auth/drive.file"};
    private static final String TAG = "GoogleDriveSource";
    private String accountName;
    private Context context;
    private GoogleAccountCredential credential;
    private GalleryActivity galleryActivity;
    private Drive mService = null;

    @Override // com.adobe.premiereclip.mediabrowser.source.FileSystemMediaSource
    public void getChildrenInternal(Activity activity, Bucket bucket, Handler handler, final FileSystemMediaSource.FolderLoadListener folderLoadListener) {
        List<File> dataFromApi;
        MediaModelForRemote mediaModelForRemote;
        this.galleryActivity = (GalleryActivity) activity;
        try {
            this.credential.getToken();
        } catch (GoogleAuthException | IOException e2) {
            e2.printStackTrace();
            if (e2 instanceof UserRecoverableAuthException) {
                activity.startActivityForResult(((UserRecoverableAuthException) e2).getIntent(), 1);
                return;
            } else if (e2 instanceof IOException) {
                if (e2 instanceof SSLException) {
                    handler.post(new Runnable() { // from class: com.adobe.premiereclip.mediabrowser.source.GoogleDriveSource.1
                        @Override // java.lang.Runnable
                        public void run() {
                            folderLoadListener.onFolderLoadFailure(33);
                        }
                    });
                } else {
                    handler.post(new Runnable() { // from class: com.adobe.premiereclip.mediabrowser.source.GoogleDriveSource.2
                        @Override // java.lang.Runnable
                        public void run() {
                            folderLoadListener.onFolderLoadFailure(44);
                        }
                    });
                }
            }
        }
        this.mService = new Drive.Builder(AndroidHttp.newCompatibleTransport(), JacksonFactory.getDefaultInstance(), this.credential).setApplicationName("Premiere Clip").build();
        try {
            if (bucket == null) {
                dataFromApi = getDataFromApi("root");
            } else {
                dataFromApi = getDataFromApi(bucket.getId());
            }
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            final ArrayList arrayList3 = new ArrayList();
            if (dataFromApi != null && dataFromApi.size() != 0) {
                Log.d(Metrics.REMOTE_SOURCE_GOOGLE_DRIVE, "files size = " + dataFromApi.size());
                for (File file : dataFromApi) {
                    String mimeType = file.getMimeType();
                    if (mimeType.equals("application/vnd.google-apps.folder")) {
                        arrayList2.add(new ThumbnailData(new Bucket(file.getId(), file.getName())));
                    } else if (mimeType.contains("image/")) {
                        file.getImageMediaMetadata();
                        int i = 1;
                        if (file.getFileExtension().equals("png")) {
                            i = 2;
                        }
                        Log.d(TAG, "file size = " + file.getSize());
                        arrayList.add(new ThumbnailData(new MediaModelForRemote(file.getId(), file.getFileExtension(), i, 0L, file.getSize().longValue() / 1048576, null, 0.0d, 0.0d, file.getCreatedTime().getValue(), file.getName(), null, file.getThumbnailLink())));
                    } else if (mimeType.contains("video/")) {
                        File.VideoMediaMetadata videoMediaMetadata = file.getVideoMediaMetadata();
                        String fileExtension = file.getFileExtension();
                        Log.d(TAG, "file size = " + file.getSize());
                        long jLongValue = file.getSize().longValue() / 1048576;
                        if (fileExtension.equals(AdobeAssetFileExtensions.kAdobeFileExtensionTypeMP4) || fileExtension.equals(AdobeAssetFileExtensions.kAdobeFileExtensionTypeMOV) || fileExtension.equals("3gp") || fileExtension.equals("3g2")) {
                            if (videoMediaMetadata != null) {
                                mediaModelForRemote = new MediaModelForRemote(file.getId(), fileExtension, 3, videoMediaMetadata.getDurationMillis().longValue(), jLongValue, null, 0.0d, 0.0d, file.getCreatedTime().getValue(), file.getName(), null, file.getThumbnailLink());
                            } else {
                                mediaModelForRemote = new MediaModelForRemote(file.getId(), fileExtension, 3, 0L, jLongValue, null, 0.0d, 0.0d, file.getCreatedTime().getValue(), file.getName(), null, file.getThumbnailLink());
                            }
                            arrayList.add(new ThumbnailData(mediaModelForRemote));
                        }
                    }
                }
                arrayList3.addAll(arrayList2);
                if (arrayList2.size() % 2 != 0) {
                    arrayList3.add(new ThumbnailData(new Bucket("blank", "blank")));
                }
                arrayList3.addAll(arrayList);
                if (arrayList3.size() == 0) {
                    handler.post(new Runnable() { // from class: com.adobe.premiereclip.mediabrowser.source.GoogleDriveSource.3
                        @Override // java.lang.Runnable
                        public void run() {
                            if (!GoogleDriveSource.this.cancel) {
                                folderLoadListener.onFolderLoadFailure(22);
                            }
                        }
                    });
                    return;
                } else {
                    handler.post(new Runnable() { // from class: com.adobe.premiereclip.mediabrowser.source.GoogleDriveSource.4
                        @Override // java.lang.Runnable
                        public void run() {
                            if (!GoogleDriveSource.this.cancel) {
                                folderLoadListener.onFolderLoadSuccess(arrayList3);
                            }
                        }
                    });
                    return;
                }
            }
            handler.post(new Runnable() { // from class: com.adobe.premiereclip.mediabrowser.source.GoogleDriveSource.5
                @Override // java.lang.Runnable
                public void run() {
                    if (!GoogleDriveSource.this.cancel) {
                        folderLoadListener.onFolderLoadFailure(22);
                    }
                }
            });
        } catch (IOException e3) {
            if (e3 instanceof SSLException) {
                handler.post(new Runnable() { // from class: com.adobe.premiereclip.mediabrowser.source.GoogleDriveSource.6
                    @Override // java.lang.Runnable
                    public void run() {
                        folderLoadListener.onFolderLoadFailure(33);
                    }
                });
            } else {
                handler.post(new Runnable() { // from class: com.adobe.premiereclip.mediabrowser.source.GoogleDriveSource.7
                    @Override // java.lang.Runnable
                    public void run() {
                        folderLoadListener.onFolderLoadFailure(44);
                    }
                });
            }
        }
    }

    @Override // com.adobe.premiereclip.mediabrowser.source.FileSystemMediaSource
    protected void getAssetInternal(MediaModel mediaModel, FileSystemMediaSource.AssetLoadListener assetLoadListener) {
        String str;
        java.io.File file = null;
        FileOutputStream fileOutputStream = null;
        file = null;
        if (!this.galleryActivity.isCancelDownload()) {
            java.io.File file2 = new java.io.File(PremiereClipApplication.getContext().getApplicationInfo().dataDir + "/GoogleDrive");
            if (!file2.exists()) {
                file2.mkdirs();
            }
            String id = mediaModel.getId();
            if (mediaModel.getMediaType() == 1 || mediaModel.getMediaType() == 2) {
                str = "/photo_" + id + "." + mediaModel.getPath();
            } else {
                str = "/video_" + id + "." + mediaModel.getPath();
            }
            java.io.File file3 = new java.io.File(file2, str);
            try {
                if (!file3.exists()) {
                    java.io.File file4 = new java.io.File(PremiereClipApplication.getContext().getApplicationInfo().dataDir + "/GoogleDrive/temp");
                    if (!file4.exists()) {
                        file4.mkdirs();
                    }
                    java.io.File file5 = new java.io.File(file4, str);
                    try {
                        try {
                            fileOutputStream = new FileOutputStream(file5.getPath());
                        } catch (FileNotFoundException e2) {
                            e2.printStackTrace();
                        }
                        Log.d(TAG, "Starting image download...");
                        if (!this.galleryActivity.isCancelDownload()) {
                            Drive.Files.Get get = this.mService.files().get(id);
                            MediaHttpDownloader mediaHttpDownloader = get.getMediaHttpDownloader();
                            mediaHttpDownloader.setDirectDownloadEnabled(false);
                            int size = (int) (mediaModel.getSize() / 10);
                            if (size < 2) {
                                size = 2;
                            } else if (size > 30) {
                                size = 30;
                            }
                            Log.d(TAG, "chunk size = " + size);
                            mediaHttpDownloader.setChunkSize(size * 1024 * 1024);
                            mediaHttpDownloader.setProgressListener(new FileDownloadProgressListener());
                            get.executeMediaAndDownloadTo(fileOutputStream);
                        }
                        if (this.galleryActivity.isCancelDownload()) {
                            file5.delete();
                        }
                        Log.d(TAG, "" + file3.getPath());
                        Log.d(TAG, "image file saved!");
                        file = file5;
                    } catch (IOException e3) {
                        e = e3;
                        file = file5;
                    }
                } else {
                    this.galleryActivity.runOnUiThread(new Runnable() { // from class: com.adobe.premiereclip.mediabrowser.source.GoogleDriveSource.8
                        @Override // java.lang.Runnable
                        public void run() {
                            GoogleDriveSource.this.galleryActivity.decreaseMaximumProgress();
                        }
                    });
                }
                if (!this.galleryActivity.isCancelDownload()) {
                    assetLoadListener.onAssetLoadSuccess(file3.getPath());
                    return;
                }
                return;
            } catch (IOException e4) {
                e = e4;
            }
            e.printStackTrace();
            Log.d(TAG, "IO exception in assetinternal");
            if (e instanceof SSLException) {
                this.galleryActivity.setCancelDownload(true);
                assetLoadListener.onAssetLoadFailure(33, file.getPath());
            } else {
                assetLoadListener.onAssetLoadFailure(44, file.getPath());
            }
        }
    }

    class FileDownloadProgressListener implements MediaHttpDownloaderProgressListener {
        int lastProgress = 0;
        int finalProgress = 0;

        FileDownloadProgressListener() {
        }

        @Override // com.google.api.client.googleapis.media.MediaHttpDownloaderProgressListener
        public void progressChanged(MediaHttpDownloader mediaHttpDownloader) {
            Log.d(GoogleDriveSource.TAG, "download state: " + mediaHttpDownloader.getDownloadState());
            switch (mediaHttpDownloader.getDownloadState()) {
                case MEDIA_IN_PROGRESS:
                    if (!GoogleDriveSource.this.galleryActivity.isCancelDownload()) {
                        Log.d(GoogleDriveSource.TAG, "Download is in progress: " + (mediaHttpDownloader.getProgress() * 100.0d));
                        Log.d(GoogleDriveSource.TAG, "Last progress: " + this.lastProgress);
                        this.finalProgress = ((int) (mediaHttpDownloader.getProgress() * 100.0d)) - this.lastProgress;
                        Log.d(GoogleDriveSource.TAG, "Final progress: " + this.finalProgress);
                        this.lastProgress = (int) (mediaHttpDownloader.getProgress() * 100.0d);
                        GoogleDriveSource.this.galleryActivity.runOnUiThread(new Runnable() { // from class: com.adobe.premiereclip.mediabrowser.source.GoogleDriveSource.FileDownloadProgressListener.1
                            @Override // java.lang.Runnable
                            public void run() {
                                GoogleDriveSource.this.galleryActivity.updateProgress(FileDownloadProgressListener.this.finalProgress);
                            }
                        });
                    }
                    break;
                case MEDIA_COMPLETE:
                    if (!GoogleDriveSource.this.galleryActivity.isCancelDownload()) {
                        Log.d(GoogleDriveSource.TAG, "Download is Complete!");
                        this.finalProgress = 100 - this.lastProgress;
                        Log.d(GoogleDriveSource.TAG, "Final progress: " + this.finalProgress);
                        GoogleDriveSource.this.galleryActivity.runOnUiThread(new Runnable() { // from class: com.adobe.premiereclip.mediabrowser.source.GoogleDriveSource.FileDownloadProgressListener.2
                            @Override // java.lang.Runnable
                            public void run() {
                                GoogleDriveSource.this.galleryActivity.updateProgress(FileDownloadProgressListener.this.finalProgress);
                            }
                        });
                    }
                    break;
            }
        }
    }

    @Override // com.adobe.premiereclip.mediabrowser.source.FileSystemMediaSource
    protected <T extends Utilities.IClipScrollAdapter & Utilities.ThumbnailLoadListener> void getThumbnailInternal(MediaModel mediaModel, final T t, Handler handler) {
        final Bitmap bitmapDecodeStream = null;
        final String id = mediaModel.getId();
        try {
            bitmapDecodeStream = BitmapFactory.decodeStream(new URL(((MediaModelForRemote) mediaModel).getThumbnailUrl()).openConnection().getInputStream());
        } catch (IOException e2) {
            Log.d(TAG, "IO exception in thumbnail internal");
            if (e2 instanceof SSLException) {
                handler.post(new Runnable() { // from class: com.adobe.premiereclip.mediabrowser.source.GoogleDriveSource.9
                    @Override // java.lang.Runnable
                    public void run() {
                        ((Utilities.ThumbnailLoadListener) t).onFailureImageLoad("33");
                    }
                });
            } else {
                handler.post(new Runnable() { // from class: com.adobe.premiereclip.mediabrowser.source.GoogleDriveSource.10
                    @Override // java.lang.Runnable
                    public void run() {
                        ((Utilities.ThumbnailLoadListener) t).onFailureImageLoad("44");
                    }
                });
            }
        }
        handler.post(new Runnable() { // from class: com.adobe.premiereclip.mediabrowser.source.GoogleDriveSource.11
            @Override // java.lang.Runnable
            public void run() {
                BitmapCache.addBitmapToMemoryCache(id, bitmapDecodeStream);
                ((Utilities.ThumbnailLoadListener) t).onSuccessImageLoad(id, bitmapDecodeStream);
            }
        });
    }

    private List<File> getDataFromApi(String str) throws IOException {
        String str2 = "'" + str + "' in parents and trashed=false";
        Log.d(TAG, str2);
        String str3 = str2 + " and mimeType contains 'application/vnd.google-apps.folder' or mimeType contains 'image/' or mimeType contains 'video/'";
        return this.mService.files().list().setQ(str2).setFields2("nextPageToken, files").execute().getFiles();
    }

    @Override // com.adobe.premiereclip.mediabrowser.source.FileSystemMediaSource
    public void login(Context context, Activity activity, String str, FileSystemMediaSource.LoginListener loginListener) {
        this.context = context;
        if (checkGooglePlayServicesAvailable(activity)) {
            this.accountName = ClipPreferences.getInstance(this.context).getString("googleAccount", null);
            if (this.accountName != null) {
                setCredential(context);
                loginListener.onSuccessfulLogin();
            } else {
                pickUserAccount(activity, getAccountType(str));
            }
        }
    }

    public void setCredential(Context context) {
        this.accountName = ClipPreferences.getInstance(this.context).getString("googleAccount", null);
        this.credential = GoogleAccountCredential.usingOAuth2(context, Arrays.asList(SCOPES)).setBackOff(new ExponentialBackOff()).setSelectedAccountName(this.accountName);
    }

    @Override // com.adobe.premiereclip.mediabrowser.source.FileSystemMediaSource
    public void logout(Context context, FileSystemMediaSource.LogoutListener logoutListener) {
    }

    private void pickUserAccount(Activity activity, String str) {
        activity.startActivityForResult(AccountPicker.newChooseAccountIntent(null, null, new String[]{str}, true, null, null, null, null), 2);
    }

    private boolean checkGooglePlayServicesAvailable(Activity activity) {
        int iIsGooglePlayServicesAvailable = GooglePlayServicesUtil.isGooglePlayServicesAvailable(this.context);
        if (!GooglePlayServicesUtil.isUserRecoverableError(iIsGooglePlayServicesAvailable)) {
            return true;
        }
        showGooglePlayServicesAvailabilityErrorDialog(iIsGooglePlayServicesAvailable, activity);
        return false;
    }

    private static void showGooglePlayServicesAvailabilityErrorDialog(final int i, final Activity activity) {
        activity.runOnUiThread(new Runnable() { // from class: com.adobe.premiereclip.mediabrowser.source.GoogleDriveSource.12
            @Override // java.lang.Runnable
            public void run() {
                GooglePlayServicesUtil.getErrorDialog(i, activity, 0).show();
            }
        });
    }
}
