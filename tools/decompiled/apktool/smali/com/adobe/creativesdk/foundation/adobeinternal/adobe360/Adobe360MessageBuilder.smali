.class public Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;
.super Ljava/lang/Object;
.source "Adobe360MessageBuilder.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final THE_DATA_PROPERTY_OF_ASSET_MUST_NOT_BE_NULL:Ljava/lang/String; = "The data property of asset must not be null"


# instance fields
.field private acceptedMediaTypes:Lorg/json/JSONObject;

.field private actionId:Ljava/lang/String;

.field private actionType:Ljava/lang/String;

.field private appSpecificData:Lorg/json/JSONObject;

.field protected inputAssets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private inputDescriptors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected outputAssets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private outputDescriptors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private requestContext:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Context;

.field private requestOptions:Lorg/json/JSONObject;

.field private responseContext:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Context;

.field private responseReason:Ljava/lang/String;

.field private responseResults:Lorg/json/JSONObject;

.field private responseStatusCode:Ljava/lang/String;

.field private transportReservedData:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->inputAssets:Ljava/util/Map;

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->outputAssets:Ljava/util/Map;

    .line 67
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageUtils;->generateUuid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->actionId:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;)V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->inputAssets:Ljava/util/Map;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->outputAssets:Ljava/util/Map;

    .line 79
    iget-object v0, p1, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mActionId:Ljava/lang/String;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->actionId:Ljava/lang/String;

    .line 80
    iget-object v0, p1, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mActionType:Ljava/lang/String;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->actionType:Ljava/lang/String;

    .line 81
    iget-object v0, p1, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mRequestOptions:Lorg/json/JSONObject;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->requestOptions:Lorg/json/JSONObject;

    .line 82
    iget-object v0, p1, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mResponseResults:Lorg/json/JSONObject;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->responseResults:Lorg/json/JSONObject;

    .line 83
    iget-object v0, p1, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mRequestContext:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Context;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->requestContext:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Context;

    .line 84
    iget-object v0, p1, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mResponseContext:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Context;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->responseContext:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Context;

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->acceptedMediaTypes:Lorg/json/JSONObject;

    .line 86
    iget-object v0, p1, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mAppSpecificData:Lorg/json/JSONObject;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->appSpecificData:Lorg/json/JSONObject;

    .line 87
    iget-object v0, p1, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mTransportReservedData:Lorg/json/JSONObject;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->transportReservedData:Lorg/json/JSONObject;

    .line 88
    return-void
.end method

