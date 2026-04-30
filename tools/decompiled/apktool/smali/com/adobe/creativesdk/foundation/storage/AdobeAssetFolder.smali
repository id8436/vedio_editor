.class public Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;
.super Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;
.source "AdobeAssetFolder.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadDestination;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;",
        "Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadDestination",
        "<",
        "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final CACHENAME:Ljava/lang/String; = "com.adobe.cc.storage"

.field private static final T:Ljava/lang/String;


# instance fields
.field protected asrCollection:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

.field protected firstPageLoaded:Z

.field private itemsFetchedSoFar:I

.field private latestModifiedAssetFileCreated:Ljava/lang/String;

.field private latestModifiedAssetFileHeight:J

.field private latestModifiedAssetFileId:Ljava/lang/String;

.field private latestModifiedAssetFileMd5:Ljava/lang/String;

.field private latestModifiedAssetFileModified:Ljava/lang/String;

.field private latestModifiedAssetFileName:Ljava/lang/String;

.field private latestModifiedAssetFilePages:I

.field private latestModifiedAssetFileSize:J

.field private latestModifiedAssetFileType:Ljava/lang/String;

.field private latestModifiedAssetFileWidth:J

.field private numFiles:I

.field private numFolders:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    const-class v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->T:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 465
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;-><init>()V

    .line 93
    iput v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->itemsFetchedSoFar:I

    .line 95
    iput v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->numFolders:I

    .line 96
    iput v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->numFiles:I

    .line 97
    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->latestModifiedAssetFileType:Ljava/lang/String;

    .line 98
    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->latestModifiedAssetFileName:Ljava/lang/String;

    .line 99
    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->latestModifiedAssetFileId:Ljava/lang/String;

    .line 100
    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->latestModifiedAssetFileCreated:Ljava/lang/String;

    .line 101
    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->latestModifiedAssetFileModified:Ljava/lang/String;

    .line 102
    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->latestModifiedAssetFileMd5:Ljava/lang/String;

    .line 103
    iput-wide v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->latestModifiedAssetFileSize:J

    .line 104
    iput v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->latestModifiedAssetFilePages:I

    .line 105
    iput-wide v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->latestModifiedAssetFileHeight:J

    .line 106
    iput-wide v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->latestModifiedAssetFileWidth:J

    .line 467
    return-void
.end method

