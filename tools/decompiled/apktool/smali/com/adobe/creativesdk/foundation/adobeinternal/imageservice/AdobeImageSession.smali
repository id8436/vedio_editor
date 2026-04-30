.class public Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;
.super Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceSession;
.source "AdobeImageSession.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final AdobeStorageSessionImageServiceTag:Ljava/lang/String; = "imageservices"

.field public static final FACE_DETECT:Ljava/lang/String; = "faceDetect"

.field public static final IMAGE:Ljava/lang/String; = "image"

.field public static final MANIFEST:Ljava/lang/String; = "manifest"

.field public static final RESPONSE:Ljava/lang/String; = "Response"

.field private static TAG:Ljava/lang/String; = null

.field public static final UTF_8:Ljava/lang/String; = "UTF-8"

.field private static totalPhysicalMemory:J


# instance fields
.field private imageSessionTmpDir:Ljava/lang/String;

.field private requestMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;",
            "Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 69
    const-class v0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->$assertionsDisabled:Z

    .line 77
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->totalPhysicalMemory:J

    .line 81
    const-class v0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->TAG:Ljava/lang/String;

    return-void

    .line 69
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudEndpoint;)V
    .locals 3

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceSession;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudEndpoint;)V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->imageSessionTmpDir:Ljava/lang/String;

    .line 129
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->createTmpDir()Ljava/lang/String;

    .line 131
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->setUpService()V

    .line 132
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeImageServiceDisconnectedNotification:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->setDisconnectionNotifier(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;)V

    .line 133
    const-wide/16 v0, 0xf

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->setupOngoingConnectionTimer(JZ)V

    .line 134
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->requestMap:Ljava/util/Map;

    .line 135
    return-void
.end method

