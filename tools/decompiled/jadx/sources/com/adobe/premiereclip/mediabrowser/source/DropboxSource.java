package com.adobe.premiereclip.mediabrowser.source;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Handler;
import android.util.Log;
import android.webkit.MimeTypeMap;
import com.adobe.premiereclip.PremiereClipApplication;
import com.adobe.premiereclip.R;
import com.adobe.premiereclip.mediabrowser.Bucket;
import com.adobe.premiereclip.mediabrowser.BucketForDropbox;
import com.adobe.premiereclip.mediabrowser.GalleryActivity;
import com.adobe.premiereclip.mediabrowser.MediaModel;
import com.adobe.premiereclip.mediabrowser.MediaModelForRemote;
import com.adobe.premiereclip.mediabrowser.ThumbnailData;
import com.adobe.premiereclip.mediabrowser.source.FileSystemMediaSource;
import com.adobe.premiereclip.mediabrowser.source.ProgressOutputStream;
import com.adobe.premiereclip.util.BitmapCache;
import com.adobe.premiereclip.util.Utilities;
import com.dropbox.core.DbxDownloader;
import com.dropbox.core.DbxException;
import com.dropbox.core.NetworkIOException;
import com.dropbox.core.v2.files.DbxUserFilesRequests;
import com.dropbox.core.v2.files.FileMetadata;
import com.dropbox.core.v2.files.FolderMetadata;
import com.dropbox.core.v2.files.ListFolderResult;
import com.dropbox.core.v2.files.Metadata;
import com.dropbox.core.v2.files.ThumbnailSize;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class DropboxSource extends FileSystemMediaSource {
    private static final String TAG = "Dropbox Source";
    private Context context;
    private DbxUserFilesRequests dbxUserFilesRequests;
    private GalleryActivity galleryActivity;

    @Override // com.adobe.premiereclip.mediabrowser.source.FileSystemMediaSource
    protected void getChildrenInternal(Activity activity, Bucket bucket, Handler handler, final FileSystemMediaSource.FolderLoadListener folderLoadListener) throws DbxException {
        String path;
        this.galleryActivity = (GalleryActivity) activity;
        ListFolderResult listFolderResultListFolder = null;
        if (bucket == null) {
            path = "";
        } else {
            path = ((BucketForDropbox) bucket).getPath();
        }
        try {
            this.dbxUserFilesRequests = GalleryActivity.getClient().files();
            listFolderResultListFolder = this.dbxUserFilesRequests.listFolder(path);
        } catch (DbxException e2) {
            if (e2 instanceof NetworkIOException) {
                handler.post(new Runnable() { // from class: com.adobe.premiereclip.mediabrowser.source.DropboxSource.1
                    @Override // java.lang.Runnable
                    public void run() {
                        folderLoadListener.onFolderLoadFailure(33);
                    }
                });
            } else {
                handler.post(new Runnable() { // from class: com.adobe.premiereclip.mediabrowser.source.DropboxSource.2
                    @Override // java.lang.Runnable
                    public void run() {
                        folderLoadListener.onFolderLoadFailure(44);
                    }
                });
            }
            e2.printStackTrace();
        }
        List<Metadata> entries = null;
        if (listFolderResultListFolder != null) {
            entries = listFolderResultListFolder.getEntries();
        }
        if (entries != null && entries.size() > 0) {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            final ArrayList arrayList3 = new ArrayList();
            for (Metadata metadata : entries) {
                Log.i(TAG, "Item Name = " + metadata.getName());
                if (metadata instanceof FolderMetadata) {
                    arrayList2.add(new ThumbnailData(new BucketForDropbox(((FolderMetadata) metadata).getId(), metadata.getName(), metadata.getPathDisplay())));
                } else if (metadata instanceof FileMetadata) {
                    String mimeTypeFromExtension = MimeTypeMap.getSingleton().getMimeTypeFromExtension(metadata.getName().substring(metadata.getName().indexOf(".") + 1));
                    if (mimeTypeFromExtension != null && mimeTypeFromExtension.startsWith("image/")) {
                        String name = metadata.getName();
                        int i = 1;
                        if (name.endsWith("png")) {
                            i = 2;
                        }
                        arrayList.add(new ThumbnailData(new MediaModelForRemote(((FileMetadata) metadata).getId(), metadata.getPathDisplay(), i, 0L, 0L, null, 0.0d, 0.0d, 0L, name, null, null)));
                    } else if (mimeTypeFromExtension != null && mimeTypeFromExtension.startsWith("video/")) {
                        String name2 = metadata.getName();
                        if (name2.endsWith(".mp4") || name2.endsWith(".mov") || name2.endsWith(".3gp") || name2.endsWith(".3g2")) {
                            try {
                                Log.d(TAG, "media path = " + metadata.getPathDisplay());
                                MediaModelForRemote mediaModelForRemote = new MediaModelForRemote(((FileMetadata) metadata).getId(), metadata.getPathDisplay(), 3, 0L, 0L, null, 0.0d, 0.0d, 0L, name2, this.dbxUserFilesRequests.getTemporaryLink(metadata.getPathDisplay()).getLink(), null);
                                Log.d(TAG, "Video link: " + this.dbxUserFilesRequests.getTemporaryLink(metadata.getPathDisplay()).getLink());
                                arrayList.add(new ThumbnailData(mediaModelForRemote));
                            } catch (Exception e3) {
                                if (e3 instanceof DbxException) {
                                    if (e3 instanceof NetworkIOException) {
                                        handler.post(new Runnable() { // from class: com.adobe.premiereclip.mediabrowser.source.DropboxSource.3
                                            @Override // java.lang.Runnable
                                            public void run() {
                                                folderLoadListener.onFolderLoadFailure(33);
                                            }
                                        });
                                    } else {
                                        handler.post(new Runnable() { // from class: com.adobe.premiereclip.mediabrowser.source.DropboxSource.4
                                            @Override // java.lang.Runnable
                                            public void run() {
                                                folderLoadListener.onFolderLoadFailure(44);
                                            }
                                        });
                                    }
                                }
                                e3.printStackTrace();
                            }
                        }
                    }
                }
            }
            arrayList3.addAll(arrayList2);
            if (arrayList2.size() % 2 != 0) {
                arrayList3.add(new ThumbnailData(new Bucket("blank", "blank")));
            }
            arrayList3.addAll(arrayList);
            if (arrayList3.size() == 0) {
                handler.post(new Runnable() { // from class: com.adobe.premiereclip.mediabrowser.source.DropboxSource.5
                    @Override // java.lang.Runnable
                    public void run() {
                        if (!DropboxSource.this.cancel) {
                            folderLoadListener.onFolderLoadFailure(22);
                        }
                    }
                });
                return;
            } else {
                handler.post(new Runnable() { // from class: com.adobe.premiereclip.mediabrowser.source.DropboxSource.6
                    @Override // java.lang.Runnable
                    public void run() {
                        if (!DropboxSource.this.cancel) {
                            folderLoadListener.onFolderLoadSuccess(arrayList3);
                        }
                    }
                });
                return;
            }
        }
        handler.post(new Runnable() { // from class: com.adobe.premiereclip.mediabrowser.source.DropboxSource.7
            @Override // java.lang.Runnable
            public void run() {
                if (!DropboxSource.this.cancel) {
                    folderLoadListener.onFolderLoadFailure(22);
                }
            }
        });
    }

    @Override // com.adobe.premiereclip.mediabrowser.source.FileSystemMediaSource
    protected void getAssetInternal(MediaModel mediaModel, FileSystemMediaSource.AssetLoadListener assetLoadListener) {
        if (!this.galleryActivity.isCancelDownload()) {
            String str = PremiereClipApplication.getContext().getApplicationInfo().dataDir + "/Dropbox/files/";
            File file = new File(str);
            if (!file.exists()) {
                file.mkdirs();
            }
            String id = mediaModel.getId();
            String title = ((MediaModelForRemote) mediaModel).getTitle();
            String strSubstring = title.substring(title.indexOf(".") + 1);
            String str2 = str + id + "." + strSubstring;
            File file2 = null;
            try {
                if (!new File(str2).exists()) {
                    File file3 = new File(PremiereClipApplication.getContext().getApplicationInfo().dataDir + "/Dropbox/files/temp");
                    if (!file3.exists()) {
                        file3.mkdirs();
                    }
                    File file4 = new File(file3, id + "." + strSubstring);
                    try {
                        Log.d(TAG, "file name: " + file4.getName());
                        final ProgressKeeper progressKeeper = new ProgressKeeper();
                        final FileOutputStream fileOutputStream = new FileOutputStream(file4);
                        if (!this.galleryActivity.isCancelDownload()) {
                            this.dbxUserFilesRequests.download(mediaModel.getPath()).download(fileOutputStream);
                            DbxDownloader<FileMetadata> dbxDownloaderDownload = this.dbxUserFilesRequests.download(mediaModel.getPath());
                            dbxDownloaderDownload.download(new ProgressOutputStream(dbxDownloaderDownload.getResult().getSize(), fileOutputStream, new ProgressOutputStream.Listener() { // from class: com.adobe.premiereclip.mediabrowser.source.DropboxSource.8
                                @Override // com.adobe.premiereclip.mediabrowser.source.ProgressOutputStream.Listener
                                public void progress(long j, long j2) {
                                    if (!DropboxSource.this.galleryActivity.isCancelDownload()) {
                                        final int iCalculateProgressOffset = progressKeeper.calculateProgressOffset((int) ((100 * j) / j2));
                                        DropboxSource.this.galleryActivity.runOnUiThread(new Runnable() { // from class: com.adobe.premiereclip.mediabrowser.source.DropboxSource.8.1
                                            @Override // java.lang.Runnable
                                            public void run() {
                                                DropboxSource.this.galleryActivity.updateProgress(iCalculateProgressOffset);
                                            }
                                        });
                                    } else {
                                        try {
                                            fileOutputStream.close();
                                        } catch (IOException e2) {
                                            e2.printStackTrace();
                                        }
                                    }
                                }
                            }));
                        }
                        if (this.galleryActivity.isCancelDownload()) {
                            file4.delete();
                            fileOutputStream.close();
                        }
                        file2 = file4;
                    } catch (DbxException e2) {
                        e = e2;
                        file2 = file4;
                    } catch (IOException e3) {
                        e = e3;
                        file2 = file4;
                    }
                } else {
                    this.galleryActivity.runOnUiThread(new Runnable() { // from class: com.adobe.premiereclip.mediabrowser.source.DropboxSource.9
                        @Override // java.lang.Runnable
                        public void run() {
                            DropboxSource.this.galleryActivity.decreaseMaximumProgress();
                        }
                    });
                }
                if (!this.galleryActivity.isCancelDownload()) {
                    Log.d(TAG, "path: " + str2);
                    assetLoadListener.onAssetLoadSuccess(str2);
                    return;
                }
                return;
            } catch (DbxException e4) {
                e = e4;
            } catch (IOException e5) {
                e = e5;
            }
            if (e instanceof NetworkIOException) {
                this.galleryActivity.setCancelDownload(true);
                assetLoadListener.onAssetLoadFailure(33, file2.getPath());
            } else {
                assetLoadListener.onAssetLoadFailure(44, file2.getPath());
            }
            e.printStackTrace();
        }
    }

    @Override // com.adobe.premiereclip.mediabrowser.source.FileSystemMediaSource
    protected <T extends Utilities.IClipScrollAdapter & Utilities.ThumbnailLoadListener> void getThumbnailInternal(MediaModel mediaModel, final T t, Handler handler) {
        final Bitmap bitmapDecodeFile;
        try {
            String str = PremiereClipApplication.getContext().getApplicationInfo().dataDir + "/Dropbox/thumbs/";
            File file = new File(str);
            System.out.println("file path = " + str);
            if (!file.exists()) {
                file.mkdirs();
            }
            final String id = mediaModel.getId();
            String str2 = str + ((MediaModelForRemote) mediaModel).getTitle();
            FileOutputStream fileOutputStream = new FileOutputStream(new File(str2));
            Log.d(TAG, "Thumbnail id = " + id + "; path = " + mediaModel.getPath());
            if (mediaModel.getMediaType() == 3) {
                bitmapDecodeFile = BitmapFactory.decodeResource(PremiereClipApplication.getContext().getResources(), R.drawable.db_video_thumb);
            } else {
                this.dbxUserFilesRequests.getThumbnailBuilder(mediaModel.getPath()).withSize(ThumbnailSize.W128H128).start().download(fileOutputStream);
                bitmapDecodeFile = BitmapFactory.decodeFile(str2);
            }
            handler.post(new Runnable() { // from class: com.adobe.premiereclip.mediabrowser.source.DropboxSource.10
                @Override // java.lang.Runnable
                public void run() {
                    BitmapCache.addBitmapToMemoryCache(id, bitmapDecodeFile);
                    ((Utilities.ThumbnailLoadListener) t).onSuccessImageLoad(id, bitmapDecodeFile);
                }
            });
        } catch (DbxException | IOException e2) {
            if (e2 instanceof NetworkIOException) {
                handler.post(new Runnable() { // from class: com.adobe.premiereclip.mediabrowser.source.DropboxSource.11
                    @Override // java.lang.Runnable
                    public void run() {
                        ((Utilities.ThumbnailLoadListener) t).onFailureImageLoad("33");
                    }
                });
            } else {
                handler.post(new Runnable() { // from class: com.adobe.premiereclip.mediabrowser.source.DropboxSource.12
                    @Override // java.lang.Runnable
                    public void run() {
                        ((Utilities.ThumbnailLoadListener) t).onFailureImageLoad("44");
                    }
                });
            }
        }
    }

    @Override // com.adobe.premiereclip.mediabrowser.source.FileSystemMediaSource
    public void login(Context context, Activity activity, String str, FileSystemMediaSource.LoginListener loginListener) {
        this.context = context;
    }

    @Override // com.adobe.premiereclip.mediabrowser.source.FileSystemMediaSource
    public void logout(Context context, FileSystemMediaSource.LogoutListener logoutListener) {
    }
}
