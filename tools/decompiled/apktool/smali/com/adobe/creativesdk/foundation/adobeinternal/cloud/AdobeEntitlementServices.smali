.class public Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;
.super Ljava/lang/Object;
.source "AdobeEntitlementServices.java"

# interfaces
.implements Ljava/util/Observer;


# static fields
.field public static final AdobeEntitlementServiceAllowMobile:Ljava/lang/String; = "allow_mobile"

.field public static final AdobeEntitlementServiceAssets:Ljava/lang/String; = "storage"

.field public static final AdobeEntitlementServiceBehance:Ljava/lang/String; = "behance"

.field private static final AdobeEntitlementServiceCCPrivateStorage:Ljava/lang/String; = "private_cloud"

.field private static final AdobeEntitlementServiceCCPublicStorage:Ljava/lang/String; = "public_cloud"

.field public static final AdobeEntitlementServiceCCV:Ljava/lang/String; = "ccv"

.field public static final AdobeEntitlementServiceCollaboration:Ljava/lang/String; = "collaboration"

.field public static final AdobeEntitlementServiceColor:Ljava/lang/String; = "color"

.field public static final AdobeEntitlementServiceDesignAssets:Ljava/lang/String; = "design_assets"

.field public static final AdobeEntitlementServiceEdgeInspect:Ljava/lang/String; = "edge_inspect"

.field public static final AdobeEntitlementServiceExtract:Ljava/lang/String; = "extract"

.field public static final AdobeEntitlementServiceFileSync:Ljava/lang/String; = "file_sync"

.field public static final AdobeEntitlementServiceImage:Ljava/lang/String; = "image"

.field public static final AdobeEntitlementServiceLibraries:Ljava/lang/String; = "libraries"

.field public static final AdobeEntitlementServiceLightroom:Ljava/lang/String; = "lightroom"

.field public static final AdobeEntitlementServicePhoneGapBuild:Ljava/lang/String; = "phonegap_build"

.field public static final AdobeEntitlementServicePremiereClip:Ljava/lang/String; = "premiere_clip"

.field public static final AdobeEntitlementServicePreview:Ljava/lang/String; = "preview"

.field public static final AdobeEntitlementServiceStock:Ljava/lang/String; = "stock"

.field public static final AdobeEntitlementServiceStorage:Ljava/lang/String; = "cc_storage"

.field public static final AdobeEntitlementServiceStory:Ljava/lang/String; = "story"

.field public static final AdobeEntitlementServiceSyncMetadata:Ljava/lang/String; = "sync_metadata"

.field public static final AdobeEntitlementServiceSyncSettings:Ljava/lang/String; = "sync_settings"

.field public static final AdobeEntitlementServiceTypekit:Ljava/lang/String; = "typekit"

.field private static volatile _sharedServices:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices; = null

.field public static final kEntitledKey:Ljava/lang/String; = "entitled"

.field public static final kServiceLevelKey:Ljava/lang/String; = "service_level"


# instance fields
.field private _accessToPrivateStorageServices:Z

.field private _accessToPublicStorageServices:Z

.field private _ignoreNotification:Z

.field private _servicePrerequisite:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices$AdobeCloudServicePrerequisite;",
            ">;"
        }
    .end annotation
.end field