.method protected constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderByProperty;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderRelation;Ljava/net/URI;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 442
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;-><init>()V

    .line 93
    iput v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->itemsFetchedSoFar:I

    .line 95
    iput v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->numFolders:I

    .line 96
    iput v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->numFiles:I

    .line 97
    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->latestModifiedAssetFileType:Ljava/lang/String;

    .line 98
    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->latestModifiedAssetFileName:Ljava/lang/String;

    .line 99
    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->latestModifiedAssetFileId:Ljava/lang/String;

    .line 100
    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->latestModifiedAssetFileCreated:Ljava/lang/String;

    .line 101
    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->latestModifiedAssetFileModified:Ljava/lang/String;

    .line 102
    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->latestModifiedAssetFileMd5:Ljava/lang/String;

    .line 103
    iput-wide v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->latestModifiedAssetFileSize:J

    .line 104
    iput v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->latestModifiedAssetFilePages:I

    .line 105
    iput-wide v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->latestModifiedAssetFileHeight:J

    .line 106
    iput-wide v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->latestModifiedAssetFileWidth:J

    .line 443
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->asrCollection:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    .line 444
    iget-object v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->internalID:Ljava/lang/String;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->GUID:Ljava/lang/String;

    .line 445
    iget-object v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->href:Ljava/net/URI;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->href:Ljava/net/URI;

    .line 446
    iget-object v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->etag:Ljava/lang/String;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->etag:Ljava/lang/String;

    .line 447
    iget-object v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->name:Ljava/lang/String;

    .line 448
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->getCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->mCloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    .line 449
    iput-object p4, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->parentHref:Ljava/net/URI;

    .line 450
    iget-object v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->created:Ljava/lang/String;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageUtils;->convertStringToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->creationDate:Ljava/util/Date;

    .line 451
    iget-object v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->modified:Ljava/lang/String;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageUtils;->convertStringToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->modificationDate:Ljava/util/Date;

    .line 452
    iget-object v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->links:Lorg/json/JSONObject;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->links:Lorg/json/JSONObject;

    .line 454
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->asrCollection:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    invoke-virtual {v0, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->setOrderBy(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderByProperty;)V

    .line 455
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->asrCollection:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    invoke-virtual {v0, p3}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->setOrder(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderRelation;)V

    .line 456
    iput-boolean v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->firstPageLoaded:Z

    .line 457
    return-void
.end method

.method protected constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;)V
    .locals 3

    .prologue
    .line 461
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->getOrderBy()Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderByProperty;

    move-result-object v0

    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->getOrder()Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderRelation;

    move-result-object v1

    iget-object v2, p2, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->href:Ljava/net/URI;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderByProperty;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderRelation;Ljava/net/URI;)V

    .line 462
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->getPageDataFromServer(Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V

    return-void
.end method

.method static synthetic access$100(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;)I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->numFolders:I

    return v0
.end method

.method static synthetic access$1000(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;)I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->latestModifiedAssetFilePages:I

    return v0
.end method

.method static synthetic access$1002(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;I)I
    .locals 0

    .prologue
    .line 78
    iput p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->latestModifiedAssetFilePages:I

    return p1
.end method

.method static synthetic access$108(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;)I
    .locals 2

    .prologue
    .line 78
    iget v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->numFolders:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->numFolders:I

    return v0
.end method

.method static synthetic access$1100(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;)J
    .locals 2

    .prologue
    .line 78
    iget-wide v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->latestModifiedAssetFileHeight:J

    return-wide v0
.end method

.method static synthetic access$1102(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;J)J
    .locals 1

    .prologue
    .line 78
    iput-wide p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->latestModifiedAssetFileHeight:J

    return-wide p1
.end method

.method static synthetic access$1200(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;)J
    .locals 2

    .prologue
    .line 78
    iget-wide v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->latestModifiedAssetFileWidth:J

    return-wide v0
.end method

.method static synthetic access$1202(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;J)J
    .locals 1

    .prologue
    .line 78
    iput-wide p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->latestModifiedAssetFileWidth:J

    return-wide p1
.end method

.method static synthetic access$1300(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;)I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->itemsFetchedSoFar:I

    return v0
.end method

.method static synthetic access$1302(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;I)I
    .locals 0

    .prologue
    .line 78
    iput p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->itemsFetchedSoFar:I

    return p1
.end method

.method static synthetic access$1400(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->pageDataFetchHelper(Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic access$200(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;)I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->numFiles:I

    return v0
.end method

.method static synthetic access$208(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;)I
    .locals 2

    .prologue
    .line 78
    iget v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->numFiles:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->numFiles:I

    return v0
.end method

.method static synthetic access$300(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->latestModifiedAssetFileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->latestModifiedAssetFileName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->latestModifiedAssetFileType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->latestModifiedAssetFileType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;)J
    .locals 2

    .prologue
    .line 78
    iget-wide v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->latestModifiedAssetFileSize:J

    return-wide v0
.end method

.method static synthetic access$502(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;J)J
    .locals 1

    .prologue
    .line 78
    iput-wide p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->latestModifiedAssetFileSize:J

    return-wide p1
.end method

.method static synthetic access$600(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->latestModifiedAssetFileMd5:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->latestModifiedAssetFileMd5:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->latestModifiedAssetFileId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->latestModifiedAssetFileId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->latestModifiedAssetFileCreated:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->latestModifiedAssetFileCreated:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->latestModifiedAssetFileModified:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->latestModifiedAssetFileModified:Ljava/lang/String;

    return-object p1
.end method

.method public static create(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;",
            ">;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 404
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getSharedCloudManager()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getDefaultCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v0

    invoke-static {p0, p1, v0, p2, p3}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->create(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V

    .line 405
    return-void
.end method

.method protected static create(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;",
            ">;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 575
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->getSharedAuthManagerRestricted()Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;

    move-result-object v0

    new-instance v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$3;

    invoke-direct {v1, p4}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$3;-><init>(Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V

    const-string/jumbo v2, "Update requires an authenticated user."

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->checkAndCallErrorIfNotAuthenticated(Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 652
    :cond_0
    :goto_0
    return-void

    .line 586
    :cond_1
    if-eqz p1, :cond_0

    .line 588
    invoke-static {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;->getValidatedAssetName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 589
    if-nez v0, :cond_2

    .line 591
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 592
    const-string/jumbo v1, "ADOBE_ASSET_DETAILS_STRING_KEY"

    const-string/jumbo v2, "Illegal Characters in name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    const-string/jumbo v1, "AdobeNetworkHTTPStatus"

    const/16 v2, 0x190

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    new-instance v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;

    sget-object v2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;->AdobeAssetErrorFileReadFailure:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;

    invoke-direct {v1, v2, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;Ljava/util/HashMap;)V

    .line 595
    invoke-interface {p4, v1}, Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;->onError(Ljava/lang/Object;)V

    goto :goto_0

    .line 599
    :cond_2
    iget-object v1, p1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->href:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v1

    .line 600
    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 601
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 605
    :goto_1
    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 610
    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 612
    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->collectionFromHref(Ljava/net/URI;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    move-result-object v1

    .line 614
    new-instance v2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$4;

    invoke-direct {v2, p1, p3, p4}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$4;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V

    .line 641
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;->AdobeCloudServiceTypeStorage:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;

    invoke-virtual {p2, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->getSessionForService(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;)Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceSession;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;

    .line 642
    if-eqz v0, :cond_0

    .line 645
    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;->createDirectory(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;Lcom/adobe/creativesdk/foundation/internal/storage/model/services/IAdobeStorageCollectionRequestCompletionHandler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 647
    :catch_0
    move-exception v0

    .line 649
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0

    .line 603
    :cond_3
    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static getFolderFromDirectHref(Ljava/net/URI;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderBy;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderDirection;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 375
    .line 376
    if-nez p0, :cond_0

    move-object v0, v1

    .line 391
    :goto_0
    return-object v0

    .line 380
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->collectionFromHref(Ljava/net/URI;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    move-result-object v2

    .line 382
    new-instance v3, Ljava/net/URI;

    invoke-virtual {p0}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageLastPathComponentUtil;->stringByDeletingLastPathComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 384
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetFolderInternal;

    invoke-static {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->getStorageOrderByProperty(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderBy;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderByProperty;

    move-result-object v4

    .line 385
    invoke-static {p2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->getStorageOrderRelation(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderDirection;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderRelation;

    move-result-object v5

    invoke-direct {v0, v2, v4, v5, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetFolderInternal;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderByProperty;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderRelation;Ljava/net/URI;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 386
    :try_start_1
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getSharedCloudManager()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getDefaultCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->setCloud(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 387
    :catch_0
    move-exception v1

    .line 389
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 387
    :catch_1
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_1
.end method

.method public static getFolderFromHref(Ljava/net/URI;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;
    .locals 1

    .prologue
    .line 329
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getSharedCloudManager()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getDefaultCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->getFolderFromHref(Ljava/net/URI;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    move-result-object v0

    return-object v0
.end method

.method protected static getFolderFromHref(Ljava/net/URI;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;
    .locals 2

    .prologue
    .line 540
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderBy;->ADOBE_ASSET_FOLDER_ORDER_BY_NAME:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderBy;

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderDirection;->ADOBE_ASSET_FOLDER_ORDER_ASCENDING:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderDirection;

    invoke-static {p0, p1, v0, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->getFolderFromHref(Ljava/net/URI;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderBy;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderDirection;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    move-result-object v0

    return-object v0
.end method

.method protected static getFolderFromHref(Ljava/net/URI;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderBy;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderDirection;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 545
    .line 546
    if-nez p0, :cond_0

    move-object v0, v1

    .line 570
    :goto_0
    return-object v0

    .line 549
    :cond_0
    invoke-virtual {p0}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v0

    .line 550
    const-string/jumbo v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 551
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 552
    :cond_1
    const-string/jumbo v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 553
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 557
    :cond_2
    :try_start_0
    new-instance v2, Ljava/net/URI;

    const-string/jumbo v3, "/files/%s/"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 558
    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->collectionFromHref(Ljava/net/URI;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    move-result-object v3

    .line 560
    new-instance v4, Ljava/net/URI;

    invoke-virtual {v2}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageLastPathComponentUtil;->stringByDeletingLastPathComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 562
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetFolderInternal;

    invoke-static {p2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->getStorageOrderByProperty(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderBy;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderByProperty;

    move-result-object v2

    .line 563
    invoke-static {p3}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->getStorageOrderRelation(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderDirection;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderRelation;

    move-result-object v5

    invoke-direct {v0, v3, v2, v5, v4}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetFolderInternal;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderByProperty;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderRelation;Ljava/net/URI;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 565
    :try_start_1
    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->setCloud(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 566
    :catch_0
    move-exception v1

    .line 568
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 566
    :catch_1
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_1
.end method

.method public static getFolderFromHref(Ljava/net/URI;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderBy;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderDirection;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;
    .locals 1

    .prologue
    .line 352
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getSharedCloudManager()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getDefaultCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v0

    invoke-static {p0, v0, p1, p2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->getFolderFromHref(Ljava/net/URI;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderBy;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderDirection;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    move-result-object v0

    return-object v0
.end method

.method private getPageDataFromServer(Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
            "<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 925
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->resetPaging()V

    .line 926
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->resourceCollection()Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->setLimit(I)V

    .line 927
    iput v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->itemsFetchedSoFar:I

    .line 928
    iput v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->numFiles:I

    .line 929
    iput v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->numFolders:I

    .line 930
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 931
    invoke-direct {p0, p1, p2, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->pageDataFetchHelper(Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Landroid/os/Handler;)V

    .line 932
    return-void
.end method

.method public static getRoot()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;
    .locals 1

    .prologue
    .line 304
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getSharedCloudManager()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getDefaultCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->rootInCloud(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    move-result-object v0

    return-object v0
.end method

.method public static getRootOrderedByField(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderBy;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderDirection;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;
    .locals 3

    .prologue
    .line 316
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getSharedCloudManager()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getDefaultCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v0

    invoke-static {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->getStorageOrderByProperty(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderBy;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderByProperty;

    move-result-object v1

    invoke-static {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->getStorageOrderRelation(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderDirection;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderRelation;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->rootInCloud(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderByProperty;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderRelation;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    move-result-object v0

    return-object v0
.end method

.method protected static getStorageOrderByProperty(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderBy;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderByProperty;
    .locals 2

    .prologue
    .line 485
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$8;->$SwitchMap$com$adobe$creativesdk$foundation$storage$AdobeAssetFolderOrderBy:[I

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderBy;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 492
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderByProperty;->ADOBE_STORAGE_ORDER_BY_NAME:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderByProperty;

    :goto_0
    return-object v0

    .line 488
    :pswitch_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderByProperty;->ADOBE_STORAGE_ORDER_BY_NAME:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderByProperty;

    goto :goto_0

    .line 490
    :pswitch_1
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderByProperty;->ADOBE_STORAGE_ORDER_BY_MODIFIED:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderByProperty;

    goto :goto_0

    .line 485
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected static getStorageOrderRelation(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderDirection;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderRelation;
    .locals 2

    .prologue
    .line 498
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$8;->$SwitchMap$com$adobe$creativesdk$foundation$storage$AdobeAssetFolderOrderDirection:[I

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderDirection;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 505
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderRelation;->ADOBE_STORAGE_ORDER_ASCENDING:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderRelation;

    :goto_0
    return-object v0

    .line 501
    :pswitch_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderRelation;->ADOBE_STORAGE_ORDER_ASCENDING:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderRelation;

    goto :goto_0

    .line 503
    :pswitch_1
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderRelation;->ADOBE_STORAGE_ORDER_DESCENDING:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderRelation;

    goto :goto_0

    .line 498
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private pageDataFetchHelper(Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Landroid/os/Handler;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
            "<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 784
    iget v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->itemsFetchedSoFar:I

    if-nez v0, :cond_0

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStoragePagingMode;->AdobeStorageFirstPage:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStoragePagingMode;

    .line 785
    :goto_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->getSession()Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;

    move-result-object v0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->resourceCollection()Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    move-result-object v1

    new-instance v3, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6;

    invoke-direct {v3, p0, p3, p2, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$6;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;)V

    new-instance v4, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$7;

    invoke-direct {v4, p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$7;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;)V

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;->getDirectoryForPageData(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStoragePagingMode;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Landroid/os/Handler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    .line 920
    return-void

    .line 784
    :cond_0
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStoragePagingMode;->AdobeStorageNextPageReplace:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStoragePagingMode;

    goto :goto_0
.end method

.method protected static rootInCloud(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;
    .locals 2

    .prologue
    .line 512
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderByProperty;->ADOBE_STORAGE_ORDER_BY_NAME:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderByProperty;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderRelation;->ADOBE_STORAGE_ORDER_ASCENDING:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderRelation;

    invoke-static {p0, v0, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->rootInCloud(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderByProperty;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderRelation;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    move-result-object v0

    return-object v0
.end method

.method protected static rootInCloud(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderByProperty;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderRelation;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 521
    .line 524
    :try_start_0
    new-instance v0, Ljava/net/URI;

    const-string/jumbo v2, "/files/"

    invoke-direct {v0, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 526
    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->collectionFromHref(Ljava/net/URI;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    move-result-object v2

    .line 527
    invoke-virtual {v2, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->setCloud(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V

    .line 528
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetFolderInternal;

    const/4 v3, 0x0

    invoke-direct {v0, v2, p1, p2, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetFolderInternal;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderByProperty;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderRelation;Ljava/net/URI;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 535
    :goto_0
    return-object v0

    .line 530
    :catch_0
    move-exception v0

    .line 532
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public delete(Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;Lcom/adobe/creativesdk/foundation/internal/storage/model/services/IAdobeStorageSessionEditCallback;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 412
    if-nez p1, :cond_0

    .line 437
    :goto_0
    return-void

    .line 415
    :cond_0
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$2;

    invoke-direct {v0, p0, p2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$2;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;Lcom/adobe/creativesdk/foundation/internal/storage/model/services/IAdobeStorageSessionEditCallback;)V

    .line 436
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->resourceCollection()Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    move-result-object v1

    invoke-virtual {p1, v1, v2, v2, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;->deleteDirectory(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;ZZLcom/adobe/creativesdk/foundation/internal/storage/model/services/IAdobeStorageCollectionRequestCompletionHandler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 692
    instance-of v0, p1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    if-eqz v0, :cond_0

    .line 693
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 695
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCollaborationType()Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationType;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->asrCollection:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    if-nez v0, :cond_0

    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationType;->ADOBE_COLLABORATION_TYPE_PRIVATE:Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationType;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->asrCollection:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->collaboration:Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationType;

    goto :goto_0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 3

    .prologue
    .line 272
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 275
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->GUID:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 276
    const-string/jumbo v0, "guid"

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->GUID:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->etag:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 278
    const-string/jumbo v0, "etag"

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->etag:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 279
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->href:Ljava/net/URI;

    if-eqz v0, :cond_2

    .line 280
    const-string/jumbo v0, "href"

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->href:Ljava/net/URI;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 281
    :cond_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->parentHref:Ljava/net/URI;

    if-eqz v0, :cond_3

    .line 282
    const-string/jumbo v0, "parent-href"

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->parentHref:Ljava/net/URI;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 283
    :cond_3
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->name:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 284
    const-string/jumbo v0, "name"

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->name:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 285
    :cond_4
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->creationDate:Ljava/util/Date;

    if-eqz v0, :cond_5

    .line 286
    const-string/jumbo v0, "created"

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->creationDate:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 287
    :cond_5
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->modificationDate:Ljava/util/Date;

    if-eqz v0, :cond_6

    .line 288
    const-string/jumbo v0, "modified"

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->modificationDate:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    :cond_6
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 290
    :catch_0
    move-exception v0

    .line 291
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 672
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->getHref()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    .line 674
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x2f

    if-ne v0, v3, :cond_2

    .line 675
    const/4 v0, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 677
    :goto_0
    if-eqz v0, :cond_0

    const-string/jumbo v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 678
    :goto_1
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->getHref()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    .line 679
    if-eqz v2, :cond_1

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_2
    return-object v0

    .line 677
    :cond_0
    const-string/jumbo v0, "/"

    invoke-virtual {v2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 679
    goto :goto_2

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public getNextPage(ILcom/adobe/creativesdk/foundation/storage/IAdobeAssetFolderNextPageCallback;)V
    .locals 4

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->resourceCollection()Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->setLimit(I)V

    .line 175
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->resourceCollection()Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->etag:Ljava/lang/String;

    .line 177
    new-instance v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$1;

    invoke-direct {v1, p0, p2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$1;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;Lcom/adobe/creativesdk/foundation/storage/IAdobeAssetFolderNextPageCallback;)V

    .line 227
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->getSession()Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;

    move-result-object v2

    .line 228
    if-nez v2, :cond_0

    .line 229
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 230
    const-string/jumbo v1, "error_description"

    const-string/jumbo v2, "Either session or cloud end point is not present"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    new-instance v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;

    sget-object v2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;->AdobeAssetErrorNotEntitledToService:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;

    invoke-direct {v1, v2, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;Ljava/util/HashMap;)V

    invoke-interface {p2, v1}, Lcom/adobe/creativesdk/foundation/storage/IAdobeAssetFolderNextPageCallback;->onError(Ljava/lang/Object;)V

    .line 238
    :goto_0
    return-void

    .line 234
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->resourceCollection()Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    move-result-object v3

    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->firstPageLoaded:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStoragePagingMode;->AdobeStorageNextPageReplace:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStoragePagingMode;

    :goto_1
    invoke-virtual {v2, v3, v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;->getDirectory(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStoragePagingMode;Lcom/adobe/creativesdk/foundation/internal/storage/model/services/IAdobeStorageCollectionRequestCompletionHandler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStoragePagingMode;->AdobeStorageFirstPage:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStoragePagingMode;

    goto :goto_1
.end method

.method public getPageData(Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
            "<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 719
    new-instance v6, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$1outerClass;

    invoke-direct {v6, p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$1outerClass;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;)V

    .line 721
    :try_start_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, v6, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$1outerClass;->handler:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 727
    :goto_0
    new-instance v5, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$5;

    invoke-direct {v5, p0, p1, p2, v6}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$5;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$1outerClass;)V

    .line 770
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->GUID:Ljava/lang/String;

    const-string/jumbo v2, "PAGE_RESOURCE_COLLECTION_DATA"

    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheOptions;->AdobeCommonCacheKeepInMemoryCache:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheOptions;

    sget-object v4, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheOptions;->AdobeCommonCacheKeepOnDiskCache:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheOptions;

    .line 771
    invoke-static {v3, v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v3

    const-string/jumbo v4, "com.adobe.cc.storage"

    iget-object v6, v6, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$1outerClass;->handler:Landroid/os/Handler;

    .line 770
    invoke-virtual/range {v0 .. v6}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->getDataFromGUID(Ljava/lang/String;Ljava/lang/String;Ljava/util/EnumSet;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHandler;Landroid/os/Handler;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 774
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v1, "AdobeAssetFile:GetRenditionFromCache"

    const-string/jumbo v2, "Rendition request for %s ended in error."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->href:Ljava/net/URI;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;->onError(Ljava/lang/Object;)V

    .line 778
    :cond_0
    return-void

    .line 722
    :catch_0
    move-exception v0

    .line 724
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public hasNextPage()Z
    .locals 1

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->firstPageLoaded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->asrCollection:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->isComplete()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 704
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;->hashCode()I

    move-result v0

    return v0
.end method

.method public isFirstPageLoaded()Z
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->firstPageLoaded:Z

    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->asrCollection:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->asrCollection:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->isReadOnly()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic isSameLocation(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadDestination;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 78
    check-cast p1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->isSameLocation(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;)Z

    move-result v0

    return v0
.end method

.method public isSameLocation(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 660
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->getHref()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    .line 661
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->getHref()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    .line 663
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isShared()Z
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->asrCollection:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->asrCollection:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->isShared()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resetPaging()V
    .locals 1

    .prologue
    .line 246
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->firstPageLoaded:Z

    .line 248
    return-void
.end method

.method public resetPagingOrderedByField(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderBy;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderDirection;)V
    .locals 2

    .prologue
    .line 260
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->firstPageLoaded:Z

    .line 261
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->resourceCollection()Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    move-result-object v0

    invoke-static {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->getStorageOrderByProperty(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderBy;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderByProperty;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->setOrderBy(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderByProperty;)V

    .line 262
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->resourceCollection()Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    move-result-object v0

    invoke-static {p2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->getStorageOrderRelation(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderDirection;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderRelation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->setOrder(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderRelation;)V

    .line 264
    return-void
.end method

.method protected resourceCollection()Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;
    .locals 2

    .prologue
    .line 471
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->asrCollection:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    if-nez v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->href:Ljava/net/URI;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->collectionFromHref(Ljava/net/URI;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->asrCollection:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    .line 474
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->asrCollection:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->name:Ljava/lang/String;

    .line 475
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->asrCollection:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->etag:Ljava/lang/String;

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->etag:Ljava/lang/String;

    .line 476
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->asrCollection:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->GUID:Ljava/lang/String;

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->internalID:Ljava/lang/String;

    .line 477
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->asrCollection:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->getCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->setCloud(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V

    .line 480
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->asrCollection:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    return-object v0
.end method

.method protected setFirstPageLoaded(Z)V
    .locals 0

    .prologue
    .line 119
    iput-boolean p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->firstPageLoaded:Z

    .line 120
    return-void
.end method

.method protected setShared(Z)V
    .locals 0

    .prologue
    .line 148
    return-void
.end method
