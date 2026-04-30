.class public Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;
.super Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource;
.source "GooglePhotosSource.java"


# static fields
.field private static final API_PREFIX:Ljava/lang/String; = "https://picasaweb.google.com/data/feed/api/user/"

.field private static final BUFFER_SIZE:I = 0x1000

.field private static final REQUEST_ACCOUNT_PICKER:I = 0x2

.field private static TAG:Ljava/lang/String;


# instance fields
.field private accountName:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private credential:Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

.field private galleryActivity:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

.field private picasaService:Lcom/google/gdata/client/photos/PicasawebService;

.field private picasa_scope:Ljava/lang/String;

.field private token:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const-string/jumbo v0, "GooglePhotosSource"

    sput-object v0, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource;-><init>()V

    .line 81
    const-string/jumbo v0, "oauth2:https://picasaweb.google.com/data/"

    iput-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;->picasa_scope:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;)Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;->galleryActivity:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;->context:Landroid/content/Context;

    return-object v0
.end method

.method private checkGooglePlayServicesAvailable(Landroid/app/Activity;)Z
    .locals 2

    .prologue
    .line 554
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    .line 555
    invoke-static {v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isUserRecoverableError(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 556
    invoke-static {v0, p1}, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;->showGooglePlayServicesAvailabilityErrorDialog(ILandroid/app/Activity;)V

    .line 557
    const/4 v0, 0x0

    .line 559
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getAlbums(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/photos/GphotoEntry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 172
    invoke-static {}, Lcom/google/api/client/extensions/android/http/AndroidHttp;->newCompatibleTransport()Lcom/google/api/client/http/HttpTransport;

    move-result-object v0

    .line 173
    new-instance v2, Lcom/google/api/client/json/gson/GsonFactory;

    invoke-direct {v2}, Lcom/google/api/client/json/gson/GsonFactory;-><init>()V

    .line 175
    new-instance v3, Lcom/google/gdata/client/photos/PicasawebService;

    const-string/jumbo v4, "pictureframe"

    invoke-direct {v3, v4}, Lcom/google/gdata/client/photos/PicasawebService;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;->picasaService:Lcom/google/gdata/client/photos/PicasawebService;

    .line 177
    new-instance v3, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;

    invoke-direct {v3}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;-><init>()V

    .line 178
    invoke-virtual {v3, v2}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->setJsonFactory(Lcom/google/api/client/json/JsonFactory;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;

    move-result-object v2

    .line 179
    invoke-virtual {v2, v0}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->setTransport(Lcom/google/api/client/http/HttpTransport;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;

    move-result-object v0

    .line 180
    invoke-virtual {v0}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->build()Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;

    move-result-object v0

    iget-object v2, p0, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;->token:Ljava/lang/String;

    .line 181
    invoke-virtual {v0, v2}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->setAccessToken(Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;

    move-result-object v0

    .line 183
    iget-object v2, p0, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;->picasaService:Lcom/google/gdata/client/photos/PicasawebService;

    invoke-virtual {v2, v0}, Lcom/google/gdata/client/photos/PicasawebService;->setOAuth2Credentials(Lcom/google/api/client/auth/oauth2/Credential;)V

    .line 184
    invoke-static {p1}, Lcom/adobe/premiereclip/ClipPreferences;->getInstance(Landroid/content/Context;)Lcom/adobe/premiereclip/ClipPreferences;

    move-result-object v0

    const-string/jumbo v2, "googleAccount"

    invoke-virtual {v0, v2, v1}, Lcom/adobe/premiereclip/ClipPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 187
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "https://picasaweb.google.com/data/feed/api/user/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "?imgmax=d"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 189
    iget-object v2, p0, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;->picasaService:Lcom/google/gdata/client/photos/PicasawebService;

    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const-class v0, Lcom/google/gdata/data/photos/UserFeed;

    invoke-virtual {v2, v3, v0}, Lcom/google/gdata/client/photos/PicasawebService;->getFeed(Ljava/net/URL;Ljava/lang/Class;)Lcom/google/gdata/data/IFeed;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/photos/UserFeed;

    .line 190
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/gdata/data/photos/UserFeed;->getEntries()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method private getByteData(Ljava/net/URL;Ljava/lang/String;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 467
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .line 468
    invoke-virtual {v2}, Ljava/net/URLConnection;->getContentLength()I

    move-result v2

    int-to-double v10, v2

    .line 469
    new-instance v12, Lcom/adobe/premiereclip/mediabrowser/source/ProgressKeeper;

    invoke-direct {v12}, Lcom/adobe/premiereclip/mediabrowser/source/ProgressKeeper;-><init>()V

    .line 471
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v13

    .line 473
    const-wide/16 v8, 0x0

    .line 474
    const/16 v2, 0x1000

    new-array v14, v2, [B

    .line 476
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    .line 477
    new-instance v3, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource$18;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v12}, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource$18;-><init>(Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;Lcom/adobe/premiereclip/mediabrowser/source/ProgressKeeper;)V

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x1f4

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 489
    new-instance v6, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    move-object/from16 v0, p2

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x1000

    invoke-direct {v6, v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    move-wide v4, v8

    .line 492
    :goto_0
    :try_start_0
    invoke-virtual {v13, v14}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v7, -0x1

    if-eq v3, v7, :cond_0

    .line 493
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;->galleryActivity:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-virtual {v7}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->isCancelDownload()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 494
    invoke-static {v13}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 495
    invoke-static {v6}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 509
    :cond_0
    invoke-static {v13}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 510
    invoke-static {v6}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 512
    :try_start_1
    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 517
    :goto_1
    return-void

    .line 498
    :cond_1
    int-to-double v8, v3

    add-double/2addr v4, v8

    .line 499
    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v8, v4

    div-double/2addr v8, v10

    .line 500
    const-wide/16 v16, 0x0

    cmpl-double v7, v8, v16

    if-lez v7, :cond_2

    .line 501
    double-to-int v7, v8

    :try_start_2
    invoke-virtual {v12, v7}, Lcom/adobe/premiereclip/mediabrowser/source/ProgressKeeper;->setTotalProgress(I)V

    .line 503
    :cond_2
    const/4 v7, 0x0

    invoke-virtual {v6, v14, v7, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 505
    :catch_0
    move-exception v3

    .line 506
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 509
    invoke-static {v13}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 510
    invoke-static {v6}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 512
    :try_start_4
    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 513
    :catch_1
    move-exception v2

    .line 514
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 513
    :catch_2
    move-exception v2

    .line 514
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 509
    :catchall_0
    move-exception v3

    invoke-static {v13}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 510
    invoke-static {v6}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 512
    :try_start_5
    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 516
    :goto_2
    throw v3

    .line 513
    :catch_3
    move-exception v2

    .line 514
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private pickUserAccount(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 546
    new-array v2, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v2, v1

    move-object v1, v0

    move-object v4, v0

    move-object v5, v0

    move-object v6, v0

    move-object v7, v0

    .line 547
    invoke-static/range {v0 .. v7}, Lcom/google/android/gms/common/AccountPicker;->newChooseAccountIntent(Landroid/accounts/Account;Ljava/util/ArrayList;[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 549
    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 550
    return-void
.end method

.method private static showGooglePlayServicesAvailabilityErrorDialog(ILandroid/app/Activity;)V
    .locals 1

    .prologue
    .line 563
    new-instance v0, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource$19;

    invoke-direct {v0, p0, p1}, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource$19;-><init>(ILandroid/app/Activity;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 571
    return-void
.end method


# virtual methods
.method protected fetchAlbumInternal(Lcom/adobe/premiereclip/mediabrowser/Bucket;Lcom/adobe/premiereclip/mediabrowser/source/GallerySource$BucketLoadListener;Landroid/os/Handler;)V
    .locals 24

    .prologue
    .line 196
    :try_start_0
    move-object/from16 v0, p1

    check-cast v0, Lcom/adobe/premiereclip/mediabrowser/BucketForGooglePhotos;

    move-object v4, v0

    .line 197
    invoke-virtual {v4}, Lcom/adobe/premiereclip/mediabrowser/BucketForGooglePhotos;->getAlbumEntry()Lcom/google/gdata/data/photos/AlbumEntry;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/google/gdata/data/photos/AlbumEntry;->getFeed([Ljava/lang/String;)Lcom/google/gdata/data/photos/AlbumFeed;

    move-result-object v5

    .line 198
    invoke-virtual {v5}, Lcom/google/gdata/data/photos/AlbumFeed;->getEntries()Ljava/util/List;

    move-result-object v5

    .line 199
    invoke-virtual {v4}, Lcom/adobe/premiereclip/mediabrowser/BucketForGooglePhotos;->deleteAllItems()V

    .line 200
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 202
    new-instance v4, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource$7;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-direct {v4, v0, v1, v2}, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource$7;-><init>(Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;Lcom/adobe/premiereclip/mediabrowser/source/GallerySource$BucketLoadListener;Lcom/adobe/premiereclip/mediabrowser/Bucket;)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 282
    :goto_0
    return-void

    .line 211
    :cond_0
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_1
    :goto_1
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/gdata/data/photos/GphotoEntry;

    .line 212
    new-instance v13, Lcom/google/gdata/data/photos/PhotoEntry;

    invoke-direct {v13, v4}, Lcom/google/gdata/data/photos/PhotoEntry;-><init>(Lcom/google/gdata/data/BaseEntry;)V

    .line 213
    sget-object v5, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "title : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v13}, Lcom/google/gdata/data/photos/PhotoEntry;->getTitle()Lcom/google/gdata/data/TextConstruct;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gdata/data/TextConstruct;->getPlainText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-virtual {v13}, Lcom/google/gdata/data/photos/PhotoEntry;->getTitle()Lcom/google/gdata/data/TextConstruct;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gdata/data/TextConstruct;->getPlainText()Ljava/lang/String;

    move-result-object v5

    .line 217
    invoke-virtual {v13}, Lcom/google/gdata/data/photos/PhotoEntry;->getMediaContents()Ljava/util/List;

    move-result-object v11

    .line 218
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v6

    .line 219
    const/4 v7, 0x1

    if-le v6, v7, :cond_3

    .line 221
    const-string/jumbo v7, ".mp4"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string/jumbo v7, ".3gp"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string/jumbo v7, ".mov"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string/jumbo v7, ".3g2"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 222
    :cond_2
    add-int/lit8 v5, v6, -0x1

    rem-int/lit8 v12, v5, 0x4

    .line 223
    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/gdata/data/media/mediarss/MediaContent;

    invoke-virtual {v5}, Lcom/google/gdata/data/media/mediarss/MediaContent;->getUrl()Ljava/lang/String;

    move-result-object v21

    .line 224
    const/4 v5, 0x0

    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/gdata/data/media/mediarss/MediaContent;

    invoke-virtual {v5}, Lcom/google/gdata/data/media/mediarss/MediaContent;->getUrl()Ljava/lang/String;

    move-result-object v22

    .line 225
    new-instance v5, Lcom/adobe/premiereclip/mediabrowser/MediaModelForRemote;

    invoke-virtual {v4}, Lcom/google/gdata/data/photos/GphotoEntry;->getGphotoId()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x3

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/gdata/data/media/mediarss/MediaContent;

    invoke-virtual {v4}, Lcom/google/gdata/data/media/mediarss/MediaContent;->getDuration()I

    move-result v4

    int-to-long v9, v4

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/gdata/data/media/mediarss/MediaContent;

    invoke-virtual {v4}, Lcom/google/gdata/data/media/mediarss/MediaContent;->getFileSize()J

    move-result-wide v11

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    invoke-virtual {v13}, Lcom/google/gdata/data/photos/PhotoEntry;->getTitle()Lcom/google/gdata/data/TextConstruct;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gdata/data/TextConstruct;->getPlainText()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v13, p1

    invoke-direct/range {v5 .. v22}, Lcom/adobe/premiereclip/mediabrowser/MediaModelForRemote;-><init>(Ljava/lang/String;Ljava/lang/String;IJJLcom/adobe/premiereclip/mediabrowser/Bucket;DDJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    :goto_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/adobe/premiereclip/mediabrowser/Bucket;->addItem(Lcom/adobe/premiereclip/mediabrowser/MediaModel;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/gdata/util/ServiceException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_1

    .line 262
    :catch_0
    move-exception v4

    .line 263
    :goto_3
    instance-of v5, v4, Ljavax/net/ssl/SSLException;

    if-eqz v5, :cond_6

    .line 264
    sget-object v5, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "IOException in AlbumFeedInternal"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    new-instance v5, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource$10;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-direct {v5, v0, v1, v2}, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource$10;-><init>(Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;Lcom/adobe/premiereclip/mediabrowser/source/GallerySource$BucketLoadListener;Lcom/adobe/premiereclip/mediabrowser/Bucket;)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 280
    :goto_4
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 231
    :cond_3
    :try_start_1
    invoke-virtual {v13}, Lcom/google/gdata/data/photos/PhotoEntry;->getMediaContents()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/gdata/data/media/mediarss/MediaContent;

    invoke-virtual {v5}, Lcom/google/gdata/data/media/mediarss/MediaContent;->getUrl()Ljava/lang/String;

    move-result-object v21

    .line 232
    new-instance v5, Lcom/adobe/premiereclip/mediabrowser/MediaModelForRemote;

    invoke-virtual {v4}, Lcom/google/gdata/data/photos/GphotoEntry;->getGphotoId()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    invoke-virtual {v13}, Lcom/google/gdata/data/photos/PhotoEntry;->getTitle()Lcom/google/gdata/data/TextConstruct;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gdata/data/TextConstruct;->getPlainText()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v13, p1

    invoke-direct/range {v5 .. v21}, Lcom/adobe/premiereclip/mediabrowser/MediaModelForRemote;-><init>(Ljava/lang/String;Ljava/lang/String;IJJLcom/adobe/premiereclip/mediabrowser/Bucket;DDJLjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 262
    :catch_1
    move-exception v4

    goto :goto_3

    .line 237
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/adobe/premiereclip/mediabrowser/Bucket;->getItems()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_5

    .line 239
    new-instance v4, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource$8;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-direct {v4, v0, v1, v2}, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource$8;-><init>(Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;Lcom/adobe/premiereclip/mediabrowser/source/GallerySource$BucketLoadListener;Lcom/adobe/premiereclip/mediabrowser/Bucket;)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/gdata/util/ServiceException; {:try_start_1 .. :try_end_1} :catch_1

    .line 250
    :cond_5
    :try_start_2
    new-instance v4, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource$9;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-direct {v4, v0, v1, v2}, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource$9;-><init>(Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;Lcom/adobe/premiereclip/mediabrowser/source/GallerySource$BucketLoadListener;Lcom/adobe/premiereclip/mediabrowser/Bucket;)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/google/gdata/util/ServiceException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 258
    :catch_2
    move-exception v4

    .line 259
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/google/gdata/util/ServiceException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 273
    :cond_6
    new-instance v5, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource$11;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource$11;-><init>(Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4
.end method

.method protected fetchDataInternal(Landroid/content/Context;Lcom/adobe/premiereclip/mediabrowser/source/GallerySource$GalleryDataListener;Landroid/os/Handler;)V
    .locals 7

    .prologue
    .line 90
    :try_start_0
    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;->credential:Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    invoke-virtual {v1}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;->getSelectedAccount()Landroid/accounts/Account;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 91
    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;->credential:Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    invoke-virtual {v1}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;->getToken()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;->token:Ljava/lang/String;

    .line 94
    const-string/jumbo v1, "GooglePhotos"

    iget-object v2, p0, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;->token:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;->getAlbums(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 97
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 99
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 100
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/data/photos/GphotoEntry;

    .line 101
    new-instance v4, Lcom/google/gdata/data/photos/AlbumEntry;

    invoke-direct {v4, v1}, Lcom/google/gdata/data/photos/AlbumEntry;-><init>(Lcom/google/gdata/data/BaseEntry;)V

    .line 102
    new-instance v1, Lcom/adobe/premiereclip/mediabrowser/BucketForGooglePhotos;

    invoke-virtual {v4}, Lcom/google/gdata/data/photos/AlbumEntry;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/google/gdata/data/photos/AlbumEntry;->getTitle()Lcom/google/gdata/data/TextConstruct;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gdata/data/TextConstruct;->getPlainText()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v5, v6, v4}, Lcom/adobe/premiereclip/mediabrowser/BucketForGooglePhotos;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/gdata/data/photos/AlbumEntry;)V

    .line 104
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/auth/GoogleAuthException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/gdata/util/ServiceException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 131
    :catch_0
    move-exception v1

    .line 132
    :goto_1
    instance-of v2, v1, Ljavax/net/ssl/SSLException;

    if-eqz v2, :cond_4

    .line 133
    new-instance v1, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource$3;

    invoke-direct {v1, p0, p2}, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource$3;-><init>(Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;Lcom/adobe/premiereclip/mediabrowser/source/GallerySource$GalleryDataListener;)V

    invoke-virtual {p3, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 169
    :goto_2
    return-void

    .line 106
    :cond_0
    :try_start_1
    invoke-static {v2}, Lcom/adobe/premiereclip/mediabrowser/Utils;->getThumbnailDataFromBuckets(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    .line 109
    new-instance v2, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource$1;

    invoke-direct {v2, p0, p2, v1}, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource$1;-><init>(Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;Lcom/adobe/premiereclip/mediabrowser/source/GallerySource$GalleryDataListener;Ljava/util/ArrayList;)V

    invoke-virtual {p3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 131
    :catch_1
    move-exception v1

    goto :goto_1

    .line 118
    :cond_1
    new-instance v1, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource$2;

    invoke-direct {v1, p0, p2}, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource$2;-><init>(Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;Lcom/adobe/premiereclip/mediabrowser/source/GallerySource$GalleryDataListener;)V

    invoke-virtual {p3, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/android/gms/auth/GoogleAuthException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/google/gdata/util/ServiceException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    .line 158
    :catch_2
    move-exception v1

    .line 159
    instance-of v2, v1, Lcom/google/gdata/util/ServiceForbiddenException;

    if-eqz v2, :cond_2

    .line 160
    new-instance v2, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource$6;

    invoke-direct {v2, p0, p1}, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource$6;-><init>(Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;Landroid/content/Context;)V

    invoke-virtual {p3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 167
    :cond_2
    invoke-virtual {v1}, Lcom/google/gdata/util/ServiceException;->printStackTrace()V

    goto :goto_2

    .line 128
    :cond_3
    :try_start_2
    sget-object v1, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Credential account is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    const-string/jumbo v2, "com.google"

    invoke-direct {p0, v1, v2}, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;->pickUserAccount(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/google/android/gms/auth/GoogleAuthException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/google/gdata/util/ServiceException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 139
    :cond_4
    instance-of v2, v1, Lcom/google/android/gms/auth/UserRecoverableAuthException;

    if-eqz v2, :cond_5

    .line 140
    const-string/jumbo v2, "GooglePhotos"

    const-string/jumbo v3, "UserRecoverableException"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    new-instance v2, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource$4;

    invoke-direct {v2, p0, p2}, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource$4;-><init>(Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;Lcom/adobe/premiereclip/mediabrowser/source/GallerySource$GalleryDataListener;)V

    invoke-virtual {p3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 148
    check-cast p1, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    iput-object p1, p0, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;->galleryActivity:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    .line 149
    iget-object v2, p0, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;->galleryActivity:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    check-cast v1, Lcom/google/android/gms/auth/UserRecoverableAuthException;

    invoke-virtual {v1}, Lcom/google/android/gms/auth/UserRecoverableAuthException;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2

    .line 151
    :cond_5
    new-instance v1, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource$5;

    invoke-direct {v1, p0, p2}, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource$5;-><init>(Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;Lcom/adobe/premiereclip/mediabrowser/source/GallerySource$GalleryDataListener;)V

    invoke-virtual {p3, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2
.end method

.method protected fetchFilesInternal(Lcom/adobe/premiereclip/mediabrowser/MediaModel;Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource$MediaFileListener;)V
    .locals 20

    .prologue
    .line 337
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;->galleryActivity:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->isCancelDownload()Z

    move-result v2

    if-nez v2, :cond_4

    .line 338
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/adobe/premiereclip/PremiereClipApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/GooglePhotos"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 339
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 340
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 341
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 343
    :cond_0
    const/4 v3, 0x0

    .line 344
    invoke-virtual/range {p1 .. p1}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getMediaType()I

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_a

    .line 346
    :try_start_0
    move-object/from16 v0, p1

    check-cast v0, Lcom/adobe/premiereclip/mediabrowser/MediaModelForRemote;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/adobe/premiereclip/mediabrowser/MediaModelForRemote;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/io/FilenameUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 347
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "photo_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 348
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 349
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_9

    .line 350
    new-instance v3, Ljava/net/URL;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    check-cast p1, Lcom/adobe/premiereclip/mediabrowser/MediaModelForRemote;

    invoke-virtual/range {p1 .. p1}, Lcom/adobe/premiereclip/mediabrowser/MediaModelForRemote;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "?imgmax=1080"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 351
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/adobe/premiereclip/PremiereClipApplication;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/GooglePhotos/temp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 352
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 353
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 354
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 355
    :cond_1
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v5, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 358
    :try_start_1
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 359
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .line 360
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    .line 361
    invoke-virtual {v2}, Ljava/net/URLConnection;->getContentLength()I

    move-result v2

    int-to-double v12, v2

    .line 362
    new-instance v14, Lcom/adobe/premiereclip/mediabrowser/source/ProgressKeeper;

    invoke-direct {v14}, Lcom/adobe/premiereclip/mediabrowser/source/ProgressKeeper;-><init>()V

    .line 364
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    .line 365
    new-instance v3, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource$15;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v14}, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource$15;-><init>(Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;Lcom/adobe/premiereclip/mediabrowser/source/ProgressKeeper;)V

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x1f4

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 380
    const/16 v3, 0x400

    new-array v3, v3, [B

    .line 381
    const-wide/16 v4, 0x0

    .line 384
    :goto_0
    invoke-virtual {v11, v3}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    .line 385
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;->galleryActivity:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-virtual {v7}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->isCancelDownload()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 397
    :cond_2
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->flush()V

    .line 398
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    .line 399
    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    .line 400
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;->galleryActivity:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->isCancelDownload()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 401
    invoke-virtual {v9}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 423
    :cond_3
    :goto_1
    :try_start_2
    invoke-virtual {v8}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource$MediaFileListener;->onFilesAvailable(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_1

    .line 464
    :cond_4
    :goto_2
    return-void

    .line 388
    :cond_5
    int-to-long v0, v6

    move-wide/from16 v16, v0

    add-long v4, v4, v16

    .line 389
    const-wide/16 v16, 0x64

    mul-long v16, v16, v4

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v16, v16, v12

    .line 390
    const-wide/16 v18, 0x0

    cmpl-double v7, v16, v18

    if-lez v7, :cond_6

    .line 391
    move-wide/from16 v0, v16

    double-to-int v7, v0

    :try_start_3
    invoke-virtual {v14, v7}, Lcom/adobe/premiereclip/mediabrowser/source/ProgressKeeper;->setTotalProgress(I)V

    .line 393
    :cond_6
    const/4 v7, 0x0

    invoke-virtual {v10, v3, v7, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 403
    :catch_0
    move-exception v2

    .line 404
    :try_start_4
    instance-of v3, v2, Ljava/io/IOException;

    if-eqz v3, :cond_7

    .line 405
    sget-object v3, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "IO Exception in FilesInternal"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    instance-of v3, v2, Ljavax/net/ssl/SSLException;

    if-eqz v3, :cond_8

    .line 407
    const/16 v3, 0x21

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-interface {v0, v3, v4}, Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource$MediaFileListener;->onFileError(ILjava/lang/String;)V

    .line 413
    :cond_7
    :goto_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 424
    :catch_1
    move-exception v2

    .line 425
    invoke-virtual {v2}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_2

    .line 409
    :cond_8
    :try_start_5
    sget-object v3, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "else of IO exception"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    const/16 v3, 0x2c

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-interface {v0, v3, v4}, Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource$MediaFileListener;->onFileError(ILjava/lang/String;)V

    goto :goto_3

    .line 416
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;->galleryActivity:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    new-instance v3, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource$16;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource$16;-><init>(Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;)V

    invoke-virtual {v2, v3}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    :cond_a
    move-object/from16 v2, p1

    .line 428
    check-cast v2, Lcom/adobe/premiereclip/mediabrowser/MediaModelForRemote;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/mediabrowser/MediaModelForRemote;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/io/FilenameUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 429
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "video_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 430
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 432
    :try_start_6
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_d

    .line 433
    new-instance v6, Ljava/net/URL;

    check-cast p1, Lcom/adobe/premiereclip/mediabrowser/MediaModelForRemote;

    invoke-virtual/range {p1 .. p1}, Lcom/adobe/premiereclip/mediabrowser/MediaModelForRemote;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 434
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/adobe/premiereclip/PremiereClipApplication;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, "/GooglePhotos/temp"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 435
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 436
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_b

    .line 437
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 438
    :cond_b
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v7, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 439
    :try_start_7
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v2}, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;->getByteData(Ljava/net/URL;Ljava/lang/String;)V

    .line 441
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;->galleryActivity:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->isCancelDownload()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 442
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :cond_c
    move-object v3, v4

    .line 452
    :goto_4
    :try_start_8
    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource$MediaFileListener;->onFilesAvailable(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_2

    .line 453
    :catch_2
    move-exception v2

    .line 454
    :goto_5
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 455
    instance-of v2, v2, Ljavax/net/ssl/SSLException;

    if-eqz v2, :cond_e

    .line 456
    sget-object v2, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "IO Exception in FilesInternal"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    const/16 v2, 0x21

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-interface {v0, v2, v3}, Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource$MediaFileListener;->onFileError(ILjava/lang/String;)V

    goto/16 :goto_2

    .line 445
    :cond_d
    :try_start_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;->galleryActivity:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    new-instance v4, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource$17;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource$17;-><init>(Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;)V

    invoke-virtual {v2, v4}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_4

    .line 459
    :cond_e
    const/16 v2, 0x2c

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-interface {v0, v2, v3}, Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource$MediaFileListener;->onFileError(ILjava/lang/String;)V

    goto/16 :goto_2

    .line 453
    :catch_3
    move-exception v2

    move-object v3, v4

    goto :goto_5
.end method

.method protected fetchThumbnailInternal(Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;Lcom/adobe/premiereclip/mediabrowser/MediaModel;JIILcom/adobe/premiereclip/util/Utilities$IClipScrollAdapter;Landroid/os/Handler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/adobe/premiereclip/util/Utilities$IClipScrollAdapter;",
            ":",
            "Lcom/adobe/premiereclip/util/Utilities$ThumbnailLoadListener;",
            ">(",
            "Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;",
            "Lcom/adobe/premiereclip/mediabrowser/MediaModel;",
            "JIITT;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 288
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;->galleryActivity:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->isCancelThumbnailDownload()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p2

    .line 289
    check-cast v0, Lcom/adobe/premiereclip/mediabrowser/MediaModelForRemote;

    .line 292
    sget-object v1, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "downloading thumbnails"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    invoke-virtual {p2}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getId()Ljava/lang/String;

    move-result-object v2

    .line 295
    :try_start_0
    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/MediaModelForRemote;->getMediaType()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 296
    new-instance v1, Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/MediaModelForRemote;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "?imgmax=160"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 302
    :goto_0
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 303
    invoke-static {v2, v0}, Lcom/adobe/premiereclip/util/BitmapCache;->addBitmapToDiskCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 306
    new-instance v1, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource$12;

    invoke-direct {v1, p0, v2, v0, p7}, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource$12;-><init>(Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/adobe/premiereclip/util/Utilities$IClipScrollAdapter;)V

    invoke-virtual {p8, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 333
    :cond_0
    :goto_1
    return-void

    .line 299
    :cond_1
    new-instance v1, Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/MediaModelForRemote;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "?imgmax=160"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 314
    :catch_0
    move-exception v0

    .line 315
    sget-object v1, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "IOException in ThumbnailInternal"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    instance-of v0, v0, Ljavax/net/ssl/SSLException;

    if-eqz v0, :cond_2

    .line 317
    new-instance v0, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource$13;

    invoke-direct {v0, p0, p7}, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource$13;-><init>(Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;Lcom/adobe/premiereclip/util/Utilities$IClipScrollAdapter;)V

    invoke-virtual {p8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 324
    :cond_2
    new-instance v0, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource$14;

    invoke-direct {v0, p0, p7}, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource$14;-><init>(Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;Lcom/adobe/premiereclip/util/Utilities$IClipScrollAdapter;)V

    invoke-virtual {p8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method public login(Landroid/content/Context;Landroid/app/Activity;Ljava/lang/String;Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource$LoginListener;)V
    .locals 3

    .prologue
    .line 526
    move-object v0, p2

    check-cast v0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    iput-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;->galleryActivity:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    .line 527
    iput-object p1, p0, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;->context:Landroid/content/Context;

    .line 528
    invoke-direct {p0, p2}, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;->checkGooglePlayServicesAvailable(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/adobe/premiereclip/ClipPreferences;->getInstance(Landroid/content/Context;)Lcom/adobe/premiereclip/ClipPreferences;

    move-result-object v0

    const-string/jumbo v1, "googleAccount"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/ClipPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;->accountName:Ljava/lang/String;

    .line 530
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;->accountName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 531
    invoke-virtual {p0, p1}, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;->setCredential(Landroid/content/Context;)V

    .line 532
    invoke-interface {p4}, Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource$LoginListener;->onSuccessfulLogin()V

    .line 537
    :cond_0
    :goto_0
    return-void

    .line 534
    :cond_1
    invoke-static {p3}, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;->getAccountType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;->pickUserAccount(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public logout(Landroid/content/Context;Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource$LogoutListener;)V
    .locals 2

    .prologue
    .line 541
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/adobe/premiereclip/ClipPreferences;->getInstance(Landroid/content/Context;)Lcom/adobe/premiereclip/ClipPreferences;

    move-result-object v0

    const-string/jumbo v1, "googleAccount"

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/ClipPreferences;->removePreference(Ljava/lang/String;)V

    .line 542
    invoke-interface {p2}, Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource$LogoutListener;->onSuccessfulLogout()V

    .line 543
    return-void
.end method

.method public setCredential(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 520
    new-instance v0, Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;->picasa_scope:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;->credential:Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    .line 521
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/adobe/premiereclip/ClipPreferences;->getInstance(Landroid/content/Context;)Lcom/adobe/premiereclip/ClipPreferences;

    move-result-object v0

    const-string/jumbo v1, "googleAccount"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/ClipPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;->accountName:Ljava/lang/String;

    .line 522
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;->credential:Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;->accountName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;->setSelectedAccountName(Ljava/lang/String;)Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    .line 523
    return-void
.end method
