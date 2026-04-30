.class public Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;
.super Landroid/support/v4/app/Fragment;
.source "BehanceSDKCCBrowserHeadlessFragment.java"


# static fields
.field private static final BEHANCE_SDK_ASSET_BROWSER_LAUNCH_REQUEST_CODE:I = 0x263a

.field public static final HEIGHT:Ljava/lang/String; = "height"

.field public static final IMAGE_GIF:Ljava/lang/String; = "image/gif"

.field public static final IMAGE_JPEG:Ljava/lang/String; = "image/jpeg"

.field public static final IMAGE_PNG:Ljava/lang/String; = "image/png"

.field private static final MAX_WIDTH_HEIGHT:I = 0xa00

.field public static final WIDTH:Ljava/lang/String; = "width"

.field private static final logger:Lcom/behance/sdk/logger/ILogger;


# instance fields
.field private downloadErrors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private files:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private imageValidatorType:Ljava/lang/String;

.field private invalidFile:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private volatile isDownloadInProgress:Z

.field private listener:Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$ICreativeCloudAssetDownloadListener;

.field private mSelectedAssetsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;",
            ">;"
        }
    .end annotation
.end field

.field private tempStorageFolder:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    const-class v0, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;

    invoke-static {v0}, Lcom/behance/sdk/logger/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/behance/sdk/logger/ILogger;

    move-result-object v0

    sput-object v0, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->logger:Lcom/behance/sdk/logger/ILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 123
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->isDownloadInProgress:Z

    .line 124
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->setRetainInstance(Z)V

    .line 125
    return-void
.end method