.field private _userPublicServices:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;->_sharedServices:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;->_servicePrerequisite:Ljava/util/HashMap;

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;->_ignoreNotification:Z

    .line 134
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;->_userPublicServices:Lorg/json/JSONObject;

    .line 135
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;->_servicePrerequisite:Ljava/util/HashMap;

    .line 137
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;->_servicePrerequisite:Ljava/util/HashMap;

    const-string/jumbo v1, "private_cloud"

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices$AdobeCloudServicePrerequisite;->AdobeCloudServicePrerequisiteStorageFile:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices$AdobeCloudServicePrerequisite;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;->_servicePrerequisite:Ljava/util/HashMap;

    const-string/jumbo v1, "public_cloud"

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices$AdobeCloudServicePrerequisite;->AdobeCloudServicePrerequisiteStorageFile:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices$AdobeCloudServicePrerequisite;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;->_servicePrerequisite:Ljava/util/HashMap;

    const-string/jumbo v1, "cc_storage"

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices$AdobeCloudServicePrerequisite;->AdobeCloudServicePrerequisiteStorageFile:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices$AdobeCloudServicePrerequisite;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;->_servicePrerequisite:Ljava/util/HashMap;

    const-string/jumbo v1, "behance"

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices$AdobeCloudServicePrerequisite;->AdobeCloudServicePrerequisiteNone:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices$AdobeCloudServicePrerequisite;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;->_servicePrerequisite:Ljava/util/HashMap;

    const-string/jumbo v1, "story"

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices$AdobeCloudServicePrerequisite;->AdobeCloudServicePrerequisiteNone:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices$AdobeCloudServicePrerequisite;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;->_servicePrerequisite:Ljava/util/HashMap;

    const-string/jumbo v1, "phonegap_build"

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices$AdobeCloudServicePrerequisite;->AdobeCloudServicePrerequisiteNone:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices$AdobeCloudServicePrerequisite;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;->_servicePrerequisite:Ljava/util/HashMap;

    const-string/jumbo v1, "lightroom"

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices$AdobeCloudServicePrerequisite;->AdobeCloudServicePrerequisitePhoto:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices$AdobeCloudServicePrerequisite;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;->_servicePrerequisite:Ljava/util/HashMap;

    const-string/jumbo v1, "edge_inspect"

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices$AdobeCloudServicePrerequisite;->AdobeCloudServicePrerequisiteNone:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices$AdobeCloudServicePrerequisite;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;->_servicePrerequisite:Ljava/util/HashMap;

    const-string/jumbo v1, "premiere_clip"

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices$AdobeCloudServicePrerequisite;->AdobeCloudServicePrerequisiteNone:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices$AdobeCloudServicePrerequisite;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;->_servicePrerequisite:Ljava/util/HashMap;

    const-string/jumbo v1, "image"

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices$AdobeCloudServicePrerequisite;->AdobeCloudServicePrerequisiteImage:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices$AdobeCloudServicePrerequisite;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;->_servicePrerequisite:Ljava/util/HashMap;

    const-string/jumbo v1, "extract"

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices$AdobeCloudServicePrerequisite;->AdobeCloudServicePrerequisiteNone:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices$AdobeCloudServicePrerequisite;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;->_servicePrerequisite:Ljava/util/HashMap;

    const-string/jumbo v1, "preview"

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices$AdobeCloudServicePrerequisite;->AdobeCloudServicePrerequisiteNone:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices$AdobeCloudServicePrerequisite;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;->_servicePrerequisite:Ljava/util/HashMap;

    const-string/jumbo v1, "allow_mobile"

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices$AdobeCloudServicePrerequisite;->AdobeCloudServicePrerequisiteNone:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices$AdobeCloudServicePrerequisite;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;->_servicePrerequisite:Ljava/util/HashMap;

    const-string/jumbo v1, "file_sync"

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices$AdobeCloudServicePrerequisite;->AdobeCloudServicePrerequisiteNone:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices$AdobeCloudServicePrerequisite;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;->_servicePrerequisite:Ljava/util/HashMap;

    const-string/jumbo v1, "collaboration"

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices$AdobeCloudServicePrerequisite;->AdobeCloudServicePrerequisiteNone:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices$AdobeCloudServicePrerequisite;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;->_servicePrerequisite:Ljava/util/HashMap;

    const-string/jumbo v1, "storage"

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices$AdobeCloudServicePrerequisite;->AdobeCloudServicePrerequisiteStorageFile:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices$AdobeCloudServicePrerequisite;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;->_servicePrerequisite:Ljava/util/HashMap;

    const-string/jumbo v1, "libraries"

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices$AdobeCloudServicePrerequisite;->AdobeCloudServicePrerequisiteStorageLibrary:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices$AdobeCloudServicePrerequisite;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;->_servicePrerequisite:Ljava/util/HashMap;

    const-string/jumbo v1, "design_assets"

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices$AdobeCloudServicePrerequisite;->AdobeCloudServicePrerequisiteMarket:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices$AdobeCloudServicePrerequisite;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;->_servicePrerequisite:Ljava/util/HashMap;

    const-string/jumbo v1, "color"

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices$AdobeCloudServicePrerequisite;->AdobeCloudServicePrerequisiteNone:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices$AdobeCloudServicePrerequisite;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;->_servicePrerequisite:Ljava/util/HashMap;

    const-string/jumbo v1, "sync_settings"

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices$AdobeCloudServicePrerequisite;->AdobeCloudServicePrerequisiteNone:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices$AdobeCloudServicePrerequisite;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;->_servicePrerequisite:Ljava/util/HashMap;

    const-string/jumbo v1, "sync_metadata"

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices$AdobeCloudServicePrerequisite;->AdobeCloudServicePrerequisiteNone:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices$AdobeCloudServicePrerequisite;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;->_servicePrerequisite:Ljava/util/HashMap;

    const-string/jumbo v1, "stock"

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices$AdobeCloudServicePrerequisite;->AdobeCloudServicePrerequisiteNone:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices$AdobeCloudServicePrerequisite;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeEntilementUserProfileDataFetchNotification:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    invoke-virtual {v0, v1, p0}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->addObserver(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Observer;)V

    .line 161
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;->_userPublicServices:Lorg/json/JSONObject;

    return-object v0
