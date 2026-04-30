.class public Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;
.super Ljava/lang/Object;
.source "AdobeCloudManager.java"

# interfaces
.implements Ljava/util/Observer;


# static fields
.field public static final ADOBE_CLOUD_MANAGER:Ljava/lang/String; = "AdobeCloudManager"

.field public static final DEFAULT_CLOUD:Ljava/lang/String; = "defaultCloud"

.field private static sharedManager:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;


# instance fields
.field private clouds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;",
            ">;"
        }
    .end annotation
.end field

.field private defaultCloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

.field private ignoreNotification:Z

.field private syncObject:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->sharedManager:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->ignoreNotification:Z

    .line 69
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->syncObject:Ljava/lang/Object;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->clouds:Ljava/util/ArrayList;

    .line 78
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->defaultCloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    .line 79
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->syncObject:Ljava/lang/Object;

    .line 80
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeAuthLogoutNotification:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    invoke-virtual {v0, v1, p0}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->addObserver(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Observer;)V

    .line 81
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeEntilementUserProfileDataFetchNotification:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    invoke-virtual {v0, v1, p0}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->addObserver(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Observer;)V

    .line 82
    return-void
.end method

.method static synthetic access$000()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->sharedManager:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->clouds:Ljava/util/ArrayList;

    return-object v0
.end method

