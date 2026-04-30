package com.adobe.premiereclip.mediabrowser.source;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Handler;
import android.util.Log;
import com.adobe.premiereclip.ClipPreferences;
import com.adobe.premiereclip.PremiereClipApplication;
import com.adobe.premiereclip.mediabrowser.GalleryActivity;
import com.adobe.premiereclip.mediabrowser.MediaModel;
import com.adobe.premiereclip.mediabrowser.MediaModelForRemote;
import com.adobe.premiereclip.mediabrowser.source.RemoteMediaSource;
import com.adobe.premiereclip.project.sequence.Clip;
import com.adobe.premiereclip.util.BitmapCache;
import com.adobe.premiereclip.util.Utilities;
import com.google.android.gms.common.AccountPicker;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.api.client.extensions.android.http.AndroidHttp;
import com.google.api.client.googleapis.auth.oauth2.GoogleCredential;
import com.google.api.client.googleapis.extensions.android.gms.auth.GoogleAccountCredential;
import com.google.api.client.http.HttpTransport;
import com.google.api.client.json.JsonFactory;
import com.google.api.client.json.gson.GsonFactory;
import com.google.gdata.client.photos.PicasawebService;
import com.google.gdata.data.photos.GphotoEntry;
import com.google.gdata.data.photos.UserFeed;
import com.google.gdata.util.ServiceException;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;
import javax.net.ssl.SSLException;
import org.apache.commons.io.FilenameUtils;

/* JADX INFO: loaded from: classes2.dex */
public class GooglePhotosSource extends RemoteMediaSource {
    private static final String API_PREFIX = "https://picasaweb.google.com/data/feed/api/user/";
    private static final int BUFFER_SIZE = 4096;
    private static final int REQUEST_ACCOUNT_PICKER = 2;
    private static String TAG = "GooglePhotosSource";
    private String accountName;
    private Context context;
    private GoogleAccountCredential credential;
    private GalleryActivity galleryActivity;
    private PicasawebService picasaService;
    private String picasa_scope = "oauth2:https://picasaweb.google.com/data/";
    private String token;

