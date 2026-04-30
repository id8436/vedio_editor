.class public Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource;
.super Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource;
.source "GoogleDriveSource.java"


# static fields
.field private static final REQUEST_ACCOUNT_PICKER:I = 0x2

.field private static final SCOPES:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "GoogleDriveSource"


# instance fields
.field private accountName:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private credential:Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

.field private galleryActivity:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

.field private mService:Lcom/google/api/services/drive/Drive;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 54
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "https://www.googleapis.com/auth/drive.metadata.readonly"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "https://www.googleapis.com/auth/drive"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "https://www.googleapis.com/auth/drive.file"

    aput-object v2, v0, v1

    sput-object v0, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource;->SCOPES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource;->mService:Lcom/google/api/services/drive/Drive;

    return-void
.end method

.method static synthetic access$000(Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource;)Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource;->galleryActivity:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    return-object v0
.end method

.method private checkGooglePlayServicesAvailable(Landroid/app/Activity;)Z
    .locals 2

    .prologue
    .line 417
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    .line 418
    invoke-static {v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isUserRecoverableError(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 419
    invoke-static {v0, p1}, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource;->showGooglePlayServicesAvailabilityErrorDialog(ILandroid/app/Activity;)V

    .line 420
    const/4 v0, 0x0

    .line 422
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getDataFromApi(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/drive/model/File;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\' in parents and trashed=false"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 370
    const-string/jumbo v1, "GoogleDriveSource"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " and mimeType contains \'application/vnd.google-apps.folder\' or mimeType contains \'image/\' or mimeType contains \'video/\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 372
    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource;->mService:Lcom/google/api/services/drive/Drive;

    invoke-virtual {v1}, Lcom/google/api/services/drive/Drive;->files()Lcom/google/api/services/drive/Drive$Files;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/api/services/drive/Drive$Files;->list()Lcom/google/api/services/drive/Drive$Files$List;

    move-result-object v1

    .line 373
    invoke-virtual {v1, v0}, Lcom/google/api/services/drive/Drive$Files$List;->setQ(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$List;

    move-result-object v0

    const-string/jumbo v1, "nextPageToken, files"

    .line 374
    invoke-virtual {v0, v1}, Lcom/google/api/services/drive/Drive$Files$List;->setFields(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$List;

    move-result-object v0

    .line 376
    invoke-virtual {v0}, Lcom/google/api/services/drive/Drive$Files$List;->execute()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/model/FileList;

    .line 378
    invoke-virtual {v0}, Lcom/google/api/services/drive/model/FileList;->getFiles()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private pickUserAccount(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 409
    new-array v2, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v2, v1

    move-object v1, v0

    move-object v4, v0

    move-object v5, v0

    move-object v6, v0

    move-object v7, v0

    .line 410
    invoke-static/range {v0 .. v7}, Lcom/google/android/gms/common/AccountPicker;->newChooseAccountIntent(Landroid/accounts/Account;Ljava/util/ArrayList;[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 412
    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 413
    return-void
.end method

.method private static showGooglePlayServicesAvailabilityErrorDialog(ILandroid/app/Activity;)V
    .locals 1

    .prologue
    .line 426
    new-instance v0, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource$12;

    invoke-direct {v0, p0, p1}, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource$12;-><init>(ILandroid/app/Activity;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 434
    return-void
.end method


# virtual methods
.method protected getAssetInternal(Lcom/adobe/premiereclip/mediabrowser/MediaModel;Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource$AssetLoadListener;)V
    .locals 13

    .prologue
    const/4 v1, 0x0

    const/16 v4, 0x1e

    const/4 v12, 0x1

    const/4 v3, 0x2

    .line 203
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource;->galleryActivity:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->isCancelDownload()Z

    move-result v0

    if-nez v0, :cond_6

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/adobe/premiereclip/PremiereClipApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "/GoogleDrive"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 206
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 207
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 208
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 210
    :cond_0
    invoke-virtual {p1}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getId()Ljava/lang/String;

    move-result-object v5

    .line 212
    invoke-virtual {p1}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getMediaType()I

    move-result v0

    if-eq v0, v12, :cond_1

    invoke-virtual {p1}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getMediaType()I

    move-result v0

    if-ne v0, v3, :cond_7

    .line 213
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "/photo_"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v6, "."

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 218
    :goto_0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 221
    :try_start_0
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_9

    .line 223
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/adobe/premiereclip/PremiereClipApplication;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v7, "/GoogleDrive/temp"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 224
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 225
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 226
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 228
    :cond_2
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v7, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 230
    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v0

    .line 235
    :goto_1
    :try_start_2
    const-string/jumbo v0, "GoogleDriveSource"

    const-string/jumbo v7, "Starting image download..."

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource;->galleryActivity:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->isCancelDownload()Z

    move-result v0

    if-nez v0, :cond_4

    .line 238
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource;->mService:Lcom/google/api/services/drive/Drive;

    invoke-virtual {v0}, Lcom/google/api/services/drive/Drive;->files()Lcom/google/api/services/drive/Drive$Files;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/google/api/services/drive/Drive$Files;->get(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$Get;

    move-result-object v5

    .line 239
    invoke-virtual {v5}, Lcom/google/api/services/drive/Drive$Files$Get;->getMediaHttpDownloader()Lcom/google/api/client/googleapis/media/MediaHttpDownloader;

    move-result-object v7

    .line 240
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->setDirectDownloadEnabled(Z)Lcom/google/api/client/googleapis/media/MediaHttpDownloader;

    .line 241
    invoke-virtual {p1}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getSize()J

    move-result-wide v8

    .line 243
    const-wide/16 v10, 0xa

    div-long/2addr v8, v10

    long-to-int v0, v8

    .line 244
    if-ge v0, v3, :cond_8

    move v0, v3

    .line 250
    :cond_3
    :goto_2
    const-string/jumbo v3, "GoogleDriveSource"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "chunk size = "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    mul-int/lit16 v0, v0, 0x400

    mul-int/lit16 v0, v0, 0x400

    invoke-virtual {v7, v0}, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->setChunkSize(I)Lcom/google/api/client/googleapis/media/MediaHttpDownloader;

    .line 252
    new-instance v0, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource$FileDownloadProgressListener;

    invoke-direct {v0, p0}, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource$FileDownloadProgressListener;-><init>(Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource;)V

    invoke-virtual {v7, v0}, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->setProgressListener(Lcom/google/api/client/googleapis/media/MediaHttpDownloaderProgressListener;)Lcom/google/api/client/googleapis/media/MediaHttpDownloader;

    .line 253
    invoke-virtual {v5, v1}, Lcom/google/api/services/drive/Drive$Files$Get;->executeMediaAndDownloadTo(Ljava/io/OutputStream;)V

    .line 256
    :cond_4
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource;->galleryActivity:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->isCancelDownload()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 257
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 259
    :cond_5
    const-string/jumbo v0, "GoogleDriveSource"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const-string/jumbo v0, "GoogleDriveSource"

    const-string/jumbo v1, "image file saved!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v1, v2

    .line 269
    :goto_3
    :try_start_3
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource;->galleryActivity:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->isCancelDownload()Z

    move-result v0

    if-nez v0, :cond_6

    .line 270
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource$AssetLoadListener;->onAssetLoadSuccess(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 283
    :cond_6
    :goto_4
    return-void

    .line 215
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "/video_"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v6, "."

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 231
    :catch_0
    move-exception v0

    .line 232
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1

    .line 272
    :catch_1
    move-exception v0

    move-object v1, v2

    .line 273
    :goto_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 274
    const-string/jumbo v2, "GoogleDriveSource"

    const-string/jumbo v3, "IO exception in assetinternal"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    instance-of v0, v0, Ljavax/net/ssl/SSLException;

    if-eqz v0, :cond_a

    .line 276
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource;->galleryActivity:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-virtual {v0, v12}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->setCancelDownload(Z)V

    .line 277
    const/16 v0, 0x21

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource$AssetLoadListener;->onAssetLoadFailure(ILjava/lang/String;)V

    goto :goto_4

    .line 246
    :cond_8
    if-le v0, v4, :cond_3

    move v0, v4

    .line 247
    goto/16 :goto_2

    .line 262
    :cond_9
    :try_start_5
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource;->galleryActivity:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    new-instance v2, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource$8;

    invoke-direct {v2, p0}, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource$8;-><init>(Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource;)V

    invoke-virtual {v0, v2}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    .line 272
    :catch_2
    move-exception v0

    goto :goto_5

    .line 279
    :cond_a
    const/16 v0, 0x2c

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource$AssetLoadListener;->onAssetLoadFailure(ILjava/lang/String;)V

    goto :goto_4
.end method

.method public getChildrenInternal(Landroid/app/Activity;Lcom/adobe/premiereclip/mediabrowser/Bucket;Landroid/os/Handler;Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource$FolderLoadListener;)V
    .locals 27

    .prologue
    .line 65
    move-object/from16 v4, p1

    check-cast v4, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource;->galleryActivity:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    .line 68
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource;->credential:Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    invoke-virtual {v4}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;->getToken()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/auth/GoogleAuthException; {:try_start_0 .. :try_end_0} :catch_2

    .line 92
    :cond_0
    :goto_0
    invoke-static {}, Lcom/google/api/client/extensions/android/http/AndroidHttp;->newCompatibleTransport()Lcom/google/api/client/http/HttpTransport;

    move-result-object v4

    .line 93
    invoke-static {}, Lcom/google/api/client/json/jackson2/JacksonFactory;->getDefaultInstance()Lcom/google/api/client/json/jackson2/JacksonFactory;

    move-result-object v5

    .line 94
    new-instance v6, Lcom/google/api/services/drive/Drive$Builder;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource;->credential:Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    invoke-direct {v6, v4, v5, v7}, Lcom/google/api/services/drive/Drive$Builder;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/HttpRequestInitializer;)V

    const-string/jumbo v4, "Premiere Clip"

    .line 96
    invoke-virtual {v6, v4}, Lcom/google/api/services/drive/Drive$Builder;->setApplicationName(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Builder;

    move-result-object v4

    .line 97
    invoke-virtual {v4}, Lcom/google/api/services/drive/Drive$Builder;->build()Lcom/google/api/services/drive/Drive;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource;->mService:Lcom/google/api/services/drive/Drive;

    .line 101
    if-nez p2, :cond_4

    .line 102
    :try_start_1
    const-string/jumbo v4, "root"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource;->getDataFromApi(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 107
    :goto_1
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 108
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 109
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 111
    if-eqz v4, :cond_d

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_d

    .line 112
    const-string/jumbo v5, "GoogleDrive"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "files size = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :cond_1
    :goto_2
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/api/services/drive/model/File;

    .line 114
    invoke-virtual {v4}, Lcom/google/api/services/drive/model/File;->getMimeType()Ljava/lang/String;

    move-result-object v5

    .line 115
    const-string/jumbo v6, "application/vnd.google-apps.folder"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 116
    new-instance v5, Lcom/adobe/premiereclip/mediabrowser/Bucket;

    invoke-virtual {v4}, Lcom/google/api/services/drive/model/File;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/google/api/services/drive/model/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v6, v4}, Lcom/adobe/premiereclip/mediabrowser/Bucket;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    new-instance v4, Lcom/adobe/premiereclip/mediabrowser/ThumbnailData;

    invoke-direct {v4, v5}, Lcom/adobe/premiereclip/mediabrowser/ThumbnailData;-><init>(Lcom/adobe/premiereclip/mediabrowser/Bucket;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 182
    :catch_0
    move-exception v4

    .line 183
    instance-of v4, v4, Ljavax/net/ssl/SSLException;

    if-eqz v4, :cond_e

    .line 184
    new-instance v4, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource$6;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v4, v0, v1}, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource$6;-><init>(Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource;Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource$FolderLoadListener;)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 199
    :goto_3
    return-void

    .line 69
    :catch_1
    move-exception v4

    .line 70
    :goto_4
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 71
    instance-of v5, v4, Lcom/google/android/gms/auth/UserRecoverableAuthException;

    if-eqz v5, :cond_2

    .line 72
    check-cast v4, Lcom/google/android/gms/auth/UserRecoverableAuthException;

    invoke-virtual {v4}, Lcom/google/android/gms/auth/UserRecoverableAuthException;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_3

    .line 74
    :cond_2
    instance-of v5, v4, Ljava/io/IOException;

    if-eqz v5, :cond_0

    .line 75
    instance-of v4, v4, Ljavax/net/ssl/SSLException;

    if-eqz v4, :cond_3

    .line 76
    new-instance v4, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v4, v0, v1}, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource$1;-><init>(Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource;Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource$FolderLoadListener;)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 83
    :cond_3
    new-instance v4, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v4, v0, v1}, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource$2;-><init>(Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource;Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource$FolderLoadListener;)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 104
    :cond_4
    :try_start_2
    invoke-virtual/range {p2 .. p2}, Lcom/adobe/premiereclip/mediabrowser/Bucket;->getId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource;->getDataFromApi(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    goto/16 :goto_1

    .line 118
    :cond_5
    const-string/jumbo v6, "image/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 119
    invoke-virtual {v4}, Lcom/google/api/services/drive/model/File;->getImageMediaMetadata()Lcom/google/api/services/drive/model/File$ImageMediaMetadata;

    .line 120
    const/4 v8, 0x1

    .line 121
    invoke-virtual {v4}, Lcom/google/api/services/drive/model/File;->getFileExtension()Ljava/lang/String;

    move-result-object v5

    .line 122
    const-string/jumbo v6, "png"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 123
    const/4 v8, 0x2

    .line 125
    :cond_6
    const-string/jumbo v5, "GoogleDriveSource"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "file size = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/google/api/services/drive/model/File;->getSize()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-virtual {v4}, Lcom/google/api/services/drive/model/File;->getSize()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/32 v10, 0x100000

    div-long v11, v6, v10

    .line 127
    new-instance v5, Lcom/adobe/premiereclip/mediabrowser/MediaModelForRemote;

    invoke-virtual {v4}, Lcom/google/api/services/drive/model/File;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/google/api/services/drive/model/File;->getFileExtension()Ljava/lang/String;

    move-result-object v7

    const-wide/16 v9, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    invoke-virtual {v4}, Lcom/google/api/services/drive/model/File;->getCreatedTime()Lcom/google/api/client/util/DateTime;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/google/api/client/util/DateTime;->getValue()J

    move-result-wide v18

    invoke-virtual {v4}, Lcom/google/api/services/drive/model/File;->getName()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual {v4}, Lcom/google/api/services/drive/model/File;->getThumbnailLink()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v5 .. v22}, Lcom/adobe/premiereclip/mediabrowser/MediaModelForRemote;-><init>(Ljava/lang/String;Ljava/lang/String;IJJLcom/adobe/premiereclip/mediabrowser/Bucket;DDJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    new-instance v4, Lcom/adobe/premiereclip/mediabrowser/ThumbnailData;

    invoke-direct {v4, v5}, Lcom/adobe/premiereclip/mediabrowser/ThumbnailData;-><init>(Lcom/adobe/premiereclip/mediabrowser/MediaModel;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 129
    :cond_7
    const-string/jumbo v6, "video/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 130
    invoke-virtual {v4}, Lcom/google/api/services/drive/model/File;->getVideoMediaMetadata()Lcom/google/api/services/drive/model/File$VideoMediaMetadata;

    move-result-object v9

    .line 131
    invoke-virtual {v4}, Lcom/google/api/services/drive/model/File;->getFileExtension()Ljava/lang/String;

    move-result-object v7

    .line 132
    const-string/jumbo v5, "GoogleDriveSource"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "file size = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/google/api/services/drive/model/File;->getSize()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-virtual {v4}, Lcom/google/api/services/drive/model/File;->getSize()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-wide/32 v12, 0x100000

    div-long v11, v10, v12

    .line 134
    const-string/jumbo v5, "mp4"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    const-string/jumbo v5, "mov"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    const-string/jumbo v5, "3gp"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    const-string/jumbo v5, "3g2"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 136
    :cond_8
    if-eqz v9, :cond_9

    .line 137
    new-instance v5, Lcom/adobe/premiereclip/mediabrowser/MediaModelForRemote;

    invoke-virtual {v4}, Lcom/google/api/services/drive/model/File;->getId()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x3

    invoke-virtual {v9}, Lcom/google/api/services/drive/model/File$VideoMediaMetadata;->getDurationMillis()Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    invoke-virtual {v4}, Lcom/google/api/services/drive/model/File;->getCreatedTime()Lcom/google/api/client/util/DateTime;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/google/api/client/util/DateTime;->getValue()J

    move-result-wide v18

    invoke-virtual {v4}, Lcom/google/api/services/drive/model/File;->getName()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual {v4}, Lcom/google/api/services/drive/model/File;->getThumbnailLink()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v5 .. v22}, Lcom/adobe/premiereclip/mediabrowser/MediaModelForRemote;-><init>(Ljava/lang/String;Ljava/lang/String;IJJLcom/adobe/premiereclip/mediabrowser/Bucket;DDJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :goto_5
    new-instance v4, Lcom/adobe/premiereclip/mediabrowser/ThumbnailData;

    invoke-direct {v4, v5}, Lcom/adobe/premiereclip/mediabrowser/ThumbnailData;-><init>(Lcom/adobe/premiereclip/mediabrowser/MediaModel;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 139
    :cond_9
    new-instance v5, Lcom/adobe/premiereclip/mediabrowser/MediaModelForRemote;

    invoke-virtual {v4}, Lcom/google/api/services/drive/model/File;->getId()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x3

    const-wide/16 v9, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    invoke-virtual {v4}, Lcom/google/api/services/drive/model/File;->getCreatedTime()Lcom/google/api/client/util/DateTime;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/google/api/client/util/DateTime;->getValue()J

    move-result-wide v18

    invoke-virtual {v4}, Lcom/google/api/services/drive/model/File;->getName()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual {v4}, Lcom/google/api/services/drive/model/File;->getThumbnailLink()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v5 .. v22}, Lcom/adobe/premiereclip/mediabrowser/MediaModelForRemote;-><init>(Ljava/lang/String;Ljava/lang/String;IJJLcom/adobe/premiereclip/mediabrowser/Bucket;DDJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 146
    :cond_a
    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 147
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v4

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_b

    .line 148
    new-instance v4, Lcom/adobe/premiereclip/mediabrowser/ThumbnailData;

    new-instance v5, Lcom/adobe/premiereclip/mediabrowser/Bucket;

    const-string/jumbo v6, "blank"

    const-string/jumbo v7, "blank"

    invoke-direct {v5, v6, v7}, Lcom/adobe/premiereclip/mediabrowser/Bucket;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lcom/adobe/premiereclip/mediabrowser/ThumbnailData;-><init>(Lcom/adobe/premiereclip/mediabrowser/Bucket;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    :cond_b
    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 153
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_c

    .line 154
    new-instance v4, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource$3;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v4, v0, v1}, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource$3;-><init>(Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource;Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource$FolderLoadListener;)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_3

    .line 163
    :cond_c
    new-instance v4, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource$4;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, v25

    invoke-direct {v4, v0, v1, v2}, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource$4;-><init>(Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource;Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource$FolderLoadListener;Ljava/util/ArrayList;)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_3

    .line 173
    :cond_d
    new-instance v4, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource$5;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v4, v0, v1}, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource$5;-><init>(Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource;Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource$FolderLoadListener;)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3

    .line 191
    :cond_e
    new-instance v4, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource$7;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v4, v0, v1}, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource$7;-><init>(Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource;Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource$FolderLoadListener;)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_3

    .line 69
    :catch_2
    move-exception v4

    goto/16 :goto_4
.end method

.method protected getThumbnailInternal(Lcom/adobe/premiereclip/mediabrowser/MediaModel;Lcom/adobe/premiereclip/util/Utilities$IClipScrollAdapter;Landroid/os/Handler;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/adobe/premiereclip/util/Utilities$IClipScrollAdapter;",
            ":",
            "Lcom/adobe/premiereclip/util/Utilities$ThumbnailLoadListener;",
            ">(",
            "Lcom/adobe/premiereclip/mediabrowser/MediaModel;",
            "TT;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 326
    const/4 v0, 0x0

    .line 327
    invoke-virtual {p1}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getId()Ljava/lang/String;

    move-result-object v2

    .line 328
    check-cast p1, Lcom/adobe/premiereclip/mediabrowser/MediaModelForRemote;

    invoke-virtual {p1}, Lcom/adobe/premiereclip/mediabrowser/MediaModelForRemote;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v1

    .line 330
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 331
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 352
    :goto_0
    new-instance v1, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource$11;

    invoke-direct {v1, p0, v2, v0, p2}, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource$11;-><init>(Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/adobe/premiereclip/util/Utilities$IClipScrollAdapter;)V

    invoke-virtual {p3, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 360
    return-void

    .line 332
    :catch_0
    move-exception v1

    .line 333
    const-string/jumbo v3, "GoogleDriveSource"

    const-string/jumbo v4, "IO exception in thumbnail internal"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    instance-of v1, v1, Ljavax/net/ssl/SSLException;

    if-eqz v1, :cond_0

    .line 335
    new-instance v1, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource$9;

    invoke-direct {v1, p0, p2}, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource$9;-><init>(Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource;Lcom/adobe/premiereclip/util/Utilities$IClipScrollAdapter;)V

    invoke-virtual {p3, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 342
    :cond_0
    new-instance v1, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource$10;

    invoke-direct {v1, p0, p2}, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource$10;-><init>(Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource;Lcom/adobe/premiereclip/util/Utilities$IClipScrollAdapter;)V

    invoke-virtual {p3, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public login(Landroid/content/Context;Landroid/app/Activity;Ljava/lang/String;Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource$LoginListener;)V
    .locals 3

    .prologue
    .line 383
    iput-object p1, p0, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource;->context:Landroid/content/Context;

    .line 384
    invoke-direct {p0, p2}, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource;->checkGooglePlayServicesAvailable(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/adobe/premiereclip/ClipPreferences;->getInstance(Landroid/content/Context;)Lcom/adobe/premiereclip/ClipPreferences;

    move-result-object v0

    const-string/jumbo v1, "googleAccount"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/ClipPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource;->accountName:Ljava/lang/String;

    .line 386
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource;->accountName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 387
    invoke-virtual {p0, p1}, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource;->setCredential(Landroid/content/Context;)V

    .line 388
    invoke-interface {p4}, Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource$LoginListener;->onSuccessfulLogin()V

    .line 393
    :cond_0
    :goto_0
    return-void

    .line 390
    :cond_1
    invoke-static {p3}, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource;->getAccountType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource;->pickUserAccount(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public logout(Landroid/content/Context;Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource$LogoutListener;)V
    .locals 0

    .prologue
    .line 406
    return-void
.end method

.method public setCredential(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 396
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/adobe/premiereclip/ClipPreferences;->getInstance(Landroid/content/Context;)Lcom/adobe/premiereclip/ClipPreferences;

    move-result-object v0

    const-string/jumbo v1, "googleAccount"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/ClipPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource;->accountName:Ljava/lang/String;

    .line 397
    sget-object v0, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource;->SCOPES:[Ljava/lang/String;

    .line 398
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 397
    invoke-static {p1, v0}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;->usingOAuth2(Landroid/content/Context;Ljava/util/Collection;)Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    move-result-object v0

    new-instance v1, Lcom/google/api/client/util/ExponentialBackOff;

    invoke-direct {v1}, Lcom/google/api/client/util/ExponentialBackOff;-><init>()V

    .line 399
    invoke-virtual {v0, v1}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;->setBackOff(Lcom/google/api/client/util/BackOff;)Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource;->accountName:Ljava/lang/String;

    .line 400
    invoke-virtual {v0, v1}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;->setSelectedAccountName(Ljava/lang/String;)Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource;->credential:Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    .line 401
    return-void
.end method
