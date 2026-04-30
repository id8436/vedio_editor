.class public Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;
.super Ljava/lang/Object;
.source "AdobeCloud.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field private static final ADOBE_CLOUD_CLIPBOARD_SERVICE_TAG:Ljava/lang/String; = "clipboard"

.field private static final ADOBE_CLOUD_CODER_KEY_AVAILABILITY:Ljava/lang/String; = "availability"

.field private static final ADOBE_CLOUD_CODER_KEY_DESCRIPTION:Ljava/lang/String; = "cloudDescription"

.field private static final ADOBE_CLOUD_CODER_KEY_ENDPOINTS:Ljava/lang/String; = "endpoints"

.field private static final ADOBE_CLOUD_CODER_KEY_E_TAG:Ljava/lang/String; = "etag"

.field private static final ADOBE_CLOUD_CODER_KEY_GUID:Ljava/lang/String; = "guid"

.field private static final ADOBE_CLOUD_CODER_KEY_LOGO_URL:Ljava/lang/String; = "logoURL"

.field private static final ADOBE_CLOUD_CODER_KEY_NAME:Ljava/lang/String; = "name"

.field private static final ADOBE_CLOUD_CODER_KEY_PARAMETERS:Ljava/lang/String; = "parameters"

.field private static final ADOBE_CLOUD_CODER_KEY_PRIVATE_CLOUD:Ljava/lang/String; = "private"

.field private static final ADOBE_CLOUD_CODER_KEY_PRIVATE_SESSIONS:Ljava/lang/String; = "sessions"

.field private static final ADOBE_CLOUD_CODER_KEY_QUOTA_ENABLED:Ljava/lang/String; = "quotaEnabled"

.field private static final ADOBE_CLOUD_CODER_KEY_REGION:Ljava/lang/String; = "region"

.field private static final ADOBE_CLOUD_CODER_KEY_VERSION:Ljava/lang/String; = "version"

.field public static final ICON_URL:Ljava/lang/String; = "iconUrl"

.field public static final PARSING_OF_INPUT_FAILED:Ljava/lang/String; = "Parsing of input failed"

.field public static final STORAGE:Ljava/lang/String; = "storage"


# instance fields
.field private available:Z

.field private cloudDescription:Ljava/lang/String;

.field private eTag:Ljava/lang/String;

.field private endpoints:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudEndpoint;",
            ">;"
        }
    .end annotation
.end field

.field private guid:Ljava/lang/String;

.field private logoURL:Ljava/net/URL;

.field private name:Ljava/lang/String;

.field private parameters:Lorg/json/JSONObject;

.field private privateCloud:Z

.field private quotaEnabled:Z

.field private region:Ljava/lang/String;

.field private sessions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceSession;",
            ">;"
        }
    .end annotation
.end field

