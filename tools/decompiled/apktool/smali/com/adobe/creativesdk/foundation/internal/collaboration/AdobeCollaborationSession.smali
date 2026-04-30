.class public Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;
.super Ljava/lang/Object;
.source "AdobeCollaborationSession.java"


# static fields
.field public static final ADOBE_LIBRARIES:Ljava/lang/String; = "/adobe-libraries/"

.field public static final APPLICATION_JSON:Ljava/lang/String; = "application/json"

.field public static final APPLICATION_VND_ADOBE_LIBRARY_DCX:Ljava/lang/String; = "application/vnd.adobe.library+dcx"

.field public static final APPLICATION_X_SHAREDCLOUD_COLLECTION_JSON:Ljava/lang/String; = "application/x-sharedcloud-collection+json"

.field public static final HTTPS_CC_API_STORAGE_ADOBE_IO:Ljava/lang/String; = "https://cc-api-storage.adobe.io"

.field public static final HTTPS_CC_API_STORAGE_STAGE_ADOBE_IO:Ljava/lang/String; = "https://cc-api-storage-stage.adobe.io"

.field public static final INVALID_EMAIL_ADDRESS:Ljava/lang/String; = "Invalid Email Address"

.field public static final INVALID_FOLDER:Ljava/lang/String; = "Invalid Folder"

.field public static final INVITES:Ljava/lang/String; = "invites"

.field public static final RESOURCE_TYPE:Ljava/lang/String; = "resourceType"

.field public static final STATUS_CODE:Ljava/lang/String; = "statusCode"

.field public static final STATUS_TEXT:Ljava/lang/String; = "statusText"

.field public static final VND_ADOBE_ELEMENT:Ljava/lang/String; = "vnd.adobe.element"

.field public static final VND_ADOBE_LIBRARY:Ljava/lang/String; = "vnd.adobe.library"

.field private static imsEnvironment:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;

.field private static observer:Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession$LoginNotificationObserver;

.field private static requestMap:Ljava/util/Map;
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

.field private static sharedSession:Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;

.field private static storageUrl:Ljava/lang/String;