.method private static fromString(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 88
    sget-object v0, Lorg/apache/commons/io/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v0

    .line 89
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/DecompressibleInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/DecompressibleInputStream;-><init>(Ljava/io/InputStream;)V

    .line 91
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/DecompressibleInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    .line 92
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v3, "AdobeCloudManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Adobe Cloud being retrieved from cache ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/DecompressibleInputStream;->close()V

    .line 94
    return-object v0
.end method

.method private getBestGuessForDefaultCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;
    .locals 4

    .prologue
    .line 558
    const/4 v1, 0x0

    .line 559
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->clouds:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->clouds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 560
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->refreshCloudsFromCache()V

    .line 563
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->clouds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 564
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->clouds:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    .line 575
    :goto_0
    return-object v0

    .line 567
    :cond_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->clouds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    .line 568
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->isPrivateCloud()Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method public static getSharedCloudManager()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;
    .locals 7

    .prologue
    .line 111
    const-class v2, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    monitor-enter v2

    .line 112
    :try_start_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->sharedManager:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    if-nez v0, :cond_0

    .line 113
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;-><init>()V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->sharedManager:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    .line 115
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementSession;->getSharedSession()Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementSession;->getUserProfileFromCache()Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 117
    if-eqz v3, :cond_0

    .line 120
    const/4 v1, 0x1

    .line 122
    :try_start_1
    invoke-static {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->populateHasAccessToPublicStorage(Lorg/json/JSONObject;)Z

    move-result v0

    .line 123
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;->getSharedServices()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;->setAccessToPublicStorageServices(Z)V

    .line 125
    invoke-static {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->populateHasAccessToPrivateStorage(Lorg/json/JSONObject;)Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 131
    :goto_0
    :try_start_2
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;->getSharedServices()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;->setAccessToPrivateStorageServices(Z)V

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 134
    invoke-static {v3, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->updateNewClouds(Lorg/json/JSONObject;Ljava/util/List;)V

    .line 137
    :cond_0
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 138
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->sharedManager:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    return-object v0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    :try_start_3
    sget-object v4, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v5, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_0

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public static populateHasAccessToPrivateStorage(Lorg/json/JSONObject;)Z
    .locals 2

    .prologue
    .line 155
    const/4 v0, 0x1

    .line 156
    const-string/jumbo v1, "private_cloud"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 158
    const-string/jumbo v0, "private_cloud"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 160
    :cond_0
    return v0
.end method

.method public static populateHasAccessToPublicStorage(Lorg/json/JSONObject;)Z
    .locals 2

    .prologue
    .line 164
    const/4 v0, 0x1

    .line 165
    const-string/jumbo v1, "public_cloud"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 167
    const-string/jumbo v0, "public_cloud"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 169
    :cond_0
    return v0
.end method

.method private static toString(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v1, "AdobeCloudManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Adobe Cloud being saved to cache ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 101
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 102
    invoke-virtual {v1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 103
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 104
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v0

    const-string/jumbo v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method public static updateNewClouds(Lorg/json/JSONObject;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/List",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 143
    :try_start_0
    invoke-static {p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudUtils;->getCloudsFromUserProfile(Lorg/json/JSONObject;Ljava/util/List;)Z

    .line 144
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->sharedManager:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->updateClouds(Ljava/util/List;)V
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 149
    :catch_0
    move-exception v0

    .line 150
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v2, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method protected addCloud(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->clouds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 361
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->updateCloud(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V

    .line 363
    :cond_0
    return-void
.end method

.method protected getCloudsFromCache()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 580
    .line 581
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementSession;->getSharedSession()Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementSession;->getUserProfileFromCache()Lorg/json/JSONObject;

    move-result-object v3

    .line 583
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v4, "AdobeCloudManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "The cached userprofile information = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v4, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    if-eqz v3, :cond_3

    .line 587
    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->clouds:Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 589
    :try_start_0
    invoke-static {v3, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudUtils;->getCloudsFromUserProfile(Lorg/json/JSONObject;Ljava/util/List;)Z
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException; {:try_start_0 .. :try_end_0} :catch_0

    .line 594
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 599
    :goto_2
    if-eqz v2, :cond_2

    .line 600
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    .line 601
    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudUtils;->isCloudValid(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 602
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, "AdobeCloudManager"

    const-string/jumbo v3, "Should not hit this condition"

    invoke-static {v0, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 608
    :goto_3
    return-object v0

    .line 583
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0

    .line 590
    :catch_0
    move-exception v0

    .line 591
    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v4, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    move-object v0, v2

    goto :goto_3

    :cond_3
    move-object v2, v1

    goto :goto_2
.end method

.method public getDefaultCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 227
    .line 229
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getDefaultCloudWithError()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 233
    :goto_0
    return-object v0

    .line 230
    :catch_0
    move-exception v1

    .line 231
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v3, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0, v1}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getDefaultCloudWithError()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 237
    .line 238
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->defaultCloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    if-nez v0, :cond_0

    .line 241
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->getSharedAuthManagerRestricted()Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->hasPrivateCloudScope()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 243
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->getSharedKeychain()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;

    move-result-object v0

    .line 244
    const-string/jumbo v2, "defaultCloud"

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->findKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 246
    if-eqz v0, :cond_5

    .line 250
    :try_start_0
    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->fromString(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    move-object v2, v0

    move-object v0, v1

    .line 256
    :goto_0
    if-eqz v2, :cond_2

    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudUtils;->isCloudValid(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 258
    invoke-virtual {p0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->addCloud(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V

    .line 259
    iput-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->defaultCloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    .line 260
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->AdobeEventPropertyCloud:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->defaultCloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->getHref()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSEvent;->setCoreParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->defaultCloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    if-eqz v0, :cond_1

    .line 297
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, "AdobeCloudManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Getting default cloud ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->defaultCloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    :cond_1
    const-class v0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "getDefaultCloudWithError"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "default cloud returned: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->defaultCloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    if-nez v0, :cond_8

    move-object v0, v1

    :goto_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->logAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->defaultCloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    return-object v0

    .line 251
    :catch_0
    move-exception v0

    .line 252
    :goto_3
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v3, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 253
    new-instance v2, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudException;

    sget-object v3, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudErrorCode;->ADOBE_CLOUD_ERROR_DECODE_FAILURE:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudErrorCode;

    const-string/jumbo v4, "Failed to decode default cloud from AdobeAuthKeychain"

    invoke-direct {v2, v3, v4, v1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudException;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudErrorCode;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/Exception;)V

    move-object v0, v2

    move-object v2, v1

    goto/16 :goto_0

    .line 264
    :cond_2
    if-eqz v2, :cond_3

    .line 265
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudException;

    sget-object v3, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudErrorCode;->ADOBE_CLOUD_ERROR_INVALID_CLOUD:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudErrorCode;

    const-string/jumbo v4, "Invalid cloud"

    invoke-direct {v0, v3, v4, v1, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudException;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudErrorCode;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/Exception;)V

    .line 267
    :cond_3
    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v4, "AdobeCloudManager"

    const-string/jumbo v5, "Should not hit this condition"

    invoke-static {v3, v4, v5}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const-class v3, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "getDefaultCloudWithError"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "default cloud error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_4
    invoke-static {v3, v4, v5, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->logAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    throw v0

    .line 273
    :cond_5
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getBestGuessForDefaultCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->defaultCloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    .line 274
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->defaultCloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    if-eqz v0, :cond_6

    .line 275
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->AdobeEventPropertyCloud:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->defaultCloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->getHref()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSEvent;->setCoreParam(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 277
    :cond_6
    const-class v0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "getDefaultCloudWithError"

    const-string/jumbo v3, "default cloud not found"

    invoke-static {v0, v2, v3, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->logAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudException;

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudErrorCode;->ADOBE_CLOUD_ERROR_CLOUD_NOT_FOUND:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudErrorCode;

    const-string/jumbo v3, "Default cloud not found"

    invoke-direct {v0, v2, v3, v1, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudException;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudErrorCode;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/Exception;)V

    throw v0

    .line 284
    :cond_7
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;-><init>()V

    .line 285
    const-string/jumbo v2, "00000000-0000-0000-0000-000000000000"

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->setGUID(Ljava/lang/String;)V

    .line 286
    const-string/jumbo v2, "Adobe Creative Cloud"

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->setName(Ljava/lang/String;)V

    .line 287
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->setAvailable(Z)V

    .line 288
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->setPrivateCloud(Z)V

    .line 290
    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->addCloud(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V

    .line 291
    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->defaultCloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    .line 292
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->AdobeEventPropertyCloud:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->defaultCloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->getHref()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSEvent;->setCoreParam(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 300
    :cond_8
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->defaultCloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->getGUID()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 251
    :catch_1
    move-exception v0

    goto/16 :goto_3
.end method

.method public getMatchingCloud(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 541
    if-nez p1, :cond_0

    move-object v0, v1

    .line 553
    :goto_0
    return-object v0

    .line 544
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->clouds:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->clouds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move-object v0, v1

    .line 545
    goto :goto_0

    .line 547
    :cond_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->clouds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    .line 548
    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_4
    move-object v0, v1

    .line 553
    goto :goto_0
.end method

.method public refreshClouds(Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Landroid/os/Handler;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;",
            ">;>;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 476
    .line 478
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v0

    .line 479
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->ignoreNotification:Z

    .line 480
    const-class v1, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "refreshClouds"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "refreshClouds called: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->logAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementSession;->getSharedSession()Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementSession;

    move-result-object v1

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager$1;

    invoke-direct {v2, p0, p0, p1, p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager$1;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V

    new-instance v3, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager$2;

    invoke-direct {v3, p0, p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager$2;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V

    invoke-virtual {v1, v0, v2, v3, p3}, Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementSession;->getUserProfileForToken(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Landroid/os/Handler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    .line 537
    return-void
.end method

.method protected refreshCloudsFromCache()V
    .locals 1

    .prologue
    .line 613
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getCloudsFromCache()Ljava/util/ArrayList;

    move-result-object v0

    .line 615
    if-eqz v0, :cond_0

    .line 616
    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->updateClouds(Ljava/util/List;)V

    .line 618
    :cond_0
    return-void
.end method

.method protected removeCloud(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V
    .locals 2

    .prologue
    .line 384
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->syncObject:Ljava/lang/Object;

    monitor-enter v1

    .line 385
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->clouds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 387
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->defaultCloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    if-ne v0, p1, :cond_0

    .line 388
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getBestGuessForDefaultCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->setDefaultCloud(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V

    .line 390
    :cond_0
    monitor-exit v1

    .line 391
    return-void

    .line 390
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDefaultCloud(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V
    .locals 5

    .prologue
    .line 306
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->syncObject:Ljava/lang/Object;

    monitor-enter v2

    .line 308
    if-eqz p1, :cond_0

    .line 309
    :try_start_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v1, "AdobeCloudManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Getting default cloud ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->defaultCloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 313
    const/4 v1, 0x0

    .line 316
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->clouds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    .line 317
    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->defaultCloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    invoke-virtual {v0, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->isStrictlyEqual(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 318
    const/4 v0, 0x1

    .line 324
    :goto_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->defaultCloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    invoke-virtual {p1, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->isStrictlyEqual(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)Z

    move-result v1

    if-nez v1, :cond_2

    if-nez v0, :cond_2

    .line 325
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->defaultCloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->removeAllServices()V

    .line 329
    :cond_2
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->defaultCloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    .line 330
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->defaultCloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    if-eqz v0, :cond_3

    .line 331
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->AdobeEventPropertyCloud:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->defaultCloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->getHref()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSEvent;->setCoreParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    :cond_3
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->getSharedAuthManagerRestricted()Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->hasPrivateCloudScope()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_4

    .line 333
    if-eqz p1, :cond_5

    .line 334
    const/4 v0, 0x0

    .line 336
    :try_start_1
    invoke-static {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->toString(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 341
    :goto_1
    :try_start_2
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->getSharedKeychain()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;

    move-result-object v1

    .line 342
    const-string/jumbo v3, "defaultCloud"

    invoke-virtual {v1, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->updateOrAddKey(Ljava/lang/String;Ljava/lang/Object;)V

    .line 347
    :goto_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 348
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;

    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeCloudManagerDefaultCloudUpdatedNotification:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    invoke-direct {v1, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;-><init>(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Map;)V

    .line 352
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->postNotification(Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;)V

    .line 354
    :cond_4
    monitor-exit v2

    .line 355
    return-void

    .line 344
    :cond_5
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->getSharedKeychain()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;

    move-result-object v0

    .line 345
    const-string/jumbo v1, "defaultCloud"

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->deleteKey(Ljava/lang/String;)V

    goto :goto_2

    .line 354
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 337
    :catch_0
    move-exception v1

    goto :goto_1

    :cond_6
    move v0, v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 396
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 398
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->clouds:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 400
    const-string/jumbo v1, "clouds"

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->clouds:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    :cond_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->defaultCloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    if-eqz v1, :cond_1

    .line 406
    const-string/jumbo v1, "defaultCloud"

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->defaultCloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    :cond_1
    invoke-virtual {v0}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 174
    check-cast p2, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;

    .line 175
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;->getId()Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeAuthLogoutNotification:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    if-ne v0, v1, :cond_2

    .line 176
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;->getInfo()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_2

    .line 177
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->clouds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    .line 178
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->removeAllServices()V

    goto :goto_0

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->clouds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 181
    invoke-virtual {p0, v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->setDefaultCloud(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V

    .line 221
    :cond_1
    :goto_1
    return-void

    .line 182
    :cond_2
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;->getId()Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeEntilementUserProfileDataFetchNotification:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    if-ne v0, v1, :cond_1

    .line 183
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->ignoreNotification:Z

    if-eqz v0, :cond_3

    .line 184
    iput-boolean v3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->ignoreNotification:Z

    goto :goto_1

    .line 188
    :cond_3
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;->getInfo()Ljava/util/Map;

    move-result-object v0

    .line 189
    const-string/jumbo v1, "AdobeEntitlementSessionUserProfileData"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 193
    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->populateHasAccessToPublicStorage(Lorg/json/JSONObject;)Z

    move-result v4

    .line 196
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;->getSharedServices()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;->hasAccessToPublicStorageServices()Z

    move-result v1

    if-ne v4, v1, :cond_4

    move v1, v2

    :goto_2
    and-int/2addr v1, v2

    .line 197
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;->getSharedServices()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;->setAccessToPublicStorageServices(Z)V

    .line 200
    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->populateHasAccessToPrivateStorage(Lorg/json/JSONObject;)Z

    move-result v4

    .line 202
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;->getSharedServices()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;

    move-result-object v5

    invoke-virtual {v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;->hasAccessToPrivateStorageServices()Z

    move-result v5

    if-ne v4, v5, :cond_5

    :goto_3
    and-int/2addr v1, v2

    .line 203
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;->getSharedServices()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;->setAccessToPrivateStorageServices(Z)V

    .line 205
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 207
    :try_start_0
    invoke-static {v0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudUtils;->getCloudsFromUserProfile(Lorg/json/JSONObject;Ljava/util/List;)Z

    .line 208
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->sharedManager:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->clouds:Ljava/util/ArrayList;

    invoke-static {v2, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudUtils;->areValuesEqual(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    .line 209
    and-int/2addr v1, v0

    .line 212
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    .line 214
    invoke-virtual {p0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->updateClouds(Ljava/util/List;)V
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 217
    :catch_0
    move-exception v0

    .line 218
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v2, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v6, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_4
    move v1, v3

    .line 196
    goto :goto_2

    :cond_5
    move v2, v3

    .line 202
    goto :goto_3
.end method

.method protected updateCloud(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V
    .locals 4

    .prologue
    .line 367
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->syncObject:Ljava/lang/Object;

    monitor-enter v1

    .line 369
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->clouds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 370
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->clouds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    :cond_0
    :goto_0
    monitor-exit v1

    .line 380
    return-void

    .line 373
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->clouds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 374
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->clouds:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    .line 375
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->getEtag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->getEtag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->clouds:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 379
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected updateClouds(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 414
    .line 416
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->clouds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 420
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    .line 421
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->clouds:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    move v0, v2

    .line 437
    :goto_0
    if-eqz v0, :cond_6

    move v0, v2

    .line 443
    :goto_1
    if-eqz v0, :cond_2

    .line 445
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v3, :cond_4

    .line 446
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->updateCloud(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V

    .line 447
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getDefaultCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v0

    if-nez v0, :cond_1

    .line 448
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->setDefaultCloud(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V

    .line 461
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 462
    const-string/jumbo v1, "Clouds"

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->clouds:Ljava/util/ArrayList;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeCloudManagerCloudsUpdatedNotification:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    invoke-direct {v1, v2, v0}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;-><init>(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Map;)V

    .line 467
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->postNotification(Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;)V

    .line 469
    :cond_2
    return-void

    .line 427
    :cond_3
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->clouds:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 428
    iget-object v5, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->clouds:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    .line 429
    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->isStrictlyEqual(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    .line 432
    goto :goto_0

    .line 452
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    .line 453
    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->updateCloud(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V

    .line 455
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getDefaultCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v2

    if-nez v2, :cond_5

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->isPrivateCloud()Z

    move-result v2

    if-nez v2, :cond_5

    .line 457
    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->setDefaultCloud(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V

    goto :goto_2

    :cond_6
    move v0, v3

    goto :goto_1

    :cond_7
    move v0, v3

    goto :goto_0
.end method