.method public constructor <init>(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 145
    invoke-direct {p0, p1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceSession;-><init>(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;Ljava/lang/String;)V

    .line 79
    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->imageSessionTmpDir:Ljava/lang/String;

    .line 146
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->requestMap:Ljava/util/Map;

    .line 147
    return-void
.end method

.method public constructor <init>(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 139
    invoke-direct {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceSession;-><init>(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;Ljava/lang/String;)V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->imageSessionTmpDir:Ljava/lang/String;

    .line 140
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->createTmpDir()Ljava/lang/String;

    .line 141
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->requestMap:Ljava/util/Map;

    .line 142
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->requestMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->getNetworkException(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;

    move-result-object v0

    return-object v0
.end method

.method private checkEntitlements()Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;
    .locals 4

    .prologue
    .line 1428
    const/4 v0, 0x0

    .line 1430
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;->getSharedServices()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;

    move-result-object v1

    .line 1432
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;->getServices()Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1433
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;->getServices()Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v3, "image"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1434
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;->getServices()Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "image"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "entitled"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1436
    new-instance v0, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;

    sget-object v1, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;->AdobeNetworkErrorNotEntitledToService:Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;-><init>(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;)V

    .line 1439
    :cond_0
    return-object v0
.end method

.method static convertAdjustType(Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageAdjustType;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1300
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$15;->$SwitchMap$com$adobe$creativesdk$foundation$adobeinternal$imageservice$AdobeImageAdjustType:[I

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageAdjustType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1312
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1302
    :pswitch_0
    const-string/jumbo v0, "full"

    goto :goto_0

    .line 1304
    :pswitch_1
    const-string/jumbo v0, "eye_level"

    goto :goto_0

    .line 1306
    :pswitch_2
    const-string/jumbo v0, "no_perspective"

    goto :goto_0

    .line 1308
    :pswitch_3
    const-string/jumbo v0, "rectification"

    goto :goto_0

    .line 1310
    :pswitch_4
    const-string/jumbo v0, "all"

    goto :goto_0

    .line 1300
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method static convertCalibrateType(Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageCalibrateType;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1317
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$15;->$SwitchMap$com$adobe$creativesdk$foundation$adobeinternal$imageservice$AdobeImageCalibrateType:[I

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageCalibrateType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1325
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1319
    :pswitch_0
    const-string/jumbo v0, "all"

    goto :goto_0

    .line 1321
    :pswitch_1
    const-string/jumbo v0, "allfix_cop"

    goto :goto_0

    .line 1323
    :pswitch_2
    const-string/jumbo v0, "allfix_k"

    goto :goto_0

    .line 1317
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static convertCropSortType(Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageAutoCropSortType;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 155
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$15;->$SwitchMap$com$adobe$creativesdk$foundation$adobeinternal$imageservice$AdobeImageAutoCropSortType:[I

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageAutoCropSortType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 165
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 157
    :pswitch_0
    const-string/jumbo v0, "all"

    goto :goto_0

    .line 159
    :pswitch_1
    const-string/jumbo v0, "composition"

    goto :goto_0

    .line 161
    :pswitch_2
    const-string/jumbo v0, "saliency"

    goto :goto_0

    .line 163
    :pswitch_3
    const-string/jumbo v0, "cutThrough"

    goto :goto_0

    .line 155
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static convertCropType(Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageCropType;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1330
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$15;->$SwitchMap$com$adobe$creativesdk$foundation$adobeinternal$imageservice$AdobeImageCropType:[I

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageCropType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1338
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1332
    :pswitch_0
    const-string/jumbo v0, "nocrop"

    goto :goto_0

    .line 1334
    :pswitch_1
    const-string/jumbo v0, "cropToFit"

    goto :goto_0

    .line 1336
    :pswitch_2
    const-string/jumbo v0, "smartFill"

    goto :goto_0

    .line 1330
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static convertFillType(Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageFillType;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1343
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$15;->$SwitchMap$com$adobe$creativesdk$foundation$adobeinternal$imageservice$AdobeImageFillType:[I

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageFillType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1353
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1345
    :pswitch_0
    const-string/jumbo v0, "regular"

    goto :goto_0

    .line 1347
    :pswitch_1
    const-string/jumbo v0, "gb"

    goto :goto_0

    .line 1349
    :pswitch_2
    const-string/jumbo v0, "gbl"

    goto :goto_0

    .line 1351
    :pswitch_3
    const-string/jumbo v0, "lbc"

    goto :goto_0

    .line 1343
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static convertFitModeType(Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageFitType;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1358
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$15;->$SwitchMap$com$adobe$creativesdk$foundation$adobeinternal$imageservice$AdobeImageFitType:[I

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageFitType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1374
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1360
    :pswitch_0
    const-string/jumbo v0, "fit"

    goto :goto_0

    .line 1362
    :pswitch_1
    const-string/jumbo v0, "constrain"

    goto :goto_0

    .line 1364
    :pswitch_2
    const-string/jumbo v0, "crop"

    goto :goto_0

    .line 1366
    :pswitch_3
    const-string/jumbo v0, "wrap"

    goto :goto_0

    .line 1368
    :pswitch_4
    const-string/jumbo v0, "stretch"

    goto :goto_0

    .line 1370
    :pswitch_5
    const-string/jumbo v0, "hfit"

    goto :goto_0

    .line 1372
    :pswitch_6
    const-string/jumbo v0, "vfit"

    goto :goto_0

    .line 1358
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private createAGCFile(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/agc/AdobeAGCManifest;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/agc/AdobeAGCCreationType;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/agc/AdobeAGCImageComponents;ZLandroid/os/Handler;Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/IAdobeImageRequestCompletionHandler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;
    .locals 12
    .param p1    # Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1472
    :try_start_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1474
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1476
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageUtils;->generateUuid()Ljava/lang/String;

    move-result-object v1

    .line 1477
    const-string/jumbo v2, "Boundary_%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1479
    const-string/jumbo v1, "cid:%s@adobe.com"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageUtils;->generateUuid()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1481
    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/net/AdobeMultiPartData;

    invoke-direct {v2}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeMultiPartData;-><init>()V

    .line 1482
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/agc/AdobeAGCManifest;->getContentType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeMultiPartData;->setContentType(Ljava/lang/String;)V

    .line 1483
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/agc/AdobeAGCManifest;->getData()Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "UTF-8"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeMultiPartData;->setData([B)V

    .line 1484
    invoke-virtual {v2, v1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeMultiPartData;->setContentID(Ljava/lang/String;)V

    .line 1485
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1487
    const-string/jumbo v2, "manifest"

    invoke-virtual {v5, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1490
    if-eqz p4, :cond_5

    .line 1491
    invoke-virtual/range {p4 .. p4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/agc/AdobeAGCImageComponents;->getSize()I

    move-result v6

    .line 1493
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v6, :cond_5

    .line 1495
    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/agc/AdobeAGCImageComponents;->getImageComponent(I)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/agc/AdobeAGCImageComponent;

    move-result-object v1

    .line 1496
    const-string/jumbo v7, "cid:%s@adobe.com"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageUtils;->generateUuid()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 1498
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/agc/AdobeAGCImageComponent;->getSourcePath()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 1500
    new-instance v8, Lcom/adobe/creativesdk/foundation/internal/net/AdobeMultiPartData;

    invoke-direct {v8}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeMultiPartData;-><init>()V

    .line 1501
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/agc/AdobeAGCImageComponent;->getSourcePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeMultiPartData;->setSourcePath(Ljava/lang/String;)V

    .line 1502
    invoke-virtual {v8, v7}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeMultiPartData;->setContentID(Ljava/lang/String;)V

    .line 1503
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/agc/AdobeAGCImageComponent;->getContentType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeMultiPartData;->setContentType(Ljava/lang/String;)V

    .line 1504
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/agc/AdobeAGCImageComponent;->getHref()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->getFileNameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeMultiPartData;->setName(Ljava/lang/String;)V

    .line 1506
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1507
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/agc/AdobeAGCImageComponent;->getHref()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1493
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 1510
    :cond_0
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/agc/AdobeAGCImageComponent;->getData()[B

    move-result-object v8

    if-eqz v8, :cond_2

    .line 1512
    new-instance v8, Lcom/adobe/creativesdk/foundation/internal/net/AdobeMultiPartData;

    invoke-direct {v8}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeMultiPartData;-><init>()V

    .line 1513
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/agc/AdobeAGCImageComponent;->getData()[B

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeMultiPartData;->setData([B)V

    .line 1514
    invoke-virtual {v8, v7}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeMultiPartData;->setContentID(Ljava/lang/String;)V

    .line 1515
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/agc/AdobeAGCImageComponent;->getContentType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeMultiPartData;->setContentType(Ljava/lang/String;)V

    .line 1516
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/agc/AdobeAGCImageComponent;->getHref()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->getFileNameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeMultiPartData;->setName(Ljava/lang/String;)V

    .line 1518
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1519
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/agc/AdobeAGCImageComponent;->getHref()Ljava/lang/String;

    move-result-object v1

    .line 1521
    const-string/jumbo v8, "/"

    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1522
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1524
    :cond_1
    invoke-virtual {v5, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 1671
    :catch_0
    move-exception v1

    .line 1672
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    sget-object v3, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->TAG:Ljava/lang/String;

    const-string/jumbo v4, ""

    invoke-static {v2, v3, v4, v1}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1680
    :goto_2
    const/4 v2, 0x0

    :goto_3
    return-object v2

    .line 1526
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/agc/AdobeAGCImageComponent;->getFile()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 1527
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/agc/AdobeAGCImageComponent;->getFile()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->getHref()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1528
    const-string/jumbo v7, "/"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 1529
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1530
    :cond_3
    invoke-virtual {v5, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_1

    .line 1674
    :catch_1
    move-exception v1

    .line 1675
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    sget-object v3, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->TAG:Ljava/lang/String;

    const-string/jumbo v4, ""

    invoke-static {v2, v3, v4, v1}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 1532
    :cond_4
    :try_start_2
    sget-object v7, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->WARN:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v8, "Invalid Image Component"

    const-string/jumbo v9, "Skipping :- Invalid Image Component %s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v8, v1}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    .line 1676
    :catch_2
    move-exception v1

    .line 1677
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    sget-object v3, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->TAG:Ljava/lang/String;

    const-string/jumbo v4, ""

    invoke-static {v2, v3, v4, v1}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 1539
    :cond_5
    :try_start_3
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 1540
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 1542
    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1543
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 1544
    const-string/jumbo v9, "href"

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1545
    invoke-virtual {v8, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4

    .line 1552
    :cond_6
    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$15;->$SwitchMap$com$adobe$creativesdk$foundation$adobeinternal$storage$agc$AdobeAGCCreationType:[I

    invoke-virtual {p3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/agc/AdobeAGCCreationType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1566
    const-string/jumbo v2, "unknown"

    .line 1567
    const/4 v1, 0x0

    move-object v6, v2

    move-object v2, v1

    .line 1572
    :goto_5
    const-string/jumbo v1, "inputs"

    invoke-virtual {v7, v1, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1574
    iget-object v1, p1, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->href:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1576
    const-string/jumbo v5, "/"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 1577
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "/"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1579
    :cond_7
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 1581
    const-string/jumbo v8, "disposition"

    const-string/jumbo v9, "location"

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1582
    const-string/jumbo v8, "location"

    invoke-virtual {v5, v8, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1584
    if-eqz p5, :cond_8

    .line 1585
    const-string/jumbo v1, "If-Match"

    const-string/jumbo v8, "!"

    invoke-virtual {v5, v1, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1588
    :cond_8
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1589
    invoke-virtual {v1, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1590
    const-string/jumbo v5, "outputs"

    invoke-virtual {v7, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1592
    new-instance v1, Ljava/net/URL;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->getService()Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;

    move-result-object v8

    invoke-virtual {v8}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->baseURL()Ljava/net/URL;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, "/"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1594
    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    sget-object v5, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;->AdobeNetworkHttpRequestMethodPOST:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;

    const/4 v8, 0x0

    invoke-direct {v2, v1, v5, v8}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;-><init>(Ljava/net/URL;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;Ljava/util/Map;)V

    .line 1595
    const-string/jumbo v1, "Content-Type"

    const-string/jumbo v5, "multipart/related; boundary=%s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v1, v5}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1597
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, "UTF-8"

    invoke-virtual {v1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 1599
    new-instance v5, Lcom/adobe/creativesdk/foundation/internal/net/AdobeMultiPartData;

    invoke-direct {v5}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeMultiPartData;-><init>()V

    .line 1600
    const-string/jumbo v7, "application/vnd.adobe.image-operation+json"

    invoke-virtual {v5, v7}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeMultiPartData;->setContentType(Ljava/lang/String;)V

    .line 1601
    invoke-virtual {v5, v1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeMultiPartData;->setData([B)V

    .line 1603
    const/4 v1, 0x0

    invoke-virtual {v4, v1, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1607
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->getService()Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;

    move-result-object v1

    new-instance v5, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$14;

    move-object/from16 v0, p7

    invoke-direct {v5, p0, p1, v6, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$14;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/IAdobeImageRequestCompletionHandler;)V

    move-object/from16 v6, p6

    invoke-virtual/range {v1 .. v6}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->getResponseForMultiPartDataRequest(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;Ljava/lang/String;Ljava/util/ArrayList;Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;Landroid/os/Handler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    goto/16 :goto_3

    .line 1555
    :pswitch_0
    const-string/jumbo v2, "aifile"

    .line 1556
    const-string/jumbo v1, "createai"

    move-object v6, v2

    move-object v2, v1

    .line 1557
    goto/16 :goto_5

    .line 1560
    :pswitch_1
    const-string/jumbo v2, "image"

    .line 1561
    const-string/jumbo v1, "createpsd"
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_2

    move-object v6, v2

    move-object v2, v1

    .line 1562
    goto/16 :goto_5

    .line 1552
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private createTmpFile()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "temp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageUtils;->generateUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1182
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->imageSessionTmpDir:Ljava/lang/String;

    invoke-static {v1, v0}, Lorg/apache/commons/io/FilenameUtils;->concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static deleteTempFiles(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1286
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1287
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1288
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unable to delete "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 1291
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1292
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1293
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unable to delete "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 1296
    :cond_1
    return-void
.end method

.method private getFileNameFromPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1688
    const/4 v0, 0x0

    return-object v0
.end method

.method private getNetworkException(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;
    .locals 1

    .prologue
    .line 1684
    const/4 v0, 0x0

    return-object v0
.end method

.method protected static getServiceEndpoint()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudEndpoint;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getEnvironment()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;

    move-result-object v0

    .line 87
    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$15;->$SwitchMap$com$adobe$creativesdk$foundation$internal$auth$AdobeAuthIMSEnvironment:[I

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    .line 102
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v2, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "An undefined authentication endpoint has been specified."

    invoke-static {v0, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 108
    :goto_0
    :try_start_0
    new-instance v2, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudEndpoint;

    const-string/jumbo v4, "imageservices"

    if-eqz v0, :cond_0

    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    :goto_1
    sget-object v3, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;->AdobeCloudServiceTypeImage:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;

    invoke-direct {v2, v4, v0, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudEndpoint;-><init>(Ljava/lang/String;Ljava/net/URL;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 112
    :goto_2
    return-object v1

    .line 89
    :pswitch_0
    const-string/jumbo v0, "https://cc-api-image.adobe.io"

    goto :goto_0

    .line 93
    :pswitch_1
    const-string/jumbo v0, "https://cc-api-image-stage.adobe.io"

    goto :goto_0

    .line 97
    :pswitch_2
    const-string/jumbo v0, "https://cc-api-image-labs.adobe.io"

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 108
    goto :goto_1

    .line 109
    :catch_0
    move-exception v0

    .line 110
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    sget-object v3, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->TAG:Ljava/lang/String;

    const-string/jumbo v4, ""

    invoke-static {v2, v3, v4, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 87
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getSessionForCloudEndpoint(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudEndpoint;)Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceSession;
    .locals 1

    .prologue
    .line 124
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->getServiceEndpoint()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudEndpoint;

    move-result-object p0

    :cond_0
    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudEndpoint;)V

    return-object v0
.end method

.method private static getTotalPhysicalMemory()J
    .locals 4

    .prologue
    .line 1401
    sget-wide v0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->totalPhysicalMemory:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 1406
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string/jumbo v0, "/proc/meminfo"

    const-string/jumbo v2, "r"

    invoke-direct {v1, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1407
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 1410
    const-string/jumbo v2, "(\\d+)"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 1411
    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 1412
    const-string/jumbo v0, ""

    .line 1413
    :goto_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1414
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1416
    :cond_0
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 1418
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 1419
    double-to-long v0, v0

    sput-wide v0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->totalPhysicalMemory:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1424
    :cond_1
    :goto_1
    sget-wide v0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->totalPhysicalMemory:J

    return-wide v0

    .line 1420
    :catch_0
    move-exception v0

    .line 1421
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->TAG:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-static {v1, v2, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method static imageHrefIsValid(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1380
    const-string/jumbo v1, "(^[\\/]$|^\\/\\/.*)"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    .line 1381
    if-eqz v1, :cond_1

    .line 1384
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static imageInputIsValid(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;)Z
    .locals 2

    .prologue
    .line 1388
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->href:Ljava/net/URI;

    if-eqz v0, :cond_0

    .line 1389
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->href:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->imageHrefIsValid(Ljava/lang/String;)Z

    move-result v0

    .line 1397
    :goto_0
    return v0

    .line 1390
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1392
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1393
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1394
    const/4 v0, 0x0

    goto :goto_0

    .line 1397
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public autoCrop(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;IZ[DZLcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageAutoCropSortType;Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputParameters;Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/IAdobeImageRequestCompletionHandler;Landroid/os/Handler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;
    .locals 10

    .prologue
    .line 174
    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->imageInputIsValid(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 175
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 176
    const-string/jumbo v3, "ADOBE_ASSET_DETAILS_STRING_KEY"

    const-string/jumbo v4, "image null or not valid"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    new-instance v3, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;

    sget-object v4, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;->AdobeNetworkErrorBadRequest:Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;

    invoke-direct {v3, v4, v2}, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;-><init>(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;Ljava/util/HashMap;)V

    .line 178
    move-object/from16 v0, p8

    move-object/from16 v1, p9

    invoke-virtual {p0, v3, v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->callCompletionHandler(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/IAdobeImageRequestCompletionHandler;Landroid/os/Handler;)V

    .line 179
    const/4 v2, 0x0

    .line 224
    :goto_0
    return-object v2

    .line 182
    :cond_1
    new-instance v3, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOperation;

    invoke-direct {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOperation;-><init>()V

    .line 183
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 185
    :try_start_0
    const-string/jumbo v2, "image"

    invoke-virtual {v4, v2, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :goto_1
    invoke-virtual {v3, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOperation;->setInputs(Lorg/json/JSONObject;)V

    .line 191
    invoke-static/range {p6 .. p6}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->convertCropSortType(Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageAutoCropSortType;)Ljava/lang/String;

    move-result-object v4

    .line 192
    if-nez v4, :cond_2

    .line 193
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 194
    const-string/jumbo v3, "ADOBE_ASSET_DETAILS_STRING_KEY"

    const-string/jumbo v4, "Unknown autoCrop sort type"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    new-instance v3, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;

    sget-object v4, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;->AdobeNetworkErrorBadRequest:Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;

    invoke-direct {v3, v4, v2}, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;-><init>(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;Ljava/util/HashMap;)V

    .line 196
    move-object/from16 v0, p8

    move-object/from16 v1, p9

    invoke-virtual {p0, v3, v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->callCompletionHandler(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/IAdobeImageRequestCompletionHandler;Landroid/os/Handler;)V

    .line 197
    const/4 v2, 0x0

    goto :goto_0

    .line 186
    :catch_0
    move-exception v2

    .line 187
    sget-object v5, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    sget-object v6, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->TAG:Ljava/lang/String;

    const-string/jumbo v7, ""

    invoke-static {v5, v6, v7, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 200
    :cond_2
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 202
    :try_start_1
    const-string/jumbo v2, "numSuggestions"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 203
    const-string/jumbo v2, "faceDetect"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 204
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 205
    array-length v7, p4

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v7, :cond_3

    aget-wide v8, p4, v2

    .line 206
    invoke-virtual {v6, v8, v9}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    .line 205
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 208
    :cond_3
    const-string/jumbo v2, "aspectRatios"

    invoke-virtual {v5, v2, v6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 209
    const-string/jumbo v2, "perAspectRatio"

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 210
    const-string/jumbo v2, "sortType"

    invoke-virtual {v5, v2, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 214
    :goto_3
    invoke-virtual {v3, v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOperation;->setOptions(Lorg/json/JSONObject;)V

    .line 216
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 218
    :try_start_2
    const-string/jumbo v2, "output"

    move-object/from16 v0, p7

    invoke-virtual {v4, v2, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 222
    :goto_4
    invoke-virtual {v3, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOperation;->setOutputDispositions(Lorg/json/JSONObject;)V

    .line 224
    const-string/jumbo v2, "autocrop"

    move-object/from16 v0, p8

    move-object/from16 v1, p9

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->performImageOperation(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOperation;Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/IAdobeImageRequestCompletionHandler;Landroid/os/Handler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    move-result-object v2

    goto/16 :goto_0

    .line 211
    :catch_1
    move-exception v2

    .line 212
    sget-object v4, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    sget-object v6, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->TAG:Ljava/lang/String;

    const-string/jumbo v7, ""

    invoke-static {v4, v6, v7, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 219
    :catch_2
    move-exception v2

    .line 220
    sget-object v5, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    sget-object v6, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->TAG:Ljava/lang/String;

    const-string/jumbo v7, ""

    invoke-static {v5, v6, v7, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4
.end method

.method public autoTone(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;ZZLcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputParameters;Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/IAdobeImageRequestCompletionHandler;Landroid/os/Handler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;
    .locals 6

    .prologue
    .line 233
    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->imageInputIsValid(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 234
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 235
    const-string/jumbo v1, "ADOBE_ASSET_DETAILS_STRING_KEY"

    const-string/jumbo v2, "image null or not valid"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    new-instance v1, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;

    sget-object v2, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;->AdobeNetworkErrorBadRequest:Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;

    invoke-direct {v1, v2, v0}, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;-><init>(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;Ljava/util/HashMap;)V

    .line 237
    invoke-virtual {p0, v1, p5, p6}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->callCompletionHandler(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/IAdobeImageRequestCompletionHandler;Landroid/os/Handler;)V

    .line 238
    const/4 v0, 0x0

    .line 269
    :goto_0
    return-object v0

    .line 240
    :cond_1
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOperation;

    invoke-direct {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOperation;-><init>()V

    .line 241
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 243
    :try_start_0
    const-string/jumbo v0, "image"

    invoke-virtual {v2, v0, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    :goto_1
    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOperation;->setInputs(Lorg/json/JSONObject;)V

    .line 249
    iget-object v0, p4, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputParameters;->disposition:Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputDispositionType;

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputDispositionType;->AdobeImageOutputDispositionNone:Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputDispositionType;

    if-eq v0, v2, :cond_2

    const/4 v0, 0x1

    .line 251
    :goto_2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 253
    :try_start_1
    const-string/jumbo v3, "faceDetect"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 254
    const-string/jumbo v3, "exportCurve"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 255
    const-string/jumbo v3, "applyCurve"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 259
    :goto_3
    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOperation;->setOptions(Lorg/json/JSONObject;)V

    .line 261
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 263
    :try_start_2
    const-string/jumbo v0, "image"

    invoke-virtual {v2, v0, p4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 267
    :goto_4
    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOperation;->setOutputDispositions(Lorg/json/JSONObject;)V

    .line 269
    const-string/jumbo v0, "autotone"

    invoke-virtual {p0, v0, v1, p5, p6}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->performImageOperation(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOperation;Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/IAdobeImageRequestCompletionHandler;Landroid/os/Handler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    move-result-object v0

    goto :goto_0

    .line 244
    :catch_0
    move-exception v0

    .line 245
    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    sget-object v4, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->TAG:Ljava/lang/String;

    const-string/jumbo v5, ""

    invoke-static {v3, v4, v5, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 249
    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    .line 256
    :catch_1
    move-exception v0

    .line 257
    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    sget-object v4, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->TAG:Ljava/lang/String;

    const-string/jumbo v5, ""

    invoke-static {v3, v4, v5, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 264
    :catch_2
    move-exception v0

    .line 265
    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    sget-object v4, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->TAG:Ljava/lang/String;

    const-string/jumbo v5, ""

    invoke-static {v3, v4, v5, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4
.end method

.method callCompletionHandler(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/IAdobeImageRequestCompletionHandler;Landroid/os/Handler;)V
    .locals 2

    .prologue
    .line 1105
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$8;

    invoke-direct {v0, p0, p2, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$8;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/IAdobeImageRequestCompletionHandler;Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;)V

    .line 1114
    if-eqz p3, :cond_0

    .line 1115
    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1119
    :goto_0
    return-void

    .line 1117
    :cond_0
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method callCompletionHandler(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;Landroid/os/Handler;)V
    .locals 2

    .prologue
    .line 1122
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$9;

    invoke-direct {v0, p0, p2, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$9;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;)V

    .line 1131
    if-eqz p3, :cond_0

    .line 1132
    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1136
    :goto_0
    return-void

    .line 1134
    :cond_0
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public contentAwareFill(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageFillType;Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputParameters;Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputParameters;Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/IAdobeImageRequestCompletionHandler;Landroid/os/Handler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;
    .locals 8

    .prologue
    .line 439
    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->imageInputIsValid(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 440
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 441
    const-string/jumbo v1, "ADOBE_ASSET_DETAILS_STRING_KEY"

    const-string/jumbo v2, "image null or not valid"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    new-instance v1, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;

    sget-object v2, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;->AdobeNetworkErrorBadRequest:Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;

    invoke-direct {v1, v2, v0}, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;-><init>(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;Ljava/util/HashMap;)V

    .line 443
    invoke-virtual {p0, v1, p6, p7}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->callCompletionHandler(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/IAdobeImageRequestCompletionHandler;Landroid/os/Handler;)V

    .line 444
    const/4 v0, 0x0

    .line 522
    :goto_0
    return-object v0

    .line 446
    :cond_1
    new-instance v2, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOperation;

    invoke-direct {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOperation;-><init>()V

    .line 448
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;

    invoke-direct {v1, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;)V

    .line 449
    iget-object v0, v1, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->href:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x2f

    if-eq v0, v3, :cond_2

    .line 451
    :try_start_0
    new-instance v0, Ljava/net/URI;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->href:Ljava/net/URI;

    invoke-virtual {v4}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iput-object v0, v1, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->href:Ljava/net/URI;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 457
    :cond_2
    :goto_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 459
    if-eqz p2, :cond_4

    invoke-static {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->imageInputIsValid(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 461
    new-instance v4, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;

    invoke-direct {v4, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;)V

    .line 462
    iget-object v0, v4, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->href:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v5, 0x2f

    if-eq v0, v5, :cond_3

    .line 464
    :try_start_1
    new-instance v0, Ljava/net/URI;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v4, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->href:Ljava/net/URI;

    invoke-virtual {v6}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iput-object v0, v4, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->href:Ljava/net/URI;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 471
    :cond_3
    :goto_2
    :try_start_2
    const-string/jumbo v0, "image"

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 472
    const-string/jumbo v0, "mask"

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 485
    :goto_3
    invoke-virtual {v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOperation;->setInputs(Lorg/json/JSONObject;)V

    .line 487
    iget-object v0, p4, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputParameters;->disposition:Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputDispositionType;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputDispositionType;->AdobeImageOutputDispositionNone:Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputDispositionType;

    if-eq v0, v1, :cond_5

    const/4 v0, 0x1

    .line 489
    :goto_4
    invoke-static {p3}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->convertFillType(Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageFillType;)Ljava/lang/String;

    move-result-object v3

    .line 490
    if-nez v3, :cond_6

    .line 491
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 492
    const-string/jumbo v1, "ADOBE_ASSET_DETAILS_STRING_KEY"

    const-string/jumbo v2, "Unknown fill type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    new-instance v1, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;

    sget-object v2, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;->AdobeNetworkErrorBadRequest:Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;

    invoke-direct {v1, v2, v0}, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;-><init>(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;Ljava/util/HashMap;)V

    .line 494
    invoke-virtual {p0, v1, p6, p7}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->callCompletionHandler(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/IAdobeImageRequestCompletionHandler;Landroid/os/Handler;)V

    .line 495
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 452
    :catch_0
    move-exception v0

    .line 453
    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    sget-object v4, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->TAG:Ljava/lang/String;

    const-string/jumbo v5, ""

    invoke-static {v3, v4, v5, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 465
    :catch_1
    move-exception v0

    .line 466
    sget-object v5, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    sget-object v6, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->TAG:Ljava/lang/String;

    const-string/jumbo v7, ""

    invoke-static {v5, v6, v7, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 473
    :catch_2
    move-exception v0

    .line 474
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    sget-object v4, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->TAG:Ljava/lang/String;

    const-string/jumbo v5, ""

    invoke-static {v1, v4, v5, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 479
    :cond_4
    :try_start_3
    const-string/jumbo v0, "image"

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    .line 480
    :catch_3
    move-exception v0

    .line 481
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    sget-object v4, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->TAG:Ljava/lang/String;

    const-string/jumbo v5, ""

    invoke-static {v1, v4, v5, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 487
    :cond_5
    const/4 v0, 0x0

    goto :goto_4

    .line 498
    :cond_6
    if-eqz p5, :cond_8

    iget-object v1, p5, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputParameters;->disposition:Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputDispositionType;

    sget-object v4, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputDispositionType;->AdobeImageOutputDispositionNone:Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputDispositionType;

    if-eq v1, v4, :cond_8

    const/4 v1, 0x1

    .line 500
    :goto_5
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 502
    :try_start_4
    const-string/jumbo v5, "fillType"

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 503
    const-string/jumbo v3, "outputNNF"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 504
    const-string/jumbo v3, "outputImage"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    .line 508
    :goto_6
    invoke-virtual {v2, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOperation;->setOptions(Lorg/json/JSONObject;)V

    .line 510
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 512
    :try_start_5
    const-string/jumbo v0, "image"

    invoke-virtual {v3, v0, p4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 513
    if-eqz v1, :cond_7

    .line 514
    const-string/jumbo v0, "*"

    iput-object v0, p5, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputParameters;->mediaRange:Ljava/lang/String;

    .line 515
    const-string/jumbo v0, "nnf"

    invoke-virtual {v3, v0, p5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_5

    .line 520
    :cond_7
    :goto_7
    invoke-virtual {v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOperation;->setOutputDispositions(Lorg/json/JSONObject;)V

    .line 522
    const-string/jumbo v0, "contentawarefill"

    invoke-virtual {p0, v0, v2, p6, p7}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->performImageOperation(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOperation;Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/IAdobeImageRequestCompletionHandler;Landroid/os/Handler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    move-result-object v0

    goto/16 :goto_0

    .line 498
    :cond_8
    const/4 v1, 0x0

    goto :goto_5

    .line 505
    :catch_4
    move-exception v0

    .line 506
    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    sget-object v5, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->TAG:Ljava/lang/String;

    const-string/jumbo v6, ""

    invoke-static {v3, v5, v6, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 517
    :catch_5
    move-exception v0

    .line 518
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    sget-object v4, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->TAG:Ljava/lang/String;

    const-string/jumbo v5, ""

    invoke-static {v1, v4, v5, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7
.end method

.method public createAI(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/agc/AdobeAGCManifest;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/agc/AdobeAGCImageComponents;ZLandroid/os/Handler;Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/IAdobeImageRequestCompletionHandler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;
    .locals 8
    .param p1    # Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1458
    sget-object v3, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/agc/AdobeAGCCreationType;->ADOBE_AGC_CREATION_TYPE_AI:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/agc/AdobeAGCCreationType;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->createAGCFile(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/agc/AdobeAGCManifest;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/agc/AdobeAGCCreationType;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/agc/AdobeAGCImageComponents;ZLandroid/os/Handler;Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/IAdobeImageRequestCompletionHandler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public createAI(Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputParameters;Ljava/util/List;Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/IAdobeImageRequestCompletionHandler;Landroid/os/Handler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputParameters;",
            "Ljava/util/List",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;",
            ">;",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/IAdobeImageRequestCompletionHandler;",
            "Landroid/os/Handler;",
            ")",
            "Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 985
    if-eqz p2, :cond_0

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->imageInputIsValid(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 986
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 987
    const-string/jumbo v1, "ADOBE_ASSET_DETAILS_STRING_KEY"

    const-string/jumbo v2, "image null"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 988
    new-instance v1, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;

    sget-object v2, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;->AdobeNetworkErrorBadRequest:Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;

    invoke-direct {v1, v2, v0}, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;-><init>(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;Ljava/util/HashMap;)V

    .line 989
    invoke-virtual {p0, v1, p3, p4}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->callCompletionHandler(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/IAdobeImageRequestCompletionHandler;Landroid/os/Handler;)V

    .line 990
    const/4 v0, 0x0

    .line 1017
    :goto_0
    return-object v0

    .line 993
    :cond_1
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOperation;

    invoke-direct {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOperation;-><init>()V

    .line 996
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;

    .line 998
    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->href:Ljava/net/URI;

    .line 1000
    sget-boolean v2, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->imageHrefIsValid(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1001
    :cond_2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1003
    :try_start_0
    const-string/jumbo v3, "manifest"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1007
    :goto_1
    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOperation;->setInputs(Lorg/json/JSONObject;)V

    .line 1009
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1011
    :try_start_1
    const-string/jumbo v0, "aifile"

    invoke-virtual {v2, v0, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1015
    :goto_2
    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOperation;->setOutputDispositions(Lorg/json/JSONObject;)V

    .line 1017
    const-string/jumbo v0, "createai"

    invoke-virtual {p0, v0, v1, p3, p4}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->performImageOperation(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOperation;Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/IAdobeImageRequestCompletionHandler;Landroid/os/Handler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    move-result-object v0

    goto :goto_0

    .line 1004
    :catch_0
    move-exception v0

    .line 1005
    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    sget-object v4, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->TAG:Ljava/lang/String;

    const-string/jumbo v5, ""

    invoke-static {v3, v4, v5, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1012
    :catch_1
    move-exception v0

    .line 1013
    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    sget-object v4, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->TAG:Ljava/lang/String;

    const-string/jumbo v5, ""

    invoke-static {v3, v4, v5, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public createPSD(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/agc/AdobeAGCManifest;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/agc/AdobeAGCImageComponents;ZLandroid/os/Handler;Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/IAdobeImageRequestCompletionHandler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;
    .locals 8
    .param p1    # Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1448
    sget-object v3, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/agc/AdobeAGCCreationType;->ADOBE_AGC_CREATION_TYPE_PSD:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/agc/AdobeAGCCreationType;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->createAGCFile(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/agc/AdobeAGCManifest;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/agc/AdobeAGCCreationType;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/agc/AdobeAGCImageComponents;ZLandroid/os/Handler;Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/IAdobeImageRequestCompletionHandler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method protected declared-synchronized createTmpDir()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1165
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "ImageSessionTemp"

    .line 1166
    invoke-static {}, Lorg/apache/commons/io/FileUtils;->getTempDirectoryPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/apache/commons/io/FilenameUtils;->concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1168
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1169
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1170
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 1172
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1173
    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->imageSessionTmpDir:Ljava/lang/String;

    .line 1175
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    .line 1176
    const/4 v0, 0x0

    .line 1177
    :cond_2
    monitor-exit p0

    return-object v0

    .line 1165
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public deblur(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;IIIILcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputParameters;Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/IAdobeImageRequestCompletionHandler;Landroid/os/Handler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 363
    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->imageInputIsValid(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 364
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 365
    const-string/jumbo v2, "ADOBE_ASSET_DETAILS_STRING_KEY"

    const-string/jumbo v3, "image null or not valid"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    new-instance v2, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;

    sget-object v3, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;->AdobeNetworkErrorBadRequest:Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;

    invoke-direct {v2, v3, v1}, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;-><init>(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;Ljava/util/HashMap;)V

    .line 367
    invoke-virtual {p0, v2, p7, p8}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->callCompletionHandler(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/IAdobeImageRequestCompletionHandler;Landroid/os/Handler;)V

    .line 428
    :goto_0
    return-object v0

    .line 370
    :cond_1
    iget-object v1, p6, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputParameters;->disposition:Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputDispositionType;

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputDispositionType;->AdobeImageOutputDispositionNone:Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputDispositionType;

    if-ne v1, v2, :cond_2

    .line 371
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 372
    const-string/jumbo v2, "ADOBE_ASSET_DETAILS_STRING_KEY"

    const-string/jumbo v3, "Disposition type no allowed"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    new-instance v2, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;

    sget-object v3, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;->AdobeNetworkErrorBadRequest:Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;

    invoke-direct {v2, v3, v1}, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;-><init>(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;Ljava/util/HashMap;)V

    .line 374
    invoke-virtual {p0, v2, p7, p8}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->callCompletionHandler(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/IAdobeImageRequestCompletionHandler;Landroid/os/Handler;)V

    goto :goto_0

    .line 378
    :cond_2
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOperation;

    invoke-direct {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOperation;-><init>()V

    .line 379
    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;

    invoke-direct {v2, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;)V

    .line 380
    iget-object v0, v2, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->href:Ljava/net/URI;

    if-eqz v0, :cond_3

    iget-object v0, v2, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->href:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x2f

    if-eq v0, v3, :cond_3

    .line 382
    :try_start_0
    new-instance v0, Ljava/net/URI;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->href:Ljava/net/URI;

    invoke-virtual {v4}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iput-object v0, v2, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->href:Ljava/net/URI;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    :cond_3
    :goto_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 390
    :try_start_1
    const-string/jumbo v0, "image"

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 395
    :goto_2
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, "ImageSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "inputs "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v4}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    invoke-virtual {v1, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOperation;->setInputs(Lorg/json/JSONObject;)V

    .line 399
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 401
    :try_start_2
    const-string/jumbo v0, "noiseLevel"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 402
    const-string/jumbo v0, "kernelSize"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 403
    const-string/jumbo v0, "maxKernels"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 404
    const-string/jumbo v0, "kernelIndex"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 408
    :goto_3
    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOperation;->setOptions(Lorg/json/JSONObject;)V

    .line 410
    const/4 v0, 0x1

    if-ge p4, v0, :cond_4

    .line 411
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 413
    :try_start_3
    const-string/jumbo v0, "image"

    invoke-virtual {v2, v0, p6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    .line 417
    :goto_4
    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOperation;->setOutputDispositions(Lorg/json/JSONObject;)V

    .line 428
    :goto_5
    const-string/jumbo v0, "deblur"

    invoke-virtual {p0, v0, v1, p7, p8}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->performImageOperation(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOperation;Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/IAdobeImageRequestCompletionHandler;Landroid/os/Handler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    move-result-object v0

    goto/16 :goto_0

    .line 383
    :catch_0
    move-exception v0

    .line 384
    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    sget-object v4, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->TAG:Ljava/lang/String;

    const-string/jumbo v5, ""

    invoke-static {v3, v4, v5, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 391
    :catch_1
    move-exception v0

    .line 392
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    sget-object v4, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->TAG:Ljava/lang/String;

    const-string/jumbo v5, ""

    invoke-static {v2, v4, v5, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 405
    :catch_2
    move-exception v0

    .line 406
    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    sget-object v4, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->TAG:Ljava/lang/String;

    const-string/jumbo v5, ""

    invoke-static {v3, v4, v5, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 414
    :catch_3
    move-exception v0

    .line 415
    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    sget-object v4, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->TAG:Ljava/lang/String;

    const-string/jumbo v5, ""

    invoke-static {v3, v4, v5, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 419
    :cond_4
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 421
    :try_start_4
    const-string/jumbo v0, "images"

    invoke-virtual {v2, v0, p6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    .line 425
    :goto_6
    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOperation;->setOutputDispositions(Lorg/json/JSONObject;)V

    goto :goto_5

    .line 422
    :catch_4
    move-exception v0

    .line 423
    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    sget-object v4, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->TAG:Ljava/lang/String;

    const-string/jumbo v5, ""

    invoke-static {v3, v4, v5, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6
.end method

.method public describePSD(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputParameters;Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/IAdobeImageRequestCompletionHandler;Landroid/os/Handler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;
    .locals 6

    .prologue
    .line 529
    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->imageInputIsValid(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 530
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 531
    const-string/jumbo v1, "ADOBE_ASSET_DETAILS_STRING_KEY"

    const-string/jumbo v2, "image null or not valid"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    new-instance v1, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;

    sget-object v2, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;->AdobeNetworkErrorBadRequest:Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;

    invoke-direct {v1, v2, v0}, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;-><init>(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;Ljava/util/HashMap;)V

    .line 533
    invoke-virtual {p0, v1, p3, p4}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->callCompletionHandler(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/IAdobeImageRequestCompletionHandler;Landroid/os/Handler;)V

    .line 534
    const/4 v0, 0x0

    .line 554
    :goto_0
    return-object v0

    .line 537
    :cond_1
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOperation;

    invoke-direct {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOperation;-><init>()V

    .line 538
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 540
    :try_start_0
    const-string/jumbo v0, "image"

    invoke-virtual {v2, v0, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 544
    :goto_1
    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOperation;->setInputs(Lorg/json/JSONObject;)V

    .line 546
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 548
    :try_start_1
    const-string/jumbo v0, "output"

    invoke-virtual {v2, v0, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 552
    :goto_2
    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOperation;->setOutputDispositions(Lorg/json/JSONObject;)V

    .line 554
    const-string/jumbo v0, "introspect"

    invoke-virtual {p0, v0, v1, p3, p4}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->performImageOperation(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOperation;Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/IAdobeImageRequestCompletionHandler;Landroid/os/Handler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    move-result-object v0

    goto :goto_0

    .line 541
    :catch_0
    move-exception v0

    .line 542
    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    sget-object v4, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->TAG:Ljava/lang/String;

    const-string/jumbo v5, ""

    invoke-static {v3, v4, v5, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 549
    :catch_1
    move-exception v0

    .line 550
    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    sget-object v4, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->TAG:Ljava/lang/String;

    const-string/jumbo v5, ""

    invoke-static {v3, v4, v5, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method errorFromResponse(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;)Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/16 v2, 0x190

    .line 1149
    .line 1151
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->getStatusCode()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 1152
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1153
    const-string/jumbo v0, "AdobeNetworkHTTPStatus"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1154
    new-instance v0, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;

    sget-object v2, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;->AdobeNetworkErrorBadRequest:Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;

    invoke-direct {v0, v2, v1}, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;-><init>(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;Ljava/util/HashMap;)V

    .line 1161
    :goto_0
    return-object v0

    .line 1156
    :cond_0
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->getStatusCode()I

    move-result v0

    const/16 v2, 0x191

    if-ne v0, v2, :cond_1

    .line 1158
    new-instance v0, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;

    sget-object v2, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;->AdobeNetworkErrorAuthenticationFailed:Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;

    invoke-direct {v0, v2, v1}, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;-><init>(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;Ljava/util/HashMap;)V

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method getAssetErrorFromResponse(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 787
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 790
    const/4 v2, -0x1

    .line 791
    const-string/jumbo v1, "[no data]"

    .line 795
    if-eqz p1, :cond_2

    .line 796
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->getStatusCode()I

    .line 797
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->getUrl()Ljava/net/URL;

    move-result-object v1

    .line 798
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->getStatusCode()I

    move-result v3

    .line 799
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->getDataBytes()[B

    move-result-object v2

    .line 800
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->getHeaders()Ljava/util/Map;

    move-result-object v0

    .line 803
    :goto_0
    if-eqz v1, :cond_0

    .line 804
    const-string/jumbo v5, "AdobeAssetRequestURLString"

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 806
    :cond_0
    const-string/jumbo v1, "AdobeNetworkHTTPStatus"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 807
    const-string/jumbo v1, "AdobeAssetResponseData"

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 808
    if-eqz v0, :cond_1

    .line 809
    const-string/jumbo v1, "AdobeAssetResponseHeaders"

    invoke-virtual {v4, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 812
    :cond_1
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;->AdobeAssetErrorUnexpectedResponse:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;

    invoke-direct {v0, v1, v4}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;Ljava/util/HashMap;)V

    .line 813
    return-object v0

    :cond_2
    move v3, v2

    move-object v2, v1

    move-object v1, v0

    goto :goto_0
.end method

.method public getManifest(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;Landroid/os/Handler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;",
            "Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 641
    sget-boolean v1, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Param \'psdHref\' must not be null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 642
    :cond_0
    sget-boolean v1, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    invoke-static {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->imageHrefIsValid(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "psdHref is invalid"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 643
    :cond_1
    sget-boolean v1, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Param \'compositeHref\' must not be null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 644
    :cond_2
    sget-boolean v1, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->$assertionsDisabled:Z

    if-nez v1, :cond_3

    invoke-static {p3}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->imageHrefIsValid(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "compositeHref is invalid"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 646
    :cond_3
    if-eqz p1, :cond_4

    invoke-static {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->imageInputIsValid(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 647
    :cond_4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 648
    const-string/jumbo v2, "ADOBE_ASSET_DETAILS_STRING_KEY"

    const-string/jumbo v3, "image null or not valid"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 649
    new-instance v2, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;

    sget-object v3, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;->AdobeNetworkErrorBadRequest:Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;

    invoke-direct {v2, v3, v1}, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;-><init>(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;Ljava/util/HashMap;)V

    .line 650
    invoke-virtual {p0, v2, p4, p5}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->callCompletionHandler(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;Landroid/os/Handler;)V

    .line 775
    :goto_0
    return-object v0

    .line 654
    :cond_5
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->getService()Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;

    move-result-object v1

    if-nez v1, :cond_8

    .line 655
    const-string/jumbo v1, "Adobe cloud not specified."

    .line 657
    if-eqz p4, :cond_7

    .line 658
    new-instance v1, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;

    sget-object v2, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;->AdobeNetworkErrorNoCloudSpecified:Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;

    invoke-direct {v1, v2}, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;-><init>(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;)V

    .line 659
    if-eqz p5, :cond_6

    .line 660
    new-instance v2, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$2;

    invoke-direct {v2, p0, p4, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$2;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;)V

    invoke-virtual {p5, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 667
    :cond_6
    invoke-interface {p4, v1}, Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;->onError(Ljava/lang/Object;)V

    goto :goto_0

    .line 670
    :cond_7
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 676
    :cond_8
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->checkEntitlements()Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;

    move-result-object v1

    .line 677
    if-eqz v1, :cond_b

    .line 678
    if-eqz p4, :cond_a

    .line 679
    if-eqz p5, :cond_9

    .line 680
    new-instance v2, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$3;

    invoke-direct {v2, p0, p4, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$3;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;)V

    invoke-virtual {p5, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 687
    :cond_9
    invoke-interface {p4, v1}, Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;->onError(Ljava/lang/Object;)V

    goto :goto_0

    .line 690
    :cond_a
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Entitlement Check failed"

    invoke-static {v2, v3, v4, v1}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 698
    :cond_b
    :try_start_0
    new-instance v2, Ljava/net/URL;

    const-string/jumbo v1, "psd"

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->getService()Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->baseURL()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageLastPathComponentUtil;->getRelativeTo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 705
    :try_start_1
    invoke-static {p2}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageUtils;->encodeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 706
    new-instance v1, Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageLastPathComponentUtil;->getRelativeTo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 707
    :try_start_2
    new-instance v0, Ljava/net/URL;

    const-string/jumbo v2, "manifest"

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageLastPathComponentUtil;->getRelativeTo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_4

    move-object v1, v0

    .line 714
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v2

    .line 715
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "dcx="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p3}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->percentEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 716
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 717
    new-instance v0, Ljava/net/URI;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "?"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 718
    :goto_2
    invoke-virtual {v0}, Ljava/net/URI;->toURL()Ljava/net/URL;
    :try_end_3
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v0

    .line 723
    :goto_3
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    invoke-direct {v1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;-><init>()V

    .line 724
    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;->setUrl(Ljava/net/URL;)V

    .line 725
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;->AdobeNetworkHttpRequestMethodGET:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;->setRequestMethod(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;)V

    .line 727
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$4;

    invoke-direct {v0, p0, p1, p4, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$4;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;)V

    .line 772
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->getService()Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;

    move-result-object v2

    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;->NORMAL:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;

    invoke-virtual {v2, v1, v3, v0, p5}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->getResponseForDataRequest(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;Landroid/os/Handler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    move-result-object v0

    .line 774
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->requestMap:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 699
    :catch_0
    move-exception v1

    .line 700
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    sget-object v3, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->TAG:Ljava/lang/String;

    const-string/jumbo v4, ""

    invoke-static {v2, v3, v4, v1}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 708
    :catch_1
    move-exception v0

    move-object v1, v2

    .line 709
    :goto_4
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    sget-object v3, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->TAG:Ljava/lang/String;

    const-string/jumbo v4, ""

    invoke-static {v2, v3, v4, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 719
    :catch_2
    move-exception v0

    .line 720
    :goto_5
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    sget-object v3, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->TAG:Ljava/lang/String;

    const-string/jumbo v4, ""

    invoke-static {v2, v3, v4, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_3

    .line 719
    :catch_3
    move-exception v0

    goto :goto_5

    .line 708
    :catch_4
    move-exception v0

    goto :goto_4

    :cond_c
    move-object v0, v2

    goto :goto_2
.end method

.method public getManifest(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;
        }
    .end annotation

    .prologue
    .line 562
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Param \'resource\' must not be null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 563
    :cond_0
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->imageInputIsValid(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "resource is invalid"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 566
    :cond_1
    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 567
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v5

    .line 568
    const/4 v0, 0x1

    new-array v4, v0, [Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput-boolean v1, v4, v0

    .line 569
    const/4 v0, 0x1

    new-array v3, v0, [Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput-object v1, v3, v0

    .line 570
    const/4 v0, 0x1

    new-array v6, v0, [Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput-object v1, v6, v0

    .line 573
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$1;

    move-object v1, p0

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$1;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;Ljava/util/concurrent/locks/Lock;[Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;[ZLjava/util/concurrent/locks/Condition;[Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;)V

    const/4 v12, 0x0

    move-object v7, p0

    move-object v8, p1

    move-object v9, p2

    move-object/from16 v10, p3

    move-object v11, v0

    invoke-virtual/range {v7 .. v12}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->getManifest(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;Landroid/os/Handler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    .line 608
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 610
    :goto_0
    const/4 v0, 0x0

    :try_start_0
    aget-boolean v0, v4, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    .line 612
    :try_start_1
    invoke-interface {v5}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 613
    :catch_0
    move-exception v0

    .line 614
    :try_start_2
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    sget-object v7, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->TAG:Ljava/lang/String;

    const-string/jumbo v8, ""

    invoke-static {v1, v7, v8, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 618
    :catchall_0
    move-exception v0

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 619
    throw v0

    .line 618
    :cond_2
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 621
    const/4 v0, 0x0

    aget-object v0, v6, v0

    if-eqz v0, :cond_3

    .line 622
    const/4 v0, 0x0

    aget-object v0, v6, v0

    throw v0

    .line 624
    :cond_3
    const/4 v0, 0x0

    aget-object v0, v3, v0

    return-object v0
.end method

.method percentEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 629
    :try_start_0
    const-string/jumbo v0, "UTF-8"

    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 633
    :goto_0
    return-object v0

    .line 630
    :catch_0
    move-exception v0

    .line 631
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->TAG:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-static {v1, v2, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 633
    const/4 v0, 0x0

    goto :goto_0
.end method

.method performImageOperation(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOperation;Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/IAdobeImageRequestCompletionHandler;Landroid/os/Handler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 1189
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->getService()Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;

    move-result-object v1

    if-nez v1, :cond_2

    .line 1190
    const-string/jumbo v1, "Adobe cloud not specified."

    .line 1192
    if-eqz p3, :cond_1

    .line 1193
    new-instance v1, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;

    sget-object v2, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;->AdobeNetworkErrorNoCloudSpecified:Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;

    invoke-direct {v1, v2}, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;-><init>(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;)V

    .line 1194
    if-eqz p4, :cond_0

    .line 1195
    new-instance v2, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$10;

    invoke-direct {v2, p0, p3, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$10;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/IAdobeImageRequestCompletionHandler;Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;)V

    invoke-virtual {p4, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1281
    :goto_0
    return-object v0

    .line 1202
    :cond_0
    invoke-interface {p3, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/IAdobeImageRequestCompletionHandler;->onError(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;)V

    goto :goto_0

    .line 1205
    :cond_1
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1211
    :cond_2
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->checkEntitlements()Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;

    move-result-object v1

    .line 1212
    if-eqz v1, :cond_5

    .line 1213
    if-eqz p3, :cond_4

    .line 1214
    if-eqz p4, :cond_3

    .line 1215
    new-instance v2, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$11;

    invoke-direct {v2, p0, p3, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$11;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/IAdobeImageRequestCompletionHandler;Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;)V

    invoke-virtual {p4, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1222
    :cond_3
    invoke-interface {p3, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/IAdobeImageRequestCompletionHandler;->onError(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;)V

    goto :goto_0

    .line 1225
    :cond_4
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Entitlement Check failed"

    invoke-static {v2, v3, v4, v1}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1230
    :cond_5
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->createTmpFile()Ljava/lang/String;

    move-result-object v2

    .line 1231
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->createTmpFile()Ljava/lang/String;

    move-result-object v4

    .line 1232
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->getService()Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->baseURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {p2, p1, v0, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOperation;->createImageServiceRequestWithURLString(Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    move-result-object v5

    .line 1234
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$12;

    move-object v1, p0

    move-object v3, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$12;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOperation;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/IAdobeImageRequestCompletionHandler;)V

    .line 1268
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->getService()Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;

    move-result-object v4

    sget-object v7, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;->NORMAL:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;

    move-object v6, v2

    move-object v8, v0

    move-object v9, p4

    invoke-virtual/range {v4 .. v9}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->getResponseForDownloadRequest(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;Landroid/os/Handler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    move-result-object v0

    .line 1271
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->requestMap:Ljava/util/Map;

    invoke-interface {v1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1273
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$13;

    invoke-direct {v1, p0, p3}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$13;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/IAdobeImageRequestCompletionHandler;)V

    .line 1279
    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;->registerListener(Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkHttpTaskHandleListener;)V

    goto :goto_0
.end method

.method public render(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;Ljava/lang/Number;Ljava/lang/String;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageFitType;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputParameters;Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/IAdobeImageRequestCompletionHandler;Landroid/os/Handler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;
    .locals 7

    .prologue
    .line 1028
    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->imageInputIsValid(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1029
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1030
    const-string/jumbo v3, "ADOBE_ASSET_DETAILS_STRING_KEY"

    const-string/jumbo v4, "image null or not valid"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1031
    new-instance v3, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;

    sget-object v4, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;->AdobeNetworkErrorBadRequest:Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;

    invoke-direct {v3, v4, v2}, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;-><init>(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;Ljava/util/HashMap;)V

    .line 1032
    move-object/from16 v0, p12

    move-object/from16 v1, p13

    invoke-virtual {p0, v3, v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->callCompletionHandler(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/IAdobeImageRequestCompletionHandler;Landroid/os/Handler;)V

    .line 1033
    const/4 v2, 0x0

    .line 1099
    :goto_0
    return-object v2

    .line 1036
    :cond_1
    new-instance v2, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOperation;

    invoke-direct {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOperation;-><init>()V

    .line 1038
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 1039
    const-string/jumbo v4, "image"

    invoke-virtual {v3, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1040
    invoke-virtual {v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOperation;->setInputs(Lorg/json/JSONObject;)V

    .line 1043
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 1045
    if-eqz p4, :cond_2

    .line 1046
    const-string/jumbo v5, "scale"

    invoke-virtual {v4, v5, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1048
    :cond_2
    if-eqz p5, :cond_3

    .line 1049
    const-string/jumbo v5, "width"

    invoke-virtual {v4, v5, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1051
    :cond_3
    if-eqz p6, :cond_4

    .line 1052
    const-string/jumbo v5, "height"

    invoke-virtual {v4, v5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1054
    :cond_4
    if-eqz p7, :cond_6

    .line 1055
    invoke-static {p7}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->convertFitModeType(Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageFitType;)Ljava/lang/String;

    move-result-object v5

    .line 1056
    if-nez v5, :cond_5

    .line 1057
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1058
    const-string/jumbo v3, "ADOBE_ASSET_DETAILS_STRING_KEY"

    const-string/jumbo v4, "Unknown fit type"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1059
    new-instance v3, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;

    sget-object v4, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;->AdobeNetworkErrorBadRequest:Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;

    invoke-direct {v3, v4, v2}, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;-><init>(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;Ljava/util/HashMap;)V

    .line 1060
    move-object/from16 v0, p12

    move-object/from16 v1, p13

    invoke-virtual {p0, v3, v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->callCompletionHandler(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/IAdobeImageRequestCompletionHandler;Landroid/os/Handler;)V

    .line 1061
    const/4 v2, 0x0

    goto :goto_0

    .line 1064
    :cond_5
    const-string/jumbo v6, "fit"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1066
    :cond_6
    if-eqz p2, :cond_7

    .line 1067
    const-string/jumbo v5, "layerID"

    invoke-virtual {v4, v5, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1070
    :cond_7
    if-eqz p3, :cond_8

    .line 1071
    const-string/jumbo v5, "layerName"

    invoke-virtual {v4, v5, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1074
    :cond_8
    if-eqz p8, :cond_9

    .line 1075
    const-string/jumbo v5, "layerCompIndex"

    invoke-virtual {v4, v5, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1078
    :cond_9
    if-eqz p9, :cond_a

    .line 1079
    const-string/jumbo v5, "layerCompID"

    move-object/from16 v0, p9

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1082
    :cond_a
    if-eqz p10, :cond_b

    .line 1083
    const-string/jumbo v5, "layerCompName"

    move-object/from16 v0, p10

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1087
    :cond_b
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 1088
    const-string/jumbo v6, "image"

    move-object/from16 v0, p11

    invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1090
    invoke-virtual {v2, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOperation;->setOptions(Lorg/json/JSONObject;)V

    .line 1092
    invoke-virtual {v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOperation;->setInputs(Lorg/json/JSONObject;)V

    .line 1093
    invoke-virtual {v2, v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOperation;->setOutputDispositions(Lorg/json/JSONObject;)V

    .line 1095
    const-string/jumbo v3, "render"

    move-object/from16 v0, p12

    move-object/from16 v1, p13

    invoke-virtual {p0, v3, v2, v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->performImageOperation(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOperation;Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/IAdobeImageRequestCompletionHandler;Landroid/os/Handler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto/16 :goto_0

    .line 1097
    :catch_0
    move-exception v2

    .line 1098
    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    sget-object v4, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->TAG:Ljava/lang/String;

    const-string/jumbo v5, ""

    invoke-static {v3, v4, v5, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1099
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public setUpService()V
    .locals 0

    .prologue
    .line 152
    return-void
.end method

.method public updatePSDAt(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;Ljava/lang/String;ZLcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;Landroid/os/Handler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;",
            "Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 844
    if-eqz p2, :cond_0

    invoke-static {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->imageInputIsValid(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 845
    invoke-static {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->imageHrefIsValid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p3, :cond_0

    .line 846
    invoke-static {p3}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->imageHrefIsValid(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 847
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 848
    const-string/jumbo v2, "ADOBE_ASSET_DETAILS_STRING_KEY"

    const-string/jumbo v3, "image null or not valid"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 849
    new-instance v2, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;

    sget-object v3, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;->AdobeNetworkErrorBadRequest:Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;

    invoke-direct {v2, v3, v1}, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;-><init>(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;Ljava/util/HashMap;)V

    .line 850
    invoke-virtual {p0, v2, p5, p6}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->callCompletionHandler(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;Landroid/os/Handler;)V

    .line 980
    :goto_0
    return-object v0

    .line 854
    :cond_1
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->getService()Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;

    move-result-object v1

    if-nez v1, :cond_4

    .line 855
    const-string/jumbo v1, "Adobe cloud not specified."

    .line 857
    if-eqz p5, :cond_3

    .line 858
    new-instance v1, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;

    sget-object v2, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;->AdobeNetworkErrorNoCloudSpecified:Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;

    invoke-direct {v1, v2}, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;-><init>(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;)V

    .line 859
    if-eqz p6, :cond_2

    .line 860
    new-instance v2, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$5;

    invoke-direct {v2, p0, p5, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$5;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;)V

    invoke-virtual {p6, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 867
    :cond_2
    invoke-interface {p5, v1}, Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;->onError(Ljava/lang/Object;)V

    goto :goto_0

    .line 870
    :cond_3
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 876
    :cond_4
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->checkEntitlements()Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;

    move-result-object v1

    .line 877
    if-eqz v1, :cond_7

    .line 878
    if-eqz p5, :cond_6

    .line 879
    if-eqz p6, :cond_5

    .line 880
    new-instance v2, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$6;

    invoke-direct {v2, p0, p5, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$6;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;)V

    invoke-virtual {p6, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 887
    :cond_5
    invoke-interface {p5, v1}, Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;->onError(Ljava/lang/Object;)V

    goto :goto_0

    .line 890
    :cond_6
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Entitlement Check failed"

    invoke-static {v2, v3, v4, v1}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 899
    :cond_7
    :try_start_0
    new-instance v2, Ljava/net/URL;

    const-string/jumbo v1, "psd"

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->getService()Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->baseURL()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageLastPathComponentUtil;->getRelativeTo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 906
    :try_start_1
    invoke-static {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageUtils;->encodeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 907
    new-instance v1, Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageLastPathComponentUtil;->getRelativeTo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 908
    :try_start_2
    new-instance v0, Ljava/net/URL;

    const-string/jumbo v2, "manifest"

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageLastPathComponentUtil;->getRelativeTo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_4

    move-object v1, v0

    .line 915
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v2

    .line 916
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "dcx="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p3}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->percentEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 917
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 918
    new-instance v0, Ljava/net/URI;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "?"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 919
    :goto_2
    invoke-virtual {v0}, Ljava/net/URI;->toURL()Ljava/net/URL;
    :try_end_3
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v0

    .line 924
    :goto_3
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    invoke-direct {v1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;-><init>()V

    .line 925
    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;->setUrl(Ljava/net/URL;)V

    .line 926
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;->AdobeNetworkHttpRequestMethodPUT:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;->setRequestMethod(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;)V

    .line 927
    iget-object v0, p2, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->etag:Ljava/lang/String;

    .line 928
    if-nez v0, :cond_8

    if-eqz p4, :cond_a

    .line 929
    :cond_8
    const-string/jumbo v2, "If-Match"

    if-eqz p4, :cond_9

    const-string/jumbo v0, "*"

    :cond_9
    invoke-virtual {v1, v2, v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 931
    :cond_a
    const-string/jumbo v0, "Content-Type"

    iget-object v2, p2, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->type:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->getData()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;->setBody([B)V

    .line 934
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$7;

    invoke-direct {v0, p0, p2, p5, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$7;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;)V

    .line 977
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->getService()Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;

    move-result-object v2

    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;->NORMAL:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;

    invoke-virtual {v2, v1, v3, v0, p6}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->getResponseForDataRequest(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;Landroid/os/Handler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    move-result-object v0

    .line 979
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->requestMap:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 900
    :catch_0
    move-exception v1

    .line 901
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    sget-object v3, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->TAG:Ljava/lang/String;

    const-string/jumbo v4, ""

    invoke-static {v2, v3, v4, v1}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 909
    :catch_1
    move-exception v0

    move-object v1, v2

    .line 910
    :goto_4
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    sget-object v3, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->TAG:Ljava/lang/String;

    const-string/jumbo v4, ""

    invoke-static {v2, v3, v4, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 920
    :catch_2
    move-exception v0

    .line 921
    :goto_5
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    sget-object v3, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->TAG:Ljava/lang/String;

    const-string/jumbo v4, ""

    invoke-static {v2, v3, v4, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_3

    .line 920
    :catch_3
    move-exception v0

    goto :goto_5

    .line 909
    :catch_4
    move-exception v0

    goto :goto_4

    :cond_b
    move-object v0, v2

    goto :goto_2
.end method

.method public upright(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageAdjustType;Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageCalibrateType;FZLcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageCropType;Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputParameters;Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/IAdobeImageRequestCompletionHandler;Landroid/os/Handler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;
    .locals 9

    .prologue
    .line 279
    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->imageInputIsValid(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 280
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 281
    const-string/jumbo v3, "ADOBE_ASSET_DETAILS_STRING_KEY"

    const-string/jumbo v4, "image null or not valid"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    new-instance v3, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;

    sget-object v4, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;->AdobeNetworkErrorBadRequest:Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;

    invoke-direct {v3, v4, v2}, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;-><init>(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;Ljava/util/HashMap;)V

    .line 283
    move-object/from16 v0, p8

    move-object/from16 v1, p9

    invoke-virtual {p0, v3, v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->callCompletionHandler(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/IAdobeImageRequestCompletionHandler;Landroid/os/Handler;)V

    .line 284
    const/4 v2, 0x0

    .line 355
    :goto_0
    return-object v2

    .line 287
    :cond_1
    new-instance v3, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;

    invoke-direct {v3, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;)V

    .line 288
    iget-object v2, v3, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->href:Ljava/net/URI;

    if-eqz v2, :cond_2

    iget-object v2, v3, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->href:Ljava/net/URI;

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x2f

    if-eq v2, v4, :cond_2

    .line 290
    :try_start_0
    new-instance v2, Ljava/net/URI;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->href:Ljava/net/URI;

    invoke-virtual {v5}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iput-object v2, v3, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->href:Ljava/net/URI;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    :cond_2
    :goto_1
    new-instance v4, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOperation;

    invoke-direct {v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOperation;-><init>()V

    .line 296
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 298
    :try_start_1
    const-string/jumbo v2, "image"

    invoke-virtual {v5, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 302
    :goto_2
    invoke-virtual {v4, v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOperation;->setInputs(Lorg/json/JSONObject;)V

    .line 305
    invoke-static {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->convertAdjustType(Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageAdjustType;)Ljava/lang/String;

    move-result-object v3

    .line 306
    if-nez v3, :cond_3

    .line 307
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 308
    const-string/jumbo v3, "ADOBE_ASSET_DETAILS_STRING_KEY"

    const-string/jumbo v4, "Unknown adjust type"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    new-instance v3, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;

    sget-object v4, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;->AdobeNetworkErrorBadRequest:Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;

    invoke-direct {v3, v4, v2}, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;-><init>(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;Ljava/util/HashMap;)V

    .line 310
    move-object/from16 v0, p8

    move-object/from16 v1, p9

    invoke-virtual {p0, v3, v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->callCompletionHandler(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/IAdobeImageRequestCompletionHandler;Landroid/os/Handler;)V

    .line 311
    const/4 v2, 0x0

    goto :goto_0

    .line 291
    :catch_0
    move-exception v2

    .line 292
    sget-object v4, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    sget-object v5, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->TAG:Ljava/lang/String;

    const-string/jumbo v6, ""

    invoke-static {v4, v5, v6, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 299
    :catch_1
    move-exception v2

    .line 300
    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    sget-object v6, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->TAG:Ljava/lang/String;

    const-string/jumbo v7, ""

    invoke-static {v3, v6, v7, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 315
    :cond_3
    invoke-static {p3}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->convertCalibrateType(Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageCalibrateType;)Ljava/lang/String;

    move-result-object v5

    .line 316
    if-nez v5, :cond_4

    .line 317
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 318
    const-string/jumbo v3, "ADOBE_ASSET_DETAILS_STRING_KEY"

    const-string/jumbo v4, "Unknown caliber type"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    new-instance v3, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;

    sget-object v4, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;->AdobeNetworkErrorBadRequest:Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;

    invoke-direct {v3, v4, v2}, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;-><init>(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;Ljava/util/HashMap;)V

    .line 320
    move-object/from16 v0, p8

    move-object/from16 v1, p9

    invoke-virtual {p0, v3, v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->callCompletionHandler(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/IAdobeImageRequestCompletionHandler;Landroid/os/Handler;)V

    .line 321
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 324
    :cond_4
    invoke-static {p6}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->convertCropType(Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageCropType;)Ljava/lang/String;

    move-result-object v6

    .line 325
    if-nez v6, :cond_5

    .line 326
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 327
    const-string/jumbo v3, "ADOBE_ASSET_DETAILS_STRING_KEY"

    const-string/jumbo v4, "Unknown crop type"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    new-instance v3, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;

    sget-object v4, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;->AdobeNetworkErrorBadRequest:Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;

    invoke-direct {v3, v4, v2}, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;-><init>(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;Ljava/util/HashMap;)V

    .line 329
    move-object/from16 v0, p8

    move-object/from16 v1, p9

    invoke-virtual {p0, v3, v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->callCompletionHandler(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/IAdobeImageRequestCompletionHandler;Landroid/os/Handler;)V

    .line 330
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 333
    :cond_5
    move-object/from16 v0, p7

    iget-object v2, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputParameters;->disposition:Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputDispositionType;

    sget-object v7, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputDispositionType;->AdobeImageOutputDispositionNone:Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputDispositionType;

    if-eq v2, v7, :cond_6

    const/4 v2, 0x1

    .line 334
    :goto_3
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 336
    :try_start_2
    const-string/jumbo v8, "adjust"

    invoke-virtual {v7, v8, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 337
    const-string/jumbo v3, "calibrate"

    invoke-virtual {v7, v3, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 338
    const-string/jumbo v3, "f"

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v7, v3, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 339
    const-string/jumbo v3, "faceDetect"

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v7, v3, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 340
    const-string/jumbo v3, "crop"

    invoke-virtual {v7, v3, v6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 341
    const-string/jumbo v3, "applyMatrix"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v7, v3, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 345
    :goto_4
    invoke-virtual {v4, v7}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOperation;->setOptions(Lorg/json/JSONObject;)V

    .line 347
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 349
    :try_start_3
    const-string/jumbo v2, "image"

    move-object/from16 v0, p7

    invoke-virtual {v3, v2, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    .line 353
    :goto_5
    invoke-virtual {v4, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOperation;->setOutputDispositions(Lorg/json/JSONObject;)V

    .line 355
    const-string/jumbo v2, "upright"

    move-object/from16 v0, p8

    move-object/from16 v1, p9

    invoke-virtual {p0, v2, v4, v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->performImageOperation(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOperation;Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/IAdobeImageRequestCompletionHandler;Landroid/os/Handler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    move-result-object v2

    goto/16 :goto_0

    .line 333
    :cond_6
    const/4 v2, 0x0

    goto :goto_3

    .line 342
    :catch_2
    move-exception v2

    .line 343
    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    sget-object v5, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->TAG:Ljava/lang/String;

    const-string/jumbo v6, ""

    invoke-static {v3, v5, v6, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 350
    :catch_3
    move-exception v2

    .line 351
    sget-object v5, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    sget-object v6, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->TAG:Ljava/lang/String;

    const-string/jumbo v7, ""

    invoke-static {v5, v6, v7, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5
.end method