.method private getSizeOfAsset(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;)J
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 507
    const-wide/16 v2, 0x0

    .line 508
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getData()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 509
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getData()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 510
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 511
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 512
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 513
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;->Adobe360ErrorMissingAsset:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;

    invoke-static {v0, v5, v5}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->create360Error(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;Ljava/lang/String;Ljava/lang/Exception;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Exception;

    move-result-object v0

    throw v0

    .line 515
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 547
    :cond_1
    :goto_0
    return-wide v2

    .line 516
    :cond_2
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getData()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, [B

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 517
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    array-length v0, v0

    int-to-long v2, v0

    goto :goto_0

    .line 518
    :cond_3
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getData()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXElement;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 519
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXElement;

    .line 522
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXElement;->getAllComponents()Ljava/util/List;

    move-result-object v1

    .line 523
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    .line 526
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXElement;->getBranchCore()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->isComponentUnmanaged(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 533
    :try_start_0
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXElement;->getBranchCore()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->getPathForComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 538
    :goto_2
    if-eqz v4, :cond_4

    .line 539
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getLength()J

    move-result-wide v8

    add-long/2addr v2, v8

    goto :goto_1

    .line 534
    :catch_0
    move-exception v4

    .line 535
    sget-object v7, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v8, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v5, v4}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v4, v5

    goto :goto_2

    .line 544
    :cond_5
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXElement;->getManifest()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->getLocalData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v2, v0

    goto :goto_0
.end method


# virtual methods
.method public addInputAsset(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 113
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 114
    :cond_0
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 115
    :cond_1
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getData()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "The data property of asset must not be null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 116
    :cond_2
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getDescriptor()Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 117
    :cond_3
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->$assertionsDisabled:Z

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getDescriptor()Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;->getType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getDescriptor()Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;->getPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 119
    :cond_5
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->inputAssets:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->inputDescriptors:Ljava/util/Map;

    .line 121
    return-void
.end method

.method public addInputAsset(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 96
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 97
    :cond_0
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getData()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "The data property of asset must not be null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 98
    :cond_1
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getDescriptor()Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 99
    :cond_2
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->$assertionsDisabled:Z

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getDescriptor()Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getDescriptor()Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;->getType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getDescriptor()Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;->getPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 101
    :cond_4
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getDescriptor()Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 103
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->inputAssets:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getDescriptor()Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->inputDescriptors:Ljava/util/Map;

    .line 106
    :cond_5
    const/4 v0, 0x1

    return v0
.end method

.method public addInputAssetArray(Ljava/util/List;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 160
    const-string/jumbo v0, "assetArray"

    invoke-static {p1, v0}, Lcom/adobe/creativesdk/foundation/internal/util/AdobeCSDKErrorUtils;->verifyArgumentNotNil(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    const-string/jumbo v0, "name"

    invoke-static {p2, v0}, Lcom/adobe/creativesdk/foundation/internal/util/AdobeCSDKErrorUtils;->verifyArgumentNotNil(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;

    .line 165
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getData()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_1
    const-string/jumbo v5, "The data property of asset must not be null"

    invoke-static {v1, v5}, Lcom/adobe/creativesdk/foundation/internal/util/AdobeCSDKErrorUtils;->verifyArgument(ZLjava/lang/String;)V

    .line 166
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getDescriptor()Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;

    move-result-object v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_2
    const-string/jumbo v5, "The descriptor property of asset must not be null"

    invoke-static {v1, v5}, Lcom/adobe/creativesdk/foundation/internal/util/AdobeCSDKErrorUtils;->verifyArgument(ZLjava/lang/String;)V

    .line 167
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getDescriptor()Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;->getType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getDescriptor()Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    move v0, v2

    :goto_3
    const-string/jumbo v1, "The descriptor property of asset is incomplete"

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/util/AdobeCSDKErrorUtils;->verifyArgument(ZLjava/lang/String;)V

    goto :goto_0

    :cond_0
    move v1, v3

    .line 165
    goto :goto_1

    :cond_1
    move v1, v3

    .line 166
    goto :goto_2

    :cond_2
    move v0, v3

    .line 167
    goto :goto_3

    .line 169
    :cond_3
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->inputAssets:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->inputDescriptors:Ljava/util/Map;

    .line 171
    return-void
.end method

.method public addOutputAsset(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 145
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 146
    :cond_0
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 147
    :cond_1
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getData()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "The data property of asset must not be null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 148
    :cond_2
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getDescriptor()Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 149
    :cond_3
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->$assertionsDisabled:Z

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getDescriptor()Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;->getType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getDescriptor()Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;->getPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 151
    :cond_5
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->outputAssets:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->outputDescriptors:Ljava/util/Map;

    .line 153
    return-void
.end method

.method public addOutputAsset(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 128
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 129
    :cond_0
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getData()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "The data property of asset must not be null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 130
    :cond_1
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getDescriptor()Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 131
    :cond_2
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->$assertionsDisabled:Z

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getDescriptor()Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getDescriptor()Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;->getType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getDescriptor()Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;->getPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 133
    :cond_4
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getDescriptor()Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 135
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->outputAssets:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getDescriptor()Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->outputDescriptors:Ljava/util/Map;

    .line 138
    :cond_5
    const/4 v0, 0x1

    return v0
.end method

.method public addOutputAssetArray(Ljava/util/List;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 178
    const-string/jumbo v0, "assetArray"

    invoke-static {p1, v0}, Lcom/adobe/creativesdk/foundation/internal/util/AdobeCSDKErrorUtils;->verifyArgumentNotNil(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    const-string/jumbo v0, "name"

    invoke-static {p2, v0}, Lcom/adobe/creativesdk/foundation/internal/util/AdobeCSDKErrorUtils;->verifyArgumentNotNil(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;

    .line 183
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getData()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_1
    const-string/jumbo v5, "The data property of asset must not be null"

    invoke-static {v1, v5}, Lcom/adobe/creativesdk/foundation/internal/util/AdobeCSDKErrorUtils;->verifyArgument(ZLjava/lang/String;)V

    .line 184
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getDescriptor()Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;

    move-result-object v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_2
    const-string/jumbo v5, "The descriptor property of asset must not be null"

    invoke-static {v1, v5}, Lcom/adobe/creativesdk/foundation/internal/util/AdobeCSDKErrorUtils;->verifyArgument(ZLjava/lang/String;)V

    .line 185
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getDescriptor()Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;->getType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getDescriptor()Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    move v0, v2

    :goto_3
    const-string/jumbo v1, "The descriptor property of asset is incomplete"

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/util/AdobeCSDKErrorUtils;->verifyArgument(ZLjava/lang/String;)V

    goto :goto_0

    :cond_0
    move v1, v3

    .line 183
    goto :goto_1

    :cond_1
    move v1, v3

    .line 184
    goto :goto_2

    :cond_2
    move v0, v3

    .line 185
    goto :goto_3

    .line 187
    :cond_3
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->outputAssets:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->outputDescriptors:Ljava/util/Map;

    .line 189
    return-void
.end method

.method public buildMessage()Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 195
    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360MessageInternal;

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->actionId:Ljava/lang/String;

    invoke-direct {v2, v0}, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360MessageInternal;-><init>(Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->actionType:Ljava/lang/String;

    iput-object v0, v2, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mActionType:Ljava/lang/String;

    .line 198
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->requestOptions:Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageCopyUtils;->deepMutableCopyOfDictionary(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, v2, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mRequestOptions:Lorg/json/JSONObject;

    .line 199
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->responseResults:Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageCopyUtils;->deepMutableCopyOfDictionary(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, v2, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mResponseResults:Lorg/json/JSONObject;

    .line 200
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->requestContext:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Context;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->requestContext:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Context;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Context;->getCopy()Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Context;

    move-result-object v0

    :goto_0
    iput-object v0, v2, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mRequestContext:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Context;

    .line 201
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->responseContext:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->responseContext:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Context;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Context;->getCopy()Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Context;

    move-result-object v1

    :cond_0
    iput-object v1, v2, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mResponseContext:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Context;

    .line 202
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->acceptedMediaTypes:Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageCopyUtils;->deepMutableCopyOfDictionary(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, v2, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mAcceptedMediaTypes:Lorg/json/JSONObject;

    .line 203
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->appSpecificData:Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageCopyUtils;->deepMutableCopyOfDictionary(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, v2, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mAppSpecificData:Lorg/json/JSONObject;

    .line 204
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->responseStatusCode:Ljava/lang/String;

    iput-object v0, v2, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mResponseStatusCode:Ljava/lang/String;

    .line 205
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->responseReason:Ljava/lang/String;

    iput-object v0, v2, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mResponseReason:Ljava/lang/String;

    .line 206
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->transportReservedData:Lorg/json/JSONObject;

    iput-object v0, v2, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mTransportReservedData:Lorg/json/JSONObject;

    .line 208
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->inputAssets:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->inputAssets:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 209
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder$1;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder$1;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;)V

    iput-object v0, v2, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mInputAssets:Ljava/util/Map;

    .line 216
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->outputAssets:Ljava/util/Map;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->outputAssets:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 217
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder$2;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder$2;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;)V

    iput-object v0, v2, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mOutputAssets:Ljava/util/Map;

    .line 224
    :cond_2
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;->ADOBE_360_MESSAGE_FORMAT_FROM_BUILDER:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;

    iput-object v0, v2, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mFormat:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;

    .line 226
    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->validateWithError()Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Exception;

    move-result-object v0

    .line 228
    if-nez v0, :cond_4

    .line 229
    return-object v2

    :cond_3
    move-object v0, v1

    .line 200
    goto :goto_0

    .line 230
    :cond_4
    throw v0
.end method

.method public getAcceptedMediaTypes()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->acceptedMediaTypes:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getActionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->actionId:Ljava/lang/String;

    return-object v0
.end method

.method public getActionType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->actionType:Ljava/lang/String;

    return-object v0
.end method

.method public getAppSpecificData()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->appSpecificData:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getInputDescriptors()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 418
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->inputDescriptors:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->inputDescriptors:Ljava/util/Map;

    .line 449
    :goto_0
    return-object v0

    .line 421
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->inputAssets:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 422
    new-instance v2, Ljava/util/HashMap;

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->inputAssets:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 424
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->inputAssets:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 426
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/util/List;

    if-eqz v1, :cond_2

    .line 428
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 429
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 432
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;

    .line 434
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getDescriptor()Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 437
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 441
    :cond_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getDescriptor()Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 445
    :cond_3
    iput-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->inputDescriptors:Ljava/util/Map;

    .line 446
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->inputDescriptors:Ljava/util/Map;

    goto :goto_0

    .line 449
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOutputDescriptors()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 458
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->outputDescriptors:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->outputDescriptors:Ljava/util/Map;

    .line 489
    :goto_0
    return-object v0

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->outputAssets:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 462
    new-instance v2, Ljava/util/HashMap;

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->outputAssets:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 464
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->outputAssets:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 466
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/util/List;

    if-eqz v1, :cond_2

    .line 468
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 469
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 472
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;

    .line 474
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getDescriptor()Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 477
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 481
    :cond_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getDescriptor()Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 485
    :cond_3
    iput-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->outputDescriptors:Ljava/util/Map;

    .line 486
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->outputDescriptors:Ljava/util/Map;

    goto :goto_0

    .line 489
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRequestContext()Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Context;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->requestContext:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Context;

    return-object v0
.end method

.method public getRequestOptions()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->requestOptions:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getResponseContext()Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Context;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->responseContext:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Context;

    return-object v0
.end method

.method public getResponseReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->responseReason:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseResults()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->responseResults:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getResponseStatusCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->responseStatusCode:Ljava/lang/String;

    return-object v0
.end method

.method public getSizeOfAssets()J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Exception;
        }
    .end annotation

    .prologue
    .line 557
    const-wide/16 v0, 0x0

    .line 558
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->outputAssets:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v2, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 560
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 562
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 564
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;

    .line 566
    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->getSizeOfAsset(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;)J

    move-result-wide v6

    add-long/2addr v2, v6

    .line 567
    goto :goto_1

    :cond_0
    move-wide v0, v2

    :goto_2
    move-wide v2, v0

    .line 573
    goto :goto_0

    .line 571
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->getSizeOfAsset(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;)J

    move-result-wide v0

    add-long/2addr v0, v2

    goto :goto_2

    .line 575
    :cond_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->inputAssets:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 577
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/util/List;

    if-eqz v4, :cond_4

    .line 579
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 581
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;

    .line 583
    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->getSizeOfAsset(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;)J

    move-result-wide v6

    add-long/2addr v2, v6

    .line 584
    goto :goto_4

    .line 588
    :cond_4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->getSizeOfAsset(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;)J

    move-result-wide v4

    add-long/2addr v2, v4

    goto :goto_3

    .line 592
    :cond_5
    return-wide v2
.end method

.method public getTransportReservedData()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->transportReservedData:Lorg/json/JSONObject;

    return-object v0
.end method

.method public setAcceptedMediaTypes(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 320
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->acceptedMediaTypes:Lorg/json/JSONObject;

    .line 321
    return-void
.end method

.method public setActionId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 248
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->actionId:Ljava/lang/String;

    .line 249
    return-void
.end method

.method public setActionType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->actionType:Ljava/lang/String;

    .line 267
    return-void
.end method

.method public setAppSpecificData(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 338
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->appSpecificData:Lorg/json/JSONObject;

    .line 339
    return-void
.end method

.method public setRequestContext(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Context;)V
    .locals 0

    .prologue
    .line 302
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->requestContext:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Context;

    .line 303
    return-void
.end method

.method public setRequestOptions(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 284
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->requestOptions:Lorg/json/JSONObject;

    .line 285
    return-void
.end method

.method public setResponseContext(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Context;)V
    .locals 0

    .prologue
    .line 374
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->responseContext:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Context;

    .line 375
    return-void
.end method

.method public setResponseReason(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 409
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->responseReason:Ljava/lang/String;

    .line 410
    return-void
.end method

.method public setResponseResults(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 356
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->responseResults:Lorg/json/JSONObject;

    .line 357
    return-void
.end method

.method public setResponseStatusCode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 392
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->responseStatusCode:Ljava/lang/String;

    .line 393
    return-void
.end method

.method public setTransportReservedData(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 503
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->transportReservedData:Lorg/json/JSONObject;

    .line 504
    return-void
.end method
