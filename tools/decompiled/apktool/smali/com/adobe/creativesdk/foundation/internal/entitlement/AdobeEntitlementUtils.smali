.class public Lcom/adobe/creativesdk/foundation/internal/entitlement/AdobeEntitlementUtils;
.super Ljava/lang/Object;
.source "AdobeEntitlementUtils.java"


# static fields
.field public static final AdobeEntitlementServiceAllowMobile:Ljava/lang/String; = "allow_mobile"

.field public static final AdobeEntitlementServiceAssets:Ljava/lang/String; = "storage"

.field public static final AdobeEntitlementServiceBehance:Ljava/lang/String; = "Behance"

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

.field public static final AdobeEntitlementServiceStorage:Ljava/lang/String; = "storage"

.field public static final AdobeEntitlementServiceStory:Ljava/lang/String; = "story"

.field public static final AdobeEntitlementServiceSyncMetadata:Ljava/lang/String; = "sync_metadata"

.field public static final AdobeEntitlementServiceSyncSettings:Ljava/lang/String; = "sync_settings"

.field public static final AdobeEntitlementServiceTypekit:Ljava/lang/String; = "typekit"

.field public static final CLOUD_ID_STRING:Ljava/lang/String; = "\t\t\"id\" : \"00000000-0000-0000-0000-000000000000\",\n"

.field public static final NEW_LINE:Ljava/lang/String; = "\t[\n"

.field public static final kEntitledKey:Ljava/lang/String; = "entitled"

.field public static final kServiceLevelKey:Ljava/lang/String; = "service_level"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    return-void
.end method