.field private version:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->quotaEnabled:Z

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->endpoints:Ljava/util/Map;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->sessions:Ljava/util/Map;

    .line 83
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->parameters:Lorg/json/JSONObject;

    .line 84
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/net/URL;Ljava/util/HashMap;Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/net/URL;",
            "Ljava/util/HashMap",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudEndpoint;",
            ">;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->quotaEnabled:Z

    .line 95
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->guid:Ljava/lang/String;

    .line 96
    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->eTag:Ljava/lang/String;

    .line 97
    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->name:Ljava/lang/String;

    .line 98
    iput-object p4, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->cloudDescription:Ljava/lang/String;

    .line 99
    iput-object p5, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->region:Ljava/lang/String;

    .line 100
    iput-wide p6, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->version:J

    .line 101
    iput-object p8, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->logoURL:Ljava/net/URL;

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p9}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->endpoints:Ljava/util/Map;

    .line 103
    invoke-static {p10}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageCopyUtils;->deepMutableCopyOfDictionary(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->parameters:Lorg/json/JSONObject;

    .line 104
    iput-boolean v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->available:Z

    .line 105
    iput-boolean v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->privateCloud:Z

    .line 106
    return-void
.end method

.method private setServiceType(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudException;
        }
    .end annotation

    .prologue
    .line 692
    if-eqz p3, :cond_0

    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;->AdobeCloudServiceTypeUnknown:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;

    if-eq p1, v0, :cond_0

    .line 694
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->endpoints:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudEndpoint;

    .line 696
    if-eqz v0, :cond_1

    .line 699
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudEndpoint;->addServiceSchemaId(Ljava/lang/String;Ljava/net/URL;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 712
    :goto_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->endpoints:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 714
    :cond_0
    return-void

    .line 700
    :catch_0
    move-exception v0

    .line 701
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudException;

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudErrorCode;->ADOBE_CLOUD_ERROR_UNEXPECTED_RESPONSE:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudErrorCode;

    const-string/jumbo v3, "Parsing of input failed"

    invoke-direct {v1, v2, v3, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudException;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudErrorCode;Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 707
    :cond_1
    :try_start_1
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudEndpoint;

    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, p2, v1, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudEndpoint;-><init>(Ljava/lang/String;Ljava/net/URL;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 708
    :catch_1
    move-exception v0

    .line 709
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudException;

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudErrorCode;->ADOBE_CLOUD_ERROR_UNEXPECTED_RESPONSE:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudErrorCode;

    const-string/jumbo v3, "Parsing of input failed"

    invoke-direct {v1, v2, v3, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudException;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudErrorCode;Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method private uriForKey(Ljava/util/ArrayList;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 670
    .line 673
    const/4 v2, 0x1

    .line 675
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 676
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 677
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    goto :goto_0

    .line 679
    :cond_0
    const/4 v0, 0x0

    .line 684
    :goto_1
    if-eqz v0, :cond_1

    .line 685
    const-string/jumbo v0, "uri"

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 688
    :goto_2
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    goto :goto_1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 325
    .line 327
    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    if-eqz v1, :cond_0

    .line 329
    check-cast p1, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    .line 330
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->guid:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->guid:Ljava/lang/String;

    iget-object v1, p1, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->guid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 333
    :cond_0
    :goto_0
    return v0

    .line 330
    :cond_1
    iget-object v1, p1, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->guid:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected getCloudDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->cloudDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getCopy()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;
    .locals 4

    .prologue
    .line 295
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;-><init>()V

    .line 297
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->guid:Ljava/lang/String;

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->guid:Ljava/lang/String;

    .line 298
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->eTag:Ljava/lang/String;

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->eTag:Ljava/lang/String;

    .line 299
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->name:Ljava/lang/String;

    .line 300
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->cloudDescription:Ljava/lang/String;

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->cloudDescription:Ljava/lang/String;

    .line 301
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->region:Ljava/lang/String;

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->region:Ljava/lang/String;

    .line 303
    :try_start_0
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->logoURL:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->logoURL:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    :goto_0
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->endpoints:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->endpoints:Ljava/util/Map;

    .line 308
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->sessions:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->sessions:Ljava/util/Map;

    .line 309
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->parameters:Lorg/json/JSONObject;

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageCopyUtils;->deepMutableCopyOfDictionary(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->parameters:Lorg/json/JSONObject;

    .line 310
    iget-wide v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->version:J

    iput-wide v2, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->version:J

    .line 311
    iget-boolean v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->available:Z

    iput-boolean v1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->available:Z

    .line 312
    iget-boolean v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->privateCloud:Z

    iput-boolean v1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->privateCloud:Z

    .line 313
    iget-boolean v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->quotaEnabled:Z

    iput-boolean v1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->quotaEnabled:Z

    .line 314
    return-object v0

    .line 304
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getEndpoints()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudEndpoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 213
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->endpoints:Ljava/util/Map;

    return-object v0
.end method

.method protected getEtag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->eTag:Ljava/lang/String;

    return-object v0
.end method

.method public getGUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->guid:Ljava/lang/String;

    return-object v0
.end method

.method public getHref()Ljava/lang/String;
    .locals 4

    .prologue
    .line 727
    const/4 v0, 0x0

    .line 728
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getEnvironment()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;

    move-result-object v1

    .line 730
    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud$1;->$SwitchMap$com$adobe$creativesdk$foundation$internal$auth$AdobeAuthIMSEnvironment:[I

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 743
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, "Cloud:GetHref"

    const-string/jumbo v3, "An undefined authentication endpoint has been specified."

    invoke-static {v1, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    :goto_0
    const-string/jumbo v1, "%s/api/v1/clouds/%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->getGUID()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 732
    :pswitch_0
    const-string/jumbo v0, "https://cc-api-ers.adobe.io"

    goto :goto_0

    .line 736
    :pswitch_1
    const-string/jumbo v0, "https://cc-api-ers-stage.adobe.io"

    goto :goto_0

    .line 739
    :pswitch_2
    const-string/jumbo v0, "https://cc-api-ers-qe.adobe.io"

    goto :goto_0

    .line 730
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getLogoURL()Ljava/net/URL;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->logoURL:Ljava/net/URL;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParameters()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->parameters:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->region:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionForService(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;)Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceSession;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 392
    .line 395
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->sessions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->sessions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceSession;

    .line 459
    :goto_0
    return-object v0

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->endpoints:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudEndpoint;

    .line 407
    if-eqz v0, :cond_1

    .line 408
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudEndpoint;->getServiceType()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;

    move-result-object v2

    if-eq v2, p1, :cond_1

    move-object v0, v1

    .line 414
    :cond_1
    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud$1;->$SwitchMap$com$adobe$creativesdk$foundation$adobeinternal$cloud$AdobeCloudServiceType:[I

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 447
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v2, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Invalid cloud type specified."

    invoke-static {v0, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 451
    :goto_1
    if-eqz v0, :cond_2

    .line 453
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->isPrivateCloud()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceSession;->setPrivateService(Z)V

    .line 454
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->sessions:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 417
    :pswitch_0
    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->getSessionForCloudEndpoint(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudEndpoint;)Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceSession;

    move-result-object v0

    goto :goto_1

    :pswitch_1
    move-object v0, v1

    .line 422
    goto :goto_1

    .line 425
    :pswitch_2
    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;->getSessionForCloudEndpoint(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudEndpoint;)Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceSession;

    move-result-object v0

    goto :goto_1

    .line 429
    :pswitch_3
    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;->getSessionForCloudEndpoint(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudEndpoint;)Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceSession;

    move-result-object v0

    goto :goto_1

    .line 433
    :pswitch_4
    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementSession;->getSessionForCloudEndpoint(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudEndpoint;)Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementSession;

    move-result-object v0

    goto :goto_1

    .line 437
    :pswitch_5
    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/sendtodesktop/AdobeNotificationSession;->getSessionForCloudEndpoint(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudEndpoint;)Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceSession;

    move-result-object v0

    goto :goto_1

    .line 441
    :pswitch_6
    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession;->getSessionForCloudEndpoint(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudEndpoint;)Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceSession;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0

    .line 414
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

.method public getSessions()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceSession;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->sessions:Ljava/util/Map;

    return-object v0
.end method

.method protected getVersion()J
    .locals 2

    .prologue
    .line 242
    iget-wide v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->version:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 319
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 256
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->available:Z

    return v0
.end method

.method public isPrivateCloud()Z
    .locals 1

    .prologue
    .line 270
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->privateCloud:Z

    return v0
.end method

.method public isQuotaEnabled()Z
    .locals 1

    .prologue
    .line 284
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->quotaEnabled:Z

    return v0
.end method

.method public isStrictlyEqual(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)Z
    .locals 3

    .prologue
    .line 717
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 719
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->getEtag()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->getEtag()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 720
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->getEtag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->getEtag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    and-int/2addr v0, v1

    .line 722
    :cond_0
    return v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 503
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->guid:Ljava/lang/String;

    .line 504
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->eTag:Ljava/lang/String;

    .line 505
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->name:Ljava/lang/String;

    .line 506
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->cloudDescription:Ljava/lang/String;

    .line 507
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->region:Ljava/lang/String;

    .line 508
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URL;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->logoURL:Ljava/net/URL;

    .line 509
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->endpoints:Ljava/util/Map;

    .line 511
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->parameters:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 515
    :goto_0
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->version:J

    .line 516
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->available:Z

    .line 517
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->privateCloud:Z

    .line 518
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->quotaEnabled:Z

    .line 519
    return-void

    .line 512
    :catch_0
    move-exception v0

    .line 513
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v2, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public removeAllServices()V
    .locals 3

    .prologue
    .line 489
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->sessions:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 490
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->sessions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 492
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 493
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 494
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceSession;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceSession;->tearDownService()V

    .line 495
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceSession;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceSession;->getHttpServices()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    goto :goto_0

    .line 497
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->sessions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 499
    :cond_1
    return-void
.end method

.method protected setAvailable(Z)V
    .locals 0

    .prologue
    .line 263
    iput-boolean p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->available:Z

    .line 264
    return-void
.end method

.method public setCloudDescription(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->cloudDescription:Ljava/lang/String;

    .line 174
    return-void
.end method

.method public setEndpoints(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudEndpoint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 221
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->endpoints:Ljava/util/Map;

    .line 222
    return-void
.end method

.method public setEtag(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->eTag:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public setGUID(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->guid:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setLogoURL(Ljava/net/URL;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->logoURL:Ljava/net/URL;

    .line 206
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->name:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public setParameters(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->parameters:Lorg/json/JSONObject;

    .line 236
    return-void
.end method

.method public setPrivateCloud(Z)V
    .locals 0

    .prologue
    .line 277
    iput-boolean p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->privateCloud:Z

    .line 278
    return-void
.end method

.method public setQuotaEnabled(Z)V
    .locals 0

    .prologue
    .line 291
    iput-boolean p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->quotaEnabled:Z

    .line 292
    return-void
.end method

.method protected setRegion(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->region:Ljava/lang/String;

    .line 190
    return-void
.end method

.method public setUpService(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;)V
    .locals 1

    .prologue
    .line 466
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->getSessionForService(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;)Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceSession;

    move-result-object v0

    .line 468
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceSession;->setUpService()V

    .line 469
    return-void
.end method

.method public setVersion(J)V
    .locals 1

    .prologue
    .line 249
    iput-wide p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->version:J

    .line 250
    return-void
.end method

.method public tearDownService(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;)V
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->sessions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->sessions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceSession;

    .line 479
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceSession;->tearDownService()V

    .line 480
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->sessions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 338
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 340
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->guid:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 342
    const-string/jumbo v1, "guid"

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->guid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    :cond_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->eTag:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 347
    const-string/jumbo v1, "etag"

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->eTag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    :cond_1
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->name:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 352
    const-string/jumbo v1, "name"

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    :cond_2
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->cloudDescription:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 357
    const-string/jumbo v1, "cloudDescription"

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->cloudDescription:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    :cond_3
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->region:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 362
    const-string/jumbo v1, "region"

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->region:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    :cond_4
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->endpoints:Ljava/util/Map;

    if-eqz v1, :cond_5

    .line 367
    const-string/jumbo v1, "endpoints"

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->endpoints:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    :cond_5
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->parameters:Lorg/json/JSONObject;

    if-eqz v1, :cond_6

    .line 372
    const-string/jumbo v1, "parameters"

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->parameters:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    :cond_6
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->sessions:Ljava/util/Map;

    if-eqz v1, :cond_7

    .line 377
    const-string/jumbo v1, "sessions"

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->sessions:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    :cond_7
    const-string/jumbo v1, "version"

    iget-wide v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->version:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    const-string/jumbo v1, "availability"

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->isAvailable()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    const-string/jumbo v1, "private"

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->isPrivateCloud()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    const-string/jumbo v1, "quotaEnabled"

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->isQuotaEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    invoke-virtual {v0}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateFromData(Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudException;
        }
    .end annotation

    .prologue
    .line 539
    if-nez p1, :cond_0

    .line 541
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudException;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudErrorCode;->ADOBE_CLOUD_ERROR_MISSING_JSON_DATA:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudErrorCode;

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudException;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudErrorCode;)V

    throw v0

    .line 547
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 553
    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->updateFromDictionary(Lorg/json/JSONObject;)Z

    .line 555
    const/4 v0, 0x1

    return v0

    .line 548
    :catch_0
    move-exception v0

    .line 549
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v2, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 550
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudException;

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudErrorCode;->ADOBE_CLOUD_ERROR_UNEXPECTED_RESPONSE:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudErrorCode;

    const-string/jumbo v3, "Parsing of input failed"

    invoke-direct {v1, v2, v3, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudException;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudErrorCode;Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public updateFromDictionary(Lorg/json/JSONObject;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 560
    if-nez p1, :cond_0

    .line 665
    :goto_0
    return v1

    .line 563
    :cond_0
    const-string/jumbo v0, "id"

    invoke-virtual {p1, v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->guid:Ljava/lang/String;

    .line 564
    const-string/jumbo v0, "etag"

    invoke-virtual {p1, v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->eTag:Ljava/lang/String;

    .line 565
    const-string/jumbo v0, "name"

    invoke-virtual {p1, v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->name:Ljava/lang/String;

    .line 566
    const-string/jumbo v0, "cloudDescription"

    invoke-virtual {p1, v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->cloudDescription:Ljava/lang/String;

    .line 567
    const-string/jumbo v0, "region"

    invoke-virtual {p1, v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->region:Ljava/lang/String;

    .line 569
    const-string/jumbo v0, "iconUrl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "iconUrl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/net/URL;

    if-eqz v0, :cond_4

    .line 570
    const-string/jumbo v0, "iconUrl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URL;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->logoURL:Ljava/net/URL;

    .line 583
    :cond_1
    :goto_1
    const-string/jumbo v0, "status"

    invoke-virtual {p1, v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 584
    if-eqz v0, :cond_6

    const-string/jumbo v3, "Provisioned"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "online"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_2
    move v0, v2

    :goto_2
    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->available:Z

    .line 585
    const-string/jumbo v0, "private"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->privateCloud:Z

    .line 587
    iput-boolean v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->quotaEnabled:Z

    .line 588
    const-string/jumbo v0, "parameters"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 589
    if-eqz v0, :cond_3

    .line 591
    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageCopyUtils;->deepMutableCopyOfDictionary(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v3

    iput-object v3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->parameters:Lorg/json/JSONObject;

    .line 592
    const-string/jumbo v3, "quota"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 593
    const-string/jumbo v3, "quota"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->quotaEnabled:Z

    .line 596
    :cond_3
    const-string/jumbo v0, "features"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 602
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->isPrivateCloud()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 604
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;->getSharedServices()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;->hasAccessToPrivateStorageServices()Z

    move-result v0

    .line 611
    :goto_3
    if-eqz v0, :cond_8

    .line 613
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 614
    const-string/jumbo v1, "files"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 615
    const-string/jumbo v1, "storage"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 617
    invoke-direct {p0, v0, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->uriForKey(Ljava/util/ArrayList;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 618
    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;->AdobeCloudServiceTypeStorage:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;

    const-string/jumbo v4, "files"

    invoke-direct {p0, v1, v4, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->setServiceType(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 621
    const-string/jumbo v1, "assets"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 622
    const-string/jumbo v1, "storage"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 624
    invoke-direct {p0, v0, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->uriForKey(Ljava/util/ArrayList;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 625
    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;->AdobeCloudServiceTypeStorage:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;

    const-string/jumbo v4, "assets"

    invoke-direct {p0, v1, v4, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->setServiceType(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 629
    const-string/jumbo v1, "files"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 630
    const-string/jumbo v1, "archive"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 632
    invoke-direct {p0, v0, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->uriForKey(Ljava/util/ArrayList;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 633
    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;->AdobeCloudServiceTypeStorage:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;

    const-string/jumbo v4, "archive"

    invoke-direct {p0, v1, v4, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->setServiceType(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 636
    const-string/jumbo v1, "libraries"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 637
    const-string/jumbo v1, "storage"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 639
    invoke-direct {p0, v0, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->uriForKey(Ljava/util/ArrayList;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 640
    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;->AdobeCloudServiceTypeStorage:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;

    const-string/jumbo v4, "libraries"

    invoke-direct {p0, v1, v4, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->setServiceType(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 644
    const-string/jumbo v1, "imageservices"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 645
    const-string/jumbo v1, "service"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 647
    invoke-direct {p0, v0, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->uriForKey(Ljava/util/ArrayList;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 648
    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;->AdobeCloudServiceTypeImage:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;

    const-string/jumbo v4, "imageservices"

    invoke-direct {p0, v1, v4, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->setServiceType(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 651
    const-string/jumbo v1, "clipboard"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 652
    const-string/jumbo v1, "storage"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 654
    invoke-direct {p0, v0, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->uriForKey(Ljava/util/ArrayList;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 655
    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;->AdobeCloudServiceTypeClipBoard:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;

    const-string/jumbo v3, "clipboard"

    invoke-direct {p0, v1, v3, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->setServiceType(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    move v1, v2

    .line 665
    goto/16 :goto_0

    .line 573
    :cond_4
    const-string/jumbo v0, "iconUrl"

    invoke-virtual {p1, v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 574
    if-eqz v0, :cond_1

    .line 576
    :try_start_0
    new-instance v3, Ljava/net/URL;

    const-string/jumbo v4, "iconUrl"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->logoURL:Ljava/net/URL;

    .line 577
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->logoURL:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 578
    :catch_0
    move-exception v0

    .line 579
    iput-object v6, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->logoURL:Ljava/net/URL;

    goto/16 :goto_1

    :cond_5
    move v0, v1

    .line 584
    goto/16 :goto_2

    :cond_6
    move v0, v1

    goto/16 :goto_2

    .line 608
    :cond_7
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;->getSharedServices()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;->hasAccessToPublicStorageServices()Z

    move-result v0

    goto/16 :goto_3

    .line 660
    :cond_8
    iput-boolean v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->quotaEnabled:Z

    goto :goto_4
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 523
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->guid:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 524
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->eTag:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 525
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->name:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 526
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->cloudDescription:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 527
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->region:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 528
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->logoURL:Ljava/net/URL;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 529
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->endpoints:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 530
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->parameters:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->parameters:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 531
    iget-wide v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->version:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 532
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->available:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 533
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->privateCloud:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 534
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->quotaEnabled:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 535
    return-void

    .line 530
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
