.class public Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestFormatConverter;
.super Ljava/lang/Object;
.source "AdobeDCXManifestFormatConverter.java"


# static fields
.field public static final AdobeDCXManifestFormatVersion:J = 0x6L

.field static DCXTypeMapperToVersion4:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 271
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestFormatConverter;->DCXTypeMapperToVersion4:Lorg/json/JSONObject;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static recursiveUpdateComponentsToVersion2(Lorg/json/JSONObject;)Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 408
    :try_start_0
    const-string/jumbo v0, "components"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 409
    if-eqz v2, :cond_5

    move v0, v1

    .line 410
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 411
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 412
    if-eqz v3, :cond_2

    .line 413
    const-string/jumbo v4, "_links"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 414
    if-eqz v3, :cond_2

    .line 415
    const-string/jumbo v4, "latest-version"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 416
    const-string/jumbo v5, "self"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 418
    if-eqz v4, :cond_0

    .line 419
    const-string/jumbo v6, "stormcloud#asset"

    invoke-virtual {v3, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 420
    const-string/jumbo v6, "latest-version"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 423
    :cond_0
    if-eqz v5, :cond_1

    .line 424
    const-string/jumbo v6, "stormcloud#asset-version"

    invoke-virtual {v3, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 425
    const-string/jumbo v6, "self"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 429
    :cond_1
    if-eqz v4, :cond_3

    if-nez v5, :cond_3

    .line 431
    const-string/jumbo v5, "stormcloud#asset-version"

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 410
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 432
    :cond_3
    if-nez v4, :cond_2

    if-eqz v5, :cond_2

    .line 434
    const-string/jumbo v4, "stormcloud#asset"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 440
    :catch_0
    move-exception v0

    .line 441
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 442
    const-string/jumbo v2, "csdk_android_dcx"

    const-string/jumbo v3, "FromatConverter-recursiveUpdateComponentsToVersion2"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v0, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->logAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    :cond_4
    :goto_2
    return v1

    .line 447
    :cond_5
    const-string/jumbo v0, "children"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 448
    if-eqz v2, :cond_6

    move v0, v1

    .line 449
    :goto_3
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_6

    .line 450
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 451
    invoke-static {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestFormatConverter;->recursiveUpdateComponentsToVersion2(Lorg/json/JSONObject;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 449
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 458
    :cond_6
    const/4 v1, 0x1

    goto :goto_2
.end method

.method static recursiveUpdateComponentsToVersion3(Lorg/json/JSONObject;)Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 330
    const-string/jumbo v0, "components"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 331
    if-eqz v2, :cond_2

    move v0, v1

    .line 332
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 333
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 334
    if-eqz v3, :cond_1

    .line 335
    const-string/jumbo v4, "_links"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 336
    const-string/jumbo v5, "etag"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 337
    if-eqz v4, :cond_1

    if-eqz v5, :cond_1

    .line 338
    const-string/jumbo v6, "stormcloud#asset"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 339
    if-eqz v4, :cond_0

    .line 341
    :try_start_0
    const-string/jumbo v6, "etag"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    :cond_0
    :goto_1
    const-string/jumbo v4, "etag"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 332
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 352
    :cond_2
    const-string/jumbo v0, "children"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 353
    if-eqz v2, :cond_4

    move v0, v1

    .line 354
    :goto_2
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 355
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 356
    invoke-static {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestFormatConverter;->recursiveUpdateComponentsToVersion3(Lorg/json/JSONObject;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 363
    :goto_3
    return v1

    .line 354
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 363
    :cond_4
    const/4 v1, 0x1

    goto :goto_3

    .line 342
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method static recursiveUpdateComponentsToVersion4(Lorg/json/JSONObject;)Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 233
    if-nez p0, :cond_1

    move v1, v2

    .line 268
    :cond_0
    :goto_0
    return v1

    .line 236
    :cond_1
    const-string/jumbo v0, "components"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 237
    if-eqz v3, :cond_5

    move v0, v1

    .line 238
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_5

    .line 239
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 240
    if-eqz v4, :cond_4

    .line 241
    const-string/jumbo v5, "_links"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 242
    if-eqz v5, :cond_4

    .line 243
    const-string/jumbo v6, "stormcloud#asset"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 244
    const-string/jumbo v6, "stormcloud#asset"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 246
    :cond_2
    const-string/jumbo v6, "stormcloud#asset-version"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 247
    const-string/jumbo v6, "stormcloud#asset-version"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 249
    :cond_3
    invoke-virtual {v5}, Lorg/json/JSONObject;->length()I

    move-result v5

    if-nez v5, :cond_4

    .line 250
    const-string/jumbo v5, "_links"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 238
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 257
    :cond_5
    const-string/jumbo v0, "children"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 258
    if-eqz v3, :cond_6

    move v0, v1

    .line 259
    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_6

    .line 260
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 261
    invoke-static {v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestFormatConverter;->recursiveUpdateComponentsToVersion4(Lorg/json/JSONObject;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 259
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    move v1, v2

    .line 268
    goto :goto_0
.end method

.method static recursiveUpdateComponentsToVersion5(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 159
    if-nez p0, :cond_1

    .line 196
    :cond_0
    :goto_0
    return-object p1

    .line 163
    :cond_1
    const-string/jumbo v0, "components"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 164
    if-eqz v2, :cond_3

    move v0, v1

    .line 165
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 166
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 167
    if-eqz v3, :cond_2

    .line 168
    const-string/jumbo v4, "localStorageAssetId"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 169
    if-eqz v4, :cond_2

    .line 170
    const-string/jumbo v5, "id"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 173
    :try_start_0
    invoke-virtual {p1, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :goto_2
    const-string/jumbo v4, "localStorageAssetId"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 165
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 174
    :catch_0
    move-exception v4

    .line 175
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 184
    :cond_3
    const-string/jumbo v0, "children"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 185
    if-eqz v0, :cond_0

    .line 186
    :goto_3
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 187
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 188
    invoke-static {v2, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestFormatConverter;->recursiveUpdateComponentsToVersion5(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    .line 190
    if-nez p1, :cond_4

    .line 191
    const/4 p1, 0x0

    goto :goto_0

    .line 186
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method static recursiveUpdateComponentsToVersion6(Lorg/json/JSONObject;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 90
    const-string/jumbo v0, "components"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 91
    if-eqz v2, :cond_2

    move v0, v1

    .line 92
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 93
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 94
    if-eqz v3, :cond_0

    .line 95
    const-string/jumbo v4, "version"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 96
    if-eqz v4, :cond_0

    instance-of v5, v4, Ljava/lang/String;

    if-nez v5, :cond_0

    .line 97
    instance-of v5, v4, Ljava/lang/Number;

    if-eqz v5, :cond_1

    .line 99
    :try_start_0
    const-string/jumbo v5, "version"

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    const-string/jumbo v2, "csdk_android_dcx"

    const-string/jumbo v3, "ManifestConverter-Recursive6"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->logAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 125
    :cond_1
    :goto_1
    return v1

    .line 114
    :cond_2
    const-string/jumbo v0, "children"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 115
    if-eqz v2, :cond_3

    move v0, v1

    .line 116
    :goto_2
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 117
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 118
    invoke-static {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestFormatConverter;->recursiveUpdateComponentsToVersion6(Lorg/json/JSONObject;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 125
    :cond_3
    const/4 v1, 0x1

    goto :goto_1
.end method

.method static updateLocalDataInManifestDictionaryToVersion1(Lorg/json/JSONObject;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 57
    :try_start_0
    const-string/jumbo v1, "local"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 58
    if-nez v1, :cond_0

    .line 59
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 60
    const-string/jumbo v2, "local"

    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63
    :cond_0
    const-string/jumbo v2, "manifestEtag"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 64
    const-string/jumbo v2, "etag"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 65
    if-eqz v2, :cond_1

    .line 66
    const-string/jumbo v3, "manifestEtag"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    const-string/jumbo v2, "etag"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 72
    :cond_1
    const-string/jumbo v2, "version"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :goto_0
    return v0

    .line 76
    :catch_0
    move-exception v0

    .line 78
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static updateManifestDictionary(Lorg/json/JSONObject;J)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 35
    const-wide/16 v2, 0x1

    cmp-long v2, p1, v2

    if-gez v2, :cond_1

    invoke-static {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestFormatConverter;->updateManifestDictionaryToVersion1(Lorg/json/JSONObject;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 47
    :cond_0
    :goto_0
    return v0

    .line 36
    :cond_1
    const-wide/16 v2, 0x2

    cmp-long v2, p1, v2

    if-gez v2, :cond_2

    invoke-static {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestFormatConverter;->updateManifestDictionaryToVersion2(Lorg/json/JSONObject;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 37
    :cond_2
    const-wide/16 v2, 0x3

    cmp-long v2, p1, v2

    if-gez v2, :cond_3

    invoke-static {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestFormatConverter;->updateManifestDictionaryToVersion3(Lorg/json/JSONObject;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 38
    :cond_3
    const-wide/16 v2, 0x4

    cmp-long v2, p1, v2

    if-gez v2, :cond_4

    invoke-static {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestFormatConverter;->updateManifestDictionaryToVersion4(Lorg/json/JSONObject;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 39
    :cond_4
    const-wide/16 v2, 0x5

    cmp-long v2, p1, v2

    if-gez v2, :cond_5

    invoke-static {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestFormatConverter;->updateManifestDictionaryToVersion5(Lorg/json/JSONObject;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 40
    :cond_5
    const-wide/16 v2, 0x6

    cmp-long v2, p1, v2

    if-gtz v2, :cond_6

    invoke-static {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestFormatConverter;->updateManifestDictionaryToVersion6(Lorg/json/JSONObject;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 43
    :cond_6
    const-string/jumbo v2, "local"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_8

    const-string/jumbo v2, "local"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v3, "version"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 45
    :goto_1
    if-ge v2, v1, :cond_7

    invoke-static {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestFormatConverter;->updateLocalDataInManifestDictionaryToVersion1(Lorg/json/JSONObject;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_7
    move v0, v1

    .line 47
    goto :goto_0

    :cond_8
    move v2, v0

    .line 43
    goto :goto_1
.end method

.method static updateManifestDictionaryToVersion1(Lorg/json/JSONObject;)Z
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 504
    const-string/jumbo v2, "_links"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 505
    if-nez v3, :cond_0

    .line 506
    const-string/jumbo v1, "csdk_android_dcx"

    const-string/jumbo v2, "FromatConverter-updateManifestDictionaryToVersion1"

    const-string/jumbo v3, "_links"

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->logAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    :goto_0
    return v0

    .line 514
    :cond_0
    :try_start_0
    const-string/jumbo v2, "self"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v4, "etag"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 515
    if-eqz v2, :cond_1

    .line 516
    const-string/jumbo v4, "etag"

    invoke-virtual {p0, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 517
    const-string/jumbo v2, "self"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v4, "etag"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 523
    :cond_1
    const-string/jumbo v2, "components"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 525
    if-eqz v4, :cond_5

    move v2, v0

    .line 527
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 528
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 529
    if-eqz v5, :cond_3

    .line 530
    const-string/jumbo v6, "id"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_2

    .line 531
    const-string/jumbo v6, "id"

    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageUtils;->generateUuid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 533
    :cond_2
    const-string/jumbo v6, "href"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 535
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 536
    const-string/jumbo v8, "href"

    invoke-virtual {v7, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 537
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 538
    const-string/jumbo v9, "href"

    invoke-virtual {v8, v9, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 540
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 541
    const-string/jumbo v9, "self"

    invoke-virtual {v6, v9, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 542
    const-string/jumbo v7, "latest-version"

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 544
    const-string/jumbo v7, "_links"

    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 546
    const-string/jumbo v6, "href"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 527
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 551
    :cond_4
    const-string/jumbo v2, "components"

    invoke-virtual {p0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 552
    const-string/jumbo v2, "components"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 556
    :cond_5
    const-string/jumbo v2, "container"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 557
    if-eqz v2, :cond_6

    .line 558
    const-string/jumbo v4, "dma#container"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 559
    const-string/jumbo v2, "container"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 563
    :cond_6
    const-string/jumbo v2, "manifest-format-version"

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 565
    goto/16 :goto_0

    .line 566
    :catch_0
    move-exception v1

    .line 567
    const-string/jumbo v2, "csdk_android_dcx"

    const-string/jumbo v3, "FromatConverter-updateManifestDictionaryToVersion1"

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v1, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->logAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method static updateManifestDictionaryToVersion2(Lorg/json/JSONObject;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 465
    :try_start_0
    const-string/jumbo v1, "_links"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 466
    if-eqz v1, :cond_1

    .line 467
    const-string/jumbo v2, "dma#container"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 468
    if-eqz v2, :cond_0

    .line 469
    const-string/jumbo v3, "service"

    const-string/jumbo v4, "stormcloud"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 470
    const-string/jumbo v3, "dma#document"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 471
    const-string/jumbo v2, "dma#container"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 474
    :cond_0
    const-string/jumbo v2, "self"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 475
    if-eqz v2, :cond_1

    .line 476
    const-string/jumbo v3, "stormcloud#asset"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 477
    const-string/jumbo v2, "self"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 483
    :cond_1
    invoke-static {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestFormatConverter;->recursiveUpdateComponentsToVersion2(Lorg/json/JSONObject;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 484
    const-string/jumbo v1, "csdk_android_dcx"

    const-string/jumbo v2, "FromatConverter-updateManifestDictionaryToVersion2"

    const-string/jumbo v3, "recursivecomponents2 failed"

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->logAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    :goto_0
    return v0

    .line 489
    :cond_2
    const-string/jumbo v1, "manifest-format-version"

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 491
    const/4 v0, 0x1

    goto :goto_0

    .line 492
    :catch_0
    move-exception v1

    .line 493
    const-string/jumbo v2, "csdk_android_dcx"

    const-string/jumbo v3, "FromatConverter-updateManifestDictionaryToVersion2"

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v1, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->logAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static updateManifestDictionaryToVersion3(Lorg/json/JSONObject;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 369
    const-string/jumbo v1, "_links"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 370
    const-string/jumbo v2, "etag"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 371
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 372
    const-string/jumbo v3, "stormcloud#asset"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 373
    if-eqz v1, :cond_0

    .line 375
    :try_start_0
    const-string/jumbo v3, "etag"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 380
    :cond_0
    :goto_0
    const-string/jumbo v1, "etag"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 384
    :cond_1
    invoke-static {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestFormatConverter;->recursiveUpdateComponentsToVersion3(Lorg/json/JSONObject;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 385
    const-string/jumbo v1, "csdk_android_dcx"

    const-string/jumbo v2, "FromatConverter-updateManifestDictionaryToVersion3"

    const-string/jumbo v3, "components3 failure"

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->logAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    :goto_1
    return v0

    .line 391
    :cond_2
    :try_start_1
    const-string/jumbo v1, "manifest-format-version"

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 398
    const/4 v0, 0x1

    goto :goto_1

    .line 392
    :catch_0
    move-exception v1

    .line 393
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 394
    const-string/jumbo v2, "csdk_android_dcx"

    const-string/jumbo v3, "FromatConverter-updateManifestDictionaryToVersion3"

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v1, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->logAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 376
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method static updateManifestDictionaryToVersion4(Lorg/json/JSONObject;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 279
    :try_start_0
    const-string/jumbo v1, "_links"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 280
    if-eqz v1, :cond_2

    .line 281
    const-string/jumbo v2, "stormcloud#asset"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 282
    const-string/jumbo v2, "stormcloud#asset"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 284
    :cond_0
    const-string/jumbo v2, "dma#document"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 285
    const-string/jumbo v2, "dma#document"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 287
    :cond_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 288
    const-string/jumbo v1, "_links"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 293
    :cond_2
    invoke-static {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestFormatConverter;->recursiveUpdateComponentsToVersion4(Lorg/json/JSONObject;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 294
    const-string/jumbo v1, "csdk_android_dcx"

    const-string/jumbo v2, "FromatConverter-updateManifestDictionaryToVersion4"

    const-string/jumbo v3, "components4 failure"

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->logAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    :goto_0
    return v0

    .line 299
    :cond_3
    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestFormatConverter;->DCXTypeMapperToVersion4:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-nez v1, :cond_4

    .line 301
    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestFormatConverter;->DCXTypeMapperToVersion4:Lorg/json/JSONObject;

    const-string/jumbo v2, "application/vnd.adobe.html+cd"

    const-string/jumbo v3, "application/vnd.adobe.html+dcx"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 302
    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestFormatConverter;->DCXTypeMapperToVersion4:Lorg/json/JSONObject;

    const-string/jumbo v2, "application/vnd.adobe.violet.sketchBook+cd"

    const-string/jumbo v3, "application/vnd.adobe.sketch.project+dcx"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 303
    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestFormatConverter;->DCXTypeMapperToVersion4:Lorg/json/JSONObject;

    const-string/jumbo v2, "application/vnd.adobe.test+cd"

    const-string/jumbo v3, "application/vnd.adobe.test+dcx"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 307
    :cond_4
    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestFormatConverter;->DCXTypeMapperToVersion4:Lorg/json/JSONObject;

    const-string/jumbo v2, "type"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 308
    if-eqz v1, :cond_5

    .line 309
    const-string/jumbo v2, "type"

    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 313
    :cond_5
    const-string/jumbo v1, "manifest-format-version"

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    const/4 v0, 0x1

    goto :goto_0

    .line 317
    :catch_0
    move-exception v1

    .line 318
    const-string/jumbo v2, "csdk_android_dcx"

    const-string/jumbo v3, "FromatConverter-updateManifestDictionaryToVersion4"

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v1, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->logAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static updateManifestDictionaryToVersion5(Lorg/json/JSONObject;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 204
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-static {p0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestFormatConverter;->recursiveUpdateComponentsToVersion5(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    .line 206
    if-nez v1, :cond_0

    .line 207
    const-string/jumbo v1, "csdk_android_dcx"

    const-string/jumbo v2, "FromatConverter-updateManifestDictionaryToVersion5"

    const-string/jumbo v3, "storageIdLookup"

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->logAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    :goto_0
    return v0

    .line 211
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 212
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 213
    const-string/jumbo v3, "copyOnWrite#storageIds"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 214
    const-string/jumbo v1, "local"

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 218
    :cond_1
    const-string/jumbo v1, "manifest-format-version"

    const/4 v2, 0x5

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    const/4 v0, 0x1

    goto :goto_0

    .line 221
    :catch_0
    move-exception v1

    .line 222
    const-string/jumbo v2, "csdk_android_dcx"

    const-string/jumbo v3, "FromatConverter-updateManifestDictionaryToVersion5"

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v1, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->logAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static updateManifestDictionaryToVersion6(Lorg/json/JSONObject;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 132
    const-string/jumbo v1, "path"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 133
    const-string/jumbo v1, "path"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 137
    :cond_0
    invoke-static {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestFormatConverter;->recursiveUpdateComponentsToVersion6(Lorg/json/JSONObject;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 151
    :goto_0
    return v0

    .line 144
    :cond_1
    :try_start_0
    const-string/jumbo v1, "manifest-format-version"

    const/4 v2, 0x6

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    const/4 v0, 0x1

    goto :goto_0

    .line 145
    :catch_0
    move-exception v1

    .line 146
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 147
    const-string/jumbo v2, "csdk_android_dcx"

    const-string/jumbo v3, "FromatConverter-updateManifestDictionaryToVersion6"

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v1, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->logAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
