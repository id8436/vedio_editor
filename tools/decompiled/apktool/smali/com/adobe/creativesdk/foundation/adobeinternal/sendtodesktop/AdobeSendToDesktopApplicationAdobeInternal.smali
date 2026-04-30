.class public Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/AdobeSendToDesktopApplicationAdobeInternal;
.super Ljava/lang/Object;
.source "AdobeSendToDesktopApplicationAdobeInternal.java"


# static fields
.field public static final kAdobeSendToDesktopApplicationItemKeyData:Ljava/lang/String; = "AdobeSendToDesktopApplicationItemKeyData"

.field public static final kAdobeSendToDesktopApplicationItemKeyDataExtension:Ljava/lang/String; = "AdobeSendToDesktopApplicationItemKeyDataExtension"

.field public static final kAdobeSendToDesktopApplicationItemKeyDataType:Ljava/lang/String; = "AdobeSendToDesktopApplicationItemKeyDataType"

.field private static final kAdobeSendToDesktopApplicationItemKeyFacebookAppId:Ljava/lang/String; = "AdobeSendToDesktopApplicationItemKeyFacebookAppId"

.field public static final kAdobeSendToDesktopApplicationItemKeyImage:Ljava/lang/String; = "AdobeSendToDesktopApplicationItemKeyImage"

.field public static final kAdobeSendToDesktopApplicationItemKeyName:Ljava/lang/String; = "AdobeSendToDesktopApplicationItemKeyName"

.field private static final kAdobeSendToDesktopApplicationItemKeyProjectTags:Ljava/lang/String; = "AdobeSendToDesktopApplicationItemKeyProjectTags"

.field private static final kAdobeSendToDesktopApplicationItemKeyRevisionId:Ljava/lang/String; = "AdobeSendToDesktopApplicationItemKeyRevisionId"

.field private static final kAdobeSendToDesktopApplicationItemKeyWipId:Ljava/lang/String; = "AdobeSendToDesktopApplicationItemKeyWipId"