.end method

.method public static getSharedServices()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 164
    const-class v2, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;

    monitor-enter v2

    .line 165
    :try_start_0
    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;->_sharedServices:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;

    if-nez v1, :cond_1

    .line 166
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;

    invoke-direct {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;-><init>()V

    sput-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;->_sharedServices:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;

    .line 168
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementSession;->getSharedSession()Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementSession;->getUserProfileFromCache()Lorg/json/JSONObject;

    move-result-object v3

    .line 170
    if-eqz v3, :cond_1

    .line 172
    const-string/jumbo v1, "public_cloud"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 173
    const-string/jumbo v1, "public_cloud"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 175
    :goto_0
    sget-object v4, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;->_sharedServices:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;

    invoke-virtual {v4, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;->setAccessToPublicStorageServices(Z)V

    .line 178
    const-string/jumbo v1, "private_cloud"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 179
    const-string/jumbo v0, "private_cloud"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 181
    :cond_0
    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;->_sharedServices:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;->setAccessToPrivateStorageServices(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    :try_start_1
    invoke-static {v3}, Lcom/adobe/creativesdk/foundation/internal/entitlement/AdobeEntitlementUtils;->getServicesForUserProfile(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 186
    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;->_sharedServices:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;->updateServices(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 192
    :cond_1
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 193
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;->_sharedServices:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;

    return-object v0

    .line 187
    :catch_0
    move-exception v0

    .line 188
    :try_start_3
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v3, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v3, v4, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 192
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_2
    move v1, v0

    goto :goto_0
.end method

.method protected static getSharedServicesWithServices(Lorg/json/JSONObject;)Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementException;
        }
    .end annotation

    .prologue
    .line 198
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;->_sharedServices:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;

    if-nez v0, :cond_0

    .line 199
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;-><init>()V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;->_sharedServices:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;

    .line 201
    :cond_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;->_sharedServices:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;

    invoke-virtual {v0, p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;->updateServices(Lorg/json/JSONObject;)V

    .line 202
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;->_sharedServices:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;

    return-object v0
.end method

.method private prereqSatisfiedForService(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 278
    .line 280
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;->_servicePrerequisite:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;->_servicePrerequisite:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices$AdobeCloudServicePrerequisite;

    .line 282
    sget-object v3, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices$3;->$SwitchMap$com$adobe$creativesdk$foundation$adobeinternal$cloud$AdobeEntitlementServices$AdobeCloudServicePrerequisite:[I

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices$AdobeCloudServicePrerequisite;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 320
    :cond_0
    :goto_0
    :pswitch_0
    return v1

    .line 287
    :pswitch_1
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;->AdobeCloudServiceTypeImage:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;

    invoke-virtual {p2, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->getSessionForService(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;)Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceSession;

    move-result-object v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    move v1, v0

    .line 288
    goto :goto_0

    :cond_1
    move v0, v2

    .line 287
    goto :goto_1

    .line 290
    :pswitch_2
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;->AdobeCloudServiceTypeMarket:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;

    invoke-virtual {p2, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->getSessionForService(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;)Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceSession;

    move-result-object v0

    if-nez v0, :cond_0

    move v1, v2

    goto :goto_0

    .line 293
    :pswitch_3
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;->AdobeCloudServiceTypePhoto:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;

    invoke-virtual {p2, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->getSessionForService(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;)Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceSession;

    move-result-object v0

    if-nez v0, :cond_0

    move v1, v2

    goto :goto_0

    .line 300
    :pswitch_4
    sget-object v3, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;->AdobeCloudServiceTypeStorage:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;

    invoke-virtual {p2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->getSessionForService(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;)Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceSession;

    move-result-object v3

    .line 301
    if-nez v3, :cond_2

    move v1, v2

    .line 303
    goto :goto_0

    .line 305
    :cond_2
    sget-object v4, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices$AdobeCloudServicePrerequisite;->AdobeCloudServicePrerequisiteStorageAsset:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices$AdobeCloudServicePrerequisite;

    if-ne v0, v4, :cond_3

    .line 306
    const-string/jumbo v0, "assets"

    invoke-virtual {v3, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceSession;->getServiceForSchemaId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;

    move-result-object v0

    if-nez v0, :cond_0

    move v1, v2

    goto :goto_0

    .line 307
    :cond_3
    sget-object v4, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices$AdobeCloudServicePrerequisite;->AdobeCloudServicePrerequisiteStorageFile:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices$AdobeCloudServicePrerequisite;

    if-ne v0, v4, :cond_4

    .line 308
    const-string/jumbo v0, "files"

    invoke-virtual {v3, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceSession;->getServiceForSchemaId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;

    move-result-object v0

    if-nez v0, :cond_0

    move v1, v2

    goto :goto_0

    .line 309
    :cond_4
    sget-object v4, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices$AdobeCloudServicePrerequisite;->AdobeCloudServicePrerequisiteStorageLibrary:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices$AdobeCloudServicePrerequisite;

    if-ne v0, v4, :cond_5

    .line 310
    const-string/jumbo v0, "libraries"

    invoke-virtual {v3, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceSession;->getServiceForSchemaId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;

    move-result-object v0

    if-nez v0, :cond_0

    move v1, v2

    goto :goto_0

    .line 311
    :cond_5
    sget-object v4, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices$AdobeCloudServicePrerequisite;->AdobeCloudServicePrerequisiteStorageArchive:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices$AdobeCloudServicePrerequisite;

    if-ne v0, v4, :cond_0

    .line 312
    const-string/jumbo v0, "archive"

    invoke-virtual {v3, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceSession;->getServiceForSchemaId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;

    move-result-object v0

    if-nez v0, :cond_0

    move v1, v2

    goto :goto_0

    .line 282
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public getServices()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;->_userPublicServices:Lorg/json/JSONObject;

    return-object v0
.end method

.method protected getServicesFromCache()Lorg/json/JSONObject;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 448
    .line 450
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementSession;->getSharedSession()Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementSession;->getUserProfileFromCache()Lorg/json/JSONObject;

    move-result-object v0

    .line 451
    if-eqz v0, :cond_0

    .line 454
    :try_start_0
    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/entitlement/AdobeEntitlementUtils;->getServicesForUserProfile(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 459
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 464
    :goto_1
    return-object v0

    .line 455
    :catch_0
    move-exception v0

    .line 456
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v3, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, v1

    goto :goto_1
.end method

.method public hasAccessToPrivateStorageServices()Z
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;->_accessToPrivateStorageServices:Z

    return v0
.end method

.method public hasAccessToPublicStorageServices()Z
    .locals 1

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;->_accessToPublicStorageServices:Z

    return v0
.end method

.method public isEntitledToService(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)Z
    .locals 2

    .prologue
    .line 211
    const/4 v0, 0x1

    .line 212
    if-nez p2, :cond_0

    .line 213
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getSharedCloudManager()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getDefaultCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object p2

    .line 217
    :cond_0
    if-nez p2, :cond_2

    .line 226
    :cond_1
    :goto_0
    return v0

    .line 220
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;->prereqSatisfiedForService(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)Z

    move-result v0

    .line 221
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;->_userPublicServices:Lorg/json/JSONObject;

    if-eqz v1, :cond_1

    .line 222
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;->_userPublicServices:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 223
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;->_userPublicServices:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;->_userPublicServices:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "entitled"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public levelForService(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServiceLevel;
    .locals 3

    .prologue
    .line 231
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServiceLevel;->AdobeEntitlementServiceLevelUnknown:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServiceLevel;

    .line 233
    if-nez p2, :cond_0

    .line 235
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getSharedCloudManager()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getDefaultCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object p2

    .line 239
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;->prereqSatisfiedForService(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 243
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;->_userPublicServices:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 245
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;->_userPublicServices:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 247
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;->_userPublicServices:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "service_level"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 249
    if-eqz v1, :cond_1

    .line 251
    const-string/jumbo v2, "free_basic"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 253
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServiceLevel;->AdobeEntitlementServiceLevelFreeBasic:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServiceLevel;

    .line 272
    :cond_1
    :goto_0
    return-object v0

    .line 255
    :cond_2
    const-string/jumbo v2, "paid_lvl_1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 257
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServiceLevel;->AdobeEntitlementServiceLevelPaidOne:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServiceLevel;

    goto :goto_0

    .line 259
    :cond_3
    const-string/jumbo v2, "paid_lvl_2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 261
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServiceLevel;->AdobeEntitlementServiceLevelPaidTwo:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServiceLevel;

    goto :goto_0

    .line 263
    :cond_4
    const-string/jumbo v2, "paid_lvl_3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 265
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServiceLevel;->AdobeEntitlementServiceLevelPaidThree:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServiceLevel;

    goto :goto_0
.end method

.method protected refreshServices(Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Landroid/os/Handler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
            "<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 344
    .line 346
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v0

    .line 349
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;->_ignoreNotification:Z

    .line 350
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementSession;->getSharedSession()Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementSession;

    move-result-object v1

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices$1;

    invoke-direct {v2, p0, p0, p2, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices$1;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;)V

    new-instance v3, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices$2;

    invoke-direct {v3, p0, p2, p3}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices$2;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Landroid/os/Handler;)V

    invoke-virtual {v1, v0, v2, v3, p3}, Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementSession;->getUserProfileForToken(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Landroid/os/Handler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    .line 405
    return-void
.end method

.method protected refreshServicesFromCache()V
    .locals 1

    .prologue
    .line 469
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;->getServicesFromCache()Lorg/json/JSONObject;

    move-result-object v0

    .line 470
    if-eqz v0, :cond_0

    .line 471
    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;->updateServices(Lorg/json/JSONObject;)V

    .line 473
    :cond_0
    return-void
.end method

.method public setAccessToPrivateStorageServices(Z)V
    .locals 0

    .prologue
    .line 119
    iput-boolean p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;->_accessToPrivateStorageServices:Z

    .line 120
    return-void
.end method

.method public setAccessToPublicStorageServices(Z)V
    .locals 0

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;->_accessToPublicStorageServices:Z

    .line 112
    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 409
    check-cast p2, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;

    .line 410
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;->getId()Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeEntilementUserProfileDataFetchNotification:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    if-ne v0, v1, :cond_0

    .line 412
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;->_ignoreNotification:Z

    if-eqz v0, :cond_1

    .line 413
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;->_ignoreNotification:Z

    .line 444
    :cond_0
    :goto_0
    return-void

    .line 417
    :cond_1
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;->getInfo()Ljava/util/Map;

    move-result-object v0

    .line 418
    const-string/jumbo v1, "AdobeEntitlementSessionUserProfileData"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 421
    const-string/jumbo v1, "public_cloud"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 423
    const-string/jumbo v1, "public_cloud"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 425
    :goto_1
    invoke-virtual {p0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;->setAccessToPublicStorageServices(Z)V

    .line 428
    const-string/jumbo v1, "private_cloud"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 430
    const-string/jumbo v1, "private_cloud"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 432
    :cond_2
    invoke-virtual {p0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;->setAccessToPrivateStorageServices(Z)V

    .line 436
    :try_start_0
    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/entitlement/AdobeEntitlementUtils;->getServicesForUserProfile(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 437
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;->getServices()Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/entitlement/AdobeEntitlementUtils;->areValuesEqual(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v1

    .line 438
    if-nez v1, :cond_0

    .line 439
    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;->updateServices(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 440
    :catch_0
    move-exception v0

    .line 441
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v2, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method protected updateServices(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;->_userPublicServices:Lorg/json/JSONObject;

    .line 208
    return-void
.end method