.method static synthetic access$000(Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;[BLjava/io/File;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->saveDatatoFile([BLjava/io/File;)V

    return-void
.end method

.method static synthetic access$100(Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;)Lcom/behance/sdk/factory/IBehanceSDKImageValidator;
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->getImageValidator()Lcom/behance/sdk/factory/IBehanceSDKImageValidator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;Ljava/io/File;)Lcom/behance/sdk/factory/BehanceSDKImageProperties;
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->getImageProperties(Ljava/io/File;)Lcom/behance/sdk/factory/BehanceSDKImageProperties;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->files:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->invalidFile:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;I)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->checkForDownloadComplete(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->downloadErrors:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->showMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;)Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$ICreativeCloudAssetDownloadListener;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->listener:Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$ICreativeCloudAssetDownloadListener;

    return-object v0
.end method

.method private checkForDownloadComplete(I)V
    .locals 4

    .prologue
    .line 651
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->files:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->downloadErrors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->invalidFile:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 652
    if-ne v0, p1, :cond_1

    .line 653
    invoke-direct {p0}, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->moveFileToPicturesDirectory()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->files:Ljava/util/List;

    .line 654
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->listener:Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$ICreativeCloudAssetDownloadListener;

    if-eqz v0, :cond_0

    .line 655
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->listener:Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$ICreativeCloudAssetDownloadListener;

    iget-object v1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->files:Ljava/util/List;

    iget-object v2, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->downloadErrors:Ljava/util/List;

    iget-object v3, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->invalidFile:Ljava/util/List;

    invoke-interface {v0, v1, v2, v3}, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$ICreativeCloudAssetDownloadListener;->onDownloadComplete(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 657
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->isDownloadInProgress:Z

    .line 660
    :cond_1
    return-void
.end method

.method private computeImageDimensions(Ljava/io/File;Lcom/behance/sdk/factory/BehanceSDKImageProperties;)V
    .locals 2

    .prologue
    .line 686
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 687
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 688
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 689
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 690
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {p2, v1}, Lcom/behance/sdk/factory/BehanceSDKImageProperties;->setWidth(I)V

    .line 691
    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {p2, v0}, Lcom/behance/sdk/factory/BehanceSDKImageProperties;->setHeight(I)V

    .line 692
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/behance/sdk/factory/BehanceSDKImageProperties;->setSize(J)V

    .line 695
    :cond_0
    return-void
.end method

.method private downloadOriginalFile(ILcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;Ljava/io/File;)V
    .locals 2

    .prologue
    .line 611
    new-instance v0, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$11;

    invoke-direct {v0, p0, p3, p1}, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$11;-><init>(Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;Ljava/io/File;I)V

    .line 644
    invoke-virtual {p3}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {p2, v1, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->downloadAssetFile(Ljava/net/URI;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;)V

    .line 646
    return-void
.end method

.method private downloadRendition(ILcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;Ljava/io/File;)V
    .locals 3

    .prologue
    const/high16 v1, 0x45200000    # 2560.0f

    .line 560
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;

    invoke-direct {v0, v1, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;-><init>(FF)V

    .line 561
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->getRenditionType(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;

    move-result-object v1

    .line 562
    new-instance v2, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$10;

    invoke-direct {v2, p0, p3, p1}, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$10;-><init>(Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;Ljava/io/File;I)V

    .line 605
    invoke-virtual {p2, v1, v0, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->getRenditionWithType(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;)V

    .line 607
    return-void
.end method

.method private downloadRendition(ILcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;Ljava/io/File;)V
    .locals 1

    .prologue
    .line 502
    new-instance v0, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$9;

    invoke-direct {v0, p0, p3, p1}, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$9;-><init>(Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;Ljava/io/File;I)V

    .line 539
    invoke-static {p2, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;->getRenditionForAsset(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;)V

    .line 540
    return-void
.end method

.method private getImageProperties(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;)Lcom/behance/sdk/factory/BehanceSDKImageProperties;
    .locals 6

    .prologue
    .line 737
    new-instance v1, Lcom/behance/sdk/factory/BehanceSDKImageProperties;

    invoke-direct {v1}, Lcom/behance/sdk/factory/BehanceSDKImageProperties;-><init>()V

    .line 738
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->getFileSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/behance/sdk/factory/BehanceSDKImageProperties;->setSize(J)V

    .line 739
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/behance/sdk/util/BehanceSDKUtils;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 740
    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 741
    const-string/jumbo v0, "png"

    invoke-virtual {v1, v0}, Lcom/behance/sdk/factory/BehanceSDKImageProperties;->setType(Ljava/lang/String;)V

    .line 744
    :goto_0
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->getOptionalMetadata()Lorg/json/JSONObject;

    move-result-object v0

    .line 745
    if-eqz v0, :cond_0

    .line 746
    const-string/jumbo v2, "height"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "width"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 748
    :try_start_0
    const-string/jumbo v2, "height"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 749
    const-string/jumbo v3, "width"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 750
    invoke-virtual {v1, v2}, Lcom/behance/sdk/factory/BehanceSDKImageProperties;->setHeight(I)V

    .line 751
    invoke-virtual {v1, v0}, Lcom/behance/sdk/factory/BehanceSDKImageProperties;->setWidth(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 757
    :cond_0
    :goto_1
    return-object v1

    .line 743
    :cond_1
    invoke-virtual {v1, v0}, Lcom/behance/sdk/factory/BehanceSDKImageProperties;->setType(Ljava/lang/String;)V

    goto :goto_0

    .line 752
    :catch_0
    move-exception v0

    .line 753
    sget-object v2, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->logger:Lcom/behance/sdk/logger/ILogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception parsing image metadata of CC asset file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/behance/sdk/logger/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private getImageProperties(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;)Lcom/behance/sdk/factory/BehanceSDKImageProperties;
    .locals 6

    .prologue
    .line 711
    new-instance v1, Lcom/behance/sdk/factory/BehanceSDKImageProperties;

    invoke-direct {v1}, Lcom/behance/sdk/factory/BehanceSDKImageProperties;-><init>()V

    .line 712
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->getSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/behance/sdk/factory/BehanceSDKImageProperties;->setSize(J)V

    .line 713
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/behance/sdk/util/BehanceSDKUtils;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 714
    const-string/jumbo v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 715
    const-string/jumbo v0, "png"

    invoke-virtual {v1, v0}, Lcom/behance/sdk/factory/BehanceSDKImageProperties;->setType(Ljava/lang/String;)V

    .line 718
    :goto_0
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->getMetadata()Lorg/json/JSONObject;

    move-result-object v0

    .line 719
    if-eqz v0, :cond_0

    .line 720
    const-string/jumbo v2, "height"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "width"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 722
    :try_start_0
    const-string/jumbo v2, "height"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 723
    const-string/jumbo v3, "width"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 724
    invoke-virtual {v1, v2}, Lcom/behance/sdk/factory/BehanceSDKImageProperties;->setHeight(I)V

    .line 725
    invoke-virtual {v1, v0}, Lcom/behance/sdk/factory/BehanceSDKImageProperties;->setWidth(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 730
    :cond_0
    :goto_1
    return-object v1

    .line 717
    :cond_1
    invoke-virtual {v1, v0}, Lcom/behance/sdk/factory/BehanceSDKImageProperties;->setType(Ljava/lang/String;)V

    goto :goto_0

    .line 726
    :catch_0
    move-exception v0

    .line 727
    sget-object v2, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->logger:Lcom/behance/sdk/logger/ILogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception parsing image metadata of CC photo asset "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/behance/sdk/logger/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private getImageProperties(Ljava/io/File;)Lcom/behance/sdk/factory/BehanceSDKImageProperties;
    .locals 3

    .prologue
    .line 699
    new-instance v0, Lcom/behance/sdk/factory/BehanceSDKImageProperties;

    invoke-direct {v0}, Lcom/behance/sdk/factory/BehanceSDKImageProperties;-><init>()V

    .line 700
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/behance/sdk/util/BehanceSDKUtils;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 701
    const-string/jumbo v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 702
    const-string/jumbo v1, "png"

    invoke-virtual {v0, v1}, Lcom/behance/sdk/factory/BehanceSDKImageProperties;->setType(Ljava/lang/String;)V

    .line 705
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->computeImageDimensions(Ljava/io/File;Lcom/behance/sdk/factory/BehanceSDKImageProperties;)V

    .line 706
    return-object v0

    .line 704
    :cond_0
    invoke-virtual {v0, v1}, Lcom/behance/sdk/factory/BehanceSDKImageProperties;->setType(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getImageValidator()Lcom/behance/sdk/factory/IBehanceSDKImageValidator;
    .locals 2

    .prologue
    .line 680
    invoke-static {}, Lcom/behance/sdk/factory/BehanceSDKImageValidatorFactory;->getInstance()Lcom/behance/sdk/factory/BehanceSDKImageValidatorFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->imageValidatorType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/behance/sdk/factory/BehanceSDKImageValidatorFactory;->getImageValidator(Ljava/lang/String;)Lcom/behance/sdk/factory/IBehanceSDKImageValidator;

    move-result-object v0

    return-object v0
.end method

.method private getRenditionType(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;
    .locals 1

    .prologue
    .line 763
    const-string/jumbo v0, "image/gif"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 764
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;->ADOBE_ASSET_FILE_RENDITION_TYPE_GIF:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;

    .line 770
    :goto_0
    return-object v0

    .line 765
    :cond_0
    const-string/jumbo v0, "image/png"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 766
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;->ADOBE_ASSET_FILE_RENDITION_TYPE_PNG:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;

    goto :goto_0

    .line 767
    :cond_1
    const-string/jumbo v0, "image/jpeg"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 768
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;->ADOBE_ASSET_FILE_RENDITION_TYPE_JPEG:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;

    goto :goto_0

    .line 770
    :cond_2
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;->ADOBE_ASSET_FILE_RENDITION_TYPE_JPEG:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;

    goto :goto_0
.end method

.method private getStorageDirectoryForDownload()Ljava/io/File;
    .locals 4

    .prologue
    .line 793
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/CC"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 794
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 795
    invoke-static {v0}, Lcom/behance/sdk/util/BehanceSDKUtils;->deleteRecursive(Ljava/io/File;)V

    .line 797
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 798
    return-object v0
.end method

.method private getUpdatedName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 184
    invoke-static {p1}, Lcom/behance/sdk/util/BehanceSDKUtils;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 186
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 189
    :cond_0
    return-object p1
.end method

.method private moveFileToPicturesDirectory()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 664
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 665
    sget-object v0, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 666
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->files:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 667
    new-instance v4, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 668
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 669
    invoke-virtual {v0, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 670
    :cond_0
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 672
    :cond_1
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->tempStorageFolder:Ljava/io/File;

    invoke-static {v0}, Lcom/behance/sdk/util/BehanceSDKUtils;->deleteRecursive(Ljava/io/File;)V

    .line 673
    return-object v1
.end method

.method private processComp(ILcom/adobe/creativesdk/foundation/storage/AdobeSelectionCompFile;)V
    .locals 6

    .prologue
    .line 308
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionCompFile;->getSelectedPageIndex()I

    move-result v3

    .line 309
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionCompFile;->getSelectedItem()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetCompFile;

    move-result-object v2

    .line 310
    new-instance v4, Ljava/io/File;

    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->tempStorageFolder:Ljava/io/File;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetCompFile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->getUpdatedName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 312
    new-instance v0, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$3;

    move-object v1, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$3;-><init>(Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetCompFile;ILjava/io/File;I)V

    new-instance v1, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$4;

    invoke-direct {v1, p0}, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$4;-><init>(Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;)V

    invoke-virtual {v2, v0, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetCompFile;->loadMetadata(Lcom/adobe/creativesdk/foundation/storage/IAdobeRequestCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V

    .line 365
    return-void
.end method

.method private processDraw(ILcom/adobe/creativesdk/foundation/storage/AdobeSelectionDrawAsset;)V
    .locals 6

    .prologue
    .line 247
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionDrawAsset;->getSelectedPageIndex()I

    move-result v3

    .line 248
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionDrawAsset;->getSelectedItem()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDrawFile;

    move-result-object v2

    .line 249
    new-instance v4, Ljava/io/File;

    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->tempStorageFolder:Ljava/io/File;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDrawFile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->getUpdatedName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 251
    new-instance v0, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$1;

    move-object v1, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$1;-><init>(Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDrawFile;ILjava/io/File;I)V

    new-instance v1, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$2;

    invoke-direct {v1, p0}, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$2;-><init>(Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;)V

    invoke-virtual {v2, v0, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDrawFile;->loadMetadata(Lcom/adobe/creativesdk/foundation/storage/IAdobeRequestCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V

    .line 303
    return-void
.end method

.method private processImage(ILcom/adobe/creativesdk/foundation/storage/AdobeSelectionAssetFile;)V
    .locals 4

    .prologue
    .line 544
    invoke-direct {p0}, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->getImageValidator()Lcom/behance/sdk/factory/IBehanceSDKImageValidator;

    .line 545
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionAssetFile;->getSelectedItem()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    move-result-object v0

    .line 546
    invoke-direct {p0, v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->getImageProperties(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;)Lcom/behance/sdk/factory/BehanceSDKImageProperties;

    .line 547
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->tempStorageFolder:Ljava/io/File;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->getUpdatedName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 551
    invoke-direct {p0, p1, v0, v1}, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->downloadOriginalFile(ILcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;Ljava/io/File;)V

    .line 555
    return-void
.end method

.method private processLibraryItem(ILcom/adobe/creativesdk/foundation/storage/AdobeSelectionLibraryAsset;)V
    .locals 4

    .prologue
    .line 228
    .line 229
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionLibraryAsset;->getSelectedImageIDs()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionLibraryAsset;->getSelectedItem()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;

    move-result-object v0

    .line 231
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->getImages()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionLibraryAsset;->getSelectedImageIDs()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemImage;

    .line 232
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->tempStorageFolder:Ljava/io/File;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemImage;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->getUpdatedName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 234
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemImage;->getPrimaryComponentType()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "image/vnd.adobe.shape+svg"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 235
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemImage;->getRendition()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    move-result-object v0

    .line 239
    :goto_0
    if-eqz v0, :cond_0

    .line 240
    invoke-direct {p0, p1, v0, v1}, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->downloadRendition(ILcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;Ljava/io/File;)V

    .line 243
    :cond_0
    return-void

    .line 237
    :cond_1
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemImage;->getImage()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    move-result-object v0

    goto :goto_0
.end method

.method private processMix(ILcom/adobe/creativesdk/foundation/storage/AdobeSelectionPSMixFile;)V
    .locals 6

    .prologue
    .line 368
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionPSMixFile;->getSelectedPageIndex()I

    move-result v3

    .line 369
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionPSMixFile;->getSelectedItem()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSMixFile;

    move-result-object v2

    .line 370
    new-instance v4, Ljava/io/File;

    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->tempStorageFolder:Ljava/io/File;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSMixFile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->getUpdatedName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 371
    new-instance v0, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$5;

    move-object v1, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$5;-><init>(Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSMixFile;ILjava/io/File;I)V

    new-instance v1, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$6;

    invoke-direct {v1, p0}, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$6;-><init>(Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;)V

    invoke-virtual {v2, v0, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSMixFile;->loadMetadata(Lcom/adobe/creativesdk/foundation/storage/IAdobeRequestCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V

    .line 422
    return-void
.end method

.method private processPhoto(ILcom/adobe/creativesdk/foundation/storage/AdobeSelectionPhotoAsset;)V
    .locals 5

    .prologue
    .line 489
    invoke-direct {p0}, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->getImageValidator()Lcom/behance/sdk/factory/IBehanceSDKImageValidator;

    move-result-object v0

    .line 490
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionPhotoAsset;->getSelectedItem()Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;

    move-result-object v1

    .line 491
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->tempStorageFolder:Ljava/io/File;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->getUpdatedName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 492
    invoke-direct {p0, v1}, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->getImageProperties(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;)Lcom/behance/sdk/factory/BehanceSDKImageProperties;

    move-result-object v3

    .line 493
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-interface {v0, v4, v3}, Lcom/behance/sdk/factory/IBehanceSDKImageValidator;->validate(Landroid/content/Context;Lcom/behance/sdk/factory/BehanceSDKImageProperties;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 494
    :cond_0
    invoke-direct {p0, p1, v1, v2}, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->downloadRendition(ILcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;Ljava/io/File;)V

    .line 499
    :goto_0
    return-void

    .line 496
    :cond_1
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->invalidFile:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private processSketch(ILcom/adobe/creativesdk/foundation/storage/AdobeSelectionSketchAsset;)V
    .locals 6

    .prologue
    .line 426
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionSketchAsset;->getSelectedPageIndex()I

    move-result v3

    .line 427
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionSketchAsset;->getSelectedItem()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetSketchbook;

    move-result-object v2

    .line 428
    new-instance v4, Ljava/io/File;

    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->tempStorageFolder:Ljava/io/File;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetSketchbook;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->getUpdatedName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 431
    new-instance v0, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$7;

    move-object v1, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$7;-><init>(Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetSketchbook;ILjava/io/File;I)V

    new-instance v1, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$8;

    invoke-direct {v1, p0}, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$8;-><init>(Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;)V

    invoke-virtual {v2, v0, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetSketchbook;->loadMetadata(Lcom/adobe/creativesdk/foundation/storage/IAdobeRequestCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V

    .line 485
    return-void
.end method

.method private saveDatatoFile([BLjava/io/File;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 777
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 778
    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 779
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 790
    :cond_0
    :goto_0
    return-void

    .line 780
    :catch_0
    move-exception v0

    .line 781
    invoke-virtual {p0}, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 782
    sget v1, Lcom/behance/sdk/R$string;->bsdk_cc_asset_browser_file_download_error:I

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 783
    sget-object v2, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->logger:Lcom/behance/sdk/logger/ILogger;

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-interface {v2, v1, v3}, Lcom/behance/sdk/logger/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 784
    invoke-direct {p0, v1}, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->showMessage(Ljava/lang/String;)V

    .line 786
    :cond_1
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->downloadErrors:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 787
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->listener:Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$ICreativeCloudAssetDownloadListener;

    if-eqz v0, :cond_0

    .line 788
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->listener:Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$ICreativeCloudAssetDownloadListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$ICreativeCloudAssetDownloadListener;->onDownloadError(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;)V

    goto :goto_0
.end method

.method private showMessage(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 803
    invoke-virtual {p0}, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 804
    return-void
.end method


# virtual methods
.method public declared-synchronized cancelDownload()V
    .locals 5

    .prologue
    const/16 v4, 0xa00

    .line 154
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->mSelectedAssetsList:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->mSelectedAssetsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 155
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->mSelectedAssetsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;

    .line 156
    instance-of v2, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionAssetFile;

    if-eqz v2, :cond_0

    .line 157
    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionAssetFile;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionAssetFile;->getSelectedItem()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    move-result-object v0

    .line 158
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->cancelDataRequest()V

    .line 159
    invoke-direct {p0, v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->getImageProperties(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;)Lcom/behance/sdk/factory/BehanceSDKImageProperties;

    move-result-object v2

    .line 160
    invoke-virtual {v2}, Lcom/behance/sdk/factory/BehanceSDKImageProperties;->getHeight()I

    move-result v3

    if-gt v3, v4, :cond_1

    invoke-virtual {v2}, Lcom/behance/sdk/factory/BehanceSDKImageProperties;->getWidth()I

    move-result v2

    if-le v2, v4, :cond_2

    .line 161
    :cond_1
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->cancelRenditionRequest()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 154
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 163
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->cancelDataRequest()V

    goto :goto_0

    .line 167
    :cond_3
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->files:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->files:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 168
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->files:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 169
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 170
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 174
    :cond_5
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->tempStorageFolder:Ljava/io/File;

    invoke-static {v0}, Lcom/behance/sdk/util/BehanceSDKUtils;->deleteRecursive(Ljava/io/File;)V

    .line 175
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->mSelectedAssetsList:Ljava/util/ArrayList;

    .line 176
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->files:Ljava/util/List;

    .line 177
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->downloadErrors:Ljava/util/List;

    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->invalidFile:Ljava/util/List;

    .line 180
    :cond_6
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->isDownloadInProgress:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized downloadSelectedFiles(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 193
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->isDownloadInProgress:Z

    .line 194
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser$ResultProvider;

    invoke-direct {v0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser$ResultProvider;-><init>(Landroid/content/Intent;)V

    .line 195
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser$ResultProvider;->getSelectionAssetArray()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->mSelectedAssetsList:Ljava/util/ArrayList;

    .line 196
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->mSelectedAssetsList:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->mSelectedAssetsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 197
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->mSelectedAssetsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->files:Ljava/util/List;

    .line 199
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->downloadErrors:Ljava/util/List;

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->invalidFile:Ljava/util/List;

    .line 201
    invoke-direct {p0}, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->getStorageDirectoryForDownload()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->tempStorageFolder:Ljava/io/File;

    .line 203
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->mSelectedAssetsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;

    .line 204
    instance-of v3, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionAssetFile;

    if-eqz v3, :cond_1

    .line 205
    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionAssetFile;

    invoke-direct {p0, v1, v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->processImage(ILcom/adobe/creativesdk/foundation/storage/AdobeSelectionAssetFile;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 193
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 206
    :cond_1
    :try_start_1
    instance-of v3, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionPhotoAsset;

    if-eqz v3, :cond_2

    .line 207
    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionPhotoAsset;

    invoke-direct {p0, v1, v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->processPhoto(ILcom/adobe/creativesdk/foundation/storage/AdobeSelectionPhotoAsset;)V

    goto :goto_0

    .line 208
    :cond_2
    instance-of v3, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionLibraryAsset;

    if-eqz v3, :cond_3

    .line 209
    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionLibraryAsset;

    invoke-direct {p0, v1, v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->processLibraryItem(ILcom/adobe/creativesdk/foundation/storage/AdobeSelectionLibraryAsset;)V

    goto :goto_0

    .line 210
    :cond_3
    instance-of v3, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionDrawAsset;

    if-eqz v3, :cond_4

    .line 211
    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionDrawAsset;

    invoke-direct {p0, v1, v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->processDraw(ILcom/adobe/creativesdk/foundation/storage/AdobeSelectionDrawAsset;)V

    goto :goto_0

    .line 212
    :cond_4
    instance-of v3, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionSketchAsset;

    if-eqz v3, :cond_5

    .line 213
    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionSketchAsset;

    invoke-direct {p0, v1, v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->processSketch(ILcom/adobe/creativesdk/foundation/storage/AdobeSelectionSketchAsset;)V

    goto :goto_0

    .line 214
    :cond_5
    instance-of v3, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionCompFile;

    if-eqz v3, :cond_6

    .line 215
    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionCompFile;

    invoke-direct {p0, v1, v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->processComp(ILcom/adobe/creativesdk/foundation/storage/AdobeSelectionCompFile;)V

    goto :goto_0

    .line 216
    :cond_6
    instance-of v3, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionPSMixFile;

    if-eqz v3, :cond_0

    .line 217
    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionPSMixFile;

    invoke-direct {p0, v1, v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->processMix(ILcom/adobe/creativesdk/foundation/storage/AdobeSelectionPSMixFile;)V

    goto :goto_0

    .line 221
    :cond_7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->isDownloadInProgress:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 224
    :cond_8
    monitor-exit p0

    return-void
.end method

.method public isDownloadInProgress()Z
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->isDownloadInProgress:Z

    return v0
.end method

.method public launchCCAssetBrowser(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;
        }
    .end annotation

    .prologue
    .line 131
    const-string/jumbo v0, "ARGS_IMAGE_VALIDATOR_TYPE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->imageValidatorType:Ljava/lang/String;

    .line 134
    new-instance v1, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowserConfiguration;

    invoke-direct {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowserConfiguration;-><init>()V

    .line 135
    const-string/jumbo v0, "ARGS_ASSET_BROWSER_OPTIONS"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 136
    if-eqz v0, :cond_0

    .line 137
    check-cast v0, Ljava/util/EnumSet;

    iput-object v0, v1, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowserConfiguration;->options:Ljava/util/EnumSet;

    .line 138
    :cond_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDesignLibraryItemType;->AdobeAssetDesignLibraryItemImages:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDesignLibraryItemType;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sget-object v2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDesignLibraryItemFilterType;->ADOBE_ASSET_DESIGNLIBRARYITEM_FILTER_INCLUSION:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDesignLibraryItemFilterType;

    invoke-static {v0, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDesignLibraryItemFilter;->createFromDesignLibraryItems(Ljava/util/EnumSet;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDesignLibraryItemFilterType;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDesignLibraryItemFilter;

    move-result-object v0

    iput-object v0, v1, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowserConfiguration;->designLibraryItemFilter:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDesignLibraryItemFilter;

    .line 140
    const-string/jumbo v0, "ARGS_ALLOWED_MIME_TYPES"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 141
    if-eqz v0, :cond_1

    .line 142
    check-cast v0, Ljava/util/EnumSet;

    sget-object v2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMIMETypeFilterType;->ADOBE_ASSET_MIMETYPE_FILTERTYPE_INCLUSION:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMIMETypeFilterType;

    invoke-static {v0, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMIMETypeFilter;->createFromMimeTypes(Ljava/util/EnumSet;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMIMETypeFilterType;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMIMETypeFilter;

    move-result-object v0

    iput-object v0, v1, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowserConfiguration;->mimeTypeFilter:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMIMETypeFilter;

    .line 147
    :cond_1
    invoke-static {}, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser;->getSharedInstance()Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser;

    move-result-object v0

    .line 148
    const/16 v2, 0x263a

    invoke-virtual {v0, p1, v2, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser;->popupFileBrowser(Landroid/app/Activity;ILcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowserConfiguration;)V

    .line 150
    return-void
.end method

.method public removeDownloadListener()V
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->listener:Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$ICreativeCloudAssetDownloadListener;

    .line 121
    return-void
.end method

.method public setDownloadListener(Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$ICreativeCloudAssetDownloadListener;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->listener:Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$ICreativeCloudAssetDownloadListener;

    .line 117
    return-void
.end method
