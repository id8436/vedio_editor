.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFilesListViewHelper$UploadSimulator;
.super Ljava/lang/Object;
.source "AdobeUploadFilesListViewHelper.java"


# static fields
.field private static _sInstance:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFilesListViewHelper$UploadSimulator;


# instance fields
.field private _count:I

.field private _failCount:I

.field private _failedSofar:I

.field private _localAssetsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private _targetFolder:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFilesListViewHelper$UploadSimulator;->_failedSofar:I

    return-void
.end method

.method private createLocalAssetsList()V
    .locals 5

    .prologue
    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFilesListViewHelper$UploadSimulator;->_localAssetsList:Ljava/util/ArrayList;

    .line 51
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFilesListViewHelper$UploadSimulator;->_count:I

    if-ge v0, v1, :cond_0

    .line 53
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFileInfo;

    invoke-direct {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFileInfo;-><init>()V

    .line 55
    :try_start_0
    new-instance v2, Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "file:///upload_test/Test_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFileInfo;->setFileURL(Ljava/net/URL;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :goto_1
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFilesListViewHelper$UploadSimulator;->_localAssetsList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 62
    :cond_0
    return-void

    .line 58
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public static getInstance()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFilesListViewHelper$UploadSimulator;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFilesListViewHelper$UploadSimulator;->_sInstance:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFilesListViewHelper$UploadSimulator;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFilesListViewHelper$UploadSimulator;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFilesListViewHelper$UploadSimulator;-><init>()V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFilesListViewHelper$UploadSimulator;->_sInstance:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFilesListViewHelper$UploadSimulator;

    .line 38
    :cond_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFilesListViewHelper$UploadSimulator;->_sInstance:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFilesListViewHelper$UploadSimulator;

    return-object v0
.end method

.method private shouldAssetFail(Ljava/net/URL;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 69
    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFilesListViewHelper$UploadSimulator;->_failedSofar:I

    iget v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFilesListViewHelper$UploadSimulator;->_failCount:I

    if-lt v1, v2, :cond_1

    .line 76
    :cond_0
    :goto_0
    return v0

    .line 72
    :cond_1
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFilesListViewHelper$UploadSimulator;->_localAssetsList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 73
    iget v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFilesListViewHelper$UploadSimulator;->_failedSofar:I

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    .line 74
    :cond_2
    if-eqz v0, :cond_0

    .line 75
    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFilesListViewHelper$UploadSimulator;->_failedSofar:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFilesListViewHelper$UploadSimulator;->_failedSofar:I

    goto :goto_0
.end method


# virtual methods
.method public getBitmap(Ljava/net/URL;)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    const/16 v2, 0x1f4

    .line 89
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFilesListViewHelper$UploadSimulator;->_localAssetsList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 90
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 91
    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const v0, -0xff0100

    :goto_0
    invoke-virtual {v1, v0}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 92
    return-object v1

    .line 91
    :cond_0
    const/high16 v0, -0x10000

    goto :goto_0
.end method

.method public get_localAssetsList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFileInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFilesListViewHelper$UploadSimulator;->_localAssetsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setUploadDetials(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;II)V
    .locals 1

    .prologue
    .line 42
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFilesListViewHelper$UploadSimulator;->_targetFolder:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    .line 43
    iput p2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFilesListViewHelper$UploadSimulator;->_count:I

    .line 44
    iput p3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFilesListViewHelper$UploadSimulator;->_failCount:I

    .line 45
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFilesListViewHelper$UploadSimulator;->createLocalAssetsList()V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFilesListViewHelper$UploadSimulator;->_failedSofar:I

    .line 47
    return-void
.end method

.method public startUpload()V
    .locals 4

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFilesListViewHelper$UploadSimulator;->get_localAssetsList()Ljava/util/ArrayList;

    move-result-object v1

    .line 81
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 82
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 83
    new-instance v3, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeCCFilesUploader;

    invoke-direct {v3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeCCFilesUploader;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    :cond_0
    const-class v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager;->getInstance(Ljava/lang/Class;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager;

    move-result-object v0

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFilesListViewHelper$UploadSimulator;->_targetFolder:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    invoke-virtual {v0, v1, v3, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager;->createAndStartUploadSession(Ljava/util/ArrayList;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadDestination;Ljava/util/List;)V

    .line 86
    return-void
.end method

.method public uploadAsset(Ljava/net/URL;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;",
            "Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 99
    new-instance v3, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AssetUploadState;

    invoke-direct {v3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AssetUploadState;-><init>()V

    .line 100
    const/4 v1, 0x0

    iput v1, v3, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AssetUploadState;->progress:I

    .line 101
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFilesListViewHelper$UploadSimulator;->shouldAssetFail(Ljava/net/URL;)Z

    move-result v4

    .line 103
    new-instance v6, Ljava/util/Timer;

    invoke-direct {v6}, Ljava/util/Timer;-><init>()V

    .line 105
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFilesListViewHelper$UploadSimulator$1;

    move-object v2, p0

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFilesListViewHelper$UploadSimulator$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFilesListViewHelper$UploadSimulator;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AssetUploadState;ZLcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;Ljava/util/Timer;)V

    .line 125
    new-instance v7, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFilesListViewHelper$UploadSimulator$2;

    invoke-direct {v7, p0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFilesListViewHelper$UploadSimulator$2;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFilesListViewHelper$UploadSimulator;Ljava/lang/Runnable;)V

    .line 132
    const-wide/16 v8, 0x64

    const-wide/16 v10, 0xc8

    invoke-virtual/range {v6 .. v11}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 133
    return-void
.end method
