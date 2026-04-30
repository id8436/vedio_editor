.class public Lcom/adobe/sync/ComponentManager;
.super Ljava/lang/Object;
.source "ComponentManager.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXComponentManagerProtocol;


# static fields
.field private static final MIN_DCX_FILE_SIZE:J = 0x1f400000L

.field public static final STATE_UPLOADING:Ljava/lang/String; = "uploading"

.field public static final STATE_WAITING:Ljava/lang/String; = "waiting"

.field private static final kLargeComponentHttpRequestHandler:Ljava/lang/String; = "httpRequestHandler"

.field private static final kLargeComponents:Ljava/lang/String; = "components"


# instance fields
.field private componentManagerHelper:Lcom/adobe/sync/ComponentManagerHelper;

.field private controller:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;

.field private largeComponentsComposites:Lorg/json/JSONObject;

.field private rootDirectory:Ljava/lang/String;

.field private session:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;)V
    .locals 2

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/assets"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 56
    iput-object v0, p0, Lcom/adobe/sync/ComponentManager;->rootDirectory:Ljava/lang/String;

    .line 57
    iput-object p3, p0, Lcom/adobe/sync/ComponentManager;->controller:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;

    .line 58
    iput-object p2, p0, Lcom/adobe/sync/ComponentManager;->session:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;

    .line 59
    invoke-static {}, Lcom/adobe/sync/ComponentManagerHelper;->getInstance()Lcom/adobe/sync/ComponentManagerHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/sync/ComponentManager;->componentManagerHelper:Lcom/adobe/sync/ComponentManagerHelper;

    .line 60
    iget-object v0, p0, Lcom/adobe/sync/ComponentManager;->componentManagerHelper:Lcom/adobe/sync/ComponentManagerHelper;

    invoke-virtual {v0}, Lcom/adobe/sync/ComponentManagerHelper;->initialize()V

    .line 62
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/adobe/sync/ComponentManager;->largeComponentsComposites:Lorg/json/JSONObject;

    .line 63
    return-void
.end method