.field private static final kAdobeSendToDesktopApplicationItemKeyXMPMetadata:Ljava/lang/String; = "AdobeSendToDesktopApplicationItemKeyXMPMetadata"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    invoke-static {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/AdobeSendToDesktopApplicationAdobeInternal;->analyticsNameForApplication(Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopException;
    .locals 1

    .prologue
    .line 68
    invoke-static {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/AdobeSendToDesktopApplicationAdobeInternal;->getSendToDesktopExceptionFromNetworkResponse(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopException;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;Ljava/lang/String;JLcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/IAdobeSendToDesktopNotificationCallBack;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V
    .locals 0

    .prologue
    .line 68
    invoke-static/range {p0 .. p5}, Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/AdobeSendToDesktopApplicationAdobeInternal;->waitForCompletion(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;Ljava/lang/String;JLcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/IAdobeSendToDesktopNotificationCallBack;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V

    return-void
.end method

.method private static analyticsNameForApplication(Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 938
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/AdobeSendToDesktopApplicationAdobeInternal$10;->$SwitchMap$com$adobe$creativesdk$foundation$sendtodesktop$AdobeCreativeCloudApplication:[I

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 949
    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    .line 941
    :pswitch_0
    const-string/jumbo v0, "Illustrator"

    goto :goto_0

    .line 943
    :pswitch_1
    const-string/jumbo v0, "Photoshop"

    goto :goto_0

    .line 945
    :pswitch_2
    const-string/jumbo v0, "InDesign"

    goto :goto_0

    .line 938
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected static checkEntitlementsForApplication(Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback",
            "<",
            "Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopException;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 972
    .line 974
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/AdobeSendToDesktopApplicationAdobeInternal$10;->$SwitchMap$com$adobe$creativesdk$foundation$sendtodesktop$AdobeCreativeCloudApplication:[I

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 984
    :pswitch_0
    if-nez v4, :cond_1

    .line 986
    const/4 v0, 0x0

    .line 987
    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/AdobeSendToDesktopApplicationAdobeInternal$10;->$SwitchMap$com$adobe$creativesdk$foundation$sendtodesktop$AdobeCreativeCloudApplication:[I

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    .line 1001
    :goto_0
    const-string/jumbo v2, "You do not have permission to send your designs to this application. Contact your IT administrator to gain access"

    .line 1002
    const-string/jumbo v1, "SEND_TO_UNKNOWN_DESKTOP_PERMISSION_DENIED_DUE_TO_ENTITLEMENTS_MESSAGE"

    .line 1004
    if-eqz v0, :cond_0

    .line 1006
    const-string/jumbo v1, "You do not have permission to send your designs to %s. Contact your IT administrator to gain access."

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1007
    const-string/jumbo v0, "SEND_TO_DESKTOP_PERMISSION_DENIED_DUE_TO_ENTITLEMENTS_MESSAGE"

    .line 1009
    :goto_1
    sget-object v2, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;->ADOBE_SEND_TO_DESKTOP_ERROR_CODE_USER_NOT_ENTITLED:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;

    invoke-static {v2, v1, v0}, Lcom/adobe/creativesdk/foundation/internal/sendtodesktop/AdobeSendToDesktopErrorUtils;->createSendToDesktopError(Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopException;

    move-result-object v0

    .line 1010
    invoke-interface {p1, v0}, Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;->onError(Ljava/lang/Object;)V

    move v0, v3

    .line 1013
    :goto_2
    return v0

    .line 990
    :pswitch_1
    const-string/jumbo v0, "Adobe Illustrator"

    goto :goto_0

    .line 993
    :pswitch_2
    const-string/jumbo v0, "Adobe InDesign"

    goto :goto_0

    .line 996
    :pswitch_3
    const-string/jumbo v0, "Adobe Photoshop"

    goto :goto_0

    :cond_0
    move-object v0, v1

    move-object v1, v2

    goto :goto_1

    :cond_1
    move v0, v4

    goto :goto_2

    .line 974
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 987
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private static getSendToDesktopExceptionFromNetworkResponse(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopException;
    .locals 6

    .prologue
    .line 930
    .line 931
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->getUrl()Ljava/net/URL;

    move-result-object v1

    .line 932
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->getDataBytes()[B

    move-result-object v2

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->getStatusCode()I

    move-result v3

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->getHeaders()Ljava/util/Map;

    move-result-object v4

    move-object v0, p1

    move-object v5, p2

    .line 931
    invoke-static/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/internal/sendtodesktop/AdobeSendToDesktopErrorUtils;->createSendToDesktopError(Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;Ljava/net/URL;Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopException;

    move-result-object v0

    .line 933
    return-object v0
.end method

.method public static sendAsset(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 284
    if-nez p2, :cond_0

    .line 285
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getSharedCloudManager()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getDefaultCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object p2

    .line 288
    :cond_0
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/AdobeSendToDesktopApplicationAdobeInternal$5;

    invoke-direct {v0, p4}, Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/AdobeSendToDesktopApplicationAdobeInternal$5;-><init>(Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;)V

    invoke-static {p1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/AdobeSendToDesktopApplicationAdobeInternal;->checkEntitlementsForApplication(Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 314
    :goto_0
    return-void

    .line 299
    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 301
    :cond_2
    sget-object v0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;->ADOBE_SEND_TO_DESKTOP_ERROR_CODE_EMPTY_FILE_NAME:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;

    const-string/jumbo v1, "Empty File Name"

    invoke-static {v0, v2, v1}, Lcom/adobe/creativesdk/foundation/internal/sendtodesktop/AdobeSendToDesktopErrorUtils;->createSendToDesktopError(Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopException;

    move-result-object v0

    .line 302
    invoke-interface {p4, v0}, Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;->onError(Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopException;)V

    goto :goto_0

    .line 306
    :cond_3
    invoke-static {p3}, Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/AdobeSendToDesktopApplicationAdobeInternal;->validAssetName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 308
    sget-object v0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;->ADOBE_SEND_TO_DESKTOP_ERROR_CODE_INVALID_FILENAME:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;

    const-string/jumbo v1, "Invalid File Name"

    invoke-static {v0, v2, v1}, Lcom/adobe/creativesdk/foundation/internal/sendtodesktop/AdobeSendToDesktopErrorUtils;->createSendToDesktopError(Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopException;

    move-result-object v0

    .line 309
    invoke-interface {p4, v0}, Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;->onError(Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopException;)V

    goto :goto_0

    .line 313
    :cond_4
    invoke-static {p3, p0, p1, p4, p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/AdobeSendToDesktopApplicationAdobeInternal;->sendAssetUtil(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V

    goto :goto_0
.end method

.method private static sendAssetUtil(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V
    .locals 18

    .prologue
    .line 318
    .line 321
    const/4 v3, 0x0

    .line 323
    :try_start_0
    new-instance v2, Ljava/net/URI;

    const-string/jumbo v4, "temp/"

    invoke-direct {v2, v4}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    :goto_0
    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->collectionFromHref(Ljava/net/URI;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    move-result-object v2

    .line 328
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageUtils;->generateUuid()Ljava/lang/String;

    move-result-object v11

    .line 329
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v2, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->href:Ljava/net/URI;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "?invocation_mode=sync,async"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 330
    const/4 v3, 0x0

    .line 332
    :try_start_1
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, v4}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    .line 336
    :goto_1
    if-nez v2, :cond_0

    .line 338
    sget-object v2, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;->ADOBE_SEND_TO_DESKTOP_ERROR_CODE_UNEXPECTED_RESPONSE:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;

    const/4 v3, 0x0

    const-string/jumbo v4, "Unexpected Error"

    invoke-static {v2, v3, v4}, Lcom/adobe/creativesdk/foundation/internal/sendtodesktop/AdobeSendToDesktopErrorUtils;->createSendToDesktopError(Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopException;

    move-result-object v2

    .line 339
    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;->onError(Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopException;)V

    .line 482
    :goto_2
    return-void

    .line 324
    :catch_0
    move-exception v2

    .line 325
    invoke-virtual {v2}, Ljava/net/URISyntaxException;->printStackTrace()V

    move-object v2, v3

    goto :goto_0

    .line 333
    :catch_1
    move-exception v2

    .line 334
    invoke-virtual {v2}, Ljava/net/URISyntaxException;->printStackTrace()V

    move-object v2, v3

    goto :goto_1

    .line 342
    :cond_0
    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->resourceFromHref(Ljava/net/URI;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;

    move-result-object v3

    .line 343
    invoke-virtual/range {p1 .. p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->getType()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->type:Ljava/lang/String;

    .line 344
    invoke-virtual/range {p1 .. p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->getHref()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 345
    const-string/jumbo v4, "<%s>;rel=source"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 346
    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;->AdobeCloudServiceTypeStorage:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->getSessionForService(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;)Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceSession;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;

    .line 347
    if-nez v16, :cond_1

    .line 348
    sget-object v2, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;->ADOBE_SEND_TO_DESKTOP_ERROR_CODE_UNEXPECTED_RESPONSE:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;

    const/4 v3, 0x0

    const-string/jumbo v4, "Unexpected Error"

    invoke-static {v2, v3, v4}, Lcom/adobe/creativesdk/foundation/internal/sendtodesktop/AdobeSendToDesktopErrorUtils;->createSendToDesktopError(Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopException;

    move-result-object v2

    .line 349
    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;->onError(Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopException;)V

    goto :goto_2

    .line 352
    :cond_1
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;->AdobeNetworkHttpRequestMethodPUT:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v2, v5, v6}, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;->requestFor(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;Ljava/lang/String;Z)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    move-result-object v17

    .line 353
    const-string/jumbo v2, "Link"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v4}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;->AdobeCloudServiceTypeNotification:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->getSessionForService(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;)Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceSession;

    move-result-object v10

    check-cast v10, Lcom/adobe/creativesdk/foundation/internal/sendtodesktop/AdobeNotificationSession;

    .line 355
    if-nez v10, :cond_2

    .line 357
    sget-object v2, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;->ADOBE_SEND_TO_DESKTOP_ERROR_CODE_UNEXPECTED_RESPONSE:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;

    const/4 v3, 0x0

    const-string/jumbo v4, "Unexpected Error"

    invoke-static {v2, v3, v4}, Lcom/adobe/creativesdk/foundation/internal/sendtodesktop/AdobeSendToDesktopErrorUtils;->createSendToDesktopError(Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopException;

    move-result-object v2

    .line 358
    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;->onError(Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopException;)V

    goto :goto_2

    .line 362
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileExtensions;->getExtensionForMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 363
    if-nez v5, :cond_3

    .line 365
    const-string/jumbo v2, "."

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 366
    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    const/4 v5, 0x0

    .line 367
    :goto_3
    if-nez v5, :cond_3

    .line 368
    const-string/jumbo v5, "xyz"

    .line 371
    :cond_3
    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSSendToDesktopEvent;

    invoke-direct {v2}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSSendToDesktopEvent;-><init>()V

    .line 372
    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSSendToDesktopEvent;->trackCloud(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V

    .line 373
    invoke-virtual/range {p1 .. p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->getEtag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "cc_file"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->getFileSize()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSSendToDesktopEvent;->trackContentInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    invoke-virtual {v10}, Lcom/adobe/creativesdk/foundation/internal/sendtodesktop/AdobeNotificationSession;->getCloudEndpoint()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudEndpoint;

    move-result-object v6

    invoke-virtual {v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudEndpoint;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, ""

    invoke-virtual {v2, v3, v4, v6, v7}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSSendToDesktopEvent;->trackEnvironment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    invoke-static/range {p2 .. p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/AdobeSendToDesktopApplicationAdobeInternal;->analyticsNameForApplication(Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSSendToDesktopEvent;->trackConsumerDetails(Ljava/lang/String;)V

    .line 378
    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v6, Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/AdobeSendToDesktopApplicationAdobeInternal$6;

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object v9, v5

    move-object/from16 v12, p4

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move-object v15, v2

    invoke-direct/range {v6 .. v15}, Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/AdobeSendToDesktopApplicationAdobeInternal$6;-><init>(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/sendtodesktop/AdobeNotificationSession;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSSendToDesktopEvent;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v3, v4, v6}, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;->getResponseFor(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;Ljava/lang/String;[BLcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$IStorageResponseCallback;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    goto/16 :goto_2

    .line 366
    :cond_4
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_3
.end method

.method public static sendData(Ljava/io/InputStream;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;)V
    .locals 3

    .prologue
    .line 134
    if-nez p4, :cond_0

    .line 135
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getSharedCloudManager()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getDefaultCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object p4

    .line 137
    :cond_0
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/AdobeSendToDesktopApplicationAdobeInternal$2;

    invoke-direct {v0, p5}, Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/AdobeSendToDesktopApplicationAdobeInternal$2;-><init>(Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;)V

    invoke-static {p2, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/AdobeSendToDesktopApplicationAdobeInternal;->checkEntitlementsForApplication(Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 163
    :goto_0
    return-void

    .line 148
    :cond_1
    invoke-static {p3}, Lorg/apache/commons/io/FilenameUtils;->removeExtension(Ljava/lang/String;)Ljava/lang/String;

    .line 149
    invoke-static {p3}, Lorg/apache/commons/io/FilenameUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/AdobeSendToDesktopApplicationAdobeInternal;->updateExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 151
    if-nez v0, :cond_2

    .line 152
    new-instance v0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopException;

    sget-object v1, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;->ADOBE_SEND_TO_DESKTOP_ERROR_CODE_INVALID_FILENAME:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopException;-><init>(Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;)V

    invoke-interface {p5, v0}, Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;->onError(Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopException;)V

    goto :goto_0

    .line 156
    :cond_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 157
    const-string/jumbo v2, "AdobeSendToDesktopApplicationItemKeyName"

    invoke-interface {v1, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const-string/jumbo v2, "AdobeSendToDesktopApplicationItemKeyData"

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    const-string/jumbo v2, "AdobeSendToDesktopApplicationItemKeyDataType"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    const-string/jumbo v2, "AdobeSendToDesktopApplicationItemKeyDataExtension"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    invoke-static {v1, p2, p4, p5}, Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/AdobeSendToDesktopApplicationAdobeInternal;->sendItem(Ljava/util/Map;Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;)V

    goto :goto_0
.end method

.method public static sendFile(Ljava/util/Map;Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;",
            "Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 202
    .line 206
    const-string/jumbo v0, "AdobeSendToDesktopApplicationItemKeyName"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 207
    const-string/jumbo v1, "AdobeSendToDesktopApplicationItemKeyDataType"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 209
    :try_start_0
    const-string/jumbo v1, "AdobeSendToDesktopApplicationItemKeyImage"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    if-nez v1, :cond_1

    .line 221
    sget-object v0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;->ADOBE_SEND_TO_DESKTOP_ERROR_CODE_FILE_READ_FAILURE:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;

    const-string/jumbo v1, "No File To Share"

    invoke-static {v0, v4, v1}, Lcom/adobe/creativesdk/foundation/internal/sendtodesktop/AdobeSendToDesktopErrorUtils;->createSendToDesktopError(Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopException;

    move-result-object v0

    .line 222
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, "AdobeSendToDesktopApplication"

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopException;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    invoke-interface {p3, v0}, Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;->onError(Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopException;)V

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 211
    :catch_0
    move-exception v0

    .line 213
    sget-object v1, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;->ADOBE_SEND_TO_DESKTOP_ERROR_CODE_FILE_READ_FAILURE:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;

    const-string/jumbo v2, "Illegal data type.  Expected Bitmap."

    invoke-static {v1, v4, v2}, Lcom/adobe/creativesdk/foundation/internal/sendtodesktop/AdobeSendToDesktopErrorUtils;->createSendToDesktopError(Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopException;

    move-result-object v1

    .line 214
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v3, "AdobeSendToDesktopApplication"

    invoke-static {v2, v3, v4, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 215
    invoke-interface {p3, v1}, Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;->onError(Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopException;)V

    goto :goto_0

    .line 226
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    .line 228
    :cond_2
    sget-object v0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;->ADOBE_SEND_TO_DESKTOP_ERROR_CODE_FILE_READ_FAILURE:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;

    const-string/jumbo v1, "Empty File Name"

    invoke-static {v0, v4, v1}, Lcom/adobe/creativesdk/foundation/internal/sendtodesktop/AdobeSendToDesktopErrorUtils;->createSendToDesktopError(Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopException;

    move-result-object v0

    .line 229
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, "AdobeSendToDesktopApplication"

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopException;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-interface {p3, v0}, Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;->onError(Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopException;)V

    goto :goto_0

    .line 235
    :cond_3
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v3, v6

    new-array v3, v3, [B
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 236
    :try_start_2
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 237
    invoke-virtual {v5, v3}, Ljava/io/FileInputStream;->read([B)I

    .line 238
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v1, v3

    .line 248
    :goto_1
    const/16 v3, 0x2f

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 249
    const/4 v5, -0x1

    if-ne v3, v5, :cond_5

    .line 250
    const/4 v3, 0x0

    .line 253
    :goto_2
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 254
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_6

    .line 256
    :cond_4
    sget-object v0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;->ADOBE_SEND_TO_DESKTOP_ERROR_CODE_FILE_READ_FAILURE:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;

    const-string/jumbo v1, "Empty File Name"

    invoke-static {v0, v4, v1}, Lcom/adobe/creativesdk/foundation/internal/sendtodesktop/AdobeSendToDesktopErrorUtils;->createSendToDesktopError(Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopException;

    move-result-object v0

    .line 257
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, "AdobeSendToDesktopApplication"

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopException;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    invoke-interface {p3, v0}, Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;->onError(Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopException;)V

    goto :goto_0

    .line 251
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 262
    :cond_6
    if-nez p2, :cond_7

    .line 263
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getSharedCloudManager()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getDefaultCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v5

    .line 266
    :goto_3
    new-instance v3, Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/AdobeSendToDesktopApplicationAdobeInternal$4;

    invoke-direct {v3, p3}, Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/AdobeSendToDesktopApplicationAdobeInternal$4;-><init>(Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;)V

    invoke-static {p1, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/AdobeSendToDesktopApplicationAdobeInternal;->checkEntitlementsForApplication(Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, p1

    move-object v4, p3

    .line 278
    invoke-static/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/AdobeSendToDesktopApplicationAdobeInternal;->sendItemUtil(Ljava/lang/String;[BLjava/lang/String;Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V

    goto/16 :goto_0

    .line 244
    :catch_1
    move-exception v1

    move-object v1, v4

    goto :goto_1

    :catch_2
    move-exception v1

    move-object v1, v3

    goto :goto_1

    .line 240
    :catch_3
    move-exception v1

    move-object v1, v4

    goto :goto_1

    :catch_4
    move-exception v1

    move-object v1, v3

    goto :goto_1

    :cond_7
    move-object v5, p2

    goto :goto_3
.end method

.method public static sendImage(Landroid/graphics/Bitmap;Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;)V
    .locals 2

    .prologue
    .line 113
    if-nez p3, :cond_0

    .line 114
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getSharedCloudManager()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getDefaultCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object p3

    .line 116
    :cond_0
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/AdobeSendToDesktopApplicationAdobeInternal$1;

    invoke-direct {v0, p4}, Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/AdobeSendToDesktopApplicationAdobeInternal$1;-><init>(Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;)V

    invoke-static {p1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/AdobeSendToDesktopApplicationAdobeInternal;->checkEntitlementsForApplication(Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 130
    :goto_0
    return-void

    .line 126
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 127
    const-string/jumbo v1, "AdobeSendToDesktopApplicationItemKeyName"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const-string/jumbo v1, "AdobeSendToDesktopApplicationItemKeyImage"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    invoke-static {v0, p1, p3, p4}, Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/AdobeSendToDesktopApplicationAdobeInternal;->sendItem(Ljava/util/Map;Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;)V

    goto :goto_0
.end method

.method public static sendItem(Ljava/util/Map;Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;",
            "Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v5, -0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 842
    .line 846
    const-string/jumbo v0, "AdobeSendToDesktopApplicationItemKeyName"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 850
    :try_start_0
    const-string/jumbo v1, "AdobeSendToDesktopApplicationItemKeyImage"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 851
    const-string/jumbo v2, "AdobeSendToDesktopApplicationItemKeyData"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/InputStream;

    .line 852
    if-eqz v2, :cond_d

    .line 853
    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v7

    .line 855
    :goto_0
    if-nez v1, :cond_0

    if-eqz v7, :cond_1

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 857
    :cond_1
    sget-object v0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;->ADOBE_SEND_TO_DESKTOP_ERROR_CODE_ILLEGAL_ARGUMENT:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;

    const/4 v1, 0x0

    const-string/jumbo v2, "Illegal Argument."

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/sendtodesktop/AdobeSendToDesktopErrorUtils;->createSendToDesktopError(Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopException;

    move-result-object v0

    .line 858
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, "AdobeSendToDesktopApplication"

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopException;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    invoke-interface {p3, v0}, Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;->onError(Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopException;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 926
    :cond_2
    :goto_1
    return-void

    .line 863
    :catch_0
    move-exception v0

    .line 865
    :goto_2
    sget-object v0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;->ADOBE_SEND_TO_DESKTOP_ERROR_CODE_FILE_READ_FAILURE:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;

    const-string/jumbo v1, "Illegal data type.  Expected Bitmap."

    invoke-static {v0, v6, v1}, Lcom/adobe/creativesdk/foundation/internal/sendtodesktop/AdobeSendToDesktopErrorUtils;->createSendToDesktopError(Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopException;

    move-result-object v0

    .line 866
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, "AdobeSendToDesktopApplication"

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopException;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    invoke-interface {p3, v0}, Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;->onError(Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopException;)V

    goto :goto_1

    .line 874
    :cond_3
    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 875
    if-ne v2, v5, :cond_7

    move v2, v3

    .line 878
    :goto_3
    const/16 v4, 0x2e

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 879
    if-eq v4, v5, :cond_4

    if-le v2, v4, :cond_5

    .line 880
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    .line 881
    :cond_5
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 882
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_8

    .line 884
    :cond_6
    sget-object v0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;->ADOBE_SEND_TO_DESKTOP_ERROR_CODE_FILE_READ_FAILURE:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;

    const-string/jumbo v1, "Empty File Name"

    invoke-static {v0, v6, v1}, Lcom/adobe/creativesdk/foundation/internal/sendtodesktop/AdobeSendToDesktopErrorUtils;->createSendToDesktopError(Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopException;

    move-result-object v0

    .line 885
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, "AdobeSendToDesktopApplication"

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopException;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    invoke-interface {p3, v0}, Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;->onError(Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopException;)V

    goto :goto_1

    .line 877
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 889
    :cond_8
    if-nez p2, :cond_c

    .line 890
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getSharedCloudManager()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getDefaultCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v5

    .line 893
    :goto_4
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/AdobeSendToDesktopApplicationAdobeInternal$9;

    invoke-direct {v0, p3}, Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/AdobeSendToDesktopApplicationAdobeInternal$9;-><init>(Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;)V

    invoke-static {p1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/AdobeSendToDesktopApplicationAdobeInternal;->checkEntitlementsForApplication(Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 905
    if-eqz v1, :cond_9

    .line 909
    if-eqz v1, :cond_b

    .line 910
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 911
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v1, v4, v6, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 912
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 913
    const-string/jumbo v6, "image/png"

    .line 914
    const-string/jumbo v0, "%s.png"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v2, v4, v3

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v6

    :goto_5
    move-object v3, p1

    move-object v4, p3

    .line 923
    invoke-static/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/AdobeSendToDesktopApplicationAdobeInternal;->sendItemUtil(Ljava/lang/String;[BLjava/lang/String;Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V

    goto/16 :goto_1

    .line 916
    :cond_9
    if-eqz v7, :cond_a

    .line 918
    const-string/jumbo v0, "AdobeSendToDesktopApplicationItemKeyDataType"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 919
    const-string/jumbo v1, "%s.%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v3

    const-string/jumbo v2, "AdobeSendToDesktopApplicationItemKeyDataExtension"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v4, v8

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v0

    move-object v0, v1

    move-object v1, v7

    goto :goto_5

    .line 863
    :catch_1
    move-exception v0

    goto/16 :goto_2

    :cond_a
    move-object v0, v6

    move-object v2, v6

    move-object v1, v7

    goto :goto_5

    :cond_b
    move-object v0, v6

    move-object v2, v6

    move-object v1, v6

    goto :goto_5

    :cond_c
    move-object v5, p2

    goto :goto_4

    :cond_d
    move-object v7, v6

    goto/16 :goto_0
.end method

.method protected static sendItemUtil(Ljava/lang/String;[BLjava/lang/String;Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V
    .locals 14

    .prologue
    .line 575
    .line 578
    const/4 v2, 0x0

    .line 580
    :try_start_0
    new-instance v1, Ljava/net/URI;

    const-string/jumbo v3, "temp/"

    invoke-direct {v1, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 584
    :goto_0
    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->collectionFromHref(Ljava/net/URI;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    move-result-object v1

    .line 585
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageUtils;->generateUuid()Ljava/lang/String;

    move-result-object v9

    .line 586
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->href:Ljava/net/URI;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 587
    const/4 v2, 0x0

    .line 589
    :try_start_1
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 594
    :goto_1
    if-nez v1, :cond_0

    .line 596
    sget-object v1, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;->ADOBE_SEND_TO_DESKTOP_ERROR_CODE_UNEXPECTED_RESPONSE:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;

    const/4 v2, 0x0

    const-string/jumbo v3, "Unexpected Error"

    invoke-static {v1, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/sendtodesktop/AdobeSendToDesktopErrorUtils;->createSendToDesktopError(Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopException;

    move-result-object v1

    .line 597
    move-object/from16 v0, p4

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;->onError(Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopException;)V

    .line 691
    :goto_2
    return-void

    .line 581
    :catch_0
    move-exception v1

    .line 582
    invoke-virtual {v1}, Ljava/net/URISyntaxException;->printStackTrace()V

    move-object v1, v2

    goto :goto_0

    .line 590
    :catch_1
    move-exception v1

    .line 591
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v2

    goto :goto_1

    .line 600
    :cond_0
    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->resourceFromHref(Ljava/net/URI;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;

    move-result-object v2

    .line 601
    move-object/from16 v0, p2

    iput-object v0, v2, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->type:Ljava/lang/String;

    .line 603
    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;->AdobeCloudServiceTypeStorage:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->getSessionForService(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;)Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceSession;

    move-result-object v1

    check-cast v1, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;

    .line 604
    if-nez v1, :cond_1

    .line 606
    sget-object v1, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;->ADOBE_SEND_TO_DESKTOP_ERROR_CODE_UNEXPECTED_RESPONSE:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;

    const/4 v2, 0x0

    const-string/jumbo v3, "Unexpected Error"

    invoke-static {v1, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/sendtodesktop/AdobeSendToDesktopErrorUtils;->createSendToDesktopError(Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopException;

    move-result-object v1

    .line 607
    move-object/from16 v0, p4

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;->onError(Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopException;)V

    goto :goto_2

    .line 612
    :cond_1
    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;->AdobeNetworkHttpRequestMethodPUT:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;->requestFor(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;Ljava/lang/String;ZLjava/util/List;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    move-result-object v12

    .line 613
    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;->AdobeCloudServiceTypeNotification:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->getSessionForService(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;)Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceSession;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/adobe/creativesdk/foundation/internal/sendtodesktop/AdobeNotificationSession;

    .line 614
    if-nez v8, :cond_2

    .line 616
    sget-object v1, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;->ADOBE_SEND_TO_DESKTOP_ERROR_CODE_UNEXPECTED_RESPONSE:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;

    const/4 v2, 0x0

    const-string/jumbo v3, "Unexpected Error"

    invoke-static {v1, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/sendtodesktop/AdobeSendToDesktopErrorUtils;->createSendToDesktopError(Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopException;

    move-result-object v1

    .line 617
    move-object/from16 v0, p4

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;->onError(Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopException;)V

    goto :goto_2

    .line 621
    :cond_2
    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSSendToDesktopEvent;

    invoke-direct {v2}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSSendToDesktopEvent;-><init>()V

    .line 622
    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSSendToDesktopEvent;->trackCloud(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V

    .line 623
    const-string/jumbo v5, ".png"

    const-string/jumbo v6, "local_file"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v3, v9

    move-object v4, p0

    invoke-virtual/range {v2 .. v7}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSSendToDesktopEvent;->trackContentInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    invoke-virtual {v8}, Lcom/adobe/creativesdk/foundation/internal/sendtodesktop/AdobeNotificationSession;->getCloudEndpoint()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudEndpoint;

    move-result-object v5

    invoke-virtual {v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudEndpoint;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSSendToDesktopEvent;->trackEnvironment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    invoke-static/range {p3 .. p3}, Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/AdobeSendToDesktopApplicationAdobeInternal;->analyticsNameForApplication(Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSSendToDesktopEvent;->trackConsumerDetails(Ljava/lang/String;)V

    .line 627
    const/4 v13, 0x0

    new-instance v3, Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/AdobeSendToDesktopApplicationAdobeInternal$8;

    move-object v4, v8

    move-object v5, v9

    move-object v6, p0

    move-object/from16 v7, p5

    move-object/from16 v8, p3

    move-object/from16 v9, p2

    move-object/from16 v10, p4

    move-object v11, v2

    invoke-direct/range {v3 .. v11}, Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/AdobeSendToDesktopApplicationAdobeInternal$8;-><init>(Lcom/adobe/creativesdk/foundation/internal/sendtodesktop/AdobeNotificationSession;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSSendToDesktopEvent;)V

    invoke-virtual {v1, v12, v13, p1, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;->getResponseFor(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;Ljava/lang/String;[BLcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$IStorageResponseCallback;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    goto/16 :goto_2
.end method

.method public static sendLocalFile(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;)V
    .locals 4

    .prologue
    .line 167
    if-nez p4, :cond_0

    .line 169
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getSharedCloudManager()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getDefaultCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object p4

    .line 172
    :cond_0
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/AdobeSendToDesktopApplicationAdobeInternal$3;

    invoke-direct {v0, p5}, Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/AdobeSendToDesktopApplicationAdobeInternal$3;-><init>(Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;)V

    invoke-static {p2, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/AdobeSendToDesktopApplicationAdobeInternal;->checkEntitlementsForApplication(Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 198
    :goto_0
    return-void

    .line 182
    :cond_1
    invoke-static {p3}, Lorg/apache/commons/io/FilenameUtils;->removeExtension(Ljava/lang/String;)Ljava/lang/String;

    .line 183
    invoke-static {p3}, Lorg/apache/commons/io/FilenameUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/AdobeSendToDesktopApplicationAdobeInternal;->updateExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 185
    if-nez v0, :cond_2

    .line 186
    new-instance v0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopException;

    sget-object v1, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;->ADOBE_SEND_TO_DESKTOP_ERROR_CODE_INVALID_FILENAME:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopException;-><init>(Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;)V

    invoke-interface {p5, v0}, Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;->onError(Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopException;)V

    goto :goto_0

    .line 190
    :cond_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 191
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 192
    const-string/jumbo v3, "AdobeSendToDesktopApplicationItemKeyName"

    invoke-interface {v1, v3, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    const-string/jumbo v3, "AdobeSendToDesktopApplicationItemKeyImage"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    const-string/jumbo v2, "AdobeSendToDesktopApplicationItemKeyDataType"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    const-string/jumbo v2, "AdobeSendToDesktopApplicationItemKeyDataExtension"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    invoke-static {v1, p2, p4, p5}, Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/AdobeSendToDesktopApplicationAdobeInternal;->sendFile(Ljava/util/Map;Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;)V

    goto :goto_0
.end method

.method private static updateExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1018
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 1020
    invoke-static {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileExtensions;->getMimeTypeForExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1021
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1036
    :cond_0
    :goto_0
    return-object p0

    .line 1025
    :cond_1
    invoke-static {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileExtensions;->getExtensionForMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1026
    if-eqz p1, :cond_2

    .line 1028
    :goto_1
    if-eqz v0, :cond_3

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move-object p0, v0

    .line 1030
    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 1026
    goto :goto_1

    .line 1033
    :cond_3
    if-eqz p0, :cond_4

    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_4
    move-object p0, v1

    .line 1036
    goto :goto_0
.end method

.method private static validAssetName(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 956
    if-nez p0, :cond_1

    .line 964
    :cond_0
    :goto_0
    return v0

    .line 960
    :cond_1
    const-string/jumbo v1, ".*[\\\\:\\*\\?\"\\/<>\\|\\x00-\\x1F]+.*"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    .line 962
    const-string/jumbo v2, ".*[\\ \\.]$"

    invoke-virtual {p0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    .line 964
    if-nez v1, :cond_0

    if-nez v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static waitForCompletion(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;Ljava/lang/String;JLcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/IAdobeSendToDesktopNotificationCallBack;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V
    .locals 10

    .prologue
    const-wide/32 v4, 0x493e0

    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 486
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;->AdobeCloudServiceTypeStorage:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;

    invoke-virtual {p5, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->getSessionForService(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;)Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceSession;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;

    .line 487
    if-nez v7, :cond_1

    .line 488
    sget-object v0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;->ADOBE_SEND_TO_DESKTOP_ERROR_CODE_UNEXPECTED_RESPONSE:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;

    const-string/jumbo v1, "Unexpected Error"

    invoke-static {v0, v8, v1}, Lcom/adobe/creativesdk/foundation/internal/sendtodesktop/AdobeSendToDesktopErrorUtils;->createSendToDesktopError(Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopException;

    move-result-object v0

    .line 489
    invoke-interface {p4, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/IAdobeSendToDesktopNotificationCallBack;->onError(Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopException;)V

    .line 570
    :cond_0
    :goto_0
    return-void

    .line 493
    :cond_1
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/sendtodesktop/AdobeNotificationSession;->getTimeIntervalSince1970()J

    move-result-wide v0

    .line 495
    sub-long/2addr v0, p2

    cmp-long v0, v0, v4

    if-lez v0, :cond_2

    .line 497
    const-string/jumbo v0, "Service monitor call timed out after %d time"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 498
    sget-object v1, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;->ADOBE_SEND_TO_DESKTOP_ERROR_CODE_RESPONSE_TIME_OUT:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;

    invoke-static {v1, v0, v8}, Lcom/adobe/creativesdk/foundation/internal/sendtodesktop/AdobeSendToDesktopErrorUtils;->createSendToDesktopError(Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopException;

    move-result-object v0

    .line 499
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, "AdobeSendToDesktopApplication"

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopException;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    invoke-interface {p4, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/IAdobeSendToDesktopNotificationCallBack;->onError(Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopException;)V

    goto :goto_0

    .line 502
    :cond_2
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->getStatusCode()I

    move-result v0

    const/16 v1, 0xca

    if-ne v0, v1, :cond_5

    .line 504
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->getHeaders()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "retry-after"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 505
    if-eqz v0, :cond_3

    .line 507
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 508
    if-eqz v0, :cond_3

    .line 511
    int-to-long v0, v0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 520
    :cond_3
    :goto_1
    :try_start_1
    new-instance v0, Ljava/net/URI;

    const-string/jumbo v1, ""

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    .line 524
    :goto_2
    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->collectionFromHref(Ljava/net/URI;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    move-result-object v0

    .line 525
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->href:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 528
    :try_start_2
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_2

    .line 532
    :goto_3
    if-nez v0, :cond_4

    .line 534
    sget-object v0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;->ADOBE_SEND_TO_DESKTOP_ERROR_CODE_UNEXPECTED_RESPONSE:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;

    const-string/jumbo v1, "Unexpected Error"

    invoke-static {v0, v8, v1}, Lcom/adobe/creativesdk/foundation/internal/sendtodesktop/AdobeSendToDesktopErrorUtils;->createSendToDesktopError(Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopException;

    move-result-object v0

    .line 535
    invoke-interface {p4, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/IAdobeSendToDesktopNotificationCallBack;->onError(Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopException;)V

    goto/16 :goto_0

    .line 512
    :catch_0
    move-exception v0

    .line 513
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 521
    :catch_1
    move-exception v0

    .line 522
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    move-object v0, v8

    goto :goto_2

    .line 529
    :catch_2
    move-exception v0

    .line 530
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    move-object v0, v8

    goto :goto_3

    .line 538
    :cond_4
    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->resourceFromHref(Ljava/net/URI;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;

    move-result-object v0

    .line 539
    const-string/jumbo v1, "application/http"

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->type:Ljava/lang/String;

    .line 540
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;->AdobeNetworkHttpRequestMethodGET:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;

    invoke-virtual {v7, v0, v1, v8, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;->requestFor(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;Ljava/lang/String;Z)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    move-result-object v9

    .line 541
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/AdobeSendToDesktopApplicationAdobeInternal$7;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/AdobeSendToDesktopApplicationAdobeInternal$7;-><init>(Ljava/lang/String;JLcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/IAdobeSendToDesktopNotificationCallBack;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;)V

    invoke-virtual {v7, v9, v8, v8, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;->getResponseFor(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;Ljava/lang/String;[BLcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$IStorageResponseCallback;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    goto/16 :goto_0

    .line 562
    :cond_5
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->getStatusCode()I

    move-result v0

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_6

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->getStatusCode()I

    move-result v0

    const/16 v1, 0x12c

    if-lt v0, v1, :cond_7

    :cond_6
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->getStatusCode()I

    move-result v0

    const/16 v1, 0x130

    if-ne v0, v1, :cond_8

    .line 564
    :cond_7
    invoke-interface {p4}, Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/IAdobeSendToDesktopNotificationCallBack;->onComplete()V

    goto/16 :goto_0

    .line 566
    :cond_8
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->getStatusCode()I

    move-result v0

    const/16 v1, 0x190

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->getStatusCode()I

    move-result v0

    const/16 v1, 0x258

    if-ge v0, v1, :cond_0

    .line 568
    invoke-interface {p4, p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/IAdobeSendToDesktopNotificationCallBack;->onError(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;)V

    goto/16 :goto_0
.end method