    /* JADX WARN: Removed duplicated region for block: B:16:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x009d  */
    @Override // com.adobe.premiereclip.mediabrowser.source.RemoteMediaSource
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void fetchDataInternal(final android.content.Context r8, final com.adobe.premiereclip.mediabrowser.source.GallerySource.GalleryDataListener r9, android.os.Handler r10) {
        /*
            Method dump skipped, instruction units count: 204
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.adobe.premiereclip.mediabrowser.source.GooglePhotosSource.fetchDataInternal(android.content.Context, com.adobe.premiereclip.mediabrowser.source.GallerySource$GalleryDataListener, android.os.Handler):void");
    }

    private List<GphotoEntry> getAlbums(Context context) throws IOException, ServiceException {
        HttpTransport httpTransportNewCompatibleTransport = AndroidHttp.newCompatibleTransport();
        GsonFactory gsonFactory = new GsonFactory();
        this.picasaService = new PicasawebService("pictureframe");
        this.picasaService.setOAuth2Credentials(new GoogleCredential.Builder().setJsonFactory((JsonFactory) gsonFactory).setTransport(httpTransportNewCompatibleTransport).build().setAccessToken(this.token));
        UserFeed userFeed = (UserFeed) this.picasaService.getFeed(new URL(API_PREFIX + ClipPreferences.getInstance(context).getString("googleAccount", null) + "?imgmax=d"), UserFeed.class);
        if (userFeed != null) {
            return userFeed.getEntries();
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x00f0  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0170  */
    @Override // com.adobe.premiereclip.mediabrowser.source.RemoteMediaSource
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void fetchAlbumInternal(final com.adobe.premiereclip.mediabrowser.Bucket r25, final com.adobe.premiereclip.mediabrowser.source.GallerySource.BucketLoadListener r26, android.os.Handler r27) {
        /*
            Method dump skipped, instruction units count: 381
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.adobe.premiereclip.mediabrowser.source.GooglePhotosSource.fetchAlbumInternal(com.adobe.premiereclip.mediabrowser.Bucket, com.adobe.premiereclip.mediabrowser.source.GallerySource$BucketLoadListener, android.os.Handler):void");
    }

    @Override // com.adobe.premiereclip.mediabrowser.source.RemoteMediaSource
    protected <T extends Utilities.IClipScrollAdapter & Utilities.ThumbnailLoadListener> void fetchThumbnailInternal(Clip.CLIP_TYPE clip_type, MediaModel mediaModel, long j, int i, int i2, final T t, Handler handler) {
        URL url;
        if (!this.galleryActivity.isCancelThumbnailDownload()) {
            MediaModelForRemote mediaModelForRemote = (MediaModelForRemote) mediaModel;
            Log.d(TAG, "downloading thumbnails");
            final String id = mediaModel.getId();
            try {
                if (mediaModelForRemote.getMediaType() == 1) {
                    url = new URL(mediaModelForRemote.getUrl() + "?imgmax=160");
                } else {
                    url = new URL(mediaModelForRemote.getThumbnailUrl() + "?imgmax=160");
                }
                final Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(url.openConnection().getInputStream());
                BitmapCache.addBitmapToDiskCache(id, bitmapDecodeStream);
                handler.post(new Runnable() { // from class: com.adobe.premiereclip.mediabrowser.source.GooglePhotosSource.12
                    @Override // java.lang.Runnable
                    public void run() {
                        BitmapCache.addBitmapToMemoryCache(id, bitmapDecodeStream);
                        ((Utilities.ThumbnailLoadListener) t).onSuccessImageLoad(id, bitmapDecodeStream);
                    }
                });
            } catch (IOException e2) {
                Log.d(TAG, "IOException in ThumbnailInternal");
                if (e2 instanceof SSLException) {
                    handler.post(new Runnable() { // from class: com.adobe.premiereclip.mediabrowser.source.GooglePhotosSource.13
                        @Override // java.lang.Runnable
                        public void run() {
                            ((Utilities.ThumbnailLoadListener) t).onFailureImageLoad("33");
                        }
                    });
                } else {
                    handler.post(new Runnable() { // from class: com.adobe.premiereclip.mediabrowser.source.GooglePhotosSource.14
                        @Override // java.lang.Runnable
                        public void run() {
                            ((Utilities.ThumbnailLoadListener) t).onFailureImageLoad("44");
                        }
                    });
                }
            }
        }
    }

    @Override // com.adobe.premiereclip.mediabrowser.source.RemoteMediaSource
    protected void fetchFilesInternal(MediaModel mediaModel, RemoteMediaSource.MediaFileListener mediaFileListener) {
        if (!this.galleryActivity.isCancelDownload()) {
            File file = new File(PremiereClipApplication.getContext().getApplicationInfo().dataDir + "/GooglePhotos");
            if (!file.exists()) {
                file.mkdirs();
            }
            File file2 = null;
            if (mediaModel.getMediaType() == 1) {
                try {
                    String str = "photo_" + mediaModel.getId() + "." + FilenameUtils.getExtension(((MediaModelForRemote) mediaModel).getTitle());
                    File file3 = new File(file, str);
                    if (!file3.exists()) {
                        URL url = new URL(((MediaModelForRemote) mediaModel).getUrl() + "?imgmax=1080");
                        File file4 = new File(PremiereClipApplication.getContext().getApplicationInfo().dataDir + "/GooglePhotos/temp");
                        if (!file4.exists()) {
                            file4.mkdirs();
                        }
                        File file5 = new File(file4, str);
                        try {
                            FileOutputStream fileOutputStream = new FileOutputStream(file5);
                            URLConnection uRLConnectionOpenConnection = url.openConnection();
                            InputStream inputStream = uRLConnectionOpenConnection.getInputStream();
                            double contentLength = uRLConnectionOpenConnection.getContentLength();
                            final ProgressKeeper progressKeeper = new ProgressKeeper();
                            Timer timer = new Timer();
                            timer.scheduleAtFixedRate(new TimerTask() { // from class: com.adobe.premiereclip.mediabrowser.source.GooglePhotosSource.15
                                @Override // java.util.TimerTask, java.lang.Runnable
                                public void run() {
                                    if (!GooglePhotosSource.this.galleryActivity.isCancelDownload()) {
                                        final int iCalculateProgressOffset = progressKeeper.calculateProgressOffset();
                                        GooglePhotosSource.this.galleryActivity.runOnUiThread(new Runnable() { // from class: com.adobe.premiereclip.mediabrowser.source.GooglePhotosSource.15.1
                                            @Override // java.lang.Runnable
                                            public void run() {
                                                GooglePhotosSource.this.galleryActivity.updateProgress(iCalculateProgressOffset);
                                            }
                                        });
                                    }
                                }
                            }, 0L, 500L);
                            byte[] bArr = new byte[1024];
                            long j = 0;
                            while (true) {
                                int i = inputStream.read(bArr);
                                if (i == -1 || this.galleryActivity.isCancelDownload()) {
                                    break;
                                }
                                j += (long) i;
                                double d2 = (100 * j) / contentLength;
                                if (d2 > 0.0d) {
                                    progressKeeper.setTotalProgress((int) d2);
                                }
                                fileOutputStream.write(bArr, 0, i);
                            }
                            fileOutputStream.flush();
                            fileOutputStream.close();
                            timer.cancel();
                            if (this.galleryActivity.isCancelDownload()) {
                                file5.delete();
                            }
                        } catch (Exception e2) {
                            if (e2 instanceof IOException) {
                                Log.d(TAG, "IO Exception in FilesInternal");
                                if (e2 instanceof SSLException) {
                                    mediaFileListener.onFileError(33, file5.getPath());
                                } else {
                                    Log.d(TAG, "else of IO exception");
                                    mediaFileListener.onFileError(44, file5.getPath());
                                }
                            }
                            e2.printStackTrace();
                        }
                    } else {
                        this.galleryActivity.runOnUiThread(new Runnable() { // from class: com.adobe.premiereclip.mediabrowser.source.GooglePhotosSource.16
                            @Override // java.lang.Runnable
                            public void run() {
                                GooglePhotosSource.this.galleryActivity.decreaseMaximumProgress();
                            }
                        });
                    }
                    mediaFileListener.onFilesAvailable(file3.toString());
                    return;
                } catch (MalformedURLException e3) {
                    e3.printStackTrace();
                    return;
                }
            }
            String str2 = "video_" + mediaModel.getId() + "." + FilenameUtils.getExtension(((MediaModelForRemote) mediaModel).getTitle());
            File file6 = new File(file, str2);
            try {
                if (!file6.exists()) {
                    URL url2 = new URL(((MediaModelForRemote) mediaModel).getUrl());
                    File file7 = new File(PremiereClipApplication.getContext().getApplicationInfo().dataDir + "/GooglePhotos/temp");
                    if (!file7.exists()) {
                        file7.mkdirs();
                    }
                    File file8 = new File(file7, str2);
                    try {
                        getByteData(url2, file8.getPath());
                        if (this.galleryActivity.isCancelDownload()) {
                            file8.delete();
                        }
                        file2 = file8;
                    } catch (IOException e4) {
                        e = e4;
                        file2 = file8;
                        e.printStackTrace();
                        if (e instanceof SSLException) {
                            Log.d(TAG, "IO Exception in FilesInternal");
                            mediaFileListener.onFileError(33, file2.getPath());
                            return;
                        } else {
                            mediaFileListener.onFileError(44, file2.getPath());
                            return;
                        }
                    }
                } else {
                    this.galleryActivity.runOnUiThread(new Runnable() { // from class: com.adobe.premiereclip.mediabrowser.source.GooglePhotosSource.17
                        @Override // java.lang.Runnable
                        public void run() {
                            GooglePhotosSource.this.galleryActivity.decreaseMaximumProgress();
                        }
                    });
                }
                mediaFileListener.onFilesAvailable(file6.toString());
            } catch (IOException e5) {
                e = e5;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x004b, code lost:
    
        org.apache.commons.io.IOUtils.closeQuietly(r13);
        org.apache.commons.io.IOUtils.closeQuietly((java.io.OutputStream) r6);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void getByteData(java.net.URL r19, java.lang.String r20) throws java.io.IOException {
        /*
            r18 = this;
            java.net.URLConnection r2 = r19.openConnection()
            int r2 = r2.getContentLength()
            double r10 = (double) r2
            com.adobe.premiereclip.mediabrowser.source.ProgressKeeper r12 = new com.adobe.premiereclip.mediabrowser.source.ProgressKeeper
            r12.<init>()
            java.io.InputStream r13 = r19.openStream()
            r8 = 0
            r2 = 4096(0x1000, float:5.74E-42)
            byte[] r14 = new byte[r2]
            java.util.Timer r2 = new java.util.Timer
            r2.<init>()
            com.adobe.premiereclip.mediabrowser.source.GooglePhotosSource$18 r3 = new com.adobe.premiereclip.mediabrowser.source.GooglePhotosSource$18
            r0 = r18
            r3.<init>()
            r4 = 0
            r6 = 500(0x1f4, double:2.47E-321)
            r2.scheduleAtFixedRate(r3, r4, r6)
            java.io.BufferedOutputStream r6 = new java.io.BufferedOutputStream
            java.io.FileOutputStream r3 = new java.io.FileOutputStream
            r0 = r20
            r3.<init>(r0)
            r4 = 4096(0x1000, float:5.74E-42)
            r6.<init>(r3, r4)
            r4 = r8
        L3a:
            int r3 = r13.read(r14)     // Catch: java.lang.Exception -> L70 java.lang.Throwable -> L88
            r7 = -1
            if (r3 == r7) goto L51
            r0 = r18
            com.adobe.premiereclip.mediabrowser.GalleryActivity r7 = r0.galleryActivity     // Catch: java.lang.Exception -> L70 java.lang.Throwable -> L88
            boolean r7 = r7.isCancelDownload()     // Catch: java.lang.Exception -> L70 java.lang.Throwable -> L88
            if (r7 == 0) goto L5b
            org.apache.commons.io.IOUtils.closeQuietly(r13)     // Catch: java.lang.Exception -> L70 java.lang.Throwable -> L88
            org.apache.commons.io.IOUtils.closeQuietly(r6)     // Catch: java.lang.Exception -> L70 java.lang.Throwable -> L88
        L51:
            org.apache.commons.io.IOUtils.closeQuietly(r13)
            org.apache.commons.io.IOUtils.closeQuietly(r6)
            r2.cancel()     // Catch: java.lang.Exception -> L83
        L5a:
            return
        L5b:
            double r8 = (double) r3
            double r4 = r4 + r8
            r8 = 4636737291354636288(0x4059000000000000, double:100.0)
            double r8 = r8 * r4
            double r8 = r8 / r10
            r16 = 0
            int r7 = (r8 > r16 ? 1 : (r8 == r16 ? 0 : -1))
            if (r7 <= 0) goto L6b
            int r7 = (int) r8
            r12.setTotalProgress(r7)     // Catch: java.lang.Exception -> L70 java.lang.Throwable -> L88
        L6b:
            r7 = 0
            r6.write(r14, r7, r3)     // Catch: java.lang.Exception -> L70 java.lang.Throwable -> L88
            goto L3a
        L70:
            r3 = move-exception
            r3.printStackTrace()     // Catch: java.lang.Throwable -> L88
            org.apache.commons.io.IOUtils.closeQuietly(r13)
            org.apache.commons.io.IOUtils.closeQuietly(r6)
            r2.cancel()     // Catch: java.lang.Exception -> L7e
            goto L5a
        L7e:
            r2 = move-exception
            r2.printStackTrace()
            goto L5a
        L83:
            r2 = move-exception
            r2.printStackTrace()
            goto L5a
        L88:
            r3 = move-exception
            org.apache.commons.io.IOUtils.closeQuietly(r13)
            org.apache.commons.io.IOUtils.closeQuietly(r6)
            r2.cancel()     // Catch: java.lang.Exception -> L93
        L92:
            throw r3
        L93:
            r2 = move-exception
            r2.printStackTrace()
            goto L92
        */
        throw new UnsupportedOperationException("Method not decompiled: com.adobe.premiereclip.mediabrowser.source.GooglePhotosSource.getByteData(java.net.URL, java.lang.String):void");
    }

    public void setCredential(Context context) {
        this.credential = new GoogleAccountCredential(context, this.picasa_scope);
        this.accountName = ClipPreferences.getInstance(this.context).getString("googleAccount", null);
        this.credential.setSelectedAccountName(this.accountName);
    }

    @Override // com.adobe.premiereclip.mediabrowser.source.RemoteMediaSource
    public void login(Context context, Activity activity, String str, RemoteMediaSource.LoginListener loginListener) {
        this.galleryActivity = (GalleryActivity) activity;
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

    @Override // com.adobe.premiereclip.mediabrowser.source.RemoteMediaSource
    public void logout(Context context, RemoteMediaSource.LogoutListener logoutListener) {
        ClipPreferences.getInstance(this.context).removePreference("googleAccount");
        logoutListener.onSuccessfulLogout();
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
        activity.runOnUiThread(new Runnable() { // from class: com.adobe.premiereclip.mediabrowser.source.GooglePhotosSource.19
            @Override // java.lang.Runnable
            public void run() {
                GooglePlayServicesUtil.getErrorDialog(i, activity, 0).show();
            }
        });
    }
}