.method private declared-synchronized addLargeComponentsComposites(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;J)I
    .locals 6

    .prologue
    .line 290
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/adobe/sync/ComponentManager;->largeComponentsComposites:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 291
    new-instance v0, Lcom/adobe/sync/s3utils/DirectS3HttpTaskHandle;

    invoke-direct {v0}, Lcom/adobe/sync/s3utils/DirectS3HttpTaskHandle;-><init>()V

    .line 293
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 294
    const-string/jumbo v2, "httpRequestHandler"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 295
    iget-object v0, p0, Lcom/adobe/sync/ComponentManager;->largeComponentsComposites:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/adobe/sync/ComponentManager;->largeComponentsComposites:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string/jumbo v1, "httpRequestHandler"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/sync/s3utils/DirectS3HttpTaskHandle;

    .line 298
    invoke-virtual {v0}, Lcom/adobe/sync/s3utils/DirectS3HttpTaskHandle;->getTotalUnitCount()J

    move-result-wide v2

    add-long/2addr v2, p4

    invoke-virtual {v0, v2, v3}, Lcom/adobe/sync/s3utils/DirectS3HttpTaskHandle;->setTotalUnitCount(J)V

    .line 299
    iget-object v0, p0, Lcom/adobe/sync/ComponentManager;->largeComponentsComposites:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 301
    const-string/jumbo v0, "components"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 302
    const-string/jumbo v0, "components"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    move-object v1, v0

    .line 308
    :goto_0
    const-string/jumbo v0, "waiting"

    .line 309
    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 310
    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 311
    const-string/jumbo v4, "state"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 312
    const-string/jumbo v0, "state"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 316
    :cond_1
    const-string/jumbo v3, "waiting"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 317
    invoke-virtual {v1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 318
    const-string/jumbo v0, "components"

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 321
    :cond_2
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 324
    :goto_1
    monitor-exit p0

    return v0

    .line 305
    :cond_3
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v0

    goto :goto_0

    .line 322
    :catch_0
    move-exception v0

    .line 323
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 324
    const/4 v0, 0x0

    goto :goto_1

    .line 290
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getFileSize(Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 284
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 285
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method private declared-synchronized getLargeComponentsCompositesSize(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 340
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/adobe/sync/ComponentManager;->largeComponentsComposites:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 341
    const-string/jumbo v1, "components"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 344
    :goto_0
    monitor-exit p0

    return v0

    .line 342
    :catch_0
    move-exception v0

    .line 343
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 344
    const/4 v0, 0x0

    goto :goto_0

    .line 340
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getNonExistentPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/adobe/sync/ComponentManager;->rootDirectory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/dummyAsset/asset.jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getServerHref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 71
    const-string/jumbo v0, "preferences"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "assets"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "adobe-premiereclip-preferences"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 75
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "assets"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "adobe-premiereclip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private useDirectS3ForFile(Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 279
    invoke-direct {p0, p1}, Lcom/adobe/sync/ComponentManager;->getFileSize(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/32 v2, 0x1f400000

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized didDownloadComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    .locals 4

    .prologue
    .line 155
    monitor-enter p0

    :try_start_0
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getPulled()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getPulled()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    move-result-object v0

    .line 156
    :goto_0
    const-string/jumbo v1, "ComponentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Sync: didDownloadComponent called for composite "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    if-eqz p4, :cond_3

    .line 160
    :try_start_1
    const-string/jumbo v0, "ComponentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Sync: didDownloadComponent failure called for composite with exception"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v0, p0, Lcom/adobe/sync/ComponentManager;->componentManagerHelper:Lcom/adobe/sync/ComponentManagerHelper;

    invoke-virtual {v0, p3}, Lcom/adobe/sync/ComponentManagerHelper;->getComponentInfoModel(Ljava/lang/String;)Lcom/adobe/sync/database/ComponentInfoModel;

    move-result-object v0

    .line 162
    if-nez v0, :cond_2

    .line 163
    const-string/jumbo v0, "ComponentManager"

    const-string/jumbo v1, "Sync: Error: component downloaded without entry into database"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/adobe/sync/DBException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 207
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    .line 155
    :cond_1
    :try_start_2
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 165
    :cond_2
    :try_start_3
    iget-object v1, p0, Lcom/adobe/sync/ComponentManager;->componentManagerHelper:Lcom/adobe/sync/ComponentManagerHelper;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p4}, Lcom/adobe/sync/ComponentManagerHelper;->initComponentDownloadFinish(Lcom/adobe/sync/database/ComponentInfoModel;Lcom/adobe/sync/database/ComponentWaitingModel;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    :try_end_3
    .catch Lcom/adobe/sync/DBException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 167
    :catch_0
    move-exception v0

    .line 168
    :try_start_4
    invoke-virtual {v0}, Lcom/adobe/sync/DBException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 155
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 172
    :cond_3
    :try_start_5
    const-string/jumbo v1, "ComponentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Sync: didDownloadComponent success called for component "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getComponentId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " in composite "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-static {p1, v0}, Lcom/adobe/sync/ComponentUtils;->getComponentKeys(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;)Lcom/adobe/sync/ComponentUtils$ComponentKeys;

    move-result-object v0

    .line 174
    if-eqz v0, :cond_0

    .line 175
    iget-object v1, v0, Lcom/adobe/sync/ComponentUtils$ComponentKeys;->assetUrl:Ljava/lang/String;

    .line 176
    iget-object v0, v0, Lcom/adobe/sync/ComponentUtils$ComponentKeys;->createdDate:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 179
    :try_start_6
    iget-object v2, p0, Lcom/adobe/sync/ComponentManager;->componentManagerHelper:Lcom/adobe/sync/ComponentManagerHelper;

    invoke-virtual {v2, v1, v0}, Lcom/adobe/sync/ComponentManagerHelper;->getComponentInfoModel(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/sync/database/ComponentInfoModel;

    move-result-object v2

    .line 180
    if-nez v2, :cond_4

    .line 181
    const-string/jumbo v0, "ComponentManager"

    const-string/jumbo v1, "Sync: Error: component downloaded without entry into database"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Lcom/adobe/sync/DBException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 203
    :catch_1
    move-exception v0

    .line 204
    :try_start_7
    invoke-virtual {v0}, Lcom/adobe/sync/DBException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .line 183
    :cond_4
    :try_start_8
    new-instance v3, Lcom/adobe/sync/database/ComponentInfoModel;

    invoke-direct {v3}, Lcom/adobe/sync/database/ComponentInfoModel;-><init>()V

    .line 184
    invoke-virtual {v3, p3}, Lcom/adobe/sync/database/ComponentInfoModel;->setUCID(Ljava/lang/String;)V

    .line 185
    invoke-virtual {v3, v1}, Lcom/adobe/sync/database/ComponentInfoModel;->setAssetURL(Ljava/lang/String;)V

    .line 186
    invoke-virtual {v3, v0}, Lcom/adobe/sync/database/ComponentInfoModel;->setCreatedDate(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v2}, Lcom/adobe/sync/database/ComponentInfoModel;->getLocalPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/adobe/sync/database/ComponentInfoModel;->setLocalPath(Ljava/lang/String;)V

    .line 188
    sget-object v0, Lcom/adobe/sync/database/ComponentInfoModel$ASSET_SYNC_STATUS;->DONE:Lcom/adobe/sync/database/ComponentInfoModel$ASSET_SYNC_STATUS;

    invoke-virtual {v0}, Lcom/adobe/sync/database/ComponentInfoModel$ASSET_SYNC_STATUS;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/adobe/sync/database/ComponentInfoModel;->setAssetSyncStatus(Ljava/lang/String;)V

    .line 190
    new-instance v0, Lcom/adobe/sync/database/ComponentWaitingModel;

    invoke-direct {v0}, Lcom/adobe/sync/database/ComponentWaitingModel;-><init>()V

    .line 191
    invoke-virtual {v0, p3}, Lcom/adobe/sync/database/ComponentWaitingModel;->setUCID(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/sync/database/ComponentWaitingModel;->setCompositeId(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getComponentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/sync/database/ComponentWaitingModel;->setComponentId(Ljava/lang/String;)V

    .line 194
    sget-object v1, Lcom/adobe/sync/database/ComponentWaitingModel$SYNC_STATUS;->DONE:Lcom/adobe/sync/database/ComponentWaitingModel$SYNC_STATUS;

    invoke-virtual {v1}, Lcom/adobe/sync/database/ComponentWaitingModel$SYNC_STATUS;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/sync/database/ComponentWaitingModel;->setAssetSyncStatus(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getComponentId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/adobe/sync/ComponentManager;->getServerHref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/sync/database/ComponentWaitingModel;->setServerHref(Ljava/lang/String;)V

    .line 197
    invoke-static {}, Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;->getSharedAuthManager()Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;->getUserProfile()Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;->getAdobeID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/sync/database/ComponentWaitingModel;->setAdobeId(Ljava/lang/String;)V

    .line 199
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getSharedCloudManager()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getDefaultCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->getGUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/sync/database/ComponentWaitingModel;->setCloudId(Ljava/lang/String;)V

    .line 201
    iget-object v1, p0, Lcom/adobe/sync/ComponentManager;->componentManagerHelper:Lcom/adobe/sync/ComponentManagerHelper;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v0, v2}, Lcom/adobe/sync/ComponentManagerHelper;->initComponentDownloadFinish(Lcom/adobe/sync/database/ComponentInfoModel;Lcom/adobe/sync/database/ComponentWaitingModel;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    :try_end_8
    .catch Lcom/adobe/sync/DBException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_1
.end method

.method public didUploadComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    .locals 6

    .prologue
    .line 396
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    .line 398
    if-eqz p5, :cond_4

    .line 399
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/sync/ComponentManager;->getLargeComponentsComposites(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 400
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getComponentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 401
    const-string/jumbo v0, "S3Transfer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "got large component "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getComponentId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " in didupload, returning"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    :cond_0
    :goto_0
    return-void

    .line 404
    :cond_1
    const-string/jumbo v0, "ComponentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Sync: upload failed for UCID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :try_start_0
    iget-object v0, p0, Lcom/adobe/sync/ComponentManager;->componentManagerHelper:Lcom/adobe/sync/ComponentManagerHelper;

    invoke-virtual {v0, p3}, Lcom/adobe/sync/ComponentManagerHelper;->getComponentInfoModel(Ljava/lang/String;)Lcom/adobe/sync/database/ComponentInfoModel;

    move-result-object v0

    .line 407
    if-nez v0, :cond_2

    .line 408
    const-string/jumbo v0, "ComponentManager"

    const-string/jumbo v1, "Sync: Error: component uploaded without entry into database"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/adobe/sync/DBException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 430
    :catch_0
    move-exception v0

    .line 431
    invoke-virtual {v0}, Lcom/adobe/sync/DBException;->printStackTrace()V

    goto :goto_0

    .line 410
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/adobe/sync/ComponentManager;->componentManagerHelper:Lcom/adobe/sync/ComponentManagerHelper;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p5}, Lcom/adobe/sync/ComponentManagerHelper;->initComponentUploadFinish(Lcom/adobe/sync/database/ComponentInfoModel;Lcom/adobe/sync/database/ComponentWaitingModel;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 413
    iget-object v0, p0, Lcom/adobe/sync/ComponentManager;->componentManagerHelper:Lcom/adobe/sync/ComponentManagerHelper;

    invoke-virtual {v0, p3}, Lcom/adobe/sync/ComponentManagerHelper;->getComponentWaitingModelsForUCID(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 414
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/sync/database/ComponentWaitingModel;

    .line 416
    invoke-virtual {v0}, Lcom/adobe/sync/database/ComponentWaitingModel;->getCompositeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 419
    invoke-virtual {v0}, Lcom/adobe/sync/database/ComponentWaitingModel;->getAssetSyncStatus()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/adobe/sync/database/ComponentWaitingModel$SYNC_STATUS;->DONE:Lcom/adobe/sync/database/ComponentWaitingModel$SYNC_STATUS;

    invoke-virtual {v3}, Lcom/adobe/sync/database/ComponentWaitingModel$SYNC_STATUS;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 422
    invoke-static {}, Lcom/adobe/sync/database/CompositeLoader;->getInstance()Lcom/adobe/sync/database/CompositeLoader;

    move-result-object v2

    invoke-virtual {v0}, Lcom/adobe/sync/database/ComponentWaitingModel;->getCompositeId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/adobe/sync/database/CompositeLoader;->loadComposite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v2

    .line 423
    if-eqz v2, :cond_3

    .line 424
    iget-object v3, p0, Lcom/adobe/sync/ComponentManager;->controller:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;

    invoke-virtual {v3, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->resumeSyncForComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)V

    .line 425
    const-string/jumbo v2, "ComponentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Sync: resuming sync for component "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 426
    invoke-virtual {v0}, Lcom/adobe/sync/database/ComponentWaitingModel;->getComponentId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " in composite "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/adobe/sync/database/ComponentWaitingModel;->getCompositeId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 425
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/adobe/sync/DBException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 437
    :cond_4
    iget-object v1, p0, Lcom/adobe/sync/ComponentManager;->largeComponentsComposites:Lorg/json/JSONObject;

    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 438
    iget-object v1, p0, Lcom/adobe/sync/ComponentManager;->largeComponentsComposites:Lorg/json/JSONObject;

    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 439
    const-string/jumbo v2, "components"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 440
    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getComponentId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 441
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getComponentId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/adobe/sync/ComponentManager;->removeLargeComponentComposites(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :cond_5
    invoke-static {p1, v0}, Lcom/adobe/sync/ComponentUtils;->getComponentKeys(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;)Lcom/adobe/sync/ComponentUtils$ComponentKeys;

    move-result-object v0

    .line 445
    if-eqz v0, :cond_0

    .line 446
    iget-object v1, v0, Lcom/adobe/sync/ComponentUtils$ComponentKeys;->assetUrl:Ljava/lang/String;

    .line 447
    iget-object v0, v0, Lcom/adobe/sync/ComponentUtils$ComponentKeys;->createdDate:Ljava/lang/String;

    .line 449
    :try_start_2
    iget-object v2, p0, Lcom/adobe/sync/ComponentManager;->componentManagerHelper:Lcom/adobe/sync/ComponentManagerHelper;

    invoke-virtual {v2, v1, v0}, Lcom/adobe/sync/ComponentManagerHelper;->getComponentInfoModel(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/sync/database/ComponentInfoModel;

    move-result-object v2

    .line 450
    if-nez v2, :cond_6

    .line 451
    const-string/jumbo v0, "ComponentManager"

    const-string/jumbo v1, "Sync: Error: component uploaded without entry into database"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lcom/adobe/sync/DBException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 487
    :catch_1
    move-exception v0

    .line 488
    invoke-virtual {v0}, Lcom/adobe/sync/DBException;->printStackTrace()V

    goto/16 :goto_0

    .line 453
    :cond_6
    :try_start_3
    const-string/jumbo v3, "ComponentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Sync: finished upload component "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getComponentId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " for composite "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    new-instance v3, Lcom/adobe/sync/database/ComponentInfoModel;

    invoke-direct {v3}, Lcom/adobe/sync/database/ComponentInfoModel;-><init>()V

    .line 455
    invoke-virtual {v3, p3}, Lcom/adobe/sync/database/ComponentInfoModel;->setUCID(Ljava/lang/String;)V

    .line 456
    invoke-virtual {v3, v1}, Lcom/adobe/sync/database/ComponentInfoModel;->setAssetURL(Ljava/lang/String;)V

    .line 457
    invoke-virtual {v3, v0}, Lcom/adobe/sync/database/ComponentInfoModel;->setCreatedDate(Ljava/lang/String;)V

    .line 458
    invoke-virtual {v2}, Lcom/adobe/sync/database/ComponentInfoModel;->getLocalPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/adobe/sync/database/ComponentInfoModel;->setLocalPath(Ljava/lang/String;)V

    .line 459
    sget-object v0, Lcom/adobe/sync/database/ComponentInfoModel$ASSET_SYNC_STATUS;->DONE:Lcom/adobe/sync/database/ComponentInfoModel$ASSET_SYNC_STATUS;

    invoke-virtual {v0}, Lcom/adobe/sync/database/ComponentInfoModel$ASSET_SYNC_STATUS;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/adobe/sync/database/ComponentInfoModel;->setAssetSyncStatus(Ljava/lang/String;)V

    .line 461
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getComponentId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/adobe/sync/ComponentManager;->getServerHref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 463
    new-instance v0, Lcom/adobe/sync/database/ComponentWaitingModel;

    invoke-direct {v0}, Lcom/adobe/sync/database/ComponentWaitingModel;-><init>()V

    .line 464
    invoke-virtual {v0, p3}, Lcom/adobe/sync/database/ComponentWaitingModel;->setUCID(Ljava/lang/String;)V

    .line 465
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/adobe/sync/database/ComponentWaitingModel;->setCompositeId(Ljava/lang/String;)V

    .line 466
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getComponentId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/adobe/sync/database/ComponentWaitingModel;->setComponentId(Ljava/lang/String;)V

    .line 467
    sget-object v2, Lcom/adobe/sync/database/ComponentWaitingModel$SYNC_STATUS;->DONE:Lcom/adobe/sync/database/ComponentWaitingModel$SYNC_STATUS;

    invoke-virtual {v2}, Lcom/adobe/sync/database/ComponentWaitingModel$SYNC_STATUS;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/adobe/sync/database/ComponentWaitingModel;->setAssetSyncStatus(Ljava/lang/String;)V

    .line 468
    invoke-virtual {v0, v1}, Lcom/adobe/sync/database/ComponentWaitingModel;->setServerHref(Ljava/lang/String;)V

    .line 470
    invoke-static {}, Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;->getSharedAuthManager()Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;->getUserProfile()Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;->getAdobeID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/adobe/sync/database/ComponentWaitingModel;->setAdobeId(Ljava/lang/String;)V

    .line 471
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getSharedCloudManager()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getDefaultCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->getGUID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/adobe/sync/database/ComponentWaitingModel;->setCloudId(Ljava/lang/String;)V

    .line 472
    iget-object v2, p0, Lcom/adobe/sync/ComponentManager;->componentManagerHelper:Lcom/adobe/sync/ComponentManagerHelper;

    invoke-virtual {v2, v3, v0, p5}, Lcom/adobe/sync/ComponentManagerHelper;->initComponentUploadFinish(Lcom/adobe/sync/database/ComponentInfoModel;Lcom/adobe/sync/database/ComponentWaitingModel;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 475
    iget-object v0, p0, Lcom/adobe/sync/ComponentManager;->componentManagerHelper:Lcom/adobe/sync/ComponentManagerHelper;

    invoke-virtual {v0, p3}, Lcom/adobe/sync/ComponentManagerHelper;->getComponentWaitingModelsForUCID(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 476
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/sync/database/ComponentWaitingModel;

    .line 477
    invoke-virtual {v0}, Lcom/adobe/sync/database/ComponentWaitingModel;->getComponentId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getComponentId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 480
    invoke-virtual {v0}, Lcom/adobe/sync/database/ComponentWaitingModel;->getAssetSyncStatus()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/adobe/sync/database/ComponentWaitingModel$SYNC_STATUS;->DONE:Lcom/adobe/sync/database/ComponentWaitingModel$SYNC_STATUS;

    invoke-virtual {v4}, Lcom/adobe/sync/database/ComponentWaitingModel$SYNC_STATUS;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 483
    iget-object v3, p0, Lcom/adobe/sync/ComponentManager;->session:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;

    iget-object v4, p0, Lcom/adobe/sync/ComponentManager;->controller:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;

    invoke-static {v3, v4, v1, v0}, Lcom/adobe/sync/Server2ServerCopy;->trigger(Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;Ljava/lang/String;Lcom/adobe/sync/database/ComponentWaitingModel;)V

    .line 484
    const-string/jumbo v3, "ComponentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Sync: S2S copy for Composit2ID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/adobe/sync/database/ComponentWaitingModel;->getCompositeId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ComponentID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/adobe/sync/database/ComponentWaitingModel;->getComponentId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Lcom/adobe/sync/DBException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2
.end method

.method public declared-synchronized getLargeComponentsComposites()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 66
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/adobe/sync/ComponentManager;->largeComponentsComposites:Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLargeComponentsComposites(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    .prologue
    .line 330
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/adobe/sync/ComponentManager;->largeComponentsComposites:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 331
    const-string/jumbo v1, "components"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 334
    :goto_0
    monitor-exit p0

    return-object v0

    .line 332
    :catch_0
    move-exception v0

    .line 333
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 334
    const/4 v0, 0x0

    goto :goto_0

    .line 330
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLargeComponentsCompositesRequest(Ljava/lang/String;)Lcom/adobe/sync/s3utils/DirectS3HttpTaskHandle;
    .locals 2

    .prologue
    .line 350
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/adobe/sync/ComponentManager;->largeComponentsComposites:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 351
    const-string/jumbo v1, "httpRequestHandler"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/sync/s3utils/DirectS3HttpTaskHandle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 354
    :goto_0
    monitor-exit p0

    return-object v0

    .line 352
    :catch_0
    move-exception v0

    .line 353
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 354
    const/4 v0, 0x0

    goto :goto_0

    .line 350
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getUCIDForAssetUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 520
    :try_start_0
    iget-object v0, p0, Lcom/adobe/sync/ComponentManager;->componentManagerHelper:Lcom/adobe/sync/ComponentManagerHelper;

    invoke-virtual {v0, p1, p2}, Lcom/adobe/sync/ComponentManagerHelper;->getComponentInfoModel(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/sync/database/ComponentInfoModel;

    move-result-object v0

    .line 521
    if-nez v0, :cond_0

    .line 522
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 523
    new-instance v1, Lcom/adobe/sync/database/ComponentInfoModel;

    invoke-direct {v1}, Lcom/adobe/sync/database/ComponentInfoModel;-><init>()V

    .line 524
    invoke-virtual {v1, v0}, Lcom/adobe/sync/database/ComponentInfoModel;->setUCID(Ljava/lang/String;)V

    .line 525
    invoke-virtual {v1, p1}, Lcom/adobe/sync/database/ComponentInfoModel;->setAssetURL(Ljava/lang/String;)V

    .line 526
    invoke-virtual {v1, p2}, Lcom/adobe/sync/database/ComponentInfoModel;->setCreatedDate(Ljava/lang/String;)V

    .line 527
    invoke-virtual {v1, p1}, Lcom/adobe/sync/database/ComponentInfoModel;->setLocalPath(Ljava/lang/String;)V

    .line 528
    sget-object v2, Lcom/adobe/sync/database/ComponentInfoModel$ASSET_SYNC_STATUS;->DONE:Lcom/adobe/sync/database/ComponentInfoModel$ASSET_SYNC_STATUS;

    invoke-virtual {v2}, Lcom/adobe/sync/database/ComponentInfoModel$ASSET_SYNC_STATUS;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adobe/sync/database/ComponentInfoModel;->setAssetSyncStatus(Ljava/lang/String;)V

    .line 529
    iget-object v2, p0, Lcom/adobe/sync/ComponentManager;->componentManagerHelper:Lcom/adobe/sync/ComponentManagerHelper;

    invoke-virtual {v2, v1}, Lcom/adobe/sync/ComponentManagerHelper;->insertComponentInfo(Lcom/adobe/sync/database/ComponentInfoModel;)Z

    .line 538
    :goto_0
    return-object v0

    .line 533
    :cond_0
    invoke-virtual {v0}, Lcom/adobe/sync/database/ComponentInfoModel;->getUCID()Ljava/lang/String;
    :try_end_0
    .catch Lcom/adobe/sync/DBException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 535
    :catch_0
    move-exception v0

    .line 536
    invoke-virtual {v0}, Lcom/adobe/sync/DBException;->printStackTrace()V

    .line 538
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUnmanagedDataPathForAssetUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 497
    :try_start_0
    iget-object v1, p0, Lcom/adobe/sync/ComponentManager;->componentManagerHelper:Lcom/adobe/sync/ComponentManagerHelper;

    invoke-virtual {v1, p1, p2}, Lcom/adobe/sync/ComponentManagerHelper;->getComponentInfoModel(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/sync/database/ComponentInfoModel;

    move-result-object v1

    .line 498
    if-nez v1, :cond_1

    .line 499
    iget-object v1, p0, Lcom/adobe/sync/ComponentManager;->componentManagerHelper:Lcom/adobe/sync/ComponentManagerHelper;

    invoke-virtual {v1, p1, p2}, Lcom/adobe/sync/ComponentManagerHelper;->isFileExistLocally(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 515
    :goto_0
    return-object p1

    :cond_0
    move-object p1, v0

    .line 502
    goto :goto_0

    .line 505
    :cond_1
    invoke-virtual {v1}, Lcom/adobe/sync/database/ComponentInfoModel;->getAssetSyncStatus()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/adobe/sync/database/ComponentInfoModel$ASSET_SYNC_STATUS;->PENDING:Lcom/adobe/sync/database/ComponentInfoModel$ASSET_SYNC_STATUS;

    invoke-virtual {v3}, Lcom/adobe/sync/database/ComponentInfoModel$ASSET_SYNC_STATUS;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 506
    invoke-direct {p0}, Lcom/adobe/sync/ComponentManager;->getNonExistentPath()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 509
    :cond_2
    invoke-virtual {v1}, Lcom/adobe/sync/database/ComponentInfoModel;->getLocalPath()Ljava/lang/String;
    :try_end_0
    .catch Lcom/adobe/sync/DBException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    .line 512
    :catch_0
    move-exception v1

    .line 513
    invoke-virtual {v1}, Lcom/adobe/sync/DBException;->printStackTrace()V

    move-object p1, v0

    .line 515
    goto :goto_0
.end method

.method public declared-synchronized removeAllLargeComponentComposites()V
    .locals 1

    .prologue
    .line 384
    monitor-enter p0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/adobe/sync/ComponentManager;->largeComponentsComposites:Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    :goto_0
    monitor-exit p0

    return-void

    .line 385
    :catch_0
    move-exception v0

    .line 386
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 384
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeAllLargeComponentComposites(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 376
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/adobe/sync/ComponentManager;->largeComponentsComposites:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 380
    :goto_0
    monitor-exit p0

    return-void

    .line 377
    :catch_0
    move-exception v0

    .line 378
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 376
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeLargeComponentComposites(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 360
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/adobe/sync/ComponentManager;->largeComponentsComposites:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 361
    const-string/jumbo v1, "components"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 362
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 363
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    .line 364
    if-nez v0, :cond_0

    .line 365
    iget-object v1, p0, Lcom/adobe/sync/ComponentManager;->largeComponentsComposites:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 370
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 368
    :catch_0
    move-exception v0

    .line 369
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 370
    const/4 v0, 0x0

    goto :goto_0

    .line 360
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized requestFileToDownloadComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXReadyWithDownloadFileCompletionHandler;)V
    .locals 7

    .prologue
    .line 86
    monitor-enter p0

    :try_start_0
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getPulled()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getPulled()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    move-result-object v0

    .line 87
    :goto_0
    invoke-static {p1, v0}, Lcom/adobe/sync/ComponentUtils;->getComponentKeys(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;)Lcom/adobe/sync/ComponentUtils$ComponentKeys;

    move-result-object v0

    .line 88
    if-nez v0, :cond_1

    .line 89
    const-string/jumbo v0, "ComponentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Sync: Not unmanaged component "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getComponentId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {p4, v0, p3, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXReadyWithDownloadFileCompletionHandler;->onCompletion(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    :goto_1
    monitor-exit p0

    return-void

    .line 86
    :cond_0
    :try_start_1
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    goto :goto_0

    .line 93
    :cond_1
    iget-object v2, v0, Lcom/adobe/sync/ComponentUtils$ComponentKeys;->assetUrl:Ljava/lang/String;

    .line 94
    iget-object v3, v0, Lcom/adobe/sync/ComponentUtils$ComponentKeys;->createdDate:Ljava/lang/String;

    .line 95
    invoke-static {v2}, Lcom/adobe/sync/ComponentUtils;->getExtensionFromFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    const-string/jumbo v1, "ComponentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Sync: requestFileToDownloadComponent called for component "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 97
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getComponentId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " in composite "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 96
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const-string/jumbo v1, "ComponentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Sync: inside requestFileToDownloadComponent assetUrl "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " createdDate "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ext"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    if-eqz v0, :cond_7

    .line 102
    :try_start_2
    iget-object v1, p0, Lcom/adobe/sync/ComponentManager;->componentManagerHelper:Lcom/adobe/sync/ComponentManagerHelper;

    invoke-virtual {v1, v2, v3}, Lcom/adobe/sync/ComponentManagerHelper;->getComponentInfoModel(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/sync/database/ComponentInfoModel;

    move-result-object v4

    .line 104
    iget-object v1, p0, Lcom/adobe/sync/ComponentManager;->componentManagerHelper:Lcom/adobe/sync/ComponentManagerHelper;

    invoke-virtual {v1, v2, v3}, Lcom/adobe/sync/ComponentManagerHelper;->isComponentDownloadRequired(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    .line 105
    if-eqz v5, :cond_3

    .line 106
    if-nez v4, :cond_2

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, "#"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getComponentId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, "."

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/adobe/sync/ComponentManager;->rootDirectory:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 122
    :goto_2
    new-instance v6, Lcom/adobe/sync/database/ComponentInfoModel;

    invoke-direct {v6}, Lcom/adobe/sync/database/ComponentInfoModel;-><init>()V

    .line 123
    if-nez v4, :cond_4

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v6, v0}, Lcom/adobe/sync/database/ComponentInfoModel;->setUCID(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v6, v2}, Lcom/adobe/sync/database/ComponentInfoModel;->setAssetURL(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v6, v3}, Lcom/adobe/sync/database/ComponentInfoModel;->setCreatedDate(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v6, v1}, Lcom/adobe/sync/database/ComponentInfoModel;->setLocalPath(Ljava/lang/String;)V

    .line 127
    if-eqz v5, :cond_5

    sget-object v0, Lcom/adobe/sync/database/ComponentInfoModel$ASSET_SYNC_STATUS;->PENDING:Lcom/adobe/sync/database/ComponentInfoModel$ASSET_SYNC_STATUS;

    invoke-virtual {v0}, Lcom/adobe/sync/database/ComponentInfoModel$ASSET_SYNC_STATUS;->name()Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {v6, v0}, Lcom/adobe/sync/database/ComponentInfoModel;->setAssetSyncStatus(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/adobe/sync/ComponentManager;->componentManagerHelper:Lcom/adobe/sync/ComponentManagerHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v6, v1}, Lcom/adobe/sync/ComponentManagerHelper;->initComponentDownloadStart(Lcom/adobe/sync/database/ComponentInfoModel;Z)V

    .line 132
    if-eqz v5, :cond_6

    .line 133
    const-string/jumbo v0, "ComponentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Sync: from requestFileToDownloadComponent Sending download path as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Lcom/adobe/sync/database/ComponentInfoModel;->getLocalPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-virtual {v6}, Lcom/adobe/sync/database/ComponentInfoModel;->getLocalPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6}, Lcom/adobe/sync/database/ComponentInfoModel;->getUCID()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p4, v0, v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXReadyWithDownloadFileCompletionHandler;->onCompletion(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;)V
    :try_end_2
    .catch Lcom/adobe/sync/DBException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 140
    :catch_0
    move-exception v0

    .line 141
    :try_start_3
    invoke-virtual {v0}, Lcom/adobe/sync/DBException;->printStackTrace()V

    .line 142
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {p4, v0, p3, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXReadyWithDownloadFileCompletionHandler;->onCompletion(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 117
    :cond_2
    :try_start_4
    invoke-virtual {v4}, Lcom/adobe/sync/database/ComponentInfoModel;->getLocalPath()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_2

    :cond_3
    move-object v1, v2

    .line 120
    goto :goto_2

    .line 123
    :cond_4
    invoke-virtual {v4}, Lcom/adobe/sync/database/ComponentInfoModel;->getUCID()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 127
    :cond_5
    sget-object v0, Lcom/adobe/sync/database/ComponentInfoModel$ASSET_SYNC_STATUS;->DONE:Lcom/adobe/sync/database/ComponentInfoModel$ASSET_SYNC_STATUS;

    .line 128
    invoke-virtual {v0}, Lcom/adobe/sync/database/ComponentInfoModel$ASSET_SYNC_STATUS;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 136
    :cond_6
    const-string/jumbo v0, "ComponentManager"

    const-string/jumbo v1, "Sync: from requestFileToDownloadComponent Download not required as being downloaded in other composite"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const/4 v0, 0x0

    invoke-virtual {v6}, Lcom/adobe/sync/database/ComponentInfoModel;->getUCID()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p4, v0, v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXReadyWithDownloadFileCompletionHandler;->onCompletion(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;)V
    :try_end_4
    .catch Lcom/adobe/sync/DBException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .line 146
    :cond_7
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_5
    invoke-interface {p4, v0, p3, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXReadyWithDownloadFileCompletionHandler;->onCompletion(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1
.end method

.method public declared-synchronized requestFileToUploadComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXReadyWithUploadFileCompletionHandler;)V
    .locals 8

    .prologue
    .line 215
    monitor-enter p0

    :try_start_0
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    .line 216
    invoke-static {p1, v0}, Lcom/adobe/sync/ComponentUtils;->getComponentKeys(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;)Lcom/adobe/sync/ComponentUtils$ComponentKeys;

    move-result-object v0

    .line 217
    if-nez v0, :cond_0

    .line 218
    const-string/jumbo v0, "ComponentManager"

    const-string/jumbo v1, "Sync: Error: assetUrl or createdDate could not be retrieved from composite"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    :goto_0
    monitor-exit p0

    return-void

    .line 222
    :cond_0
    :try_start_1
    const-string/jumbo v1, "ComponentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Sync: started upload component "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getComponentId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " for composite "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v1, v0, Lcom/adobe/sync/ComponentUtils$ComponentKeys;->assetUrl:Ljava/lang/String;

    .line 224
    iget-object v2, v0, Lcom/adobe/sync/ComponentUtils$ComponentKeys;->createdDate:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 226
    :try_start_2
    iget-object v0, p0, Lcom/adobe/sync/ComponentManager;->componentManagerHelper:Lcom/adobe/sync/ComponentManagerHelper;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/sync/ComponentManagerHelper;->getComponentInfoModel(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/sync/database/ComponentInfoModel;

    move-result-object v0

    .line 228
    if-eqz v0, :cond_2

    .line 229
    invoke-virtual {v0}, Lcom/adobe/sync/database/ComponentInfoModel;->getLocalPath()Ljava/lang/String;

    move-result-object v0

    .line 231
    :goto_1
    new-instance v3, Lcom/adobe/sync/database/ComponentInfoModel;

    invoke-direct {v3}, Lcom/adobe/sync/database/ComponentInfoModel;-><init>()V

    .line 232
    invoke-virtual {v3, p3}, Lcom/adobe/sync/database/ComponentInfoModel;->setUCID(Ljava/lang/String;)V

    .line 233
    invoke-virtual {v3, v1}, Lcom/adobe/sync/database/ComponentInfoModel;->setAssetURL(Ljava/lang/String;)V

    .line 234
    invoke-virtual {v3, v2}, Lcom/adobe/sync/database/ComponentInfoModel;->setCreatedDate(Ljava/lang/String;)V

    .line 235
    invoke-virtual {v3, v0}, Lcom/adobe/sync/database/ComponentInfoModel;->setLocalPath(Ljava/lang/String;)V

    .line 236
    sget-object v1, Lcom/adobe/sync/database/ComponentInfoModel$ASSET_SYNC_STATUS;->DONE:Lcom/adobe/sync/database/ComponentInfoModel$ASSET_SYNC_STATUS;

    invoke-virtual {v1}, Lcom/adobe/sync/database/ComponentInfoModel$ASSET_SYNC_STATUS;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/adobe/sync/database/ComponentInfoModel;->setAssetSyncStatus(Ljava/lang/String;)V

    .line 238
    new-instance v1, Lcom/adobe/sync/database/ComponentWaitingModel;

    invoke-direct {v1}, Lcom/adobe/sync/database/ComponentWaitingModel;-><init>()V

    .line 239
    invoke-virtual {v1, p3}, Lcom/adobe/sync/database/ComponentWaitingModel;->setUCID(Ljava/lang/String;)V

    .line 240
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adobe/sync/database/ComponentWaitingModel;->setCompositeId(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getComponentId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adobe/sync/database/ComponentWaitingModel;->setComponentId(Ljava/lang/String;)V

    .line 242
    sget-object v2, Lcom/adobe/sync/database/ComponentWaitingModel$SYNC_STATUS;->PENDING:Lcom/adobe/sync/database/ComponentWaitingModel$SYNC_STATUS;

    invoke-virtual {v2}, Lcom/adobe/sync/database/ComponentWaitingModel$SYNC_STATUS;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adobe/sync/database/ComponentWaitingModel;->setAssetSyncStatus(Ljava/lang/String;)V

    .line 243
    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Lcom/adobe/sync/database/ComponentWaitingModel;->setServerHref(Ljava/lang/String;)V

    .line 245
    invoke-static {}, Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;->getSharedAuthManager()Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;->getUserProfile()Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;->getAdobeID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adobe/sync/database/ComponentWaitingModel;->setAdobeId(Ljava/lang/String;)V

    .line 246
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getSharedCloudManager()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getDefaultCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->getGUID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adobe/sync/database/ComponentWaitingModel;->setCloudId(Ljava/lang/String;)V

    .line 248
    iget-object v2, p0, Lcom/adobe/sync/ComponentManager;->componentManagerHelper:Lcom/adobe/sync/ComponentManagerHelper;

    invoke-virtual {v2, v3, v1}, Lcom/adobe/sync/ComponentManagerHelper;->initComponentUploadStart(Lcom/adobe/sync/database/ComponentInfoModel;Lcom/adobe/sync/database/ComponentWaitingModel;)V

    .line 249
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 250
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageUtils;->MD5HashFromStream(Ljava/io/InputStream;Z)Ljava/lang/String;

    move-result-object v6

    .line 252
    invoke-direct {p0, v0}, Lcom/adobe/sync/ComponentManager;->useDirectS3ForFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 253
    const-string/jumbo v1, "S3Transfer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "preparing to upload large component "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-direct {p0, v0}, Lcom/adobe/sync/ComponentManager;->getFileSize(Ljava/lang/String;)J

    move-result-wide v4

    .line 255
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getComponentId()Ljava/lang/String;

    move-result-object v2

    .line 256
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 257
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 258
    const-string/jumbo v7, "componentId"

    invoke-virtual {v3, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 259
    const-string/jumbo v7, "assetPath"

    invoke-virtual {v3, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 260
    const-string/jumbo v0, "requestId"

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 261
    const-string/jumbo v0, "assetSize"

    invoke-virtual {v3, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 262
    const-string/jumbo v0, "UCID"

    invoke-virtual {v3, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 263
    const-string/jumbo v0, "state"

    const-string/jumbo v1, "waiting"

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 264
    const-string/jumbo v0, "S3Transfer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "added large component "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/adobe/sync/ComponentManager;->addLargeComponentsComposites(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;J)I

    .line 266
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {p4, v0, v1, v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXReadyWithUploadFileCompletionHandler;->onCompletion(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 272
    :catch_0
    move-exception v0

    .line 273
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 215
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 269
    :cond_1
    const/4 v1, 0x0

    :try_start_4
    invoke-interface {p4, v0, v1, v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXReadyWithUploadFileCompletionHandler;->onCompletion(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :cond_2
    move-object v0, v1

    goto/16 :goto_1
.end method