# instance fields
.field private service:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 81
    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;->sharedSession:Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;

    .line 84
    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;->observer:Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession$LoginNotificationObserver;

    .line 85
    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;->storageUrl:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const-class v1, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;

    monitor-enter v1

    .line 94
    :try_start_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;->observer:Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession$LoginNotificationObserver;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession$LoginNotificationObserver;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession$LoginNotificationObserver;-><init>(Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession$1;)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;->observer:Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession$LoginNotificationObserver;

    .line 96
    :cond_0
    monitor-exit v1

    .line 97
    return-void

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic access$100(Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;->getResponseFromError(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;)Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationException;
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;->getCollaborationExceptionFromNetworkResponse(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;)Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationException;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 65
    invoke-static {p0}, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;->jsonObjectFromResponse(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 65
    invoke-static {p0}, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;->jsonArrayFromResponse(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;Lorg/json/JSONArray;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;->populateInvites(Lorg/json/JSONArray;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$600(Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;Lorg/json/JSONObject;)Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationException;
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;->getCollaborationExceptionFromNetworkResponseData(Lorg/json/JSONObject;)Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationException;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;->imsEnvironment:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;

    return-object v0
.end method

.method static synthetic access$800()Ljava/util/Map;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;->requestMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$900(Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;->getCommentURL(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private createPostDataForInvite(Ljava/lang/String;Ljava/util/List;Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1284
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1285
    const-string/jumbo v0, "resourceUrl"

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1286
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 1287
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 1288
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1287
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1289
    :cond_0
    const-string/jumbo v0, "recipientEmails"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1290
    const-string/jumbo v0, "recipientRole"

    invoke-virtual {p3}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1291
    const-string/jumbo v0, "resourceName"

    invoke-virtual {v1, v0, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1292
    const-string/jumbo v0, "resourceType"

    invoke-virtual {v1, v0, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1293
    if-eqz p6, :cond_1

    .line 1294
    const-string/jumbo v0, "message"

    invoke-virtual {v1, v0, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1296
    :cond_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1300
    :goto_1
    return-object v0

    .line 1298
    :catch_0
    move-exception v0

    .line 1300
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private decodeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1321
    .line 1322
    if-eqz p1, :cond_0

    .line 1323
    invoke-static {p1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1324
    const-string/jumbo v1, "%20"

    const-string/jumbo v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1327
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getCollaborationExceptionFromNetworkResponse(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;)Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationException;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1351
    if-nez p1, :cond_1

    .line 1364
    :cond_0
    :goto_0
    return-object v0

    .line 1355
    :cond_1
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->getStatusCode()I

    move-result v1

    .line 1357
    const/16 v2, 0x191

    if-ne v1, v2, :cond_2

    .line 1358
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationErrorCode;->ADOBE_COLLABORATION_ERROR_UNAUTHORIZED:Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationErrorCode;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->getUrl()Ljava/net/URL;

    move-result-object v1

    .line 1359
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->getDataBytes()[B

    move-result-object v2

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->getStatusCode()I

    move-result v3

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->getHeaders()Ljava/util/Map;

    move-result-object v4

    .line 1358
    invoke-static {v0, v1, v2, v3, v4}, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationErrUtils;->createCollaborationError(Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationErrorCode;Ljava/net/URL;Ljava/lang/Object;ILjava/lang/Object;)Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationException;

    move-result-object v0

    .line 1360
    :cond_2
    if-nez v0, :cond_0

    .line 1361
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationErrorCode;->ADOBE_COLLABORATION_ERROR_UNEXPECTED_RESPONSE:Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationErrorCode;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->getUrl()Ljava/net/URL;

    move-result-object v1

    .line 1362
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->getDataBytes()[B

    move-result-object v2

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->getStatusCode()I

    move-result v3

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->getHeaders()Ljava/util/Map;

    move-result-object v4

    .line 1361
    invoke-static {v0, v1, v2, v3, v4}, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationErrUtils;->createCollaborationError(Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationErrorCode;Ljava/net/URL;Ljava/lang/Object;ILjava/lang/Object;)Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationException;

    move-result-object v0

    goto :goto_0
.end method

.method private getCollaborationExceptionFromNetworkResponseData(Lorg/json/JSONObject;)Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationException;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 1331
    if-nez p1, :cond_1

    .line 1347
    :cond_0
    :goto_0
    return-object v0

    .line 1337
    :cond_1
    :try_start_0
    const-string/jumbo v1, "statusCode"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1338
    const/16 v2, 0x191

    if-ne v1, v2, :cond_2

    .line 1339
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationErrorCode;->ADOBE_COLLABORATION_ERROR_UNAUTHORIZED:Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationErrorCode;

    const/4 v3, 0x0

    const-string/jumbo v4, "statusText"

    .line 1340
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 1339
    invoke-static {v2, v3, v4, v1, v5}, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationErrUtils;->createCollaborationError(Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationErrorCode;Ljava/net/URL;Ljava/lang/Object;ILjava/lang/Object;)Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationException;

    move-result-object v0

    .line 1341
    :cond_2
    if-nez v0, :cond_0

    .line 1342
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationErrorCode;->ADOBE_COLLABORATION_ERROR_UNEXPECTED_RESPONSE:Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationErrorCode;

    const/4 v3, 0x0

    const-string/jumbo v4, "statusText"

    .line 1343
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 1342
    invoke-static {v2, v3, v4, v1, v5}, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationErrUtils;->createCollaborationError(Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationErrorCode;Ljava/net/URL;Ljava/lang/Object;ILjava/lang/Object;)Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationException;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 1344
    :catch_0
    move-exception v1

    .line 1345
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private getCommentURL(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1179
    const-string/jumbo v1, ""

    .line 1181
    :try_start_0
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->getHeaders()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v2, "location"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1186
    :goto_0
    return-object v0

    .line 1182
    :catch_0
    move-exception v0

    .line 1183
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method private getResourceComponent(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1306
    .line 1307
    const-string/jumbo v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1308
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1310
    :cond_0
    const-string/jumbo v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 1311
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1312
    const-string/jumbo v1, "/adobe-libraries/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1313
    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewUtils;->getLibraryNameForGuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1315
    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getResponseFor(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession$IAdobeCollaborationResponseCallback;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;
    .locals 6

    .prologue
    .line 1046
    :try_start_0
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1051
    :goto_0
    new-instance v4, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession$13;

    invoke-direct {v4, p0, p1, p4}, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession$13;-><init>(Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession$IAdobeCollaborationResponseCallback;)V

    .line 1066
    if-nez p2, :cond_1

    .line 1068
    if-eqz p3, :cond_0

    .line 1069
    sget-object v0, Lorg/apache/commons/io/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p3, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;->setBody([B)V

    .line 1070
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;->service:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;->NORMAL:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;

    invoke-virtual {v0, p1, v1, v4, v5}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->getResponseForDataRequest(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;Landroid/os/Handler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    move-result-object v0

    .line 1084
    :goto_1
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;->requestMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1085
    return-object p1

    .line 1047
    :catch_0
    move-exception v0

    .line 1048
    const/4 v5, 0x0

    goto :goto_0

    .line 1072
    :cond_1
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;->getRequestMethod()Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;->AdobeNetworkHttpRequestMethodGET:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;

    if-ne v0, v1, :cond_2

    .line 1074
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;->service:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;

    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;->NORMAL:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->getResponseForDownloadRequest(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;Landroid/os/Handler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    move-result-object v0

    goto :goto_1

    .line 1076
    :cond_2
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;->getRequestMethod()Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;->AdobeNetworkHttpRequestMethodHEAD:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;

    if-ne v0, v1, :cond_3

    .line 1078
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;->service:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;->NORMAL:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;

    invoke-virtual {v0, p1, v1, v4, v5}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->getResponseForDataRequest(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;Landroid/os/Handler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    move-result-object v0

    goto :goto_1

    .line 1081
    :cond_3
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;->service:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;

    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;->NORMAL:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->getResponseForUploadRequest(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;Landroid/os/Handler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    move-result-object v0

    goto :goto_1
.end method

.method private getResponseForLink(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession$IAdobeCollaborationResponseCallback;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 971
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1002
    :cond_0
    :goto_0
    return-object v0

    .line 975
    :cond_1
    invoke-direct {p0, p3}, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0, p4}, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 981
    :cond_2
    :try_start_0
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    invoke-direct {v1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;-><init>()V

    .line 982
    new-instance v2, Ljava/net/URI;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;->service:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;

    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->baseURL()Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 983
    invoke-virtual {v2}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v2

    .line 984
    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;->setUrl(Ljava/net/URL;)V

    .line 985
    invoke-virtual {v1, p2}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;->setRequestMethod(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;)V

    .line 986
    if-eqz p3, :cond_3

    .line 987
    const-string/jumbo v2, "Accept"

    invoke-virtual {v1, v2, p4}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 988
    const-string/jumbo v2, "Content-Type"

    invoke-virtual {v1, v2, p4}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    :cond_3
    const-string/jumbo v2, "X-Feature-Override"

    const-string/jumbo v3, "publish_link_backward"

    invoke-virtual {v1, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 993
    const/4 v2, 0x0

    if-eqz p3, :cond_4

    :goto_1
    invoke-direct {p0, v1, v2, p3, p5}, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;->getResponseFor(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession$IAdobeCollaborationResponseCallback;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    :cond_4
    move-object p3, v0

    goto :goto_1

    .line 994
    :catch_0
    move-exception v1

    .line 996
    invoke-virtual {v1}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0

    .line 999
    :catch_1
    move-exception v1

    .line 1001
    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0
.end method

.method private getResponseForString(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession$IAdobeCollaborationResponseCallback;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 963
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;->AdobeNetworkHttpRequestMethodGET:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;->getResponseForString(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession$IAdobeCollaborationResponseCallback;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method private getResponseForString(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession$IAdobeCollaborationResponseCallback;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 967
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;->getResponseForString(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession$IAdobeCollaborationResponseCallback;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method private getResponseForString(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession$IAdobeCollaborationResponseCallback;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1008
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1037
    :cond_0
    :goto_0
    return-object v0

    .line 1012
    :cond_1
    invoke-direct {p0, p3}, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0, p4}, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1018
    :cond_2
    :try_start_0
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    invoke-direct {v1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;-><init>()V

    .line 1019
    new-instance v2, Ljava/net/URI;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;->service:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;

    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->baseURL()Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 1020
    invoke-virtual {v2}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v2

    .line 1021
    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;->setUrl(Ljava/net/URL;)V

    .line 1022
    invoke-virtual {v1, p2}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;->setRequestMethod(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;)V

    .line 1023
    if-eqz p3, :cond_3

    .line 1024
    const-string/jumbo v2, "Accept"

    invoke-virtual {v1, v2, p4}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    const-string/jumbo v2, "Content-Type"

    invoke-virtual {v1, v2, p4}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1028
    :cond_3
    const/4 v2, 0x0

    if-eqz p3, :cond_4

    :goto_1
    invoke-direct {p0, v1, v2, p3, p5}, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;->getResponseFor(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession$IAdobeCollaborationResponseCallback;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    :cond_4
    move-object p3, v0

    goto :goto_1

    .line 1029
    :catch_0
    move-exception v1

    .line 1031
    invoke-virtual {v1}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0

    .line 1034
    :catch_1
    move-exception v1

    .line 1036
    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0
.end method

.method private getResponseFromError(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;
    .locals 2

    .prologue
    .line 1368
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;->getData()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;->getData()Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v1, "Response"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1369
    :cond_0
    const/4 v0, 0x0

    .line 1371
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;->getData()Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v1, "Response"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;

    goto :goto_0
.end method

.method public static getSharedSession()Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;
    .locals 8

    .prologue
    .line 104
    const-class v1, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;

    monitor-enter v1

    .line 107
    :try_start_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;->sharedSession:Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;

    if-nez v0, :cond_0

    .line 110
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;-><init>()V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;->sharedSession:Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;

    .line 111
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v2

    .line 112
    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    .line 114
    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getEnvironment()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;

    move-result-object v0

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;->imsEnvironment:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;

    .line 115
    const/4 v0, 0x0

    .line 116
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 118
    sget-object v5, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession$17;->$SwitchMap$com$adobe$creativesdk$foundation$internal$auth$AdobeAuthIMSEnvironment:[I

    sget-object v6, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;->imsEnvironment:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;

    invoke-virtual {v6}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 135
    sget-object v5, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v6, "Collaboration Session"

    const-string/jumbo v7, "An undefined authentication endpoint has been specified for the collaboration session"

    invoke-static {v5, v6, v7}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    :goto_0
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;->populateStorageUrl()V

    .line 142
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    sput-object v5, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;->requestMap:Ljava/util/Map;

    .line 144
    new-instance v5, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getClientID()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v0, v2, v4}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 145
    invoke-virtual {v5, v3}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->setAccessToken(Ljava/lang/String;)V

    .line 146
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;->sharedSession:Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;

    invoke-virtual {v0, v5}, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;->initWithHTTPService(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;)Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;

    .line 148
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSessionModel;->getSharedModel()Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSessionModel;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->setHttpServiceDelegate(Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkHttpServiceDelegate;)V

    .line 149
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v0

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeAuthLoginNotification:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;->observer:Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession$LoginNotificationObserver;

    invoke-virtual {v0, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->addObserver(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Observer;)V

    .line 150
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v0

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeAuthLogoutNotification:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;->observer:Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession$LoginNotificationObserver;

    invoke-virtual {v0, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->addObserver(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Observer;)V

    .line 151
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v0

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeAuthLoginExternalNotification:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;->observer:Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession$LoginNotificationObserver;

    invoke-virtual {v0, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->addObserver(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Observer;)V

    .line 154
    :cond_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;->sharedSession:Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;

    monitor-exit v1

    return-object v0

    .line 120
    :pswitch_0
    const-string/jumbo v0, "https://cc-collab-dev.adobe.io"

    goto :goto_0

    .line 124
    :pswitch_1
    const-string/jumbo v0, "https://cc-collab-stage.adobe.io"

    .line 125
    const-string/jumbo v5, "x-api-key"

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getClientID()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 155
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 129
    :pswitch_2
    :try_start_1
    const-string/jumbo v0, "https://cc-collab.adobe.io"

    .line 130
    const-string/jumbo v5, "x-api-key"

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getClientID()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 118
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private isEmpty(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1228
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

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

.method private static jsonArrayFromResponse(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 1242
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1247
    :goto_0
    return-object v0

    .line 1243
    :catch_0
    move-exception v0

    .line 1244
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 1247
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static jsonObjectFromResponse(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 1233
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1237
    :goto_0
    return-object v0

    .line 1234
    :catch_0
    move-exception v0

    .line 1235
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 1237
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private populateInvites(Lorg/json/JSONArray;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInvite;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 550
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 552
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 553
    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInvite;->inviteWithDictionary(Lorg/json/JSONObject;)Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInvite;

    move-result-object v1

    .line 554
    if-eqz v1, :cond_0

    .line 555
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 550
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 558
    :cond_1
    return-void
.end method

.method private static populateStorageUrl()V
    .locals 2

    .prologue
    .line 159
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getSharedCloudManager()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    move-result-object v0

    .line 160
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getDefaultCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 161
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getDefaultCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;->AdobeCloudServiceTypeStorage:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->getSessionForService(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;)Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceSession;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;

    .line 162
    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;->getService()Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->getBaseURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;->storageUrl:Ljava/lang/String;

    .line 171
    :goto_0
    return-void

    .line 166
    :cond_0
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;->populateStorageUrlUsingEnvironment()V

    goto :goto_0

    .line 169
    :cond_1
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;->populateStorageUrlUsingEnvironment()V

    goto :goto_0
.end method

.method private static populateStorageUrlUsingEnvironment()V
    .locals 3

    .prologue
    .line 174
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession$17;->$SwitchMap$com$adobe$creativesdk$foundation$internal$auth$AdobeAuthIMSEnvironment:[I

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;->imsEnvironment:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 190
    :pswitch_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v1, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "An undefined authentication endpoint has been specified."

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    :goto_0
    return-void

    .line 177
    :pswitch_1
    const-string/jumbo v0, "https://cc-api-storage.adobe.io"

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;->storageUrl:Ljava/lang/String;

    goto :goto_0

    .line 181
    :pswitch_2
    const-string/jumbo v0, "https://cc-api-storage-stage.adobe.io"

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;->storageUrl:Ljava/lang/String;

    goto :goto_0

    .line 185
    :pswitch_3
    const-string/jumbo v0, "https://cc-api-storage-labs.adobe.io"

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;->storageUrl:Ljava/lang/String;

    goto :goto_0

    .line 174
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public acceptInvite(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/collaboration/delegates/IAdobeCollaborationAcceptOrRejectInviteCallBack;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 563
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 565
    :cond_0
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationErrorCode;->ADOBE_COLLABORATION_ERROR_INVALID_INVITE_ID:Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationErrorCode;

    const-string/jumbo v2, "Invalid Invitation ID"

    invoke-static {v1, v0, v2}, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationErrUtils;->createCollaborationError(Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationErrorCode;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationException;

    move-result-object v1

    .line 566
    invoke-interface {p2, v1}, Lcom/adobe/creativesdk/foundation/internal/collaboration/delegates/IAdobeCollaborationAcceptOrRejectInviteCallBack;->onError(Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationException;)V

    .line 602
    :goto_0
    return-object v0

    .line 571
    :cond_1
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession$6;

    invoke-direct {v0, p0, p2}, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession$6;-><init>(Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;Lcom/adobe/creativesdk/foundation/internal/collaboration/delegates/IAdobeCollaborationAcceptOrRejectInviteCallBack;)V

    .line 601
    const-string/jumbo v1, "invites/%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 602
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;->AdobeNetworkHttpRequestMethodPOST:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;

    invoke-direct {p0, v1, v2, v0}, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;->getResponseForString(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession$IAdobeCollaborationResponseCallback;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    move-result-object v0

    goto :goto_0
.end method

.method public changeCollaboratorRole(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;Lcom/adobe/creativesdk/foundation/internal/collaboration/delegates/IAdobeChangeCollaborationRoleCallback;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x1

    .line 691
    .line 692
    const-string/jumbo v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 693
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 694
    :cond_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 696
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 698
    :try_start_0
    const-string/jumbo v2, "userId"

    invoke-virtual {v0, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 699
    const-string/jumbo v2, "role"

    invoke-virtual {p3}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 700
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 707
    :goto_0
    new-instance v5, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession$9;

    invoke-direct {v5, p0, p4}, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession$9;-><init>(Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;Lcom/adobe/creativesdk/foundation/internal/collaboration/delegates/IAdobeChangeCollaborationRoleCallback;)V

    .line 743
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    .line 746
    const-string/jumbo v0, "collaborators/%s"

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 747
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;->AdobeNetworkHttpRequestMethodPUT:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;

    const-string/jumbo v4, "application/json"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;->getResponseForString(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession$IAdobeCollaborationResponseCallback;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    move-result-object v0

    return-object v0

    .line 702
    :catch_0
    move-exception v0

    .line 703
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public createComment(Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/comments/IAdobeAddCommentCallback;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1126
    if-nez p1, :cond_0

    .line 1127
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v1, "createComment"

    const-string/jumbo v2, "resource cannot be null."

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 1128
    invoke-interface {p5}, Lcom/adobe/creativesdk/foundation/internal/comments/IAdobeAddCommentCallback;->onError()V

    move-object v0, v6

    .line 1174
    :goto_0
    return-object v0

    .line 1133
    :cond_0
    const-string/jumbo v1, "comments"

    .line 1137
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1140
    const-string/jumbo v2, "resourceType"

    const-string/jumbo v3, "application/vnd.adobe.asset"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1141
    const-string/jumbo v2, "resource"

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;->getHref()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1142
    const-string/jumbo v2, "username"

    invoke-virtual {v0, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1143
    const-string/jumbo v2, "email"

    invoke-virtual {v0, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1144
    const-string/jumbo v2, "content"

    invoke-virtual {v0, v2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1147
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1149
    const-string/jumbo v3, "attributes"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1153
    new-instance v5, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession$15;

    invoke-direct {v5, p0, p5}, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession$15;-><init>(Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;Lcom/adobe/creativesdk/foundation/internal/comments/IAdobeAddCommentCallback;)V

    .line 1168
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;->AdobeNetworkHttpRequestMethodPOST:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "application/json"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;->getResponseForString(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession$IAdobeCollaborationResponseCallback;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 1172
    :catch_0
    move-exception v0

    .line 1173
    invoke-interface {p5}, Lcom/adobe/creativesdk/foundation/internal/comments/IAdobeAddCommentCallback;->onError()V

    move-object v0, v6

    .line 1174
    goto :goto_0
.end method

.method public createInvite(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/collaboration/delegates/IAdobeCollaborationInviteUserCallBack;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v4, 0x6

    const/4 v1, 0x0

    .line 335
    .line 337
    if-nez p1, :cond_0

    .line 339
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationErrorCode;->ADOBE_COLLABORATION_ERROR_INVALID_FOLDER:Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationErrorCode;

    const-string/jumbo v2, "Invalid Folder"

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationErrUtils;->createCollaborationError(Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationErrorCode;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationException;

    move-result-object v0

    .line 340
    invoke-interface {p3, v0}, Lcom/adobe/creativesdk/foundation/internal/collaboration/delegates/IAdobeCollaborationInviteUserCallBack;->onError(Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationException;)V

    move-object v0, v1

    .line 413
    :goto_0
    return-object v0

    .line 344
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 346
    :cond_1
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationErrorCode;->ADOBE_COLLABORATION_ERROR_INVALID_EMAIL:Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationErrorCode;

    const-string/jumbo v2, "Invalid Email Address"

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationErrUtils;->createCollaborationError(Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationErrorCode;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationException;

    move-result-object v0

    .line 347
    invoke-interface {p3, v0}, Lcom/adobe/creativesdk/foundation/internal/collaboration/delegates/IAdobeCollaborationInviteUserCallBack;->onError(Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationException;)V

    move-object v0, v1

    .line 348
    goto :goto_0

    .line 353
    :cond_2
    const-string/jumbo v0, "application/x-sharedcloud-collection+json"

    .line 354
    const-string/jumbo v2, "/adobe-libraries/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 355
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 356
    const-string/jumbo v0, "application/vnd.adobe.library+dcx"

    .line 359
    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 361
    const-string/jumbo v3, "^[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}"

    .line 362
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 363
    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 365
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    .line 367
    if-nez v3, :cond_4

    .line 369
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationErrorCode;->ADOBE_COLLABORATION_ERROR_INVALID_EMAIL:Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationErrorCode;

    const-string/jumbo v2, "Invalid Email Address"

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationErrUtils;->createCollaborationError(Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationErrorCode;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationException;

    move-result-object v0

    .line 370
    invoke-interface {p3, v0}, Lcom/adobe/creativesdk/foundation/internal/collaboration/delegates/IAdobeCollaborationInviteUserCallBack;->onError(Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationException;)V

    move-object v0, v1

    .line 371
    goto :goto_0

    .line 375
    :cond_4
    new-instance v5, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession$3;

    invoke-direct {v5, p0, p3}, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession$3;-><init>(Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;Lcom/adobe/creativesdk/foundation/internal/collaboration/delegates/IAdobeCollaborationInviteUserCallBack;)V

    .line 409
    const-string/jumbo v1, "invites"

    .line 411
    const-string/jumbo v3, "{\"resourceUrl\": \"%s%s\",\"recipientEmail\": \"%s\",\"recipientRole\":\"%s\",\"resourceName\": \"%s\",\"resourceType\":\"%s\"}"

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    sget-object v7, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;->storageUrl:Ljava/lang/String;

    aput-object v7, v4, v6

    const/4 v6, 0x1

    aput-object p1, v4, v6

    const/4 v6, 0x2

    aput-object v2, v4, v6

    const/4 v2, 0x3

    sget-object v6, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;->ADOBE_COLLABORATION_TYPE_EDITOR:Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;

    invoke-virtual {v6}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v2

    const/4 v2, 0x4

    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;->getResourceComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v2

    const/4 v2, 0x5

    aput-object v0, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 413
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;->AdobeNetworkHttpRequestMethodPOST:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;

    const-string/jumbo v4, "application/json"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;->getResponseForString(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession$IAdobeCollaborationResponseCallback;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public createInvite(Ljava/lang/String;Ljava/util/List;Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/collaboration/delegates/IAdobeCollaborationCreateInvitesDelegate;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/internal/collaboration/delegates/IAdobeCollaborationCreateInvitesDelegate;",
            ")",
            "Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 426
    .line 428
    if-nez p3, :cond_4

    .line 429
    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;->ADOBE_COLLABORATION_TYPE_EDITOR:Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;

    .line 431
    :goto_0
    if-nez p1, :cond_0

    .line 433
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationErrorCode;->ADOBE_COLLABORATION_ERROR_INVALID_FOLDER:Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationErrorCode;

    const-string/jumbo v2, "Invalid Folder"

    invoke-static {v1, v0, v2}, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationErrUtils;->createCollaborationError(Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationErrorCode;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationException;

    move-result-object v1

    .line 434
    invoke-interface {p5, v1}, Lcom/adobe/creativesdk/foundation/internal/collaboration/delegates/IAdobeCollaborationCreateInvitesDelegate;->onError(Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationException;)V

    .line 490
    :goto_1
    return-object v0

    .line 438
    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 440
    :cond_1
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationErrorCode;->ADOBE_COLLABORATION_ERROR_INVALID_EMAIL:Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationErrorCode;

    const-string/jumbo v2, "Invalid Email Address"

    invoke-static {v1, v0, v2}, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationErrUtils;->createCollaborationError(Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationErrorCode;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationException;

    move-result-object v1

    .line 441
    invoke-interface {p5, v1}, Lcom/adobe/creativesdk/foundation/internal/collaboration/delegates/IAdobeCollaborationCreateInvitesDelegate;->onError(Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationException;)V

    goto :goto_1

    .line 447
    :cond_2
    const-string/jumbo v5, "application/x-sharedcloud-collection+json"

    .line 448
    const-string/jumbo v0, "/adobe-libraries/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 449
    const-string/jumbo v5, "application/vnd.adobe.library+dcx"

    .line 453
    :cond_3
    new-instance v7, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession$4;

    invoke-direct {v7, p0, p5}, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession$4;-><init>(Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;Lcom/adobe/creativesdk/foundation/internal/collaboration/delegates/IAdobeCollaborationCreateInvitesDelegate;)V

    .line 486
    const-string/jumbo v8, "invites"

    .line 487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;->storageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 488
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;->getResourceComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v2, p2

    move-object v6, p4

    .line 487
    invoke-direct/range {v0 .. v6}, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;->createPostDataForInvite(Ljava/lang/String;Ljava/util/List;Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 490
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;->AdobeNetworkHttpRequestMethodPOST:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;

    const-string/jumbo v4, "application/json"

    move-object v0, p0

    move-object v1, v8

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;->getResponseForString(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession$IAdobeCollaborationResponseCallback;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    move-result-object v0

    goto :goto_1

    :cond_4
    move-object v3, p3

    goto :goto_0
.end method

.method public createNewLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/adobe/creativesdk/foundation/internal/collaboration/delegates/IAdobeCollaborationPublicLinkCallBack;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;
    .locals 8

    .prologue
    const/16 v7, 0x190

    const/4 v6, 0x0

    .line 874
    if-nez p1, :cond_1

    .line 875
    invoke-interface {p6, v7}, Lcom/adobe/creativesdk/foundation/internal/collaboration/delegates/IAdobeCollaborationPublicLinkCallBack;->onError(I)V

    .line 958
    :cond_0
    :goto_0
    return-object v6

    .line 879
    :cond_1
    new-instance v5, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession$12;

    invoke-direct {v5, p0, p6}, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession$12;-><init>(Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;Lcom/adobe/creativesdk/foundation/internal/collaboration/delegates/IAdobeCollaborationPublicLinkCallBack;)V

    .line 898
    const-string/jumbo v1, "links"

    .line 903
    const-string/jumbo v0, "application/vnd.adobe"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 905
    const-string/jumbo p2, "application/vnd.adobe.asset"

    .line 937
    :goto_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 938
    const-string/jumbo v2, "download"

    invoke-virtual {v0, v2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 939
    const-string/jumbo v2, "comment"

    invoke-virtual {v0, v2, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 941
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 942
    const-string/jumbo v3, "resource"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 943
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 944
    const-string/jumbo v3, "resourceType"

    invoke-virtual {v2, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 945
    const-string/jumbo v3, "permissions"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 947
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 949
    if-eqz v3, :cond_0

    .line 950
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;->AdobeNetworkHttpRequestMethodPOST:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;

    const-string/jumbo v4, "application/json"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;->getResponseForLink(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession$IAdobeCollaborationResponseCallback;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_0

    .line 906
    :cond_2
    const-string/jumbo v0, "vnd.adobe.directory"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 908
    const-string/jumbo p2, "application/x-sharedcloud-collection+json"

    goto :goto_1

    .line 909
    :cond_3
    const-string/jumbo v0, "vnd.adobe.library"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "vnd.adobe.element"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 912
    :cond_4
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession$17;->$SwitchMap$com$adobe$creativesdk$foundation$internal$auth$AdobeAuthIMSEnvironment:[I

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;->imsEnvironment:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    move-object v0, v6

    .line 926
    :goto_2
    if-eqz v0, :cond_6

    .line 927
    const-string/jumbo v2, "%s/assets/adobe-libraries/%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object p1, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 929
    :goto_3
    const-string/jumbo v2, "vnd.adobe.library"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 930
    const-string/jumbo p2, "application/vnd.adobe.library+dcx"

    move-object p1, v0

    goto/16 :goto_1

    .line 914
    :pswitch_0
    const-string/jumbo v0, "https://cc-api-storage-stage.adobe.io"

    goto :goto_2

    .line 918
    :pswitch_1
    const-string/jumbo v0, "https://cc-api-storage.adobe.io"

    goto :goto_2

    :cond_5
    move-object p1, v0

    .line 932
    goto/16 :goto_1

    .line 953
    :catch_0
    move-exception v0

    .line 954
    invoke-interface {p6, v7}, Lcom/adobe/creativesdk/foundation/internal/collaboration/delegates/IAdobeCollaborationPublicLinkCallBack;->onError(I)V

    goto/16 :goto_0

    :cond_6
    move-object v0, v6

    goto :goto_3

    :cond_7
    move-object p2, v6

    move-object p1, v6

    goto/16 :goto_1

    .line 912
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public deleteComment(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/comments/IAdobeDeleteCommentCallback;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1192
    if-nez p1, :cond_0

    .line 1193
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, "deleteComment"

    const-string/jumbo v3, "url cannot be null"

    invoke-static {v1, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 1194
    invoke-interface {p2}, Lcom/adobe/creativesdk/foundation/internal/comments/IAdobeDeleteCommentCallback;->onError()V

    .line 1221
    :goto_0
    return-object v0

    .line 1198
    :cond_0
    const-string/jumbo v0, "%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1199
    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession$16;

    invoke-direct {v2, p0, p2}, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession$16;-><init>(Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;Lcom/adobe/creativesdk/foundation/internal/comments/IAdobeDeleteCommentCallback;)V

    .line 1212
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1213
    new-instance v3, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    invoke-direct {v3}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;-><init>()V

    .line 1214
    invoke-virtual {v3, v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;->setUrl(Ljava/net/URL;)V

    .line 1215
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;->AdobeNetworkHttpRequestMethodDELETE:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;

    invoke-virtual {v3, v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;->setRequestMethod(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;)V

    .line 1216
    const/4 v0, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, v3, v0, v4, v2}, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;->getResponseFor(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession$IAdobeCollaborationResponseCallback;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 1217
    :catch_0
    move-exception v0

    .line 1218
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 1221
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;->AdobeNetworkHttpRequestMethodDELETE:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;

    invoke-direct {p0, v1, v0, v2}, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;->getResponseForString(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession$IAdobeCollaborationResponseCallback;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    move-result-object v0

    goto :goto_0
.end method

.method public getCollaboration(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/collaboration/delegates/IAdobeCollaborationGetCollaborationCallback;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 218
    .line 220
    if-nez p1, :cond_0

    .line 222
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationErrorCode;->ADOBE_COLLABORATION_ERROR_INVALID_FOLDER:Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationErrorCode;

    const-string/jumbo v2, "Invalid Folder"

    invoke-static {v1, v0, v2}, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationErrUtils;->createCollaborationError(Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationErrorCode;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationException;

    move-result-object v1

    .line 223
    invoke-interface {p2, v1}, Lcom/adobe/creativesdk/foundation/internal/collaboration/delegates/IAdobeCollaborationGetCollaborationCallback;->onError(Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationException;)V

    .line 267
    :goto_0
    return-object v0

    .line 227
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "%2F"

    const-string/jumbo v2, "/"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 228
    const-string/jumbo v1, "collaboration%s?fields=ownerId"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 230
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession$1;

    invoke-direct {v1, p0, p2}, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;Lcom/adobe/creativesdk/foundation/internal/collaboration/delegates/IAdobeCollaborationGetCollaborationCallback;)V

    .line 267
    invoke-direct {p0, v0, v1}, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;->getResponseForString(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession$IAdobeCollaborationResponseCallback;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    move-result-object v0

    goto :goto_0
.end method

.method public getComments(Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;Lcom/adobe/creativesdk/foundation/internal/comments/IAdobeGetCommentsCallback;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;
    .locals 4

    .prologue
    .line 1091
    if-nez p1, :cond_0

    .line 1092
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v1, "GetComments"

    const-string/jumbo v2, "Resource Cannot be Null"

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 1093
    invoke-interface {p2}, Lcom/adobe/creativesdk/foundation/internal/comments/IAdobeGetCommentsCallback;->onError()V

    .line 1094
    const/4 v0, 0x0

    .line 1118
    :goto_0
    return-object v0

    .line 1096
    :cond_0
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;->getHref()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1097
    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "%2F"

    const-string/jumbo v2, "/"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1098
    const-string/jumbo v1, "comments%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1099
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession$14;

    invoke-direct {v1, p0, p2, p1}, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession$14;-><init>(Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;Lcom/adobe/creativesdk/foundation/internal/comments/IAdobeGetCommentsCallback;Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;)V

    .line 1118
    invoke-direct {p0, v0, v1}, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;->getResponseForString(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession$IAdobeCollaborationResponseCallback;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    move-result-object v0

    goto :goto_0
.end method

.method public getContacts(Lcom/adobe/creativesdk/foundation/internal/collaboration/delegates/IAdobeCollaborationContactsCallback;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;
    .locals 3

    .prologue
    .line 654
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession$8;

    invoke-direct {v0, p0, p1}, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession$8;-><init>(Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;Lcom/adobe/creativesdk/foundation/internal/collaboration/delegates/IAdobeCollaborationContactsCallback;)V

    .line 683
    const-string/jumbo v1, "contacts"

    .line 684
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;->AdobeNetworkHttpRequestMethodGET:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;

    invoke-direct {p0, v1, v2, v0}, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;->getResponseForString(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession$IAdobeCollaborationResponseCallback;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public getInvites(Lcom/adobe/creativesdk/foundation/internal/collaboration/delegates/IAdobeCollaborationGetInvitesCallBack;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;
    .locals 2

    .prologue
    .line 495
    const-string/jumbo v0, "invites"

    .line 497
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession$5;

    invoke-direct {v1, p0, p1}, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession$5;-><init>(Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;Lcom/adobe/creativesdk/foundation/internal/collaboration/delegates/IAdobeCollaborationGetInvitesCallBack;)V

    .line 546
    invoke-direct {p0, v0, v1}, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;->getResponseForString(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession$IAdobeCollaborationResponseCallback;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public initWithHTTPService(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;)Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;->service:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;

    .line 205
    return-object p0
.end method

.method public isOnline()Z
    .locals 1

    .prologue
    .line 1375
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSessionModel;->getSharedModel()Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSessionModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSessionModel;->isOnline()Z

    move-result v0

    return v0
.end method

.method public rejectInvite(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/collaboration/delegates/IAdobeCollaborationAcceptOrRejectInviteCallBack;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 607
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 609
    :cond_0
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationErrorCode;->ADOBE_COLLABORATION_ERROR_INVALID_INVITE_ID:Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationErrorCode;

    const-string/jumbo v2, "Invalid Invitation ID"

    invoke-static {v1, v0, v2}, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationErrUtils;->createCollaborationError(Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationErrorCode;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationException;

    move-result-object v1

    .line 610
    invoke-interface {p2, v1}, Lcom/adobe/creativesdk/foundation/internal/collaboration/delegates/IAdobeCollaborationAcceptOrRejectInviteCallBack;->onError(Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationException;)V

    .line 648
    :goto_0
    return-object v0

    .line 615
    :cond_1
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession$7;

    invoke-direct {v0, p0, p2}, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession$7;-><init>(Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;Lcom/adobe/creativesdk/foundation/internal/collaboration/delegates/IAdobeCollaborationAcceptOrRejectInviteCallBack;)V

    .line 647
    const-string/jumbo v1, "invites/%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 648
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;->AdobeNetworkHttpRequestMethodDELETE:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;

    invoke-direct {p0, v1, v2, v0}, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;->getResponseForString(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession$IAdobeCollaborationResponseCallback;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    move-result-object v0

    goto :goto_0
.end method

.method public removeCollaborator(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/collaboration/delegates/IAdobeCollaborationRemoveCollaboratorCallback;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 272
    .line 274
    if-nez p1, :cond_0

    .line 276
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationErrorCode;->ADOBE_COLLABORATION_ERROR_INVALID_FOLDER:Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationErrorCode;

    const-string/jumbo v2, "Invalid Folder"

    invoke-static {v1, v0, v2}, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationErrUtils;->createCollaborationError(Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationErrorCode;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationException;

    move-result-object v1

    .line 277
    invoke-interface {p3, v1}, Lcom/adobe/creativesdk/foundation/internal/collaboration/delegates/IAdobeCollaborationRemoveCollaboratorCallback;->onError(Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationException;)V

    .line 322
    :goto_0
    return-object v0

    .line 281
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 283
    :cond_1
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationErrorCode;->ADOBE_COLLABORATION_ERROR_INVALID_USER_ID:Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationErrorCode;

    const-string/jumbo v2, "Invalid User ID"

    invoke-static {v1, v0, v2}, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationErrUtils;->createCollaborationError(Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationErrorCode;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationException;

    move-result-object v1

    .line 284
    invoke-interface {p3, v1}, Lcom/adobe/creativesdk/foundation/internal/collaboration/delegates/IAdobeCollaborationRemoveCollaboratorCallback;->onError(Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationException;)V

    goto :goto_0

    .line 289
    :cond_2
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession$2;

    invoke-direct {v0, p0, p3}, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession$2;-><init>(Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;Lcom/adobe/creativesdk/foundation/internal/collaboration/delegates/IAdobeCollaborationRemoveCollaboratorCallback;)V

    .line 319
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "%2F"

    const-string/jumbo v3, "/"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 320
    const-string/jumbo v2, "collaborators%s?user=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object p2, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 322
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;->AdobeNetworkHttpRequestMethodDELETE:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;

    invoke-direct {p0, v1, v2, v0}, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;->getResponseForString(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession$IAdobeCollaborationResponseCallback;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    move-result-object v0

    goto :goto_0
.end method

.method public retrieveLink(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/collaboration/delegates/IAdobeCollaborationPublicLinkCallBack;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;
    .locals 7

    .prologue
    const/16 v6, 0x190

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 755
    if-nez p1, :cond_0

    .line 756
    invoke-interface {p3, v6}, Lcom/adobe/creativesdk/foundation/internal/collaboration/delegates/IAdobeCollaborationPublicLinkCallBack;->onError(I)V

    .line 810
    :goto_0
    return-object v3

    .line 762
    :cond_0
    const-string/jumbo v0, "application/vnd.adobe"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 763
    const-string/jumbo v0, "links%s"

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 787
    :goto_1
    if-nez v1, :cond_4

    .line 788
    invoke-interface {p3, v6}, Lcom/adobe/creativesdk/foundation/internal/collaboration/delegates/IAdobeCollaborationPublicLinkCallBack;->onError(I)V

    goto :goto_0

    .line 764
    :cond_1
    const-string/jumbo v0, "vnd.adobe.directory"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 765
    const-string/jumbo v0, "links%s"

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 766
    :cond_2
    const-string/jumbo v0, "vnd.adobe.library"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "vnd.adobe.element"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 769
    :cond_3
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession$17;->$SwitchMap$com$adobe$creativesdk$foundation$internal$auth$AdobeAuthIMSEnvironment:[I

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;->imsEnvironment:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    move-object v0, v3

    .line 783
    :goto_2
    if-eqz v0, :cond_5

    .line 784
    const-string/jumbo v1, "links/%s/assets/adobe-libraries/%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v4

    aput-object p1, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 771
    :pswitch_0
    const-string/jumbo v0, "https://cc-api-storage-stage.adobe.io"

    goto :goto_2

    .line 775
    :pswitch_1
    const-string/jumbo v0, "https://cc-api-storage.adobe.io"

    goto :goto_2

    .line 792
    :cond_4
    new-instance v5, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession$10;

    invoke-direct {v5, p0, p3}, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession$10;-><init>(Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;Lcom/adobe/creativesdk/foundation/internal/collaboration/delegates/IAdobeCollaborationPublicLinkCallBack;)V

    .line 810
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;->AdobeNetworkHttpRequestMethodGET:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;

    move-object v0, p0

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;->getResponseForLink(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession$IAdobeCollaborationResponseCallback;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    move-result-object v3

    goto :goto_0

    :cond_5
    move-object v1, v3

    goto :goto_1

    .line 769
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public retrievePublicLink(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/collaboration/delegates/IAdobeCollaborationPublicLinkCallBack;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;
    .locals 6

    .prologue
    const/16 v4, 0x190

    const/4 v3, 0x0

    .line 814
    if-nez p1, :cond_0

    .line 815
    invoke-interface {p2, v4}, Lcom/adobe/creativesdk/foundation/internal/collaboration/delegates/IAdobeCollaborationPublicLinkCallBack;->onError(I)V

    .line 870
    :goto_0
    return-object v3

    .line 824
    :cond_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession$17;->$SwitchMap$com$adobe$creativesdk$foundation$internal$auth$AdobeAuthIMSEnvironment:[I

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;->imsEnvironment:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 839
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v1, "Collaboration Session"

    const-string/jumbo v2, "An undefined authentication endpoint has been specified for the collaboration session"

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    .line 843
    :goto_1
    if-eqz v0, :cond_2

    .line 844
    const-string/jumbo v0, "publinks/:bookmark/%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 847
    :goto_2
    if-nez v1, :cond_1

    .line 848
    invoke-interface {p2, v4}, Lcom/adobe/creativesdk/foundation/internal/collaboration/delegates/IAdobeCollaborationPublicLinkCallBack;->onError(I)V

    goto :goto_0

    .line 826
    :pswitch_0
    const-string/jumbo v0, "https://cc-collab-dev.adobe.io"

    goto :goto_1

    .line 830
    :pswitch_1
    const-string/jumbo v0, "https://cc-collab-stage.adobe.io"

    goto :goto_1

    .line 834
    :pswitch_2
    const-string/jumbo v0, "https://cc-collab.adobe.io"

    goto :goto_1

    .line 852
    :cond_1
    new-instance v5, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession$11;

    invoke-direct {v5, p0, p2}, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession$11;-><init>(Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;Lcom/adobe/creativesdk/foundation/internal/collaboration/delegates/IAdobeCollaborationPublicLinkCallBack;)V

    .line 870
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;->AdobeNetworkHttpRequestMethodGET:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;

    move-object v0, p0

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;->getResponseForLink(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession$IAdobeCollaborationResponseCallback;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    move-result-object v3

    goto :goto_0

    :cond_2
    move-object v1, v3

    goto :goto_2

    .line 824
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public service()Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;->service:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;

    return-object v0
.end method