.method public static JSONObjectWithData(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementException;
        }
    .end annotation

    .prologue
    .line 70
    .line 71
    if-nez p0, :cond_0

    .line 73
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementException;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementErrorCode;->AdobeEntitlementErrorMissingJSONData:Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementErrorCode;

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementException;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementErrorCode;)V

    throw v0

    .line 78
    :cond_0
    :try_start_0
    const-string/jumbo v0, "while \\(1\\) \\{\\}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 79
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 81
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 83
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    return-object v0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementException;

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementErrorCode;->AdobeEntitlementErrorUnexpectedResponse:Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementErrorCode;

    const-string/jumbo v3, "Parsed collection data is not of type dictionary."

    invoke-direct {v1, v2, v3, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementException;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementErrorCode;Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public static areValuesEqual(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 280
    .line 282
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    move v0, v1

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 283
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 284
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 287
    :cond_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    move v2, v1

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 288
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 289
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 292
    :cond_1
    if-ne v0, v2, :cond_4

    const/4 v0, 0x1

    .line 293
    :goto_2
    if-eqz v0, :cond_3

    .line 295
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 296
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 297
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 298
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 300
    if-eqz v4, :cond_8

    if-eqz v5, :cond_8

    .line 302
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 304
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 305
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-class v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 306
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 307
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 308
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 331
    :goto_4
    if-nez v0, :cond_7

    .line 338
    :cond_3
    :goto_5
    return v0

    :cond_4
    move v0, v1

    .line 292
    goto :goto_2

    .line 313
    :cond_5
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-class v8, Lorg/json/JSONObject;

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 314
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 315
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 316
    invoke-static {v7, v0}, Lcom/adobe/creativesdk/foundation/internal/entitlement/AdobeEntitlementUtils;->areValuesEqual(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 318
    goto :goto_4

    .line 321
    :cond_6
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 322
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 323
    if-eq v7, v0, :cond_2

    move v0, v1

    .line 325
    goto :goto_4

    :cond_7
    move v2, v0

    .line 333
    goto :goto_3

    :cond_8
    move v0, v2

    goto :goto_4

    :cond_9
    move v0, v2

    goto :goto_5
.end method

.method public static fallbackEndpointsData()Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 92
    const/4 v1, 0x0

    .line 95
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getEnvironment()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;

    move-result-object v0

    .line 97
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;->AdobeAuthIMSEnvironmentTestUS:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;

    if-ne v0, v2, :cond_0

    .line 100
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    const-string/jumbo v2, "{\nendpoints:\n\t[\n\t{\"features\" : {\"photos\" : {\"service\" : {\"uri\" : \"https://api.oznext.com\"}}},\n\t\t\"id\" : \"00000000-0000-0000-0000-000000000000\",\n\t\t\"name\" : \"Adobe Creative Cloud [QA1]\",\n\t\t\"private\" : false,\n\t\t\"status\" : \"ONLINE\"}\n\t]\n};"

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :goto_0
    return-object v0

    .line 110
    :catch_0
    move-exception v0

    .line 111
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v3, Lcom/adobe/creativesdk/foundation/internal/entitlement/AdobeEntitlementUtils;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 112
    goto :goto_0

    .line 114
    :cond_0
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;->AdobeAuthIMSEnvironmentStageUS:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;

    if-ne v0, v2, :cond_1

    .line 117
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    const-string/jumbo v2, "{\nendpoints:\n\t[\n\t{\"features\" : {\n\t\t\"files\" : {\"storage\" : {\"uri\" : \"https://cc-api-storage-stage.adobe.io\"},\"archive\" :{ \"uri\" : \"https://cc-api-storage-stage.adobe.io\"}},\n\t\t\"assets\" : {\"storage\" : {\"uri\" : \"https://cc-api-storage-stage.adobe.io\"}},\n\t\t\"libraries\" : {\"storage\" : {\"uri\" : \"https://cc-api-storage-stage.adobe.io\"}},\n\t\t\"imageservices\" : {\"service\" : {\"uri\" : \"https://cc-api-image-stage.adobe.io\"}},\n\t\t\"clipboard\" : {\"service\" : {\"uri\" : \"https://cc-api-storage-stage.adobe.io\"}}\n\t},\n\t\t\"id\" : \"00000000-0000-0000-0000-000000000000\",\n\t\t\"name\" : \"Adobe Creative Cloud [Stage] (static)\",\n\t\t\"private\" : false,\n\t\t\"status\" : \"ONLINE\"},\n\t]\n};"

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 133
    :catch_1
    move-exception v0

    .line 134
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v3, Lcom/adobe/creativesdk/foundation/internal/entitlement/AdobeEntitlementUtils;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 135
    goto :goto_0

    .line 137
    :cond_1
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;->AdobeAuthIMSEnvironmentProductionUS:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;

    if-ne v0, v2, :cond_2

    .line 140
    :try_start_2
    new-instance v0, Lorg/json/JSONObject;

    const-string/jumbo v2, "{\nendpoints:\n\t[\n\t{\"features\" : {\n\t\t\"files\" : {\"storage\" : {\"uri\" : \"https://cc-api-storage.adobe.io\"}, \"archive\" :{ \"uri\" : \"https://cc-api-storage.adobe.io\"} },\n\t\t\"assets\" : {\"storage\" : {\"uri\" : \"https://cc-api-storage.adobe.io\"}},\n\t\t\"libraries\" : {\"storage\" : {\"uri\" : \"https://cc-api-storage.adobe.io\"}},\n\t\t\"imageservices\" : {\"service\" : {\"uri\" : \"https://cc-api-image.adobe.io\"}},\n\t\t\"clipboard\" : {\"service\" : {\"uri\" : \"https://cc-api-storage.adobe.io\"}}\n\t},\n\t\t\"id\" : \"00000000-0000-0000-0000-000000000000\",\n\t\t\"name\" : \"Adobe Creative Cloud\",\n\t\t\"private\" : false,\n\t\t\"status\" : \"ONLINE\"},\n\t]\n};"

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 156
    :catch_2
    move-exception v0

    .line 157
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v3, Lcom/adobe/creativesdk/foundation/internal/entitlement/AdobeEntitlementUtils;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public static fallbackServicesData()Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 165
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 167
    :try_start_0
    const-string/jumbo v0, "endpoints"

    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/entitlement/AdobeEntitlementUtils;->fallbackEndpointsData()Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v3, "endpoints"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 168
    new-instance v0, Lorg/json/JSONObject;

    const-string/jumbo v2, "\t\t\t{\nBehance: {\n                \"allow_private_endpoint\": true,\nentitled: true\n            },\nccv: {\n                \"allow_private_endpoint\": true,\nentitled: true\n            },\ncollaboration: {\n                \"allow_private_endpoint\": true,\nentitled: true\n            },\ncolor: {\n                \"allow_private_endpoint\": true,\nentitled: true\n            },\ndesign_assets: {\n                \"allow_private_endpoint\": true,\nentitled: true\n            },\nedge_inspect: {\n                \"allow_private_endpoint\": true,\nentitled: true\n            },\nextract: {\n                \"allow_private_endpoint\": true,\nentitled: true\n            },\nfile_sync: {\n                \"allow_private_endpoint\": true,\nentitled: true\n            },\nimage: {\n                \"allow_private_endpoint\": true,\nentitled: true\n            },\nlibraries: {\n                \"allow_private_endpoint\": true,\nentitled: true\n            },\nlightroom: {\n                \"allow_private_endpoint\": true,\nentitled: true\n            },\nphonegap_build: {\n                \"allow_private_endpoint\": true,\nentitled: true\n            },\npreview: {\n                \"allow_private_endpoint\": true,\nentitled: true\n            },\nstorage: {\n                \"allow_private_endpoint\": true,\nentitled: true\n            },\nstory: {\n                \"allow_private_endpoint\": true,\nentitled: true\n            },\nsync_metadata: {\n                \"allow_private_endpoint\": true,\nentitled: true\n            },\nsync_settings: {\n                \"allow_private_endpoint\": true,\nentitled: true\n            },\ntypekit: {\n                \"allow_private_endpoint\": true,\nentitled: true\n            }\nstock: {\n                \"allow_private_endpoint\": true,\nentitled: true,\nservice_level: free_basic\n            }\n        }"

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 247
    const-string/jumbo v2, "services"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    :goto_0
    return-object v1

    .line 248
    :catch_0
    move-exception v0

    .line 249
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v3, Lcom/adobe/creativesdk/foundation/internal/entitlement/AdobeEntitlementUtils;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getServicesForUserProfile(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementException;
        }
    .end annotation

    .prologue
    .line 259
    if-eqz p0, :cond_0

    const-string/jumbo v0, "services"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 261
    const-string/jumbo v0, "services"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0

    .line 265
    :cond_0
    if-eqz p0, :cond_1

    const-string/jumbo v0, "services"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 267
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementException;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementErrorCode;->AdobeEntitlementErrorNoServicesAvailable:Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementErrorCode;

    const-string/jumbo v2, "No Public Services are available for this user."

    invoke-direct {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementException;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementErrorCode;Ljava/lang/String;)V

    throw v0

    .line 272
    :cond_1
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementException;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementErrorCode;->AdobeEntitlementErrorUnexpectedResponse:Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementErrorCode;

    const-string/jumbo v2, "Query for Public Services returned an unexpected response."

    invoke-direct {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementException;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementErrorCode;Ljava/lang/String;)V

    throw v0
.end method
